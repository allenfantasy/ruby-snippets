print "Input the answer between 1 to 100 to guess: "
while (str = gets.chomp)
  if str =~ /[1-9]{1}\d*/ or str.to_i == 0
    answer = str.to_i
    if answer >= 1 and answer <= 100
      break
    else
      print "The number MUST in 1-100! "
    end
  else
    print "Wrong format of input! "
  end
  print "Please input a number: "
end

lower_bound = 1
upper_bound = 100
#print "the number is #{num}!"
#puts
print "Now guess the number: "
flag = false
while ( !flag && guess = gets.chomp)
  if guess =~ /[1-9]{1}\d*/ or guess.to_i == 0
    tmp = guess.to_i
    if tmp >= lower_bound and tmp <= upper_bound
      if tmp == answer
        flag = true
      else
        if tmp > answer
          upper_bound = tmp - 1
        else
          lower_bound = tmp + 1
        end
        print "Wrong guess!"
      end
    else
      print "Wrong guess! "
    end
  else
    print "Wrong format! You should guess a number. "
  end
  print "Now guess a number between #{lower_bound} and #{upper_bound}: "
end
puts
