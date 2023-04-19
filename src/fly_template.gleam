import gleam/bit_builder.{BitBuilder}
import gleam/http/elli
import gleam/http/request.{Request}
import gleam/http/response.{Response}
import gleam/io
import nakai
import pages/index
import pages/not_found

pub fn router(req: Request(BitString)) -> Response(BitBuilder) {
  let res =
    response.new(200)
    |> response.set_header("content-type", "text/html; charset=utf-8")

  let page = case req.path {
    "/" -> index.page()
    _ -> not_found.page()
  }

  page
  |> nakai.to_string_builder()
  |> bit_builder.from_string_builder()
  |> response.set_body(res, _)
}

pub fn main() {
  io.println("listening on http://localhost:8080")
  let _ = elli.become(router, on_port: 8080)
}
