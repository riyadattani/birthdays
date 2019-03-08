require 'birthday_list'

describe BirthdayList do
  it 'add a name and birthday' do
    birthday_list = BirthdayList.new

    expect(birthday_list.add_birthday("Riya", "14 Jul 95")).to eq [{ name: "Riya", birthday: "14 Jul 95" }]
  end

  it 'add a second birthday' do
    birthday_list = BirthdayList.new
    birthday_list.add_birthday("Riya", "14 Jul 95")

    expect(birthday_list.add_birthday("Mum", "7 Mar 68")).to eq [{ name: "Riya", birthday: "14 Jul 95" }, { name: "Mum", birthday: "7 Mar 68" }]
  end

  it 'show the birthday list neatly' do
    birthday_list = BirthdayList.new
    birthday_list.add_birthday("Riya", "14 Jul 95")
    birthday_list.add_birthday("Mum", "7 Mar 68")

    expect { birthday_list.show_birthdays }.to output("Riya: 14 Jul 95\nMum: 7 Mar 68\n").to_stdout
  end

end
