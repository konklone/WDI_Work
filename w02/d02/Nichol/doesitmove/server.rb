require "sinatra"
require "sinatra/reloader"
require "erb"
require "pry"

# module Variables

# 	def Variables.set_it_up(string)
# 		@choice1 = "yes"
# 		@choice2 = "no"
		
# 		@string_for_url1 = string.chomp("?").delete " "
# 		@url_link_choice1 = @string_for_url1 +  "/" + @choice1
		
# 		@string_for_url2 = string.chomp("?").delete " "
# 		@url_link_choice2 = @string_for_url2 +  "/" + @choice2
# 	end
# end

class Problem
	attr_accessor :doesitmove, :shoulditmove

end

$my_problem = Problem.new #problem with scope!

get "/" do	
	erb :splash
end

get "/doesitmove/" do
	@string = "does it move?"
	#binding.pry
	#Variables.set_it_up(@string)
	@choice1 = "yes"
	@choice2 = "no"
	
	@string_for_url1 = @string.chomp("?").delete " "
	@url_link_choice1 = @string_for_url1 +  "/" + @choice1
	
	@string_for_url2 = @string.chomp("?").delete " "
	@url_link_choice2 = @string_for_url2 +  "/" + @choice2

	erb :yes_no
end

get "/doesitmove/yes" do
	$my_problem.doesitmove = true

	@string = "should it?"
	@choice1 = "yes"
	@choice2 = "no"
	
	@string_for_url = @string.chomp("?").delete " "
	@url_link_choice1 = @string_for_url +  "/" + @choice1
	
	@string_for_url2 = @string.chomp("?").delete " "
	@url_link_choice2 = @string_for_url2 +  "/" + @choice2

	erb :yes_no
end

get "/doesitmove/no" do
	$my_problem.doesitmove = false

	@string = "should it?"
	@choice1 = "yes"
	@choice2 = "no"
	
	@string_for_url = @string.chomp("?").delete " "
	@url_link_choice1 = @string_for_url +  "/" + @choice1
	
	@string_for_url2 = @string.chomp("?").delete " "
	@url_link_choice2 = @string_for_url2 +  "/" + @choice2

	erb :yes_no
end

get "/shouldit/yes" do
	$my_problem.shoulditmove = true
	#binding.pry
	if ($my_problem.doesitmove == true) && ($my_problem.shoulditmove == false) then
		erb :ductape
	elsif ($my_problem.doesitmove == false) && ($my_problem.shoulditmove == true) then
		erb :wd40
	else
		erb :no_problem
	end

end

get "/shouldit/no" do
	$my_problem.shoulditmove = false
	
	if ($my_problem.doesitmove == true) && ($my_problem.shoulditmove == false) then
		erb :ductape
	elsif ($my_problem.doesitmove == false) && ($my_problem.shoulditmove == true) then
		erb :wd40
	else
		erb :no_problem
	end
end
