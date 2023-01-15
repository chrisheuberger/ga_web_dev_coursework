//Validate the Name. It should return true if the name is greater than or equal 3 characters. If not, it should show the error and return false.
function validateName(name){
  var nameRegex = /\w{3,}/;
  if (name.search(nameRegex) > -1){
    return true;
  } else {
    $('#user_name_error').show()
  };
};

// Validate the Age. It should return true if the age is a number. If not, it should show the error and return false.
function validateAge(age){
  var ageRegex = /\d+/;
  if (age.search(ageRegex) > -1){
    return true;
  } else {
    $('#user_age_error').show();
  }
};

// Validate the Phone Number. It should return true if the phone number matches the regular expression. If not, it should show the error and return false.
function validatePhone(phone){
  var phoneRegex = /\d{3}[-. ]?\d{3}[-. ]?\d{4}/;
  if (phone.search(phoneRegex) > -1){
    return true
  } else {
    $('#user_ph_error').show();
  };
};

// Validate the Email. It should return true if the email matches the regular expression. If not, it should show the error and return false.
function validateEmail(email){
  var emailRegex = /\w+@\w+.\w+/;
  if (email.search(emailRegex) > -1){
    return true
  } else {
    $('#user_email_error').show()
  };
};

//Write a function so that when the clear button is clicked, any data being displayed is erased.
function clearData(){
  $('#user_name').val('');
  $('#user_age').val('');
  $('#user_ph').val('');
  $('#user_email').val('');
};

//Display function blanks out what is currently being displayed in the display_data area then displays the submitted user data as a list
function display(){
  console.log('working?');
  var name = $('#user_name').val();
  var age = $('#user_age').val();
  var phone = $('#user_ph').val();
  var email = $('#user_email').val();
  var nameLi = $('#display_data').append($("<li>").attr("id","name-li"));
  var ageLi = $('#display_data').append($("<li>").attr("id","age-li"));
  var phoneLi = $('#display_data').append($("<li>").attr("id","phone-li"));
  var emailLi = $('#display_data').append($("<li>").attr("id","email-li"));
  $('#name-li').append(name);
  $('#age-li').append(age);
  $('#phone-li').append(phone);
  $('#email-li').append(email);
  clearData();
}

$(document).ready(function(){
  // Store the appropriate items you will be selecting from the DOM into variables for easy usage
  var $add_user_data_form = $('#add_user_data');
  // Initially hide the errors. Check the HTML to see how to select all the items that are error messages.
  $('span').hide();

  var $clear = $('#clear');
  $clear.click(function() {
    clearData();
  });

  // Set event handler
  $add_user_data_form.submit(function(e){
    // Get values from user inputs
    var name = $('#user_name').val();
    var age = $('#user_age').val();
    var phone = $('#user_ph').val();
    var email = $('#user_email').val();
    // If all of the items validate, you should update the name, age, phone and email of the user and display it
    if(validateName(name) && validateAge(age) && validatePhone(phone) && validateEmail(email)) {
      display();
    }
    return false; // This stops the form from processing (page reload). An alternative to preventDefault();
  });
});
