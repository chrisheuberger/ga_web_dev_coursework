#WDility
- Build your own javascript library called WDility
- Recreate several **Ruby** methods in javascript


###Specification:

- Your WDility.js must include a:
  - .first(array)
  - .last(array)
  - .each(array, function)
  - .map(array, function)
  - .select(array, function)
- Extra:
  - .reject(array, function)
  - .unique(array)

####examples of use:

```javascript

var my_array = [1, 2, 3, 4];

WDility.first(my_array);       // Should return the value 1

```


```javascript

var my_array = [1,2,3,4];

Wdility.map(my_array, function(elem){ return elem * 2}); // Should return this array: [2,4,6,8,10]


```

---

#####Commit 1
- Create a `WDility.js` file
- Start the file by naming your library as shown here:

```javascript

var WDility = {};

```

---

#####Commit 2
- Build out a .each functionaity as shown here:

```javascript

var WDility = {
  each: function(array, func) {
    for (i in array){
      func(array[i]);
    }
    return array
  },

};

```

---

#####Commit 2-5
- Implement:
  - .first(array)
  - .last(array)
  - .map(array, function)
  - .select(array, function)

---

#####Commit 6-7 (Bonus)
- Implement:
  - .reject(array, function)
  - .unique(array)

