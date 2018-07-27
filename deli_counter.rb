katz_deli = []

def line(line_array)
  working_array = []
  if line_array.count <= 0
    puts "The line is currently empty."
  else
    line_array.each_with_index {|name, idx|
      working_array.push("#{(idx += 1).to_s}. #{name}")
      $katz_deli = working_array
    }
    puts "The line is currently: #{working_array.join(" ")}"
  end
end

def take_a_number(line_array, name)
  line_array.push(name.capitalize)
  puts "Welcome, #{name.capitalize}.  You are number #{line_array.count} in line."
  $katz_deli = line_array
end

def now_serving(line_array)
  if line_array.any?
    puts "Currently serving #{line_array[0].capitalize}"
    line_array.shift
    $katz_deli = line_array
  else puts "There is nobody waiting to be served!"
  end
end
=begin
puts "Welcome to Katz Deli!  To use our new line system, just type your name and we will add you to the line."

 while TRUE
  print "Enter name: "
  input = gets.chomp.to_s.downcase
  case input
    when "help"
      puts "\nSystem Help: \n
      The following commands can be used with this system: \n
        Serve: Call the next person in line. \n
        Line: List the current line. \n
        Exit: Exit the program. \n
        Other than these commands, any text will be treated as a customer name and added to the line."
    when "serve"
      now_serving(katz_deli)
    when "exit"
      break
    when "line"
      line(katz_deli)
    else take_a_number(katz_deli, input)
 end
end

=end

take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
  take_a_number(katz_deli, "Grace") #=> Welcome, Grace. You are number 2 in line.
  take_a_number(katz_deli, "Kent") #=> Welcome, Kent. You are number 3 in line.
 
  line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"
 
  now_serving(katz_deli) #=> "Currently serving Ada."
 
  line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"
 
  take_a_number(katz_deli, "Matz") #=> Welcome, Matz. You are number 3 in line.
 
  line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"
 
  now_serving(katz_deli) #=> "Currently serving Grace."
 
  line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz"
