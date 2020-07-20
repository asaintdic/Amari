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
<label>First Name: <input type="text" name="fname" size="30"></label><br>
<label>Last Name:  <input type="text" name="lname" size="30"></label>
</fieldset>

<fieldset>
<legend>Clothing Info</legend>
<label>Gender</label><br>
<input type="radio" name="female" value="female"> Female<br>
<input type="radio" name="male" value="male" checked> Male<br> 
<input type="radio" name="gender_neutral" value="gender_neutral"> Gender Neutral<br>
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