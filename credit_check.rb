puts "Please enter a card number for verification:"
card_number = gets.chomp

card_number = card_number.reverse! #making it work on all credit cards
counter = 0 #to determine odd or even accurately we use the counter
sum = 0

#logic
card_number.chars.each do |num|
  if counter.odd? #filter out odd numbers
    counter += 1
    if num.to_i > 4 #fliter out the odd numbers that when doubled are greater than nine
      big_odd = (num.to_i * 2).to_s
      big_odd.chars.each do |num| #and if they are to seperate the numbers by character and add them
      sum += num.to_i
      end
    else
      sum += num.to_i * 2 #and if they are four or less to double them and add to sum
    end
  else # else the number is even so can be directly added to the sum
    counter += 1
    sum += num.to_i
  end
end

#validation
if sum % 10 == 0
  puts "This number is valid!"
else
  puts "This number is not valid!"
end
