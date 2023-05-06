# Base 16 Heetch Scheme #
Base16 Heetch scheme.  Dark colours only (currently).

This is designed to be used with the Base16 theme building project: https://github.com/chriskempson/base16

## Building the theme ##

There are multiple build tools for Base16.  I'll document only the Go and Elixir based versions here.

### base16-builder-go

Assuming you already have a working Go development environment, issue the following command to get the builFinally we're ready to build our themes:

```sh
base16-builder-go build
```

When this process is complete you will find the built themes in the per-application directories under `templates`.  The structure of the output directory differs on a per-application basis.  For instance, in the `emacs` directory the output is in a `build` subdirectory, and in the `vim` directory the output is in a `colors` subdirectory.  Instructions on how to use each theme can be found in the README files in each per-application directory.

d tool:

```sh
go get -u github.com/belak/base16-builder-go
```

Now, you'll need to make a directory to store your Base16 setup in:
```sh
mkdir -p ~/src/base16
cd ~/src/base16
```

Initially we just want to pull in all the schemas and templates in the upstream project:

```sh
base16-builder-go update
```

Finally we're ready to build our themes:

```sh
base16-builder-go build
```

### base16-builder-elixir
First grab the source code:

```sh
git clone git@github.com:obahareth/base16-builder-elixir.git
cd base16-builder-elixir
```
.. then get the dependencies:
```sh
mix deps.get
```

Now you should be able to run the `base16-build-elixir` script.

First we need to update our sources:

```sh
./base16_builder update
```

Finally we're ready to build our themes:

```sh
./base16_builder build
```

## Using individual theme builds
When your build is complete you will find the built themes in the per-application directories under `templates`.  The structure of the output directory differs on a per-application basis.  For instance, in the `emacs` directory the output is in a `build` subdirectory, and in the `vim` directory the output is in a `colors` subdirectory.  Instructions on how to use each theme can be found in the README files in each per-application directory.

