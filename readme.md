# CmtExtract
Simple javascript comment extract tool (just in 20+ lines)

# Example

```
waybackurls example.com | grep "\.js$" | cmtextract
```

# build
```
nim c -d:ssl cmtextract.nim
```
