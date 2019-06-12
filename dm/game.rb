class Game
  attr_reader :status, :errors, :letters, :good_letters, :bad_letters

  def initialize(word)
    @letters = get_letters(word)
    @errors = 0
    @good_letters = []
    @bad_letters = []
    @status = 0
  end

  def get_letters(word)
    if word == nil
      abort "Нечего отгадывать. Проверьте файл"
    end

    word.encode('UTF-8').split("")
  end

  def next_step(letter)
    return if (@status == 1 || @status == -1)
    return if (@good_letters.include?(letter) || @bad_letters.include?(letter))

    if has_exceptions?(letter)
      add_exceptions(letter, @good_letters)
      @status = 1 if (@letters - @good_letters).empty?

    elsif @letters.include?(letter)
      @good_letters << letter
      @status = 1 if (@letters - @good_letters).empty?

    else
      letter.match(/[еёий]/) ? add_exceptions(letter, @bad_letters) : @bad_letters << letter
      @errors += 1

      @status = -1 if @errors >= 7
    end
  end

  def has_exceptions?(user_input)
    word = @letters.join

    user_input.match?(/[её]/) && word.match?(/[её]+/) ||
    user_input.match?(/[ий]/) && word.match?(/[ий]+/)
  end

  def add_exceptions(user_input, array)
    array << 'е' << 'ё' if user_input == 'е' || user_input == 'ё'
    array << 'и' << 'й' if user_input == 'и' || user_input == 'й'
  end

  def ask_next_letter
    puts "\nВведите следующую букву"
    letter = get_user_input

    next_step(letter)
  end

  def get_user_input
    letter = ''

    while letter == '' do
      letter = STDIN.gets.chomp.downcase
    end
    letter
  end
end
