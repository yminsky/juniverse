# Juniverse

This repo has a setup that lets you build a repo with the basic
dependencies of Jane Street's package universe.  The packages you
depend on will all end up in the directory called duniverse, which is
ignored by git, so we don't check it in.

If you just want to use it to develop some code based on this
duniverse, then here's all you need to do:

- `opam switch create . 4.13.1` to create a switch with the desired
  OCaml version.
- `opam repository add dune-universe
  git+https://github.com/dune-universe/opam-overlays.git` to add some
  specific Dune overlays for dependencies that don't use Dune.
- `opam monorepo pull` to grab all source and put it in the duniverse
  directory.

Then you can create directories with whatever source you want, and use
`dune build` to build the targets you need.

If you want to change the list of packages, you can:

- edit the `dune-project` file to change the package list
- `dune build` to generate the `juniverse.opam` file.
- `opam monorepo lock` to update the `juniverse.opam.locked` file.
