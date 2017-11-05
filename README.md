IOI Ops
=======

IOI Ops is the collection of (mostly Ansible) scripts used during [IOI 2017](http://ioi2017.org/) in Tehran, Iran.

Main goal of these scripts was to automate prearranged technical operations as much as possible.
One might find the following parts of these scripts reusable:

1. Preparation of a raw image to be used for cloning to contestant/worker machines (aka Mother Of All Images)
2. Bootstrapping contestant machines after cloning (e.g. setting unique hostnames and static interface IPs)
3. Configuration of VMs used by the HTC (e.g. authorized keys)
4. Handling contestant machines' incremental backups using `btrfs` filesystem

License
-------
This software is [MIT licensed](./LICENSE).

