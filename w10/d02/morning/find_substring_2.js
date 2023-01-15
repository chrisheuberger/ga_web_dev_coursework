function findSubstring(string, substring) {
  result = string.search(substring)
  if (result === -1) {
    return false
  } else {
    return result
  }
}

function findSubstring(string, substring) {
  for (var i = 0; i < string.length - substring.length; i++) {
    if (substring === string.substr(i, i+substring.length)) {
      return i
    }
  }
  return false
}
