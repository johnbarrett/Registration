
<!--- 
Get unique record id matching the e-mail address submitted 
--->
<cfquery 
			name="rs_get_record" 
            datasource="financialloi_main">
			SELECT 
            record_id
            , name 
            , email_address
			FROM 
            email_alerts 
			WHERE 
            email_address = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.email_addy#" />
</cfquery>



<cfif rs_get_record.recordcount>

<!--- 
Set subscriber name to variable for later use 
--->
<cfcookie name="name" value="#rs_get_record.name#">

<!--- 
Delete database record where record id matches the one obtained in get record cfquery.
 --->
<cfquery 
			name="rs_delete_record" 
            datasource="financialloi_main">
			DELETE
			FROM 
            email_alerts 
			WHERE 
            record_id = <cfqueryparam cfsqltype="cf_sql_integer" value="#rs_get_record.record_id#" />
</cfquery>

<!---
Redirect to unscribed completed page.
--->
<cflocation url="completed.cfm" addtoken="no">

<cfelse>

<!---
No record was found, redirect to "Not Found Page" for additional handling
and information
--->

<cflocation url="record_not_found.cfm" addtoken="no">

</cfif>
