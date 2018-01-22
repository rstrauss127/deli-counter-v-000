#1. Build the `line` method that shows everyone their current place in the line. If there is nobody in line, it should say `"The line is currently empty."`.
def line(katz_deli)
  if katz_deli.size == 0  
    puts "The line is currently empty."
  else
    counter = 0 
    string = "The line is currently:"
    size = katz_deli.size 
    loop do
      string << " #{counter+1}"
      string << ". "
      string << "#{katz_deli[counter]}"
      counter +=1 
      if counter == size
        break
      end
    end
    puts string
  end
end


#2. Build a method that a new customer will use when entering the deli. The `take_a_number` method should accept two arguments, the array for the current line of people (`katz_deli`), and a string containing the name of the person wishing to join the line. The method should return the person's name along with their position in line. **Top-Tip:** *Remember that people like to count from* `1`*, not from* `0` *("zero") like computers.
def take_a_number(katz_deli, new_customer)
  katz_deli << new_customer
  puts "Welcome, #{new_customer}. You are number #{katz_deli.size} in line."
end

#3. Build the `now_serving` method which should call out (i.e. `puts`) the next person in line and then remove them from the front. If there is nobody in line, it should call out (`puts`) that `"There is nobody waiting to be served!"`.
# Write your code here.
def now_serving(katz_deli)
  if katz_deli.size == 0 
    puts "there is nobody waiting to be serverd!"
  else
    string = "Currently serving #{katz_deli[0]}"
    katz_deli.shift
    puts string
  end
end
