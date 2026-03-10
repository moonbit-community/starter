///|
fn repeat_char(ch : Char, count : Int) -> String {
  let buf = StringBuilder::new()
  for i = 0; i < count; {
    buf.write_char(ch)
    continue i + 1
  }
  buf.to_string()
}

///|
pub fn hello() -> Unit {
  let speech = "Congrats! You successfully added and used a dependency."
  let bubble_width = speech.length() + 2
  let top = "  /" + repeat_char('-', bubble_width) + "\\"
  let middle = "  | \{speech} |"
  let bottom = "  \\" + repeat_char('-', bubble_width) + "/"

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
