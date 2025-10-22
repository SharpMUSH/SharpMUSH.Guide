# SOUNDEX2
  Here's how the soundex algorithm works:
  1. The first letter of the soundex code is the first letter of the word (exception: words starting with PH get a soundex starting with F)
  2. Each remaining letter is converted to a number:
      vowels, h, w, y ---------> 0
      b, p, f, v --------------> 1
      c, g, j, k, q, s, x, z --> 2
      d, t --------------------> 3
      l -----------------------> 4
      m, n --------------------> 5
      r -----------------------> 6
     At this stage, "foobar" is "F00106"
  3. Strings of the same number are condensed. "F0106"
  4. All 0's are removed, because vowels are much less important than consonants in distinguishing words. "F16"
  5. The string is padded with 0's or truncated to 4 characters. "F160"
  That's it. It's not foolproof (enough = "E520", enuf = "E510") but it works pretty well. :)

 The optional second argument can be 'soundex' (The default), for the transformation described above, or 'phone', for a different phonetic hash algorithm.

