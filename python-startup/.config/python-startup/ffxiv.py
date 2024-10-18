#!/usr/bin/env python3

import os

def commend_party_member(max_members: int) -> int:
    return ord(os.urandom(1)) % max_members + 1
