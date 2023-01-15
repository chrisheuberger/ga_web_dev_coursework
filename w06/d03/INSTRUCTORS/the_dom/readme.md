# The DOM (Document Object Model)
####Learning objectives
- √ Create a DOM tree from a given section of HTML
- √ Describe the difference between ELEMENT NODE AND TEXT NODE
- √ Change the backgroundColor property of document.body

# Accessing nodes
####Learning objectives
- √ Explain difference between document.body and document.documentElement
- √ Explain the difference between node.childNodes and node.children

-  √ Traverse the DOM using:
  - firstChild, lastChild, firstElementChild, lastElementChild
  - previousSibling, nextSibling, previousElementSibling, nextElementSibling

Exercises:

- Grab the last element of your ul only previousSibling and lastChild

```js
document.body.lastChild.previousSibling.previousSibling.previousSibling.lastChild.previousSibling
```

- Grab the second element of your ul using only nextSibling and firstChild

```js
document.body.firstChild.nextSibling.firstChild.nextSibling.nextSibling.nextSibling
```

- Grab the first element of your ul using previousElementSibling and lastElementChild

```js
document.body.lastElementChild.previousElementSibling.lastElementChild.previousElementSibling.previousElementSibling
```


- Grab the second element of your ul using only nextElementSibling and firstElementChild

```js
document.body.firstElementChild.firstElementChild.nextElementSibling
```
# innerHTML
####Learning Objectives
- √ Modify an element Node using innerHTML.
- √ Append text to an existing node

# innerHTML
- √ We understand that Andrew Smells
- Write a function that takes a ul node as an argument. it should append '..the great' to each of it's lis.

- Write a method that replaces all lis with blue circles

# Attributes and Properties
- explain difference between attribute and property
- √ set an arbitrary attribute for a given set of Nodes
- √ set the class property of a given set of Nodes
- get the .value property of a text field


- write a function that gives each li in the ul a 'groovy' attribute set to 'true'
- write a function that gives each li in th ul a class of 'teacher'
- write a function that returns the value of a text field.

# FIND ELEMENTS IN THE DOM
####Learning objectives
- √ get an element by its id
- √ get a set of elements by tag name
- √ get a set of elements by class name and modify their properties

- Write a function that changes all instances of a given tag to a specified font.
- Write a function that: makes the background color of all objects with class 'colorizable' a specified color.

# MODIFYING LE DOM
####Learning objectives
- √ create an element using document.createElement
- √ create a text node using document.createTextNode
- √ append an element to the DOM using appendChild and insertBefore
- remove and replace an element in the DOM

Write a function buildSquares(num, size) that returns an array (length = num) of divs (height and width = size)

parentElem.insertBefore(elem, nextSibling)

parentElem.removeChild(elem)

parentElem.replaceChild(elem, currentElem)


















