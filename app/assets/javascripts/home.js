function validateForm() {
  var start = document.forms["createGraph"]["start"].value;
  var end = document.forms["createGraph"]["end"].value;
  var incr = document.forms["createGraph"]["incr"].value;

  if (!start || !end || !incr || start.trim() == "" || end.trim() == "" || incr.trim() == "" ){
  	alert ("Any of the values Start End or Incr cant be empty");
  	return false;
  }

  if (isNaN(start)){
  	alert ("Start should be a number");
  	return false;
  }

  if (isNaN(end)){
  	alert ("End should be a number");
  	return false;
  }
  
  if (isNaN(incr)){
  	alert ("Incr should be a number");
  	return false;
  }

  if (start > end) {
  	alert ("Start cannot be greater than End");
  	return false;
  }
}