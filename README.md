# Collection Partials


# index.html.erb
<%= render partial: 'todo', collection: @todos %>

# _todo.html.erb
<% cache todo do %>
  <%= todo.name %>
<% end %>

---------------------------------------------------------


<div class="post_wrapper">
  <% @posts.each do |post| %>
      <h2 class="title">Title: <%= link_to post.title, post %></h2>
      <p class="date">Body: <%= post.created_at.strftime("%B, %d, %Y") %>.</p>
  <% end %>
  <br><br>
</div>

---------------------------------------------------------
<br>
<p>Rails offers a great way to render a collection using a partial by passing the collection option to the render method.</p>

<div class="post_wrapper">
	<%= render partial: 'post', :collection => @posts %>
	<br><br>
</div>

---------------------------------------------------------
<br>
<p>Another even more abstract method Rails gives us to do this is passing an array directly to the render method</p>
<p>Under the hood Rails uses the convention that you will have a partial with the name of the models in the collection. </p>

 <div class="post_wrapper">
	<%= render @posts %>
	<br><br>
</div>


---------------------------------------------------------
<br>
<p>What if the collection is empty?</p>
<p>If you don't handle this exception the render method will return nil and nothing will appear on the screen. A useful trick is to use the || operator to print something to the screen to alert the user to this.</p>

<p>
	<%= render(@posts) || "There are no blog posts!" %>
</p>


---------------------------------------------------------

You can also render more than one collection!

<%= render [@posts, @comments] %>


---------------------------------------------------------


