# -*- coding: utf-8 -*-
#
# @author: Five
# Created on 2013-9-3
#
from goblin.common.app import startup_app

app = startup_app()
app.run('0.0.0.0', 80, True)
