# Juniverse

To create, this do:

- edit the `dune-project` file to have the right Jane Street package list
- `dune build` to generate the `juniverse.opam` file.
- `opam switch create .` to have the right OCaml version you want.
- `opam repository add dune-universe git+https://github.com/dune-universe/opam-overlays.git` to add the Duniverse overlays
- `opam monorepo lock` will create a `juniverse.opam.locked` file.
- `opam monorepo pull` will get the sources locally to all the files.

Then you just need to selectively `dune build` the targets you want.
