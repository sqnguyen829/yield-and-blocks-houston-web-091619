def hello_t(array)
    if block_given?
      i = 0
   
      while i < array.length
        puts 'yo'
        yield(array[i], 'Hi')
        puts 'was here'
        i = i + 1
      end
   
      array
    else
      puts "Hey! No block was given!"
    end
end

#if we run the next line it would hit the else on line 13 since no block was given
# hello_t(["Tim", "Tom", "Jim"])

# hello_t(["Tim", "Tom", "Jim"]) do |name, greet|
#     if name.start_with?("T")
#       puts "#{greet}, #{name}"
#     end
# end

#using ternary instead of the if statement
hello_t(["Tim", "Tom", "Jim"]) {|name, greet| name.start_with?('T') ? (puts "#{greet}, #{name}") : nil}
