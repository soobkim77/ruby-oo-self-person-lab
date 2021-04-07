# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    
    def happiness=(n)
        if n <= 10 && n >= 0 
            @happiness = n
        else
            if n > 10
                @happiness = 10
            else n < 0
                @happiness = 0
            end
        end
    end

    def hygiene=(n)
        if n <= 10 && n >= 0 
            @hygiene = n
        else
            if n > 10
                @hygiene = 10
            else n < 0
                @hygiene = 0
            end
        end
    end

    def happy?
        if happiness > 7
            true
        else 
            false
        end
    end

    def clean?
        if hygiene > 7
            true
        else 
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        case topic
        when 'politics'
            [self, person].each {|p| p.happiness -= 2}
            "blah blah partisan blah lobbyist"
        when 'weather'
            [self, person].each {|p| p.happiness += 1}
            "blah blah sun blah rain"
        else
            'blah blah blah blah blah'
        end 
    end
end
