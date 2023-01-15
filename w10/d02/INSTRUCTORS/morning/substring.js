// .substr() or .substring() may come in handy

function findSubstring(string, substring){
  for (var i = 0; i < string.length; i++){
    if (substring == string.substr(i, substring.length)){
      return i;
    }
  }
  return false;
}
