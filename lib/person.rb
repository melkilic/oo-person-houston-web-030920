require 'pry'
class Person
    attr_reader :name , :bank_account , :happiness , :hygiene
    attr_writer :bank_account
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
     if num < 0
        @happiness = 0
    elsif num > 10
            @happiness = 10
    else
            @happiness = num 
        
        
         end
    end
    

    def hygiene=(num) # 10
            if num < 0
               @hygiene = 0
           elsif num > 10
                   @hygiene = 10
           else
                   @hygiene = num 
               
               
                end
           end 


    def happy?
            if happiness > 7
               return true
            else 
                return false
           end

    end

    def clean?
        if hygiene > 7
            return true
        else
            return false
        end
    end
    

   def get_paid(salary)
      @bank_account += salary #125
      return "all about the benjamins"
   end

   def take_bath
        self.hygiene += 4
       
      return "♪ Rub-a-dub just relaxing in the tub ♫"

  end

  def work_out 
    self.hygiene -= 3
    # binding.pry
    self.happiness += 2
 return "♪ another one bites the dust ♫"
  end

  def call_friend(felix)
    self.happiness += 3
    felix.happiness += 3
    # binding.pry
    return "Hi #{felix.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(people, topic)
    if topic == "politics"
        people.happiness -= 2 
        self.happiness -= 2 
        return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        people.happiness += 1
        self.happiness += 1
        return 'blah blah sun blah rain'  
    else topic != "politics" && topic != "weather"
        return 'blah blah blah blah blah'
       
    end
  end
end

