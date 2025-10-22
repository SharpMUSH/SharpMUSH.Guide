# JSON_MOD()
`json_mod(<json>, <action>, <path>[, <json2>])`

  Return a new JSON value based on applying `<action>` to `<json>`.

  insert - adds a new value `<json2>` at the given `<path>` if the data described by `<path>` doesn't exist.
  replace - replaces an existing value at the given `<path>` with `<json2>`.
  set     - Add or replace `<json2>` at the given `<path>`.
  patch   - Applies a merge patch (See https://tools.ietf.org/html/rfc7396) to `<json>` from `<path>`, which must be valid JSON.
  remove  - Removes the element from `<json>` pointed to by `<path>`
  sort    - Given a JSON array, sorts it based on the element at `<path>`.

  See 'HELP JSON_MOD2' for examples.

