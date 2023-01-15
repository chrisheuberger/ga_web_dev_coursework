var signInApp = {
  Person: function(name) {
    this.name = name;
    this.el = undefined
  },

  createPerson: function(name) {
    var person = new this.Person(name);
    var nameList = $('.name-list')
    person.render();
    nameList.append(person.el)
  }
}

signInApp.Person.prototype.render = function render() {
  var liEl = $('<li>').html(this.name);
  this.el = liEl
  return this
}

$(function () {
  $('.name-form').on('submit', function(e) {
    e.preventDefault();
    var name = $('.name-input').val();
    signInApp.createPerson(name);
  })
})