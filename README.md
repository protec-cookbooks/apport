Description
===========

A Package that enables/disables apport

Requirements
============

 * Chef 0.10+

Platforms
=========

 * Ubuntu

Tested on:

 * Ubuntu 14.04

Attributes
==========

See the `attributes/default.rb` for default values.

 * `node['apport']['enabled']` - Turns apport on/off

Usage
=====

```json
{ "run_list": ["recipe[apport]"] }
```

