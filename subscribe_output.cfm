
			
<cfparam name="name" default="">
<cfparam name="form.email_address" default="">
<cfparam name="form.phone" default="">
<cfparam name="form.password"  default="">
<cfparam name="form.location" default="">

	<cfquery name="DupCheck" datasource="financialloi_main">
		SELECT *
		FROM  email_alerts 
		WHERE email_address = <cfqueryparam cfsqltype="cf_sql_varchar" value="#Form.email_address#" />
	</cfquery>

<!--- If our query shows a email match than using recordCount we can tell the user that his email address already exists in our database --->
<cfif DupCheck.recordCount GT "0">
    Your email is already Listed in our mailing list <br />
     Please go back to the <a href="subscribe.cfm">subscribe form</a> and try again.
   <!--- If our recordCount is not greater than "0" we continue on and process the new email address --->

   <cfelse>


    
	 <!--- Insert the new record --->
		<cfquery name="AddUser" datasource="financialloi_main">
		   INSERT INTO email_alerts (name,email_address,phone, pass, location, date)
		  VALUES ('#form.name#','#form.email_address#', '#form.phone#','#form.pass#' ,'#form.location#', #CreateODBCDateTime(Now())#)
		</cfquery>
		
	<cfoutput>
        Thank you #Name#,<br />
        Your email address [#email_address#] Has been entered into our mailing list. You'll receive the next mailing!
      </cfoutput>
</cfif>