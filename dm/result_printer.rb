class ResultPrinter
  def initialize
    @status_image = []
    current_path = File.dirname(__FILE__)
    file_names = Dir.children("image").sort

    file_names.each do |file|
      file_name = current_path + '/image/' + file

      begin
        file = File.new(file_name, 'r:UTF-8')
        @status_image << file.read
        file.close
      rescue SystemCallError
        @status_image << "\n [ изображение не найдено ] \n"
      end
    end
  end

  def print_dead_man(errors)
    puts @status_image[errors]
  end

  def print_status(game)
    cls

    puts
    puts "Слово: #{get_word_for_print(game.letters, game.good_letters)}"
    puts "Ошибки (#{game.errors}): #{game.bad_letters.join(", ")}"

    print_dead_man(game.errors)

    if game.status == -1
      puts "Вы проиграли :("
      puts "Загаданное слово было: " + game.letters.join("")
    elsif game.status == 1
      puts
      puts "Поздравляем, вы выиграли!"
    else
      puts "У вас осталось попыток: " + (7 - game.errors).to_s
    end
  end

  def get_word_for_print(letters, good_letters)

    result = ""

    letters.each do |item|
      if good_letters.include?(item)
        result += item + " "
      else
        result += "__ "
      end
    end
    result
  end

  def cls
    system "clear" or system "cls"
  end
end
