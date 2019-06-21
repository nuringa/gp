class CreditApplication
  def initialize(age, gender, income, credit_story, sum)
    @age = age
    @gender = gender.downcase
    @income = income
    @credit_story = credit_story.downcase
    @sum = sum
    @score = count_score
  end

  def count_score
    score = 0
    score += 10 if (21..40).include?(@age)
    score += 20 if @age > 40
    score += 10 if @gender == 'ж'
    score += 10 if (20001..40000).include?(@income)
    score += 20 if @income > 40000
    score += 10 if @credit_story == 'да'
    score += 10 if (20001..40000).include?(@sum)
    score += 20 if @sum <= 20000
    score
  end

  def approved?
    @score >= 50
  end

  def score
    @score
  end

  def sum
    @sum
  end
end
