# -*- coding: utf-8 -*-
#
# @author: Five
# Created on 2013-6-16
#

__test__ = False

import os
from goblin.common.app import startup_app
from goblin.common.tools.env import ResourceLoader

os.environ.setdefault(ResourceLoader.ENV_VAR_NAME,
                      '/home/www-data/goblin/resources/prod')
application = startup_app()
