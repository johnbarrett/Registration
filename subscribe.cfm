
		
<p><!--- Prompt User To Enter information --->
<form action="subscribe_output.cfm" method="post">
  <table width="311" border="0">
  <tr>
      <td>Name</td>
      <td><input type="text" name="first_name" required="yes"></td>
    </tr>
    <tr>
      <td>Last Name</td>
      <td><input type="text" name="last_name" required="yes"></td>
    </tr>
    
    <tr>
     <td>Email</td>
      <td><input type="text" name="email_address" required="yes"></td>
    </tr>
    <tr>
     <tr>
     <td>Phone</td>
      <td><input type="telephone" name="phone" required="yes"></td>
    </tr>
    <tr>
    <tr>
      <td><label>Location</label></td>
      <td><select id = "location" name="location">
      		<option value="maui">Maui</option>
                <option value="honolulu">Honolulu</option>
          </select>
    </td>
    </tr>
    <tr>
      <td>username</td>
      <td><input type="text" name="user_name" required="yes"></td>
    </tr>
    <tr>
      <td>Password</td>
      <td><input type="password" name="pass" required="yes"></td>
    </tr>
    <tr>
    
      <td></td>
      <td><input type="submit" name="SubmitForm" value="subscribe"></td>
    </tr>
  </table>
</form> 
