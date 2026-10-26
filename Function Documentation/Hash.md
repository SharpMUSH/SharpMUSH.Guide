# digest()
# MD5
# SHA1
# Checksum
# Hash
`digest(list)`<br>
`digest(<algorithm>, <string>)`

  Returns a checksum (hash, digest, etc.) of `<string>` using the given `<algorithm>`. The result is a unique large number represented in base 16.

  The supported algorithms are:

  md5 sha1 sha256 sha384 sha512

  digest(list) returns that list. An unknown algorithm gives #-1 ARGUMENT OUT OF RANGE.

  Example:
```sharp
think iter(digest(list), %i0(foo) => [digest(%i0, foo)], %b, %r)
MD5(foo) => acbd18db4cc2f85cedef654fccc4a4d8
SHA1(foo) => 0beec7b5ea3f0fdbc95d0dd47f3c5bc275da8a33
SHA256(foo) => 2c26b46b68ffc68ff99b453c1d30413413422d706483bfa0f98a5e886266e7ae
...
```


::: seealso
- [ENCODE64()]
- [ENCRYPT()]
- [HMAC()]
:::

