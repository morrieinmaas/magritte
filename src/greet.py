from icecream import ic

ic.configureOutput(includeContext=True)

def greet(name: str = "my friend"):
    ic("I can even show where i live. And who I say hi to: ", name)
    print(f"Greetings, {name}!")
    return 1

