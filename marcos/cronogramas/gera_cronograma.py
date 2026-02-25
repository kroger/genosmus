#!/usr/bin/python
# -*- coding: utf-8 -*-

import datetime
import json
import sys


WEEKDAYS = {0: 'Seg', 1: 'Ter', 2: 'Qua', 3: 'Qui', 4: 'Sex'}


def get_deltas(days):
    days = days[:]
    days.append(days[0])
    deltas = []
    for i in range(len(days) - 1):
        _delta = (days[i + 1] - days[i]) % 7
        if _delta == 0:
            _delta = 7
        deltas.append(datetime.timedelta(days=_delta))
    return deltas


def make_md(contents, days):
    deltas = get_deltas(days)
    classes_per_week = len(days)
    current_date = datetime.datetime.strptime(dic['Start'], '%d/%m/%Y')

    while current_date.weekday() != days[0]:
        current_date += datetime.timedelta(days=1)

    weekday_pointer = classes_per_week - 1
    i = 0
    class_number = i
    rows = []
    while i < len(contents):
        if contents[i].startswith('*'):
            class_number_label = ''
        else:
            class_number_label = str(class_number + 1)
            class_number += 1
        rows.append('| {} | {} | {} | {} |'.format(
            class_number_label,
            current_date.strftime('%d-%m-%Y'),
            WEEKDAYS[current_date.weekday()],
            contents[i],
        ))

        weekday_pointer = (weekday_pointer + 1) % classes_per_week
        delta = deltas[weekday_pointer]
        current_date += delta
        i += 1

    return '\n'.join(rows)


if __name__ == '__main__':
    fname = sys.argv[1]

    with open(fname, 'r', encoding='utf-8') as fp:
        contents = [row.rstrip('\n') for row in fp.readlines()]

    code = fname.split('.')[0]

    with open('semestre.json', 'r') as fp:
        dic = json.load(fp)

    _str = make_md(contents, dic['Days'][code])

    print(_str)
