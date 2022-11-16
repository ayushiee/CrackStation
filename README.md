# Crack Station
#### **Author**: Ayushi Gupta
This is a Crack Station Implementation, built as part of coursework for CS 561. It is currently in its MVP. 

## Functionality
**V1**: It decrypts any input of length one encoded with SHA1 hash function. 

**V2**: It decrypts any input of length one and two, encoded with SHA1 and SHA256 hash function. (`git tag 1.1.0`)

**MVP**: It decrypts any input of length one, two, and three, encoded with SHA1 and SHA256 hash function. (`git tag 1.2.0`)

### Public API
```
func decrypt(shaHash: String) -> String? {}
```

### Version
`1.2.0`


## Generating Lookup Table Dictionary

This library uses a hash dictionary JSON for query lookups. This JSON is generated using Python.

If `Sources/CrackStation` does not have a `hashDict.json` file, run the following from your terminal. 

```
python JSONGenerator/generateJSON.py
``` 

You just generated the JSON file!

Now you can build and run the library normally.

## How to run

* Build the package
```
swift build
```
* Run the tests
```
swift test
```
Voila! You just build and ran the package!

