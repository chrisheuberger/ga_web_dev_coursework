
function TodoItem(taskText){
  this.taskText = taskText;
  this.el = undefined;
}

TodoItem.prototype.render = function(){
  var liEl = document.createElement('li');
  liEl.innerHTML = this.taskText;
  this.el = liEl;
  return this;
};

var toDoApp = {
  tasks: function(){
    return document.getElementById('todo-items');
  },
  createTask: function(taskText){
    var task = new TodoItem(taskText);
    this.appendTask(task);
  },
  appendTask: function(task){
    this.tasks().appendChild(task.render().el);
  }
};

window.onload = function(){
  var userInput = document.getElementById('new-task-field');
  var button = document.getElementById('add-item');
  button.addEventListener('click', function(){
    toDoApp.createTask(userInput.value);
  })
}

