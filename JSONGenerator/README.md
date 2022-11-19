# Generating JSON
This library uses a hash dictionary JSON for query lookups. This JSON is generated using Python.

If `Sources/CrackStation` does not have a `hashDict.json` file, run the following from your terminal.

```
python JSONGenerator/generateJSON.py
```

You just generated the JSON file!

Now you can build and run the library normally.