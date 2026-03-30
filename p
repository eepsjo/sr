[General]
# 260324b
bypass-system = true
private-ip-answer = true
skip-proxy = localhost, *.local, *.lan, *.internal, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, fe80::/10, fc00::/7, captive.apple.com
tun-excluded-routes = 10.0.0.0/8, 100.64.0.0/10, 127.0.0.0/8, 169.254.0.0/16, 172.16.0.0/12, 192.0.0.0/24, 192.0.2.0/24, 192.88.99.0/24, 192.168.0.0/16, 198.51.100.0/24, 203.0.113.0/24, 224.0.0.0/4, 255.255.255.255/32, 239.255.255.250/32, 198.18.0.0/15, 233.252.0.0/24, ::1/128, ::ffff:0:0/96, 64:ff9b::/96, fc00::/7, fe80::/10, ff00::/8
icmp-auto-reply = true

[Rule]
RULE-SET,https://raw.githubusercontent.com/eepsjo/0/refs/heads/0/r,REJECT
RULE-SET,https://raw.githubusercontent.com/eepsjo/0/refs/heads/0/d,DIRECT
RULE-SET,https://raw.githubusercontent.com/eepsjo/0/refs/heads/0/p,PROXY
DOMAIN-SET,https://anti-ad.net/surge2.txt,REJECT
DOMAIN-SET,https://raw.githubusercontent.com/Loyalsoldier/surge-rules/refs/heads/release/direct.txt,DIRECT
RULE-SET,https://raw.githubusercontent.com/Loyalsoldier/surge-rules/refs/heads/release/cncidr.txt,DIRECT,no-resolve
FINAL,PROXY

[Host]
localhost = 127.0.0.1