import config
import nakai/html
import nakai/attr

pub fn page() {
  html.Fragment([
    config.metadata(),
    html.h1_text([attr.style(config.header_style)], "Hello from Gleam!"),
  ])
}
