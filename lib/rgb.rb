def to_hex(r,g,b)
    [r,g,b].inject("#") do |hex,n|
        hex += n.to_s(16).rjust(2,"0")
    end
end

def to_ints(hex)
    r = hex[1..2]
    g = hex[3..4]
    b = hex[5..6]
    [r,g,b].map do |s|
        s.hex
    end

end

#puts to_hex(255,255,255)
#puts to_ints("#000000")

fruits = ['orange' , 'apple' , 'melon']
fruits.each_with_index{|fruit,i| puts"#{i}:#{fruit}"}
fruits.delete_if.with_index{|fruit,i|fruit.include?('a')&&i.odd?}
p fruits