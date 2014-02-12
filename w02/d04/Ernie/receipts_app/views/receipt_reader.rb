<%file = File.new("receipts.txt", "r") %>
    <% file.each do |lines| %>
      <% each_one = lines.split(",") %>
        <% if each_one[0] == "<%=@id %>" %>
          <h2><%= puts "Store: #{each_one[1]}" %></h2>
         <%= puts "Item: #{each_one[2]}" %>
          <%= puts "Cost: #{each_one[3]}" %>
      <%= puts %>
      <% else %>
        <%= puts "Store: #{each_one[1]}" %>
         <%= puts "Item: #{each_one[2]}" %>
          <%= puts "Cost: #{each_one[3]}" %>
      <% end %>
   <%  end %>
   <% file.close %>
