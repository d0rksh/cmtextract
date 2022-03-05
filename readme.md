# cmtExtract
Simple javascript comment extract tool (just in 20+ lines)

# Example

```
waybackurls example.com | grep "\.js$" | cmtextract
```

# build
```
nim c -d:ssl cmtextract.nim
```

# Screenshot

![image](https://raw.githubusercontent.com/d0rksh/cmtextract/main/screen.png)

# Have a good regex?
   please create a issue with your regex
