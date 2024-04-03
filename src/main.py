from icecream import ic
from greet import greet
import sys

ic.configureOutput(includeContext=True)


if __name__ == '__main__':
    ic("I'm almost as good as logging")
    ic("Just going about life.")
    try:
        name = sys.argv[1]
        greet(name)
    except IndexError:
        greet()

