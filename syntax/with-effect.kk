fun twice( f )
  f()
  f()

// twice( fn() { println("Hi!") } ), i.e. twice { println("Hi!") } in kotlin?
fun with-twice() {
  with twice
  println("Hi!")
}

// with x <= f(e1,...,eN) ----> f(e1,...,eN, fn(x) { <body> })
// <body>
fun with-loop() {
  with x <- list(1, 10).foreach // kotlin: listOf(1, 10).forEach { x -> println(x) }
  println(x)
}

// f(e1,...eN, fn() { <finally part> }, fn() { <body part> } )
fun with-finally() {
  with finally { println("Hello!") }
  println("Hi!")
}

// In kotlin: fn() { ... } like DSL structure, e.g. run { ... }.
// fn() { <body> } is like a lambda, but with a different syntax.

effect fun ask( msg: string ): ()

fun emit() {
  with handler fun ask(msg) 
    println(msg)
  println("Hi!".repeat(2)) // Dot selection like kotlin extension? 
  // repeat( string, int ) but call it by str.repeat( int ).
} // handler is some restricted scope?

// with val op = <expr>             with handler { val op = <expr> }
// with fun op( x ) { <body> } ---> with handler { fun op( x ) { <body> } }
// with ctl op( x ) { <bydy> }      with handler { ctl op( x ) { <body> } }