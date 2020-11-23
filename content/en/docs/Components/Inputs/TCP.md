---
title: "TCP"
weight: 6
date: 2020-11-12
---
## Input *TCP*

### Overview
This input relies on a TCP connection to receive records in the usual format
Configure it with a host and port that you want to accept connection from.

By default it listens on port 6000 for any connection
It never exits.



### Configuration

Keys available in the `[input.config]` section:

|Name|Type|Default|Required|Description|
|:--:|:--:|:-----:|:------:|:---------:|
| Listener| string| ""| false| Host:Port to bind to|
