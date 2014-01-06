<!--- This is our Coldbox view. --->
<cfoutput>

	<!--- Request our singleon GreeterService.  --->
	<cfset greeterService = getModel("GreeterService")>
	
	<!--- Create a person called Brad Wood --->
	<cfset brad = getModel("Person").setName("Brad Wood")>
	<p>
		<!--- Greet Brad --->
		#greeterService.greet(brad)#
	</p>
	
	
	<!--- Create a different person called Luis Majano --->
	<cfset luis = getModel("Person").setName("Luis Majano")>
	<p>
		<!--- Greet Luis --->
		#greeterService.greet(luis)#
	</p>
	
	
	<!--- Who gets stuck with all the bad luck? --->
	<cfset donald = getModel("Person").setName("Donald Duck")>
	<p>
		<!--- Since our service is a singleton, calling getModel() again will 
			return the same instance we had above --->
		#getModel("GreeterService").greet(donald)#
	</p>
	
		
</cfoutput>