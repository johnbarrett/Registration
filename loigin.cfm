
		
<p><!--- Prompt User To Enter information --->
<cfform action="subscribe_output.cfm" method="post">
  <table width="311" border="0">
      <td>Name</td>
      <td><cfinput type="text" name="name" required="yes"></td>
    </tr>
    <tr>
     <td>Email</td>
      <td><cfinput type="text" name="email_address" required="yes"></td>
    </tr>
    <tr>
     <tr>
     <td>Phone</td>
      <td><cfinput type="telephone" name="phone" required="yes"></td>
    </tr>
    <tr>
    <tr>
      <td>Password</td>
      <td><cfinput type="password" name="pass" required="yes"></td>
    </tr>
    <tr>
      <td><label>Location</label></td>
            <td><select id = "location" name="location">
						    <option value="maui">Maui</option>
                <option value="hilo">Hilo</option>
                <option value="kona">Kona</option>
                <option value="molokai">Molokaʻi</option>
                <option value="lanai">Lānaʻi</option>
                <option value="kauai">Kauai</option>
                <option value="waianae">Waiʻanae</option>
                <option value="honolulu">Honolulu</option>
                <option value="koolaupoko">Koʻolaupoko</option>
                <option value="haleaha">Haleʻaha</option>
								<option value="Msaolipreneur Lānai">Maolipreneur Lānaʻi</option>
            </select></td>
    </tr>
    <tr>
      <td></td>
      <td><cfinput type="submit" name="SubmitForm" value="subscribe"></td>
    </tr>
  </table>
</cfform> 