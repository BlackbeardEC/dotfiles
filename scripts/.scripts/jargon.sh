#!/bin/bash
abbreviation=("TCP" "HTTP" "SDD" "RAM" "GB" "CSS" "SSL" "AGP" "SQL" "FTP" "PCI"
 "AI" "ADP" "RSS" "XML" "EXE" "COM" "HDD" "THX" "SMTP" "SMS" "USB" "PNG")

adjective=("auxiliary" "primary" "back-end" "digital" "open-source" "virtual"
 "cross-platform" "redundant" "online" "haptic" "multi-byte" "bluetooth"
 "wireless" "1080p" "neural" "optical" "solid state" "mobile")

noun=("driver" "protocol" "bandwidth" "panel" "microchip" "program" "port"
 "card" "array" "interface" "system" "sensor" "firewall" "hard drive" "pixel"
 "alarm" "feed" "monitor" "application" "transmitter" "bus" "circuit"
 "capacitor" "matrix")

verb=("back up" "bypass" "hack" "override" "compress" "copy" "navigate" "index"
 "connect" "generate" "quantify" "calculate" "synthesize" "input" "transmit"
 "program" "reboot" "parse")

ingverb=("backing up" "bypassing" "hacking" "overriding" "compressing"
 "copying" "navigating" "indexing" "connecting" "generating" "quantifying"
 "calculating" "synthesizing" "transmitting" "programming" "parsing")

sentences=(
'If we '"${verb[$RANDOM % ${#verb[@]} ]}"' the '"${noun[$RANDOM % ${#noun[@]} ]}"', we can get to the '"${abbreviation[$RANDOM % ${#abbreviation[@]} ]}"' '"${noun[$RANDOM % ${#noun[@]} ]}"' through the '"${adjective[$RANDOM % ${#abbreviation[@]} ]}"' '"${abbreviation[$RANDOM % ${#abbreviation[@]} ]}"' '"${noun[$RANDOM % ${#noun[@]} ]}"'!'

'We need to '"${verb[$RANDOM % ${#verb[@]} ]}"' the '"${adjective[$RANDOM % ${#adjective[@]} ]}"' '"${abbreviation[$RANDOM % ${#abbreviation[@]} ]}"' '"${noun[$RANDOM % ${#noun[@]} ]}"'!'

'Try to '"${verb[$RANDOM % ${#verb[@]} ]}"' the '"${abbreviation[$RANDOM % ${#abbreviation[@]} ]}"' '"${noun[$RANDOM % ${#noun[@]} ]}"', maybe it will '"${verb[$RANDOM % ${#verb[@]} ]}"' the '"${adjective[$RANDOM % ${#adjective[@]} ]}"' '"${noun[$RANDOM % ${#noun[@]} ]}"'!'

"You can't ${verb[$RANDOM % ${#verb[@]} ]}"' the '"${noun[$RANDOM % ${#noun[@]} ]}"' without '"${ingverb[$RANDOM % ${#ingverb[@]} ]}"' the '"${adjective[$RANDOM % ${#adjective[@]} ]}"' '"${abbreviation[$RANDOM % ${#abbreviation[@]} ]}"' '"${noun[$RANDOM % ${#noun[@]} ]}"'!'
)
echo ${sentences[$RANDOM % ${#sentences[@]} ]}
