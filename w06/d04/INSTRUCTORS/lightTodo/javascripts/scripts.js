
// function ToDoItem(taskText){
//   this.taskText = taskText;
//   this.el = undefined;
// }

// ToDoItem.prototype.render = function(){
//   var liEl = document.createElement('li');
//   liEl.innerHTML = this.taskText;
//   this.el = liEl;
//   return this;
// };


// var todoApp = {
//   tasksList: function(){
//     return document.getElementById('todo-items');
//   },
//   createTask: function(taskText){
//     var task = new ToDoItem(taskText);
//     task.render();
//     this.tasksList().appendChild(task.el);
//   }
// }












// ///////////////////////
// // Ben's version
// ///////////////////////

// var todoApp = {
//   ToDoItem: function(taskText){
//     this.taskText = taskText;
//     this.el = undefined;
//   },
//   tasksList: function(){
//     return document.getElementById('todo-items');
//   },
//   createTask: function(taskText){
//     var task = new this.ToDoItem(taskText);
//     this.tasksList().appendChild(task.render().el);
//   }
// };


// todoApp.ToDoItem.prototype.render = function(){
//   var liEl = document.createElement('li');
//   var buttonEl = document.createElement('button');

//   buttonEl.addEventListener('click', function(e){
//     // Needed to remove element
//     // var liEl = e.target.parentNode;
//     // var olEl = liEl.parentNode;
//     // olEl.removeChild(liEl);

//     // // Colors and fun and timed events
//     var liEl = e.target.parentNode;
//     var olEl = liEl.parentNode;
//     liEl.style.textDecoration = 'line-through'
//     setTimeout(function(){
//      olEl.removeChild(liEl);
//     }, 500);

//   })

//   buttonEl.innerHTML = 'Done';

//   liEl.innerHTML = this.taskText;
//   liEl.appendChild(buttonEl)

//   this.el = liEl;
//   return this;
// };

// window.onload = function(){
//   var taskButton = document.getElementById('add-item');
//   var userInput = document.getElementById('new-task-field');
//   taskButton.addEventListener('click', function(){
//     todoApp.createTask(userInput.value);
//   });
// };






///////////////////////
// Drill's version
///////////////////////

var todoApp = {
  ToDoItem: function(taskText){
    this.taskText = taskText;
    this.el = undefined;
  },
  tasksList: function(){
    return document.getElementById('todo-items');
  },
  createTask: function(taskText){
    var task = new this.ToDoItem(taskText);
    this.tasksList().appendChild(task.render().el);
  }
};


// <li>
//  <div>
//    Happy Thing I love to do
//  </div>
//  <span class="meta-data">
//    Created On: 5/30/2014
//  </span>
//  <div class="items">
//  </div>
//  <button class="complete">
//    completed
//  </button>
// </li>

todoApp.ToDoItem.prototype.dateSpan = function(text){
  var metaDataEL = document.createElement('span');
  var date = new Date();
  metaDataEL.innerHTML = text + ' ' +  date.toLocaleDateString();
  return metaDataEL;
}

todoApp.ToDoItem.prototype.render = function(){
  var that = this;
  // var self = this;

  var liEl = document.createElement('li');
  var itemsEl = document.createElement('div');
  var textEl = document.createElement('div');
  var actionsEl = document.createElement('div');
  var buttonEl = document.createElement('button');
  var metaDataEL = that.dateSpan('Created On:')

  itemsEl.className = 'items';
  actionsEl.className = 'actions';
  metaDataEL.className = 'meta-data';
  buttonEl.className = 'complete';

  buttonEl.innerHTML = 'completed';

  buttonEl.addEventListener('click', function(e){
    e.target.parentNode.children[0].style.textDecoration = 'line-through';
    var completedSpan = that.dateSpan('Competed On:');
    metaDataEL.appendChild(completedSpan);
  })

  textEl.innerHTML = this.taskText;

  liEl.appendChild(textEl);
  liEl.appendChild(metaDataEL);
  liEl.appendChild(itemsEl);
  liEl.appendChild(buttonEl);

  this.el = liEl;
  return this;
};

window.onload = function(){
  var taskButton = document.getElementById('add-item');
  var userInput = document.getElementById('new-task-field');
  taskButton.addEventListener('click', function(){
    todoApp.createTask(userInput.value);
  });
};

