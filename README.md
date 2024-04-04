# Magritte

![image](magpipe.png "I am not a pipe")
Just use the terminal

## Python
Just watch your tests automagically:
```bash
while sleep 0.5; do ls src/*.py tests/*.py | entr -d pytest tests; done
```
or 
```bash
find src/ tests/ | entr -s 'pytest tests'
```

We've come a long way but it looks like something is off?

## CLI tools

#### [jqp](https://github.com/noahgorstein/jqp)

Interactively use [jq](https://jqlang.github.io/jq/)

Example:
```bash
 xh -j GET https://api.artic.edu/api/v1/artworks | jqp
```
[xh](https://github.com/ducaale/xh) is like curl - but arguably better.

Then you can simply, and interactively, use jq commands.

#### [fzf](https://github.com/junegunn/fzf)

Just handy. 

#### [sd](https://github.com/chmln/sd)

Find and replace like a boss.

### [duf](https://github.com/muesli/duf)

disk usage for humans

