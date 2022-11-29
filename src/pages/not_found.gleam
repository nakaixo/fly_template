import config
import nakai/html
import nakai/html/attrs

pub fn page() {
  html.Fragment([
    config.metadata(),
    html.h1_text([attrs.style(config.header_style)], "Nothing to see here :^)"),
  ])
}
