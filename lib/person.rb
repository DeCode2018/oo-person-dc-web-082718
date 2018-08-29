require "pry"
class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name=name
    @bank_account=25
    @happiness=8
    @hygiene=8

  end

  def happiness=(num)
    if num < 0
      @happiness= 0
    elsif num >10
      @happiness= 10
    else
      @happiness=num
    end
  end

  def hygiene=(num)
    if num < 0
      @hygiene= 0
    elsif num >10
      @hygiene= 10
    else
      @hygiene=num
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account+= salary
   'all about the benjamins'
  end

  def take_bath
    self.hygiene+=4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene-=3
    self.happiness+=2
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness+=3
    person.happiness+=3
     "Hi #{person.name}! It's #{self.name}. How are you?"
  end

    def start_conversation(person_strike,topic)
      if topic=="politics"
      self.happiness-=2
      person_strike.happiness-=2
      return "blah blah partisan blah lobbyist"
    elsif topic=="weather"
      self.happiness+=1
      person_strike.happiness+=1
      return 'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end

end
