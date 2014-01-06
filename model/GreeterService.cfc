// This CFC uses the "singleton" annotation, so WireBox will only create one instance of it.
component singleton {

	function greet(required person) {
		return "Hello #person.getName()#!";
	}

}