// Validate the Name. It should return true if the name is greater than or equal 3 characters. If not, it should show the error and return false.
function validateName(name){
  var regex = /[a-zA-Z]{3}/;
  if (regex.test(name)){
    $("#user_name_error").hide();
    return true;
  } else {
    $("#user_name_error").show();
    return false;
  }
}

// Validate the Age. It should return true if the age is a number. If not, it should show the error and return false.
function validateAge(age){
  var regex = /\d/;
  if (regex.test(age)){
    $("#user_age_error").hide();
    return true;
  } else {
    $("#user_age_error").show();
    return false;
  }
}

// Validate the Phone Number. It should return true if the phone number matches the regular expression. If not, it should show the error and return false.
function validatePhone(phone){
  var regex = /\d{3}-\d{3}-\d{4}/;
  if (regex.test(phone)){
    $('#user_ph_error').hide();
    return true;
  } else {
    $('#user_ph_error').show();
    return false;
  }
}

// Validate the Email. It should return true if the email matches the regular expression. If not, it should show the error and return false.
function validateEmail(email){
  var regex = /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/
  if (regex.test(email)){
    $('#user_email_error').hide();
    return true;
  } else {
    $('#user_email_error').show();
    return false;
  }

}

// Write a function so that when the clear button is clicked, any data being displayed is erased.
function clearData(){
  var ul = $('#display_data');
  var inputs = $('#user_name, #user_age, #user_ph, #user_email');
  var spans = $('span');
  ul.html("");
  inputs.val("");
  spans.hide();
}

// Display function blanks out what is currently being displayed in the display_data area then displays the submitted user data as a list
function display(name, age, phone, email){
  var ul = $('#display_data');
  ul.html("");
  var userInfo = [name, age, phone, email]
  var title = ['Name: ', 'Age: ', 'Phone: ', "Email: "];
  for (var i = 0; i < userInfo.length; i++){
    var newEl = $('<li>');
    newEl.html(title[i] + userInfo[i]);
    ul.append(newEl);
  }
}

$(document).ready(function(){
  var userNameField = $('#user_name');
  var userAgeField = $('#user_age');
  var userPhoneField = $('#user_ph');
  var userEmailField = $('#user_email');
  var $add_user_data_form = $("#add_user_data");
  var $clear_button = $('#clear');
  // Store the appropriate items you will be selecting from the DOM into variables for easy usage
  // Initially hide the errors.  Check the HTML to see how to select all the items that are error messages.
  $('span').hide();
  // Set event handler
  $add_user_data_form.submit(function(){
    // Get values from user inputs
    var userNameText = userNameField.val();
    var userAgeText = userAgeField.val();
    var userPhoneText = userPhoneField.val();
    var userEmailText = userEmailField.val();
    // If all of the items validate, you should update the name, age, phone and email of the user and display it
    if(validateName(userNameText) && validateAge(userAgeText) && validatePhone(userPhoneText) && validateEmail(userEmailText)) {
      display(userNameText, userAgeText, userPhoneText, userEmailText);
    }
    return false; // This stops the form from processing (page reload). An alternative to preventDefault();
  });

  $clear_button.click(function(){
    clearData();
  })
});
