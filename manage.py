# -*- coding: utf-8 -*-
#
# Copyright (c) 2011-2013 Woo-cupid(iampurse#vip.qq.com)
#
from flask_script import Manager
from goblin.common.app import startup_app

manager = Manager(startup_app)


@manager.command
def initdb():
    """ Initialize database . """
    from goblin.common.app import init_db
    init_db()


@manager.command
def cleardb():
    """Clear database ."""
    from goblin.common.app import clear_db
    clear_db()


@manager.command
def reinitdb():
    """ Initialize database . """
    from goblin.common.app import init_db, clear_db
    clear_db()
    init_db()


if __name__ == '__main__':
    manager.run()
