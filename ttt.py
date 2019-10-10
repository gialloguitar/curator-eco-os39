import os
import time
from curator_cmd import CuratorCmd
from crontab import CronTab
from datetime import datetime, timedelta
from util import create_logger

class CuratorCronJob():

    def __init__(self):
        self.logger = create_logger(__name__)
        curator_cmd = CuratorCmd()
        self.cmd_list = curator_cmd.build_cmd_list()
        self.defaults = curator_cmd.get_defaults()
        self.hour = self.defaults.get('runhour', 0)
        self.minute = self.defaults.get('runminute', 0)
        self.timezone = self.defaults.get('timezone', 'UTC')
        self.job_list = CronTab()

ccj = CuratorCronJob()
