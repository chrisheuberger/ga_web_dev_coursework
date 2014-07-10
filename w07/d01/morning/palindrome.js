var isPalindrome = function(str){
  var i = 0;
  var j = str.length-1;
  while (i <= j){
    if (str[i] != str[j]){
      return false;
    }
    i++;
    j--;
  }
  return true;
}

var isPalindrome2 = function(string){
  for (var i = 0, j = string.length-1; i < string.length/2; i++, j--){
    if (string[i] != string[j]){
      return false;
    }
  }
  return true;
}

String.prototype.isPalindrome = function(){
  // return isPalindrome(this);
  var i = 0;
  var j = this.length-1;
  while (i <= j){
    if (this[i] != this[j]){
      return false;
    }
    i++;
    j--;
  }
  return true;
}
