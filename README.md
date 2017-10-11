# Collection Partials

Use partials, they are key to reducing duplication (DRY).

Using a collection partial will work as long as you are following Rails convention.

app/controllers/todos_controller.rb
```
class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end
 end
```

index.html.erb
```
<%= render partial: 'todo', collection: @todos %>
```

_todo.html.erb
```
<%= todo.name %>
```

---------------------------------------------------------

## How your code might look without using a partial

```
<div class="post_wrapper">
  <% @posts.each do |post| %>
      <h2 class="title">Title: <%= link_to post.title, post %></h2>
      <p class="date">Body: <%= post.created_at.strftime("%B, %d, %Y") %>.</p>
  <% end %>
</div>
```

---------------------------------------------------------
 
## Rails offers a great way to render a collection using a partial by passing the collection option to the render method.

```
<div class="post_wrapper">
 <%= render partial: 'post', :collection => @posts %>
</div>
```

---------------------------------------------------------

## Another even more abstract method Rails gives us to do this is passing an array directly to the render method

Under the hood Rails uses the convention that you will have a partial with the name of the models in the collection.
```
<div class="post_wrapper">
 <%= render @posts %>
</div>
```

---------------------------------------------------------
## What if the collection is empty?

If you don't handle this exception the render method will return nil and nothing will appear on the screen. 

A useful trick is to use the || operator to print something to the screen to alert the user to this.


```
<p>
 <%= render(@posts) || "There are no blog posts!" %>
</p>
```

---------------------------------------------------------

You can also render more than one collection!
```
<%= render [@posts, @comments] %>
```

---------------------------------------------------------
Additional resources:
http://guides.rubyonrails.org/v2.3/layouts_and_rendering.html
http://api.rubyonrails.org/v5.1/classes/ActionView/PartialRenderer.html
https://richonrails.com/articles/partials-in-ruby-on-rails
https://learn.co/lessons/rendering-collections-reading
https://robots.thoughtbot.com/rendering-collections-in-rails
