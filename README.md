# Magritte

![image](magpipe.png "I am not a pipe")
Just use the terminal

These are some notes and code for my presentation at the Eindhoven DevOps meetup April 4, 2024.

Presentation done in tmux because it's [awesome](https://github.com/rothgar/awesome-tmux).

## Python debugging example using just git and [entr](https://github.com/eradman/entr)
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

#### [duf](https://github.com/muesli/duf) and [dust](https://www.google.com/search?client=firefox-b-d&q=dust+cli)
for disk usage

disk usage for humans

### Mosh & Upterm

Connect like ssh but over UDP and never worry about dropping connections or changing IP addresses.
commands:
```bash
docker build -t ssh_container .
```
```bash
docker run docker run -d -p 2222:22 -p 60001:60001/udp -p 60000:60000/udp --name ssh_server ssh_container
```
then you can 
```bash
mosh --ssh="ssh -p 2222" bilbo@localhost
```

OR

pair program/share a terminal the easy way with [upterm](https://github.com/rothgar/awesome-tmux)

```bash
upterm host
```
on the host machine. Then copy/(send)/paste ssh command to your peer and you're good to go (no pun intended). 
