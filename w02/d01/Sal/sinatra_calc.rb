require 'sinatra'

# A user should be given a menu of operations
# A user should be able to choose from the menu


answers = {}


get ("/") do 
    "Welcome to the CALCULATOR!"
end

get ("/calculator") do
  answers = answers.values.join(", ")
  "Here are your calculation answers: #{answers}"
end

get ("/calculator/:id") do 
  id = params[:id].to_i
  entry = answers[id]

  if entry
    entry
  else
    "NONE FOUND SILLY"
  end
end

# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
post ("/calculator/addition") do
  num_1 = params[:num_1].to_i
  num_2 = params[:num_2].to_i

  add_answer = (num_1 + num_2).to_s

  #TRIED THIS LOGIC TO PUSH CALCULATIONS INTO EMPTY ANSWER HASH IF IT IS EMPTY
  #  if answers.empty?
  #   answers[last_expression] = "#{params[:num_1]}+#{params[:num_2]}=#{add_answer}"
  # elsif !answers.empty?
  #   answers[last_expression +1] = "#{params[:num_1]}+#{params[:num_2]}=#{add_answer}"
  # end

  last_expression = answers.keys.max
  answers[last_expression +1] = "#{params[:num_1]}+#{params[:num_2]}=#{add_answer}"
end

post ("/calculator/subtraction") do
  num_1 = params[:num_1].to_i
  num_2 = params[:num_2].to_i

  add_answer = (num_1 - num_2).to_s

  last_expression = answers.keys.max
  answers[last_expression +1] = "#{params[:num_1]}-#{params[:num_2]}=#{add_answer}"
end

post ("/calculator/multiplication") do
  num_1 = params[:num_1].to_i
  num_2 = params[:num_2].to_i

  add_answer = (num_1 * num_2).to_s

  last_expression = answers.keys.max
  answers[last_expression +1] = "#{params[:num_1]}*#{params[:num_2]}=#{add_answer}"
end

post ("/calculator/division") do
  num_1 = params[:num_1].to_i
  num_2 = params[:num_2].to_i

  add_answer = (num_1 / num_2).to_s

  last_expression = answers.keys.max
  answers[last_expression +1] = "#{params[:num_1]}/#{params[:num_2]}=#{add_answer}"
end













