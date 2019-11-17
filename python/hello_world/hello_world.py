import emoji


def hello_world(name: str) -> str:
    return 'Hello World {}.'.format(name)


def emojize(text: str) -> str:
    return emoji.emojize(text)
