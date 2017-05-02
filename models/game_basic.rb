class Game


def initialize (object1, object2)
  @object1 = object1
  @object2 = object2
end

def rock_wins()
  if (@object1 == 'rock') && (@object2 == 'scissors')
    return "rock wins" 
  end
end

end