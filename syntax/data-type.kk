struct person // struct like kotlin data class and java record?
  age: int
  name: string

fun birthday( p: person ) : person
  p( age = p.age + 1 ) // copying of struct

// alternatives/unions like kotlin enum class or java enum.
type person-name
  Alice
  Bob
  Carol

// list inner: nil (empty), consist of head element to tail list?
// type list<a>
//   Nil
//   Cons { head : a; tail : list<a> }

// struct aa { <fields> } ---> type aa { Aa { <fields> } }
// so struct is sugar for type?
// struct person { age: int, name: string }
// type person { Person { age: int, name: string } }

