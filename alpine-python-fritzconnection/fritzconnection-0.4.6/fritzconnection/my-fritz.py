#!/usr/bin/env python
# -*- coding: utf-8 -*-

from fritzconnection import FritzConnection

connection = FritzConnection()

status = connection.call_action('WANCommonInterfaceConfig', 'GetCommonLinkProperties')
print(status['NewLayer1DownstreamMaxBitRate'])
print(status['NewLayer1UpstreamMaxBitRate'])
