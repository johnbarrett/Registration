<h1>Unsubscribe fom the mailing list</h1>
		
<cfform action="processing_page.cfm" method="post" enctype="multipart/form-data">

<div style="clear:both; padding-top:20px">
<label style="font-family:Arial; font-size:13px; color:#000099">Enter E-mail Address</label><br />
<cfinput name="email_addy" style="width:200px" maxlength="150" required="yes" validate="email">
</div>

<div style="clear:both; padding-top:10px">
<cfinput type="submit" name="submit" value="Remove">&nbsp;<cfinput type="reset" name="reset" value="Clear">
</div>

</cfform></p>
