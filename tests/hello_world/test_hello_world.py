from hello_world.hello_world import hello_world


def test_hello_world():
    name = 'Jhon'
    expected = 'Hello World {}.'.format(name)
    assert hello_world(name) == expected
