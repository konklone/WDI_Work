require 'sinatra'

calculator_history = {}

get ("/") do
  "wolceme to teh claculotar!"
end

get("/calculator") do
  calculator_history.values.join(", ")
end

get("/calculator/:id") do 
    id = params[:id].to_i
    entry = calculator_history[id]

    if entry
      entry
      else
        "not foudn! dum-dum!"
      end

    end

get "/calculator/add" do
end

post "/calculator/add" do
  firstnum = params[:firstnum].to_i
  secondnum = params[:secondnum].to_i
  result = (firstnum+secondnum)

if calculator_history.keys.length == 0
  last_id = 0
  else
    last_id = calculator_history.keys.max
  end

    calculator_history[last_id + 1] = "#{firstnum}+#{secondnum} = #{result}"
end


post "/calculator/subtract" do
  firstnum = params[:firstnum].to_i
  secondnum = params[:secondnum].to_i
  result = (firstnum-secondnum)

if calculator_history.keys.length == 0
  last_id = 0
  else
    last_id = calculator_history.keys.max
  end
    calculator_history[last_id + 1] =   "#{firstnum}-#{secondnum} = #{result}"

end

post "/calculator/multiply" do
  firstnum = params[:firstnum].to_i
  secondnum = params[:secondnum].to_i
  result = (firstnum*secondnum)

if calculator_history.keys.length == 0
  last_id = 0
  else
    last_id = calculator_history.keys.max
  end
    calculator_history[last_id + 1] =   "#{firstnum}*#{secondnum} = #{result}"

end

post "/calculator/divide" do
  firstnum = params[:firstnum].to_i
  secondnum = params[:secondnum].to_i
  result = (firstnum/secondnum)

if calculator_history.keys.length == 0
  last_id = 0
  else
    last_id = calculator_history.keys.max
  end
    calculator_history[last_id + 1] =   "#{firstnum}/#{secondnum} = #{result}"

end


# last_calculation = calculator_history.keys.max  ### this needs to go somewhere

# end


# end




# post("/calculator/:operation") do
    # last_calculation = calculator_history.keys.max  ### this needs to go somewhere

#     operation = params[:operation]
    
#     if operation=="add"

