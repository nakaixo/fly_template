import gleam/bytes_tree
import gleam/erlang/process
import gleam/http/request.{type Request}
import gleam/http/response.{type Response}
import gleam/result
import mist.{type Connection, type ResponseData}
import nakai
import pages/index
import pages/not_found

pub fn router(req: Request(Connection)) -> Response(ResponseData) {
  let #(status, page) = case req.path {
    "/" -> #(200, index.page())
    _ -> #(404, not_found.page())
  }

  let body =
    page
    |> nakai.to_string_tree()
    |> bytes_tree.from_string_tree()
    |> mist.Bytes()

  response.new(status)
  |> response.set_header("content-type", "text/html; charset=utf-8")
  |> response.set_body(body)
}

pub fn main() {
  use _ <- result.try(
    mist.new(router)
    |> mist.port(8080)
    |> mist.bind("0.0.0.0")
    |> mist.start_http(),
  )

  process.sleep_forever()
  Ok(Nil)
}
