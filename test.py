import os
import sys
import re
import yaml

from pprint import pprint
from util import create_logger

curator_settings = {'delete': {}}
curator_settings['delete'].setdefault('unit', {}).setdefault('count', []).append('Project')
#curator_settings['delete'].setdefault('unit', []).append('Proj')
pprint(curator_settings)


