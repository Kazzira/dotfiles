#!/usr/bin/env python3

import os


def calculate_levequest_turnin_days(number_of_items: int) -> float:
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
