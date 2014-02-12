# #Morning Exercise - Shape maker

# ### Write a Sinatra application
require "sinatra"
require "sinatra/reloader"
require "pry"

# #### Phase 1:
# - Should have a response for a `get` request to '/'
# - The page should display a blue square (any size)
get "/" do
	erb :index
end


# #### Phase 2:
# - Add a form that appears on every page so that you can enter the number of squares that you want and submit that. The form should take you to the '/multiple' page
# - Your app should have a response for a `get` request to '/multiple'
# - The page should display the number of blue squares (any size) that are passed in to the parameter `:num`
get "/multiple/" do
	@num = params[:num].to_i
	# binding.pry
	erb :many
end


# #### Bonus
# - Experiment with other CSS shapes (circles, ovals, triangles)
# - Augment your form so that the user can specify what number and what shape they want
