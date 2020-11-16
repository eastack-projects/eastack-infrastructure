#!/usr/bin/env python3

from yaml import load, dump
from yaml import CLoader as Loader, CDumper as Dumper

FQDN = 'harbor.ipool.me'

with open('harbor.yml.tmpl', 'r') as file:
    content = load(file, Loader=Loader)
    content['hostname'] = FQDN
    content['https']['certificate'] = f'/opt/harbor/tls/{FQDN}.crt'
    content['https']['private_key'] = f'/opt/harbor/tls/{FQDN}.key'
    content['data_volume'] = '/opt/harbor/data'

with open('harbor.yml', 'w') as file:
    dump(content, file, Dumper=Dumper)
