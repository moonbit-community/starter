///|
/// Prints a congratulatory message and an ASCII rabbit to standard output.
pub fn hello() -> Unit {
  let speech = "Congrats! You successfully added and used a dependency."
  let border = "-".repeat(speech.length() + 2)
  let top = "  /\{border}\\"
  let middle = "  | \{speech} |"
  let bottom = "  \\\{border}/"

  println(top)
  println(middle)
  println(bottom)
  println("        \\")
  println("         \\")
  println("         /)/)")
  println("        ( . .)")
  println("       C(\")_(\")")
}

///|
test {
  hello()
}
