# coding: UTF-8
puts "test1"
require_relative './convert.rb'
puts "test2"
require_relative './solver_pass.rb'
puts "test3"
class SolverController < ApplicationController
  protect_from_forgery :except => [:pass]
  #include RS::CSP::SolveExecute

  #require_relative '../../solver/convert.rb'
  #require_relative '../../solver/solve_execute.rb'

  def pass

    file = params[:file]
    file_name = file.original_filename
    puts "filename = #{file_name}"

    perms = ['.json']

    if !perms.include?(File.extname(file_name).downcase)
      result = 'only can use json file'
      puts "#{result}"
    else
      file_data = File.read(file.tempfile)
      File.open("public/docs/json/#{file_name}",'wb') { |f| f.write(file.read) }
      con=Convert.new
      csp_data = con.convert(file_data)
      puts "success convert "
      csp_place = "public/docs/csp/#{File.basename(file_name,".json")}.csp"
      File.open("#{csp_place}",'wb') { |f| f.write(csp_data) }

      #test
	  p "domain => #{csp_data[:vars].dup[:_16]}"

	  #testend

      puts "test4"
      #puts "src= #{SRC.class}"

      solver = SolverPass.new
      puts "src= #{solver.class}"
      #csp_place = "../../public/docs/csp/ise2_1.csp"
      solver.pass(csp_place)
      puts "test5"
      #load (Rails.root + 'app/controllers/test.rb').to_s
      result = 'ok!'
      puts "#{result}"

    end

  end

  def get
  end

end
