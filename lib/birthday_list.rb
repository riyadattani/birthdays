class BirthdayList

  def initialize
    @birthday_list = []
  end

  def add_birthday(name, birthday)
    @birthday_list << { name: name, birthday: birthday }
  end

  def show_birthdays
    @birthday_list.each do |hash|
      puts "#{hash[:name]}: #{hash[:birthday]}"
    end
  end

end

# birthday_list = BirthdayList.new
# birthday_list.add_birthday("Riya", "14 Jul 95")
# p birthday_list
