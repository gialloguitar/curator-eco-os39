#!/usr/bin/python

import os
import sys
import logging
from pprint import pprint

def create_logger(name):

    levelNames = {0: 'NOTSET',
                 10: 'DEBUG',
                 20: 'INFO',
                 30: 'WARNING',
                 40: 'ERROR',
                 50: 'CRITICAL',
                 'CRITICAL': 50,
                 'DEBUG': 10,
                 'ERROR': 40,
                 'INFO': 20,
                 'NOTSET': 0,
                 'WARN': 30,
                 'WARNING': 30}

    logger = logging.getLogger(name)
    lvl = levelNames.get(os.getenv('CURATOR_SCRIPT_LOG_LEVEL', 'INFO'), None)
    if not lvl:
        print >> sys.stderr, 'The CURATOR_SCRIPT_LOG_LEVEL must be one of CRITICAL, ERROR, WARNING, INFO or DEBUG'
        return None
    logger.setLevel(lvl)
    lh = logging.StreamHandler()
    lh.setLevel(lvl)
    lh.setFormatter(logging._defaultFormatter)
    logger.addHandler(lh)
    return logger

l = create_logger(__name__)
print(l.getEffectiveLevel())


