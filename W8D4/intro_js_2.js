function titleize(arr, printCallback){
    let newArr = arr.map(name => `Mx. ${name} Jingleheimer Schmidt`);

    printCallback(newArr);
}

titleize(["Mary", "Brian", "Leo"], (arr) =>{
  arr.forEach(name => console.log(name));
});


function Elephant(name, height, tricks){
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function(){
    console.log(`${this.name} the elephant goes phrRRRRRRRRRRR!!!!!!! `);
}

Elephant.prototype.grow = function(){
    this.height += 12;
}

Elephant.prototype.addTrick = function(trick){
    this.tricks.push(trick);
}

Elephant.prototype.play = function(){
    getTricky = Math.floor(Math.random() * this.tricks.length);
    console.log(`${this.name} is ${this.tricks[getTricky]}`);
}


e1 = new Elephant("Dumbo", 17, ["running", "jumping", "flying"]);
e1.trumpet();
e1.grow();
e1.addTrick("hiding");
e1.height;
e1.play();

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);


Elephant.paradeHelper = function(herd, callback){
    let action =  herd.map(elephant => `${elephant.name} is trotting by!`);
    callback(action);
   
};

Elephant.paradeHelper([e1, ellie, charlie, kate, micah], (herd) =>{
    herd.forEach(elephant => console.log(elephant));
});


function DinnerForBreakfast(){
    let order = "I'd like cheesy scrambled eggs please";
    console.log(order);

    return function(food){
        order = `${order.slice(0, order.length -8)} and ${food} please.`;
        console.log(order);
    };
};

