---
layout: page
title: On Setting up Jupyter for PySpark Dev
subtitle: false
tags: [how-to]
readtime: false
show-avatar: false
nav-short: true
full-width: false
published: false
---

One of the pain-points of PySpark development is not being able to develope a modular codebase. Writing single file pipeline is very easy on remote livy-sessions (which most of data-scientists use as a primary way to connect to the spark cluster) but as soon as you try to write a modular codebase you will run into issues.

One of the way to get around this issue is to use Jupyterlab for PySpark development. Jupyterlab is a very powerful tool for interactive development and it can be used for PySpark development as well.

> NOTE: you must have SSH access to driver node of the cluster.

Following are steps to get the Jupyterlab setup for PySpark development.

- Figure out the binary path for Jupyterlab/jupyter-notebook/IPython
- Set PYSPARK_DRIVER_PYTHON path as per the binary you want to use
- Usually PySpark is configured on on the root python environment so just make sure you are using the jupyter/IPython binaries form the same environment.


you can have a password for your jupyter server (jupyter also allows to to point the server to different configs so on the same machine your teammates can have their own jupyter server and own password, don't need to worry about the livy and all.) With ip options set properly under  driver options you can access your jupyter setup even from a browser.


Sharing the projects and demos would become a lot easier. As you can directly share the links to the demo notebooks.