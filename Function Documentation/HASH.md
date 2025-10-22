# HASH
`digest(list)`
`digest(<algorithm>, <string>)`

  Returns a checksum (hash, digest, etc.) of `<string>` using the given `<algorithm>`. The result is a unique large number represented in base 16.

  Typically at least the following algorithms are supported:

  md4 md5 ripemd160 sha1 sha224 sha256 sha384 sha512 whirlpool

  Depending on the host's OpenSSL version and how it was configured, there might be more (or less) available. digest(list) returns the methods a particular server understands if the OpenSSL library version being used is recent enough (1.0.0 and higher), or '#-1 LISTING NOT SUPPORTED' on older versions. For portable code, stick with MD5, SHA1 and the SHA2 family.

  Example:
```
think iter(digest(list), %i0(foo) => [digest(%i0, foo)], %b, %r)
...
MD4(foo) => 0ac6700c491d70fb8650940b1ca1e4b2
MD5(foo) => acbd18db4cc2f85cedef654fccc4a4d8
MDC2(foo) => 5da2a8f36bf237c84fddf81b67bd0afc
RIPEMD160(foo) => 42cfa211018ea492fdee45ac637b7972a0ad6873
SHA1(foo) => 0beec7b5ea3f0fdbc95d0dd47f3c5bc275da8a33
SHA224(foo) => 0808f64e60d58979fcb676c96ec938270dea42445aeefcd3a4e6f8db
...
```


## See Also
- [encode64()]
- [encrypt()]
- [hmac()]

