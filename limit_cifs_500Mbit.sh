#!/bin/bash
/sbin/kldload dummynet
/sbin/ipfw pipe 1 config bw 500Mbit
/sbin/ipfw pipe 2 config bw 500Mbit
/sbin/ipfw add 10 pipe 1 udp from any to me 137-138
/sbin/ipfw add 11 pipe 1 tcp from any to me 139
/sbin/ipfw add 12 pipe 1 tcp from any to me 445
/sbin/ipfw add 13 pipe 2 udp from me to any 137-138
/sbin/ipfw add 14 pipe 2 tcp from me to any 139
/sbin/ipfw add 15 pipe 2 tcp from me to any 445
