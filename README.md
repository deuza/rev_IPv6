# rev_IPv6

> Need the package `utils-linux` if the `rev` binary is not here.

A small script to help name server administrators implement easy reverse IPv6 for PTR records :

```
root@foobar:~# ./rev_IPv6.sh
IPv6 : 2a01:e0a:c45:b8f0:d6ae:52ff:fed2:d698
PTR  : 8.9.6.d.2.d.e.f.f.f.2.5.e.a.6.d.0.f.8.b.5.4.c.a.0.e.1.0.a.2.ip6.arpa.
root@foobar:~#
```

Don't trust, verify :
```
root@foobar:~# sha256sum rev_IPv6.sh
399bb55e7f5e87c5b4eda535171a780f17f2088843c232da1dcb30234df4dd46  rev_IPv6.sh
root@foobar:~#
```

Syntax OK :

```
root@foobar:~# shellcheck rev_IPv6.sh
root@foobar:~# echo $?
0
root@foobar:~#
```

--- 
Of course... use static IP addresses, right?!
