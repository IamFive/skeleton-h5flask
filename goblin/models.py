# coding: utf-8
from sqlalchemy import Column, DateTime, ForeignKey, Integer, SmallInteger, String
from sqlalchemy.orm import relationship
from sqlalchemy.ext.declarative import declarative_base

from goblin.common.app import db
from goblin.common.sa_orm_ext import BaseModelMixin


Base = declarative_base()
metadata = Base.metadata


class Competition(db.Model, BaseModelMixin):
    __tablename__ = u'competition'

    id = Column(Integer, primary_key=True)
    bo = Column(SmallInteger)
    host_id = Column(Integer)
    guest_id = Column(Integer)
    host_score = Column(Integer)
    winner_id = Column(Integer)
    guest_score = Column(Integer)
    is_team_race = Column(SmallInteger)
    start_time = Column(DateTime)
    end_time = Column(DateTime)
    round_title = Column(String(16))
    is_winner_bracket = Column(SmallInteger)
    zone_id = Column(ForeignKey('tournament_zone.id'), index=True)

    zone = relationship(u'TournamentZone')


class Match(db.Model, BaseModelMixin):
    __tablename__ = u'matches'

    id = Column(Integer, primary_key=True)


class Player(db.Model, BaseModelMixin):
    __tablename__ = u'player'

    id = Column(Integer, primary_key=True)


class Team(db.Model, BaseModelMixin):
    __tablename__ = u'team'

    id = Column(Integer, primary_key=True)


class Tournament(db.Model, BaseModelMixin):
    __tablename__ = u'tournament'

    id = Column(Integer, primary_key=True)
    title = Column(String(128))
    avatar = Column(String(128))
    begin_time = Column(DateTime)
    end_time = Column(DateTime)
    addr = Column(String(128))
    bio = Column(String(1024))


class TournamentRank(db.Model, BaseModelMixin):
    __tablename__ = u'tournament_rank'

    id = Column(Integer, primary_key=True)
    tournament_id = Column(ForeignKey('tournament.id'), index=True)
    reward = Column(String(32))
    rank = Column(Integer)
    player_id = Column(Integer)

    tournament = relationship(u'Tournament')


class TournamentRound(db.Model, BaseModelMixin):
    __tablename__ = u'tournament_round'

    id = Column(Integer, primary_key=True)
    tournament_id = Column(ForeignKey('tournament.id'), index=True)
    title = Column(String(16))
    is_online = Column(SmallInteger)
    race_type = Column(SmallInteger)
    start_time = Column(DateTime)
    end_time = Column(DateTime)

    tournament = relationship(u'Tournament')


class TournamentZone(db.Model, BaseModelMixin):
    __tablename__ = u'tournament_zone'

    id = Column(Integer, primary_key=True)
    tournament_id = Column(ForeignKey('tournament_round.id'), index=True)
    name = Column(String(12))

    tournament = relationship(u'TournamentRound')
