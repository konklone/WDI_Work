<% @all_users.each do |user| %>
  <% @user_array = user.split(",") %>
  <%= erb :user %>
<% end %>