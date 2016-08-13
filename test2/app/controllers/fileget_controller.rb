# coding: UTF-8
class FilegetController < ApplicationController
  protect_from_forgery :except => [:receive]

  def index
  end


  def receive()
    File.write("./app/tmp/#{params[:file].original_filename}",File.read(params[:file].tempfile))
#Žó‚¯Žæ‚Á‚½ƒtƒ@ƒCƒ‹‚ðapp/tmp‚É•Û‘¶

    puts "file = #{params[:file]}"
    puts "filename = #{params[:file].original_filename}"
    data = File.read(params[:file].tempfile)
    puts "filedata = #{data}"
  end

end
