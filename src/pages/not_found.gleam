import config
import nakai/attr
import nakai/html

pub fn page() {
  html.Fragment([
    config.metadata(),
    html.h1_text([attr.style(config.header_style)], "Nothing to see here :^)"),
  ])
}
