| Koka                                      | Kotlin                                                   |
|-------------------------------------------|----------------------------------------------------------|
| `effect ctl raise( s ): a`                | `interface Raise { suspend fun raise(s: String): Any }`  |
| `effect fun ask(): string`                | `suspend fun ask(): String`                              |
| `effect val ask: int`                     | `val ask: Int by lazy { ... }`                           |
| `handler { ctl raise( s ) { ... } }`      | `object : Raise { suspend fun raise(s: String) { ...} }` |
| `with handler { ctl raise( s ) { ... } }` | `foo.buildSequence { raiseHandler { ... } } `            |