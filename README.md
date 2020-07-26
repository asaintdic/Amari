FORMS
Login
<h3>Login</h3>
<form action="/" method="POST">
  <input type="text" name="username" placeholder="Username:">
  <input type="password" name="password" placeholder="Password:">
  <input type="submit" value="Log In">
</form>

Sign-Up
<h3>Sign Up</h3>
<form action="/" method="POST">
  <input type="text" name="username" placeholder="Username:">
  <input type="password" name="password" placeholder="Password:">
  <input type="submit" value="Sign Up">
</form>

In Need


<form method="POST" action="/">
<fieldset>
<legend>Clothing Request Form</legend>
<label>First Name: <input type="text" name="first_name" size="30"></label><br>
<label>Last Name:  <input type="text" name="last_name" size="30"></label>
</fieldset>

<fieldset>
<legend>Clothing Info</legend>
<label>Shoe Size:</label><br>
<select name="gender">
  <option>Womens</option>
  <option>Mens</option>
  <option selected>Neutral</option>
</select>
<label>Clothing Size:</label><br>
<select name="clothing_size">
  <option>XXS</option>
  <option>XS</option>
  <option selected>S</option>
  <option>M</option>
  <option>L</option>
  <option>XL</option>
  <option>XXL</option>
  <option>XXL</option>
</select>
<br>
<label>Shoe Size:</label><br>
<select name="shoe_size">
  <option>W 6/M 4</option>
  <option>W 6.5/M 4.5</option>
  <option selected>W 7/M 5</option>
  <option>W 7.5/M 5.5</option>
  <option>W 8/M 6</option>
  <option>W 8.5/M 6.5</option>
  <option>W 9/M 7</option>
  <option>W 9.5/M 7.5</option>
  <option>W 10/M 8</option>
  <option>W 10.5/M 8.5</option>
  <option>W 11/M 9</option>
  <option>W 11.5/M 9.5</option>
  <option>W 12/M 10</option>
  <option>W 12.5/M 10.5</option>
  <option>W 13/M 11</option>
  <option>W 13.5/M 11.5</option>
  <option>W 14/M 12</option>
  <option>W 15/M 13</option>
  <option>W 16/M 14</option>
</select>
<label>Desired Clothing Type (check all that apply):</label><br>
<input type="checkbox" name="top" value="1"> Top
<input type="checkbox" name="bottom" value="1"> Bottom<br>
<input type="checkbox" name="shoe" value="1"> Shoe
<input type="checkbox" name="outerwear" value="1"> Jacket<br>
<input type="checkbox" name="bag" value="1"> Bag
<input type="checkbox" name="accessories" value="1"> Accessories
<br>
<label>Any additional notes on the above request:</label><br>
<textarea name="request" cols="70" rows="4"></textarea>
</fieldset>
<button type="submit">Submit my information</button>
</form>

<h1>Insert the form to create a new instance of your model.</h1>
<h3>Sign Up</h3>
<form action="/users/show" method="POST">
<label for="username">Username:</label>
<input type="text" name="username" required><br>
<label for="password">Password:</label>
  <input type="password" name="password" required><br>
  <label for="confirm_password">Confirm Password:</label>
  <input type="password" name="password" required><br>
  <input type="submit" value="Sign Up">
  </form>

  <!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <title>Amari Donation and Request Manager</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
 </head>
  <body>
    <div class ='wrapper'>
     <nav class="black darken-2">
      <ul class="top right">
        <li><a href="/new">Create Account</a></li>
        <li><a href="/login">Login</a></li>
     <li><a href="/logout">Logout</a></li>
   </ul>
 </div>
    <div class="wrapper">
        <%= yield %>
      <footer class="branding">
       <ul class="bottom left">
        <small>&copy; 2020 <strong>Amari Donation and Request Manager</strong></small>
      </ul>
      </footer>
    </div>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
     <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <!--[if lt IE 7]>
      <script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.2/CFInstall.min.js"></script>
      <script>window.attachEvent("onload",function(){CFInstall.check({mode:"overlay"})})</script>
    <![endif]-->
  </body>
</html>



<form method="POST" action="/">
<fieldset>
<legend>Clothing Request Form</legend>
<label>First Name: <input type="text" name="fname" size="30"></label><br>
<label>Last Name:  <input type="text" name="lname" size="30"></label>
</fieldset>

<fieldset>
<legend>Clothing Info</legend>
<label>Gender</label><br>
<select name="gender">
  <option>Womens</option>
  <option>Mens</option>
  <option selected>Neutral</option>
</select>
</fieldset>
<fieldset>
<select name="clothing_size">
  <option>XXS</option>
  <option>XS</option>
  <option selected>S</option>
  <option>M</option>
  <option>L</option>
  <option>XL</option>
  <option>XXL</option>
  <option>XXL</option>
</select>
</fieldset>
<br>
<fieldset>
<label>Shoe Size:</label><br>
<select name="shoe_size">
  <option>W 6/M 4</option>
  <option>W 6.5/M 4.5</option>
  <option selected>W 7/M 5</option>
  <option>W 7.5/M 5.5</option>
  <option>W 8/M 6</option>
  <option>W 8.5/M 6.5</option>
  <option>W 9/M 7</option>
  <option>W 9.5/M 7.5</option>
  <option>W 10/M 8</option>
  <option>W 10.5/M 8.5</option>
  <option>W 11/M 9</option>
  <option>W 11.5/M 9.5</option>
  <option>W 12/M 10</option>
  <option>W 12.5/M 10.5</option>
  <option>W 13/M 11</option>
  <option>W 13.5/M 11.5</option>
  <option>W 14/M 12</option>
  <option>W 15/M 13</option>
  <option>W 16/M 14</option>
