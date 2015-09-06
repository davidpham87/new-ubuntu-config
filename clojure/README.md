# Clojure - Lisp for JVM

[Clojure](http://clojure.org/) is a fantastic programming language.

## Installation

It is installed through [Leiningen](http://leiningen.org/). After the execution
of the script type.

```bash
lein repl
```   

to download Clojure and its dependencies.

## Faster startup time

We will use [Drip](https://github.com/ninjudd/drip) with lein in order to speed
up the startup time.

In order to disable Drip temporarly, modifiy `~/.lein/leinrc` the
`LEIN_JAVA_CMD` command to

```bash
LEIN_JAVA_CMD=lein test
```

