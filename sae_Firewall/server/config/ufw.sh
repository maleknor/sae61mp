#!/bin/bash

ufw logging on
ufw --force enable
ufw default deny
ufw default deny outgoing
ufw allow 443
ufw allow from <@IP> to <@IP> port 22
ufw limit 80
ufw allow "Nginx Full"
ufw --force reload
