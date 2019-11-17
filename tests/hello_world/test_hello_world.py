from hello_world.hello_world import hello_world, emojize


def test_hello_world() -> None:
    name = 'Jhon'
    expected = 'Hello World {}.'.format(name)
    assert hello_world(name) == expected


def test_emojize() -> None:
    expected = 'Python is 👍'
    assert emojize('Python is :thumbs_up:') == expected
