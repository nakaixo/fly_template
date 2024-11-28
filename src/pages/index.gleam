import nakai/attr
import nakai/html

pub fn page() -> html.Node {
  html.Body(
    [attr.style("font-family: Avenir, Montserrat, Corbel, sans-serif")],
    [
      html.Head([
        html.title("Fly.io example ✨"),
        html.meta([attr.name("viewport"), attr.content("initial-scale=1")]),
      ]),
      html.h1_text([], "hello from gleam!"),
    ],
  )
}
