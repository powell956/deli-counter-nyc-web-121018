def line(katz_deli)
  num_assigned = []
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    katz_deli.each do |customer|
      num_assigned.push("#{katz_deli.index(customer) + 1}. #{customer}")
    end
    puts "The line is currently: #{num_assigned.join(" ")}"
  end
end

def take_a_number(katz_deli, new_customer)
  katz_deli << new_customer
  puts "Welcome, #{new_customer}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
