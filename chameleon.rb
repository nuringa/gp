# Доработайте программу из предыдущего задания так, чтобы в конструкторе теперь передавался
# (и сохранялся в переменной экземпляра класса) еще один параметр: возраст.

# Добавьте в класс метод, который говорит, пожилой человек (возраст > 60) или нет. А метод,
# который выводит полное имя, поправьте так, чтобы молодежь он называл только по имени,
# а пожилых уважительно, по имени и отчеству.

# Создайте в программе пару человек с разными именами и возрастами и выведите на экран информацию о них.

class Human
  def initialize(name, second_name, age)
    @name = name
    @second_name = second_name
    @age = age
  end

  def is_old?
    @age > 60
  end

  def get_full_name
    is_old? ? "#{@name} #{@second_name}" : "#{@name}"
  end
end

class BodyBuilder
end

zizi = Human.new('Sergey', 'Petrovich', 61)
mimi = Human.new('Tanya', 'Lvovna', 12)

puts "we have: #{zizi.get_full_name}, #{mimi.get_full_name}"
