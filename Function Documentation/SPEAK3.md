# SPEAK3

  If `<transform>` is specified (an object/attribute pair or attribute, as with map() and similar functions), the speech portions of `<string>` are passed through the transformation function.

  Speech is delimited by double-quotes (i.e., "text"), or by the specified `<open>` and `<close>` strings. For instance, if you wanted `<<text>`> to denote text to be transformed, you would specify `<open>` as `<< and close as >`> in the function call. Only the portions of the string between those delimiters are transformed. If `<close>` is not specified, it defaults to `<open>`.

  The transformation function receives the speech text as %0, the dbref of `<speaker>` as %1, and the speech fragment number as %2. For non-say input strings (i.e., for an original `<string>` beginning with the :, ;, or | tokens), fragments are numbered starting with 1; otherwise, fragments are numbered starting with 0. (A fragment is a chunk of speech text within the overall original input string.)

  See [speak4].

