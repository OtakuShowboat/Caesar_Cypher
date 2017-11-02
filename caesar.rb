def Caesar (input, cypher)
  cypher = cypher.to_i #Makes the cypher an integer value if input as a string.
  
  #Checks for large values of cypher and adjusts to fall within alphabet range, either positive or negative.
  if cypher >= 26
    while cypher >= 26
      cypher -= 26
    end
  elsif cypher <= -26
    while cypher <= -26
      cyphyer += 26
    end
  end
  
  input_array = input.split("")
  
cypher_array = input_array.map { |i| 
    i = i.ord #converts each string character to their numerical Ord value
    result = (i + cypher) #applies the cypher
    
    
    #These maintain capitalization
    if result > 122 and i <= 122
      result -= 26
    elsif result < 65 and i >= 65
      result += 26
    elsif i <= 90 and result > 90
      result -= 26
    elsif i >= 97 and result < 97
      result += 26
    end
    
    #Keeps non-alphabetical characters the same
    if i < 65 or i > 122
      result -= cypher
    end
    
    
    i = result.chr #Converts result ord value to the string character and assigns to the array index value.
  
}.join("") #converts the array into a single string.
  
  puts cypher_array #outputs the cyphered string.
  
end

  Caesar("What a string!", 5)
