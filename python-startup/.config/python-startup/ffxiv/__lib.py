#!/usr/bin/env python3

import os


def calculate_levequest_turnin_days(number_of_items: int) -> float:
    """
    Returns the number of days of turn-ins based on the number of items.
    This assumes caller is calculating 3 item turn ins, making 18 of that
    item per day.

    Parameters
    ------------------------
    number_of_items : int
        The number of items to turn in.

    Returns
    ------------------------
    float
        The number of days of turn-ins without crafting more items.
    """
    return number_of_items / 18.0


def commend_party_member(max_members: int) -> int:
    """
    Returns the party member index in order to commend a party member.

    max_members is the maximum amount of commendable members. It is
    impossible to have 4 in a light party, or 8 in a full party.

    Parameters
    ------------------------
    max_members : int
        The maximum number of commendable party members.

    Returns
    ------------------------
    int
        The party member to commend.
    """
    return ord(os.urandom(1)) % max_members + 1
