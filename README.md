# rev_IPv6

A small script to help name server administrators implement easy reverse IPv6 for PTR records :

```
root@foobar:~# ./rev_IPv6.sh
IPv6 : 2a01:e0a:c45:b8f0:d6ae:52ff:fed2:d698
PTR  : 8.9.6.d.2.d.e.f.f.f.2.5.e.a.6.d.0.f.8.b.5.4.c.a.0.e.1.0.a.2.ip6.arpa.
root@foobar:~#
```

```
root@foobar:~# shellcheck rev_IPv6.sh
root@foobar:~# echo $?
0
root@foobar:~#
```

--- 
Of course... use static IP addresses, right?!
