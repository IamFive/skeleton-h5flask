# -*- coding: utf-8 -*-
#
# @author: Five
# Created on 2013-8-21
#
from colanderalchemy import SQLAlchemySchemaNode
from goblin.comics.models import Comic

schema_comic = SQLAlchemySchemaNode(Comic, excludes=['id'])


# class ComicSchema(MappingSchema):
#    title = SchemaNode(String(encoding='utf-8'), validator=Length(max=64))
