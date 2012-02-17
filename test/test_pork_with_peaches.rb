require 'helper'

class TestPorkWithPeaches < Test::Unit::TestCase
  should "have cooked meal" do
    
    checkquestion
    
  end
end

def checkquestion

  puts "have you cooked the meal (yes/no)"
  
  cooked = gets[0].downcase
  
  if cooked[0].downcase == "y"
    
    puts "enjoyed the meal (yes/no)"
    
    enjoy = gets
    
    if enjoy[0].downcase == "y"
      puts "test passed!"
    else 
      flunk "test failed!"
    end
    
  elsif cooked[0].downcase == "n"
    flunk "test failed! Cook the meal"
  else
    puts "wrong input!\n"
    checkquestion
  end

end
