# hmac()
`HMAC(<digest>, <key>, <text>[, <encoding>])`<br>
`HMAC(<text>, <key>[, <digest>])`

  Computes the HMAC (message authentication code) hash for `<text>` using the passphrase `<key>` and the given hash function `<digest>`, which can be any supported by digest(). `<encoding>` can be base16 (The default) or base64.

  The second form is TinyMUX's: `<digest>` defaults to sha256 and the answer is upper-case hexadecimal. Two arguments always mean it; three mean it with the `mux_arguments` @config option on, as after a TinyMUX import.

  Example:
```sharp
think hmac(sha256, secret, this is some text)
9598fd959633f2a64a7d7e985966774aa6f334bc802e5b3301772ec8ed6eed5a
think hmac(sha256, secret, this is some text, base64)
lZj9lZYz8qZKfX6YWWZ3SqbzNLyALlszAXcuyO1u7Vo=
```


::: seealso
- [DIGEST()]
:::

