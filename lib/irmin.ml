(*
 * Copyright (c) 2013-2014 Thomas Gazagnaire <thomas@gazagnaire.org>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *)

module Merge = Ir_merge
module Contents = Ir_contents
module Tag = Ir_tag
module Task = Ir_task
module View = Ir_view
module type RO = Ir_ro.STORE
module type AO = Ir_ao.STORE
module type RW = Ir_rw.STORE
module type BC = Ir_bc.STORE
module type S = Ir_s.STORE

module Backend = struct
  module Config = Ir_config
  module Hash = Ir_hash
  module Watch = Ir_watch
  module Node = Ir_node
  module Commit = Ir_commit
  module Contents = Ir_contents
  module Tag = Ir_tag
  module Sync = Ir_sync
  module BC = Ir_bc.Make
  module Make = Ir_s.Make
  module Simple = Ir_s.Simple
  module AO = Ir_ao
  module RW = Ir_rw
end

type config = Backend.Config.t
type task = Task.t
