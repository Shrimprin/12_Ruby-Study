# # def greeting
    
# #     puts 'Good Morning'    
# #     if block_given?
# #         yield
# #     end
# #     puts 'Good Night'
# # end

# # begin
# #     greeting
# # rescue => e
# #     puts e.message

# # end

# # greeting do 
# #     puts 'Hello'
# # end

# # def greetings
# #     text = yield 'Hello~'
# #     puts text
# # end

# # greetings do |text|
# #     text *3
# # end

# def greeting(&block)
#     puts 'goodmorning'

#     text = block.call('hello')
#     puts text
#     puts 'goodnight'
# end

# greeting do |text|
#     text + text
# end

def greeting(arrange_proc)
    puts arrange_proc.arity
    puts arrange_proc.class
    puts 'Good Morning'
    text = arrange_proc.call("Hello")
    puts text
    puts 'Good Morning'
end

repeat_proc = Proc.new{|text| text*2}
greeting(repeat_proc)

puts repeat_proc.call('ocho')
add_lamda = ->(a,b){a+b}
puts add_lamda.call(1,2)



