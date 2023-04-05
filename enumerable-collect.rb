#write a method which takes an array of strings (containing secret enemy message bits!) and 
#decodes its elements using ROT13 cipher system; returning an array containing the final messages.

words = 'Hello, world!'

words.tr('A-Za-z', 'N-ZA-Mn-za-m') #shortcut method 

capltr = ('A'..'Z').to_a
smalltr = ('a'..'z').to_a

words.chars.each_with_index do |char, index|
  next unless capltr.include?(char) or smalltr.include?(char)    
  if capltr.include?(char)
    words[index] = capltr[capltr.index(char) - 13]
  else
    words[index] = smalltr[smalltr.index(char) - 13]
  end
end

puts words

#array of secrets to decrypt

secret_messages.each_with_index do |msg, index|    
    msg.chars.each_with_index do |char, index|
      next unless capltr.include?(char) or smalltr.include?(char)    
      if capltr.include?(char)
        msg[index] = capltr[capltr.index(char) - 13]
      else
        msg[index] = smalltr[smalltr.index(char) - 13]
      end
    end
  secret_messages[index] = msg  
end    
  
