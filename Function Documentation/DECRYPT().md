# DECRYPT()
`encrypt(<string>, <password>[, <encode>])`
`decrypt(<string>, <password>[, <encoded>])`

  encrypt() returns an encrypted string produced by a simple password-based encrypted algorithm. Good passwords are long passwords. This is not high-security encryption.

  If the optional `<encode>` argument is true, the resulting string is further encoded in base-64 so that it only contains alphanumeric characters.

  decrypt() decrypts a string encrypted with encrypt(). The `<encoded>` argument indicates that the encrypted string was base-64 encoded.


## See Also
- [encode64()]
- [digest()]

