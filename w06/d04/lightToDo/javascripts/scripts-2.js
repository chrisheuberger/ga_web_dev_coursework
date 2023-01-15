console.log("Hi console viewer");

// namespace stuff so that it's not accessible outside of where it's needed
var toDoApp = {
  // constructor function
  // abilities and features unique to individual instances
  ToDoItem: function(taskText){
    this.taskText = taskText;
    this.el = undefined;
  },

  tasksList: function() {
    return document.getElementById('todo-items');
  },

  createTask: function(taskText) {
    var task = new toDoApp.ToDoItem(taskText);
    this.tasksList().appendChild(task.render().el);
  }
};

// abilities and features shared by all instances
toDoApp.ToDoItem.prototype.render = function(){
  var liEl = document.createElement('li');
  var buttonEl = document.createElement('button');

  buttonEl.addEventListener('click', function(e){
    var liEl = e.target.parentNode;
    var olEl = liEl.parentNode;
    liEl.style.textDecoration = 'line-through';
  });

  buttonEl.innerHTML = "Done";
  liEl.innerHTML = this.taskText;
  liEl.appendChild(buttonEl);
  this.el = liEl;
  return this;
}

window.onload = function(){
  var taskButton = document.getElementById('add-item');
  var userInput = document.getElementById('new-task-field');

  taskButton.addEventListener('click', function(){
    toDoApp.createTask(userInput.value);
  });
}
