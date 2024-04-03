# Magritte

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
