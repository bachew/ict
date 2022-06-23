import click


@click.group('ict')
def cli():
    pass


@cli.command('calendar')
def cli_calendar():
    print('TODO')


cli(prog_name=cli.name)
