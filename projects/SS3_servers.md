---
title: 'ITT3 SS special subjects'
subtitle: 'SS3 servers'
main_author: 'Morten Nielsen'
date: \today
email: 'mon@eal.dk'
left-header: \today
right-header: 'SS3 Servers'
---


Project outline
====================


This special subject is about automation, virtual machines and automatic handling of testing, building and other administrative tasks.



Network overview
--------------------

For this special subject, we will build a network, which is not simple, but well within reach of ITT3.

![ss3-network.png](projects/ss3-network.png)
\

We have 4 subnets

* `DMZ` - for servers which may be accessed directly from the Internet
* `USR LAN` - for user workstations
* `SRV LAN` - for intenal servers
* `INFRA_MGNT` - non-routable subnet for configuring the infastructure devices, ie. the two routers

We have lots of servers

* `Jump host` - the host that is used to acces the network from the internet
* `SMTP server` - for incoming and outgoing smtp traffic
* `reverse web proxy` - a proxy to give access to internal webservers
* `internal ws` - some internal workstation. We will include one virtual workstation, and might include an option for hooking in physical workstations also
* `infra jump host` - jump host for accessing the infrastructure management network
* `web app server` - the sererrunning our webapp
* `nagios`, `librenms` and `ELK` - monitoring and log servers
* `mailman` - the mailing list management server

The webapp in question will pull data from the mailman server and present it in a nice way to users.


Other notes
--------------------

We will divide whte world into production, testing and development. Development will mainly be on people laptops.

We will use gitlab and their tools for automating tasks in this environment.

We will automate creating and testing of the VMs and build VMs that may be used by others.


Outline of the 5 weeks
-----------------------------

Weeks as currently planned are as follows.

* Week 45: SS3 startup, DevOps

* Week 46: Fontys week

* Week 47: Reproducability

* Week 48: Merging

* Week 49: Autodeploy

* Week 50-51: Exams
