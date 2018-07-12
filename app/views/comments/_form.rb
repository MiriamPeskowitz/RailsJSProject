
 <% if @soupkitchens.errors.any? %>
        <div id="error_explanation">
            <h2>
                <%= pluralize(soupkitchens.errors.count, "error") %> prohibited this user from being saved:
            </h2>

            <ul>
                <% @soupkitchens.errors.full_messages.each do |message| %>
                    <li>
                        <%= message %>
                    </li>
                    <% end %>
            </ul>
        </div>
        <% end %>


      <% if flash[:notice] %>
        <div class="notice"><%= flash[:notice] %></div>
    <% end %> 



<%= form_for([@soupkitchen, @comment]) do |f| %> 
  
    <%= f.label :title, "Title:" %><br>
    <%= f.text_field :title %>
    <br>
    <%= f.label :content, "Comment" %><br>
    <%= f.text_area :content, cols: 40, rows: 15 %>



  <%= f.submit %>
<% end %>
