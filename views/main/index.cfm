<cfoutput>
<div>
	<h3>Use WireBox To Create Objects In ColdBox</h3>
	<p>
		The ColdBox MVC Platform comes embedded with WireBox for object creation.  WireBox requires no configuration to start using and will automatically look for objects that you request by name in the /model folder.  Ask WireBox to only create a single instance of CFC by adding the "singleton" annotation to the component.  In our example, we use getModel() to request our CFCs.
		<a class="btn btn-primary pull-right" href="https://github.com/ColdBox/cbox-refcards/raw/master/WireBox/WireBox-Refcard.pdf" target="_blank" title="WireBox Ref Card" rel="tooltip">
			<strong>WireBox Ref Card</strong>
		</a>
	</p>
</div>
<br>
<div class="row">
	<!--- Request our singleon GreeterService.  --->
	<cfset greeterService = getModel("GreeterService")>
	
	<!--- Create a person called Brad Wood --->
	<cfset brad = getModel("person").setName("Brad Wood")>
	<p>
		<!--- Greet Brad --->
		#greeterService.greet(brad)#
	</p>
	
	
	<!--- Create a different person called Luis Majano --->
	<cfset luis = getModel("person").setName("Luis Majano")>
	<p>
		<!--- Greet Luis --->
		#greeterService.greet(luis)#
	</p>
	
	
	<!--- Who gets stuck with all the bad luck? --->
	<cfset donald = getModel("person").setName("Donald Duck")>
	<p>
		<!--- Since our service is a singleton, calling getModel() again will 
			return the same instance we had above --->
		#getModel("GreeterService").greet(donald)#
	</p>
	
		
</div>
</cfoutput>