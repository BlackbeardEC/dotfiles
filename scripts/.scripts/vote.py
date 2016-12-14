#!/bin/env python2.7
#sites
#http://bit.ly/1QBe1hj
#http://bit.ly/1QBe6kX
#http://bit.ly/1UBCQdS
#http://bit.ly/1UBDdFs
#http://bit.ly/1ILlsR6
#http://bit.ly/20hfdOW
#http://bit.ly/1KQNisH
#
#old vote sites above, new below
#
#http://bit.ly/1QBe1hj
#http://bit.ly/1QBe6kX
#http://bit.ly/1UBDdFs

import time
import webbrowser
import mechanize

oldsites = ['http://minecraft-server-list.com/server/73294/vote/','http://www.minecraftforum.net/servers/2966-vortex-network/vote','http://bit.ly/1QBe1hj','http://bit.ly/1UBDdFs','http://bit.ly/1ILlsR6','http://bit.ly/20hfdOW','http://bit.ly/1KQNisH']

sites = ['http://minecraftservers.org/vote/2343','http://minecraft-server-list.com/server/73294/vote/','http://minecraft-mp.com/server/1688/vote/']

#derp = mechanize.Browser()

for site in sites:
    webbrowser.open_new_tab(site)
    time.sleep(1)
#    derp.open(site)
#    derp.select_form(nr=0)
#    derp["query"] = "Lester"
