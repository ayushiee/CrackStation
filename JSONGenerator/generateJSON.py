#!/usr/bin/env python3

import json
import hashlib
import itertools
from string import ascii_letters, digits

def generateHashes():
  hashDict = {}

  for strLength in range(1, 4):
    chars = ascii_letters + digits + '?' + '!'
    for item in itertools.product(chars, repeat=strLength):
      newStr = "".join(item)
      sha1Hash = hashlib.sha1(str(newStr).encode()).hexdigest()
      sha2Hash = hashlib.sha256(str(newStr).encode()).hexdigest()
      hashDict[sha1Hash] = newStr
      hashDict[sha2Hash] = newStr

  with open('../CrackStation/Sources/CrackStation/hashDict.json', 'w') as file:
    json.dump(hashDict, file)

generateHashes()
