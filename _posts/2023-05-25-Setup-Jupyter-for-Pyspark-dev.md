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

