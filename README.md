# CrackStation, a Decrypter implementation

CrackStation decrypts any _unsalted_ input of length one, two, and three, encoded with SHA-1 and SHA-256 hash function. 

## Overview
---
This is a Crack Station Implementation, built as part of coursework for CS561. The project has gone through the following versions:  
* **V1**: It decrypts any input of length one encoded with SHA1 hash function. (`git tag 1.0.0`)

* **V2**: It decrypts any input of length one and two, encoded with SHA-1 and SHA-256 hash function. (`git tag 1.1.0`)

* **MVP**: It decrypts any input of length one, two, and three, encoded with SHA-1 and SHA-256 hash function. (`git tag 1.2.0`)

It is currently in its **MVP** stage.

## Mission Statement
---
CrackStation, originially, is a security awareness project started by [Defuse Security](https://crackstation.net/about-us.htm). Its purpose is to raise awareness about insecure password storage in web applications, and to provide guidance to implementors of user authentication systems.

This library is an attempt to replicate the same at a small level. It is built to understand the concepts behind hashing of plaintext passwords for storage, and the importance of choosing a _non-generic_ password for a system security. 

## Installation
---

### Swift Package Manager

The [Swift Package Manager](https://www.swift.org/package-manager/) is a "tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies."

Once you have your Swift package set up, add CrackStation to the list of dependencies in your `Package.swift` file:

```
dependencies: [
    .package(url: "git@github.com:ayushiee/CrackStation.git", .upToNextMajor(from:"1.1.0"))
]
```

## Usage
----

### The API

The CrackStation API has two functions, `init()` and `decrypt()`.

**Initializer**
```
init()
```
**Functionality**: It initializes the CrackStation and loads in the SHA-hash dictionary.
It executes in constant time, except for the first time where there is a shared memory buffer of the SHA-hash dictionary. Loading that takes `O(n)` time, where `n` is the size of the dictionary/lookup table. 

**Decrypting a string**
```
func decrypt(shaHash: String) -> String? {}
```
**Functionality**: It decrypts any SHA-1 or SHA-2 hash encrypted string matching `[A-Za-z0-9?!]{1,3}` regex. 

**Parameters**: `shaHash` which is a string input of unsalted hash.

**Returns**: `password` which is the decrypted _string_ response, if it exists. If it is not found, the API returns a `nil`. 


### An example

The `decrypt()` function is implemented inside a class called `CrackStation`. So, in order to access `decrypt()`, we will first create an instance of the `CrackStation` class. Usage is implemented as follows:

```
import CrackStation

// Creating an instance of the class
let crackStation = CrackStation()


/// Call site for decrypt()

// input: unsalted SHA-1 hash string
// returns: "yE" 
let SHA1DecryptedPassword = crackStation.decrypt("60c7577bedfcb6176130615c3efd0c05533a4c7e")

// input: unsalted SHA-2 hash string
// returns: "b!Z"
let SHA2DecryptedPassword = crackStation.decrypt("6e8479707ed5b73647ece26aae6c5f62cb3d5154cda5430e00cf14c68deecf94")


/// Cases where it will return nil

// input: empty string
// returns: nil
let emptyInput = crackStation.decrypt("")

// input: string of length > 3
// returns: nil
let longerString = crackStation.decrypt("abcd")

// input: invalid/wrong hash/hash not found
// returns: nil
let invalidHash = crackStation.decrypt("60c7577bedfcb6176130615c3efd0c05533a4c733")

```

## Author
---
Ayushi Gupta
