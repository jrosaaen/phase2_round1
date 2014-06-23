/* Write your code for the plain-old-js-objects-spec here */

FRUIT_BEARING_AGE = 5
MAX_AGE = 10

var createTree = function() {
  var tree = {
    age: 0,
    height: 0,
    orangeCount: 0,
    isAlive: true,
    grow: function() {
      this.age += 1
      this.height += 10
      if (this.age >= FRUIT_BEARING_AGE) {
        this.orangeCount = Math.floor(Math.random() * 100) + 1
      } //end grow if
      if (this.age > MAX_AGE) {
        this.isAlive = false
      } //end dead if
    }, //end grow

    dropOrange: function() {
      return "removed orange"
    },//end dropOrange

    pickOrange: function() {
      return { diameter: Math.floor(Math.random() * 6) + 1}
    }//end pickOrange

  } //end tree
  return tree

} //end createTree
