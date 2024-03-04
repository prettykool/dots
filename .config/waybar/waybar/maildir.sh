#!/usr/bin/env bash
UNREAD=$(mu find 'g:u' | wc -l)
echo  $UNREAD
