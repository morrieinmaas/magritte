# magritte
Just use the terminal

### MOSH
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
