
/////////////////////////////////////////////////
// // SMALL FAST VERSION
/////////////////////////////////////////////////

// $(function(){
//   $('#todo-form').on('submit', function(e){
//     var userField = $('#item-field');
//     var newItem = $('<li>').html(userField.val());
//     userField.val('');
//     $('#todo-list').prepend(newItem);
//     return false;
//   });
// })


/////////////////////////////////////////////////
// // Breaking app into smaller pieces
/////////////////////////////////////////////////


// function Item(taskText){
//   this.taskText = taskText;
//   this.el = undefined;
// }

// Item.prototype.render = function(){
//   var listItem = $('<li>').html(this.taskText);
//   this.el = listItem;
//   return this;
// };

// function createTask(){
//   var userField = $('#item-field');
//   var newItem = new Item(userField.val())
//   var newNode = newItem.render().el;
//   $('#todo-list').append(newNode);
//   return false;
// }

// $(function(){
//   $('todo-form').on('submit', createTask);
// })






/////////////////////////////////////////////////
// // Namespacing the app
/////////////////////////////////////////////////

var toDoApp = {
  Item: function(taskText){
    this.taskText = taskText;
    this.el = undefined;
  },
  createTask: function(){
    var userField = $('#item-field');
    var newItem = new this.Item(userField.val())
    var newNode = newItem.render().el;
    $('#todo-list').append(newNode);
    return false;
  }
}

toDoApp.Item.prototype.render = function(){
  var listItem = $('<li>').html(this.taskText);
  this.el = listItem;
  return this;
};

$(function(){                  // golf card       player    foodball
  $('#todo-form').on('submit', function(){ return toDoApp.createTask();});
})






/////////////////////////////////////////////////
// Andrew's fast reaction to Aldric's reaction to our fast version...
// After Andrew said '...' he built this very fast...
/////////////////////////////////////////////////

// function ToDoApp(formCssSelector, listCssSelector){
//   this.formCssSelector = formCssSelector;
//   this.$formEl = $(formCssSelector);
//   this.$el = $(listCssSelector);
//   this.$userField = this.$formEl.find('input')
// }

// ToDoApp.prototype.initialize = function(){
//   var that = this;
//   this.$formEl.on('submit', function(){
//     that.createTask();
//     that.$userField.val('');
//     return false;
//   });
// }

// ToDoApp.prototype.Item = function(taskText){
//     this.taskText = taskText;
//     this.el = undefined;
//   }

// ToDoApp.prototype.createTask = function(){
//     var newItem = new this.Item(this.$userField.val());
//     var newNode = newItem.render().el;
//     this.$el.append(newNode);
//     return false;
// };

// ToDoApp.prototype.Item.prototype.render = function(){
//   var listItem = $('<li>').html(this.taskText);
//   this.el = listItem;
//   return this;
// };


// var app;
// $(function(){
//   app = new ToDoApp('#todo-form', '#todo-list').initialize();
// })
