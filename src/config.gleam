import nakai/attr
import nakai/html

pub const header_style = "
  font-family: 'Outfit', serif;
"

fn meta(name name: String, content content: String) -> html.Node {
  html.meta([attr.name(name), attr.content(content)])
}

pub fn metadata() {
  html.Head([
    html.title("Fly.io Example ✨"),
    meta(name: "viewport", content: "width=device-width, initial-scale=1"),
    meta(name: "og:title", content: "Fly.io Example ✨"),
    meta(
      name: "og:description",
      content: "Template for deploying a Nakai app on Fly.io",
    ),
    meta(name: "og:type", content: "website"),
    meta(name: "og:url", content: "https://nakai-template.fly.dev"),
    html.link([
      attr.rel("shortcut icon"),
      attr.href(
        "https://cdn.mckayla.cloud/-/f648cf5b6eee40b2982410757909716e/favicon.ico",
      ),
    ]),
    html.link([
      attr.rel("preconnect"),
      attr.href("https://fonts.bunny.net"),
      attr.crossorigin(),
    ]),
    html.link([
      attr.rel("stylesheet"),
      attr.href("https://fonts.bunny.net/css?family=Outfit"),
    ]),
  ])
}
