base16-wmaker
==============

This is a [base16](http://chriskempson.com/projects/base16/) template
for the [Window Maker](http://www.windowmaker.org/) window manager.

Usage
-----
To generate Window Maker themes, you will need a base16 builder (e.g.,
[base16-builder-python](
https://github.com/InspectorMustache/base16-builder-python)) and
decide on a scheme.

Using base16-builder-python:

```
pybase16 update
pybase16 build -t wmaker -s <scheme>
setstyle output/wmaker/colors/base16-<scheme>.style
```

Alternatively, you can copy the `.style` file to
`~/GNUstep/Library/WindowMaker/Styles` and then it will then be
available under the Window Maker "Appearances" menu.

---

Copyright 2020 Doug Torrance <dtorrance@piedmont.edu>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
