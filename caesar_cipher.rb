def caeser_cipher(string, shift)
  #create 3 empty arrays
  ord_array = []
  cipher_ord_array = []
  cipher_array = []

  #create downcase array from string arguement  
  string_array = string.downcase.chars

  #Add the letter's numerical values to ord_array
  string_array.each {|i|
  ord_array.push(i.ord)}

  ord_array.each { |i|
    if i < 97 || i > 122 
    cipher_ord_array.push(i)
    elsif (i + shift) > 122
    y = (i + shift) - 122
    cipher_ord_array.push(96 + y)
    else cipher_ord_array.push(i + shift)
    end
   }

   cipher_ord_array.each {|x|
    cipher_array.push(x.chr)}
p cipher_array.join('')
end

caeser_cipher('hello my friend', 1)

