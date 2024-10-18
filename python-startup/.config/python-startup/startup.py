#############################################################################
# startup.py
#
# Author: Zachary D. Meyer
#############################################################################
#
# readline for tab completion
#
import readline
import datetime
import math
import os


#
# Go into the python startup directory.
#
os.chdir('/home/zdmeyer/.config/python-startup')


#
# Startup modules.
#
import ffxiv


from datetime import datetime as dt
from datetime import timedelta as td
from os import system as sys


def cls() -> None:
    """
    Clears the screen. Uses "clear".
    """
    sys('clear')


def now() -> datetime.datetime:
    """
    Returns the current timestamp.

    :return The current timestamp
    """
    return dt.now()


def subtract_days_from_now(number_of_days: int) -> datetime.datetime:
    """
    Returns the datetime from number_of_days ago.
    """
    return now() - td(days=number_of_days)
