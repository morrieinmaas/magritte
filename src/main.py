from icecream import ic
import sys

ic.configureOutput(includeContext=True)

def greet(name: str = "my friend"):
    ic("I can even show where i live. And who I say hi to: ", name)
    print(f"Greetings, {name}!")

if __name__ == '__main__':
    ic("I'm almost as good as logging")
    try:
        name = sys.argv[1]
        greet(name)
    except IndexError:
        greet()

