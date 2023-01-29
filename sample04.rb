# old_syntax = <<TEXT
# {
#     :name => "Alice",
#     :age=> 20,
#     :gender  =>  :female
# }
# TEXT

# convert_hash_syntax(old_syntax)
# {
#     puts old_syntax
# }

# text = <<TEXT
# I love Ruby.
# Python is a great language.
# Java and JavaScript are deifferent.
# TEXT

# p text.scan(/[A-Z][A-Za-z]+/)


# text  = <<TEXT
# 名前：伊藤淳一
# 電話：03-1234-5678
# 住所：兵庫県西脇市板波町1-2-3
# TEXT

# p text.scan /\d{2,5}-\d{1,4}-\d{4}/

# text = <<TEXT
# クープバゲットのパンは美味しかった。
# 今日はクープ バゲットさんに行きました。
# クープ　バゲットのパンは最高。
# ジャムおじさんのパン、ジャムが入ってた。
# また行きたいです。クープ・バゲット。
# クープ・バケットのパン、売り切れだった（><）
# TEXT

# p text.scan /クープ.?バ[ゲケ]ット/

# text =<<TEXT
# <select name="game_console">
# <option value="none"></option>
# <option value="wii_u">Wii U</option>
# <option value="ps4">プレステ4</option>
# <option value="gb">ゲームボーイ</option>
# <option value="x_box" selected>X BOX</option>
# </select>
# TEXT

# # p text.scan /value="[a-z0-9_]+"/
# # p text.scan />.+</

# #game = text.scan /<option value="([a-z0-9_]+)"(?: selected)?>(.*)<\/option>/
# #game = text.scan /<option value="(\w+)"(?: selected)?>(.*)<\/option>/
# game = text.gsub(/<option value="(\w+)"(?: selected)?>([^<]*?)<\/option>/, '\1,\2')

# puts game

# text =<<-TEXT
# {
#     japan:	'yen',
#     america:'dollar',
#     italy:     'euro'
#   }
# TEXT

# ruby_text =text.gsub(/:[\s]*/,': ')
# p ruby_text

# log =<<-TEXT
# Feb 14 07:33:02 app/web.1:  Completed 302 Found ...
# Feb 14 07:36:46 heroku/api:  Starting process ...
# Feb 14 07:36:50 heroku/scheduler.7625:  Starting ...
# Feb 14 07:36:50 heroku/scheduler.7625:  State ...
# Feb 14 07:36:54 heroku/router:  at=info method=...
# Feb 14 07:36:54 app/web.1:  Started HEAD "/" ...
# Feb 14 07:36:54 app/web.1:  Completed 200 ...
# TEXT

# log_text = log.gsub(/^.+heroku\/(api|scheduler).+\n/,'')

# puts log_text

# text = '私の誕生日は1994年11月12日です。'

# text =~ /(\d+)年(\d+)月(\d+)日/

# p $~
# puts $&
# p $1
# p $2
# p $3
# p $+

# class Product
#      attr_reader :name , :price

#      def initialize(name,price)
#           @name = name
#           @price = price
#      end

#      def self.format_price(price)
#           "#{price}"
#      end

#      def to_s
#           formatted_price= Product.format_price(price)
#           "name: #{name},price:#{formatted_price}"
#      end
# end

# product = Product.new("A great movie",1000)
# puts product.to_s

# #puts Product.methods.sort

# class DVD < Product
#      attr_reader :running_time
#      def initialize(name,price,running_time)
#           #@name=name
#           #@price = price
#           super(name,price)
#           @running_time = running_time
#      end

#      def to_s
#           #"name:#{name},price:#{price},runnning time:#{running_time}"
#           "#{super},runnning time:#{running_time}"
#      end

# end

# dvd = DVD.new('dvd A',100,120)
# dvd.to_s

# puts dvd.to_s

# class User
#      attr_reader :name
     
#      def initialize(name,weight)
#           @name = name
#           @weight = weight
#      end

#      def heavier?(other_user)
#           other_user.weight < @weight
#      end

#      protected 

#      def weight
#           @weight
#      end

# end

# ken = User.new("ken",55)
# alice = User.new("Alice",66)

# puts alice.heavier?(ken)

# class ConstTest
#      DEFAULT_PRICE = 0
# #     private_const :DEFAULT_PRICE

# end

# puts ConstTest::DEFAULT_PRICE
# ConstTest.freeze 
# ConstTest::DEFAULT_PRICE = 1000
# puts ConstTest::DEFAULT_PRICE

$program_name  = 'Awesome Program'

class Program
     def initialize(name)
          $program_name = name 
     end

     def self.name
          $program_nameend
     end

     def name
          $program_name
     end
end

puts $program_name
program = Program.new("new name")
puts $program_name

