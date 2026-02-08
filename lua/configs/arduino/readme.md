NOTE: everything is currently set up for only esp32 programming with Ardino-IDE. If I need to program real Arduino's I'll add support for that


For arduino to work

you need to have arduino-cli installed

In .clangd at bottom of arduino projects add this.
```
CompileFlags:
  CompilationDatabase: "build"
  Add: [
    "--include=Arduino.h" # Forces Serial/delay definitions into every file
  ]
  Remove: [
    "-f*",            
    "-m*",            
    "-W*" 
  ]
Index:
  Background: Build
```

also use this to build and generate compile commands as you go:
```
arduino-cli compile --fqbn esp32:esp32:esp32 --build-path ./build
```
