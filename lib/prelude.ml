include import "./amulet/base.ml"
include import "./amulet/option.ml"
include import "./amulet/either.ml"
include import "./amulet/list.ml"
module Typeable = import "./amulet/typeable.ml"
module Exception = import "./amulet/exception.ml"

let error = Exception.error

include import "./data/foldable.ml"
include import "./data/traversable.ml"

include import "./data/enumeration.ml"

module Io = import { lua = "./lua/io.ml", scheme = "./scheme/io.ml" }

open import {
  lua    = "./lua/conversion.ml",
  scheme = "./scheme/conversion.ml"
}


let x // y =
  let open Exception
  if y == 0 then
    throw DivideBy0
  else
    floor (x / y)

let put_line = Io.put_line
let put_bytes = Io.put_bytes
let print = Io.print