</select>
</fieldset>
<label>Desired Clothing Type (check all that apply):</label><br>
<input type="checkbox" name="top" value="1"> Top
<input type="checkbox" name="bottom" value="1"> Bottom<br>
<input type="checkbox" name="shoe" value="1"> Shoe
<input type="checkbox" name="outerwear" value="1"> Jacket<br>
<input type="checkbox" name="bag" value="1"> Bag
<input type="checkbox" name="accessories" value="1"> Accessories
<br>
<label>Any additional notes on the above request:</label><br>
<textarea name="request" cols="70" rows="4"></textarea>
</fieldset>
<button type="submit">Submit my information</button>
</form>


<h1> ALL EXISTING REQUESTS FOR THAT USER GOES HERE </h1>

<% Request.all.map do |req|    %>
<% if req.user_id == @user.id %>
<h3><%= req.first_name %></h3> 
<% else %>
<h4><%=  You have no requests %></h4>
<% end %>
<% end %>

<form action="/users/new" method="POST">
  <input type="text" name="username" placeholder="First Name:">
  <input type="text" name="username" placeholder="Last Name:">
  <input type="text" name="username" placeholder="Email:">
  <input type="text" name="username" placeholder="Username:">
  <input type="password" name="password" placeholder="Password:">
  <input type="submit" value="Sign Up">
</form>


<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <title>Amari Donation and Request Manager</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
 </head>
  <body>
    <div class ='wrapper'>
     <nav class="black">
     <div class="container">
      <a href="/" class="brand-logo">Amari</a>
      <ul class="right">
      <% unless logged_in? %>
        <li><a href="/users/new">Create Account</a></li>
        <li><a href="/users/login">Login</a></li>
      <% else %>
        <li><%= current_user.username %></li>
        <li><a href="/logout">Logout</a></li>
      <% end %>
   </ul>
 </div>
 </div>
    <div class="wrapper">
     <div class="container z-depth-1">
        <%= yield %>
      <footer class="branding">
       <ul class="bottom left">
        <small>&copy; 2020 <strong>Amari Donation and Request Manager</strong></small>
      </ul>
      </footer>
    </div>
    </div>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
     <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <!--[if lt IE 7]>
      <script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.2/CFInstall.min.js"></script>
      <script>window.attachEvent("onload",function(){CFInstall.check({mode:"overlay"})})</script>
      <script>   
         $(document).ready(function(){
           $('select').formSelect();
         });
      </script>
  </body>
</html>



<h3> Clothing Request Form </h3><br>
  <div class="row">
    <form method="POST" action="/request/new">
          <h6>Please enter your first and last name:</h6><br>
            <div class="row">
              <div class="input-field col s6">
              <input id="first_name" type="text" class="validate">
                <label for="first_name">First Name</label>
              </div>
              <div class="input-field col s6">
                <input id="last_name" type="text" class="validate">
                <label for="last_name">Last Name</label>
              </div>
            </div>
            <p>
            <h6>Gender:</h6><br>
            <p>
          <label>
            <input name="gender" value="womens" type="radio" />
            <span>Womens</span>
          </label>
        </p>
          <p>
            <label>
              <input name="gender" value="mens" type="radio" />
              <span>Mens</span>
            </label>
          </p>
          <p>
          <label>
            <input name="gender" value="neutral" type="radio" />
            <span>Neutral</span>
          </label>
        </p>
        
        <div class="row">
          <div class="input-field col s6">
          <input id="clothing_size" type="text" class="validate">
            <label for="clothing_size">Clothing Size</label>
          </div>
          <div class="input-field col s6">
            <input id="shoe_size" type="text" class="validate">
            <label for="shoe_size">Shoe Size(ex:7.5w)</label>
          </div>
        </div>
        <p>
        <h6>Please select desired clothing types:</h6><br>
        <label for="top">
          <input id="top" type="checkbox" />
          <span>Top</span>
        </label>
      </p>
      <p>
      <label for="bottom">
        <input id="bottom" type="checkbox" />
        <span>Bottom</span>
      </label>
      </p>
      <p>
      <label for="shoe">
        <input id="shoe" type="checkbox" />
        <span>Shoe</span>
      </label>
      </p>
      <p>
      <label for="outerwear">
        <input id="outerwear" type="checkbox" />
        <span>Outerwear</span>
      </label>
      </p>
      <p>
      <label for="bag">
        <input id="bag" type="checkbox" />
        <span>Bag</span>
      </label>
      </p>
      <p>
      <label for="accessories">
        <input id="accessories" type="checkbox"  />
        <span>Accessories</span>
      </label>
      </p>
      

      <br>
      <div class="input-field col s12">
      <h6>Any additional notes on the above request:</h6><br>
      <textarea name="request" cols="70" rows="4"></textarea>
      </fieldset>
      <input type="submit" value="submit">Submit my information</button>
  </div>
</form>




<%current_user.requests.each do |req|%>
   <p> <%= req.add_info %> <a class="waves-effect waves-light btn-small">Edit</a><a class="waves-effect waves-light btn-small">Delete</a></>
<% end %>