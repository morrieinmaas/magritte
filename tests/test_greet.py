import pytest
from src.greet import greet

def test_greet(capsys):
    greet()
    captured = capsys.readouterr()
    assert captured.out == 'Greetings, my friend!\n'


def test_greet_name(capsys):
    greet("Gandalf")
    captured = capsys.readouterr()
    assert captured.out == "Greetings, Gandalf!\n"

def test_sth_else():
    assert 1 == 1
