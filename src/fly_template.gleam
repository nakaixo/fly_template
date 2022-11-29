import gleam/bit_builder.{BitBuilder}
import gleam/http/elli
import gleam/http/request.{Request}
import gleam/http/response.{Response}
import gleam/io
import nakai
import pages/home

pub fn router(req: Request(BitString)) -> Response(BitBuilder) {
  let res =
    response.new(200)
    |> response.set_header("content-type", "text/html; charset=utf-8")

  io.println("get: " <> req.path)

  let document = case req.path {
    "/" -> home.page()
    _ -> home.page()
  }

  document
  |> nakai.render
  |> bit_builder.from_string
  |> response.set_body(res, _)
}

pub fn main() {
  io.println("listening on http://localhost:8080")
  let _ = elli.become(router, on_port: 8080)
}
