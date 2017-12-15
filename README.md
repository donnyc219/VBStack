# VBStack
A very basic stack

I am a beginner of Swift. As a practice I created a Stack class because I found Swift has no Stack class.

Don't treat it as very sophisticated, or advanced, or perfect Stack. I just created it as a practice of Swift.

Feel free to use it, modify it or do anything with it.

## Initialize

2 ways to initialize the class. 
1. Initialize with nothing

```
var stack = Stack<String>()
```

2. Initialize with an array

```
var stack  = Stack<String>(elements: ["New York", "Chicago", "Atlanta"])
```

## Push
You can push a single element or push an array of elements. Remember the elements type should be the same as the one when you create the stack.
1. Push a single element
```
stack.push(element: "New York")
```

2. Push an array of elements
```
stack.push(elements: ["New York", "Chicago", "Atlanta"])
```

## Pop
```
var name = stack.pop()
```
The returned value is optinal type. The element is then removed from the stack.

## Peek
"peek" the last element in the stack (like Java peek method in Stack). The element is not removed.
```
var name = stack.peek()
```

## Clear the stack
The stack will be cleared, remaining an empty stack
```
stack.clear()
```

## Print the stack
To see what elements are in the stack
```
if let description = stack.description {
    print(description)
}
```
The rightmost element is the one which will be popped first
