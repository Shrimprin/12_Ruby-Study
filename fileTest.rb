require 'fileutils'

FileUtils.mv("E:/99_temp/zzzzzass.txt","E:/zzzzzass.txt")

File.open('E:\99_temp\zzzzzass.txt','w') do |f|
    f.puts 'aaaaaaaaaaaaaaaaa'
end
