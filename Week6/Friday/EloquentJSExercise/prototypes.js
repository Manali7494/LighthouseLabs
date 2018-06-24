let empty = {}
console.log(empty.toString);
console.log(empty.toString());

console.log(Object.getPrototypeOf({}) == Object.prototype);

console.log(Object.getPrototypeOf([]) == Array.prototype)

// Object.create

let protoRabbit = {
    speak(line){
        console.log(`The ${this.type} rabbit says ${line}`);
    }    
}

let killerRabbit = Object.create(protoRabbit);
killerRabbit.type = "killer"
killerRabbit.speak("SKREE!")

