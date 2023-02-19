# # # # def greeting
    
# # # #     puts 'Good Morning'    
# # # #     if block_given?
# # # #         yield
# # # #     end
# # # #     puts 'Good Night'
# # # # end

# # # # begin
# # # #     greeting
# # # # rescue => e
# # # #     puts e.message

# # # # end

# # # # greeting do 
# # # #     puts 'Hello'
# # # # end

# # # # def greetings
# # # #     text = yield 'Hello~'
# # # #     puts text
# # # # end

# # # # greetings do |text|
# # # #     text *3
# # # # end

# # # def greeting(&block)
# # #     puts 'goodmorning'

# # #     text = block.call('hello')
# # #     puts text
# # #     puts 'goodnight'
# # # end

# # # greeting do |text|
# # #     text + text
# # # end

# # def greeting(arrange_proc)
# #     puts arrange_proc.arity
# #     puts arrange_proc.class
# #     puts 'Good Morning'
# #     text = arrange_proc.call("Hello")
# #     puts text
# #     puts 'Good Morning'
# # end

# # repeat_proc = Proc.new{|text| text*2}
# # greeting(repeat_proc)

# # puts repeat_proc.call('ocho')
# # add_lamda = ->(a,b){a+b}
# # puts add_lamda.call(1,2)

# def summ(num)
#     num + 1
#     puts num + 1
# end

# def judge(age)
#     adult = Proc.new{|n| n > 20}
#     child = Proc.new{|n| n < 20}
    
#     case age

#     when adult
#         'BigMan'
#     when child
#         'SmallMan'

#     else
#         'other'
#     end
# end

# puts judge(21)

# reverse_proc = Proc.new{|s| s.reverse}
# p ['ruby','java','c++'].map(&reverse_proc)

