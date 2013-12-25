class Owner

  attr_accessor :name, :birthdate
  attr_reader :today

  def initialize(name='Foobar Kardigan', bdate = Date.new(1989,02,28))
    @name = name
    @birthdate = bdate
  end
 
  def countdown
    today = Date.today
    birthday = Date.new(today.year, birthdate.month, birthdate.day)
    if birthday > today
      countdown = (birthday - today).to_i
    else
      countdown = (birthday.next_year - today).to_i
    end
  end
end