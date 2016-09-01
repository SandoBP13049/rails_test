# coding: UTF-8
class UploadController < ApplicationController
  protect_from_forgery :except => [:test]

#def test
  #file = param[:upfile]

  #name = file.original_filename

    #puts "filename = #{name}"
    #data = File.read(file.tempfile)
    #puts "filedata = #{data}"


  #perm = ['.json']

  #if !params.include?(File.extname(name).downcase)
    #result = 'jsonファイルとtxtファイルのみに対応しています'

  #elseif file.size > 1.megabyte
    #result = 'ファイルサイズは1MBまでです'
 
  #else
    #File.open{"public/docs/#{name}",'wb') { |f| f.write(file.read) }
    #File.write("./public/docs/#{name}",File.read(file.tempfile))
    #result = "#{name}をうけとりました"
  #end

#puts "#{result}"


#end

  def test()
  file = params[:upfile]

  name = file.original_filename


  perms = ['.json','.txt']

  if !perms.include?(File.extname(name).downcase)
    result = 'only can use json or txt file'
  else
    puts "filename = #{name}"
    data = File.read(file.tempfile)
    puts "filedata = #{data}"

    File.open("public/docs/#{name}",'wb') { |f| f.write(file.read) }
    send_file "public/docs/#{name}" , filename: 'send_test.txt'
    result = "to receive #{name}"
  end
  puts "#{result}"

  end

end
