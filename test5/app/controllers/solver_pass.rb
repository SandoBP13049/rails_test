# coding: UTF-8
require_relative '../../lib/solver/solve_execute.rb'
class SolverPass
  def pass(csp_place)
      reading_file = nil
      output_directory = "./public/docs/result"
      n = 1

      f = open(File.expand_path('../../../lib/solver//config.txt', __FILE__))
      dic_file = f.gets.chomp
      matrix_file = f.gets.chomp
      da_file = f.gets.chomp
      da_rev_file = f.gets.chomp
      f.close
puts "test6"
#puts "dic_file => #{dic_file}"
      solve = Solver::SolveExecute.new(csp_place,n,dic_file,reading_file,matrix_file,da_file,da_rev_file,output_directory)

      solve.execute()

  end

end
