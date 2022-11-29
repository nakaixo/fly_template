import nakai/head
import nakai/html
import nakai/html/attrs

pub const header_style = "
  font-family: 'Outfit', serif;
"

pub fn metadata() {
  html.Fragment([
    head.title("Nakai Example ✨"),
    head.meta(name: "viewport", content: "width=device-width, initial-scale=1"),
    head.meta(name: "og:title", content: "Nakai Example ✨"),
    head.meta(
      name: "og:description",
      content: "Template for deploying a Nakai app on Fly.io",
    ),
    head.meta(name: "og:type", content: "website"),
    head.meta(name: "og:url", content: "https://nakai-template.fly.dev"),
    head.meta(
      name: "og:image",
      content: "https://cdn.mckayla.cloud/-/f648cf5b6eee40b2982410757909716e/Nakai-Banner@2x.webp",
    ),
    head.meta(
      name: "og:image:secure_url",
      content: "https://cdn.mckayla.cloud/-/f648cf5b6eee40b2982410757909716e/Nakai-Banner@2x.webp",
    ),
    head.link(
      rel: "shortcut icon",
      href: "https://cdn.mckayla.cloud/-/f648cf5b6eee40b2982410757909716e/favicon.ico",
    ),
    head.link(rel: "preconnect", href: "https://fonts.googleapis.com"),
    html.head([
      html.link([
        attrs.rel("preconnect"),
        attrs.href("https://fonts.gstatic.com"),
        attrs.crossorigin(),
      ]),
    ]),
    head.link(
      rel: "stylesheet",
      href: "https://fonts.googleapis.com/css2?family=Outfit&display=swap",
    ),
  ])
}
