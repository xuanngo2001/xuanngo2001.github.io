## Class
```js
class Rectangle {

    constructor(height, width) {
        this.height = height;
        this.width = width;
    }

    calcArea() {
        return this.height * this.width;
    }

    get area() {
        return this.calcArea();
    }
}

const rec = new Rectangle(10, 20);
console.log(rec.height, rec.width);

console.log(rec.area);

// Public enums
    class Machine {
        // Public enums.
        static get InputState(){
            return {
                ACTIVE: "Active",
                NORMAL: "Inactive",
                TROUBLE: "Trouble",
                CUT: "Cut",
                SHORTED:"Short",
            }
        }
    }
    const machineObj = new Machine;
    console.log(machineObj.InputState.TROUBLE);

// Private variable
    class User {
        #username = null;
        #password = null;
        login(username, password) {
            this.#username = username;
            this.#password = password;
        }            
    }

    const user = new User();
```