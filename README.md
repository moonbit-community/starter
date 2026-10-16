# starter

A small, dependency-free MoonBit library for learning how to add and use a
package. `@rabbit.hello()` prints a congratulatory message and an ASCII rabbit.

## Use in a project

Install the [MoonBit toolchain](https://www.moonbitlang.com/download/) or update
an existing installation with `moon upgrade`. This repository uses the current
`moon.mod` and `moon.pkg` configuration formats.

In your MoonBit project, add the module:

```sh
moon add moonbit-community/starter
```

Add the package import to your executable's `moon.pkg` (for example,
`cmd/main/moon.pkg`), keeping any existing imports:

```moonbit
import {
  "moonbit-community/starter/rabbit",
}

pkgtype(kind: "executable")
```

Call the function from `cmd/main/main.mbt`:

```moonbit
fn main {
  @rabbit.hello()
}
```

Run it with `moon run cmd/main`:

```text
  /---------------------------------------------------------\
  | Congrats! You successfully added and used a dependency. |
  \---------------------------------------------------------/
        \
         \
         /)/)
        ( . .)
       C(")_(")
```

The public API remains `hello() -> Unit` in
`moonbit-community/starter/rabbit`. It supports the `wasm`, `wasm-gc`, `js`, and
`native` backends.

## Develop this module

```sh
git clone https://github.com/moonbit-community/starter.git
cd starter
moon run cmd/main
```

Use Node.js for the JavaScript backend and a C compiler for the native backend.
CI uses Node.js 24 and the latest stable MoonBit toolchain.

```sh
moon fmt --check
moon check --target all --deny-warn
moon test --target all --deny-warn
moon info --target all
git diff --exit-code -- '*.mbti'
```

After editing code, run `moon fmt` and `moon info --target all`, then commit the
updated sources and any intentional changes to `pkg.generated.mbti`.

## Publish

Update `version` in `moon.mod` to an unpublished version and merge the change.
In GitHub Actions, select **publish-package**, choose **Run workflow**, and select
the branch to publish (normally `main`). The workflow runs the existing checks
and tests, publishes to Mooncakes, then tags the published commit as `v<version>`.

The repository must have access to the organization secret
`MOONCAKES_MOONBIT_COMMUNITY_TOKEN`. The workflow uses the version in `moon.mod`;
it does not bump the version automatically.

## License

[Apache-2.0](LICENSE).
