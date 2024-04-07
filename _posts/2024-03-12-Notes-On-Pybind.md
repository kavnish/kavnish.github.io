---
layout: post
title: Notes on Pybind
subtitle: ____
tags: [post]
readtime: true
show-avatar: false
nav-short: true
full-width: false
published: false
---

Pybind can be used to write c++ based extensions for your python programs. Basically if you have something that is computationally expensive and you want to speed it up,  can write that part in c++ and then use pybind to call that c++ code from python.

Simplest example of using pybind is to write a function that adds two numbers. Here is the c++ code for that:

```cpp

#include <pybind11/pybind11.h>

int add(int i, int j) {
    return i + j;
}

PYBIND11_MODULE(example, m) {
    m.def("add", &add, "A function which adds two numbers");
}

```

Here we have a function `add` that takes two integers and returns their sum. We then use `PYBIND11_MODULE` macro to create a module called `example` and then we define a function `add` in that module.

To compile this code we can use the following command:

```bash
c++ -O3 -Wall -shared -std=c++11 -fPIC `python3 -m pybind11 --includes` example.cpp -o example`python3-config --extension-suffix`
```

This will create a shared library called `example.so` which can be imported in python using the following code:

```python

import example

print(example.add(1, 2))

```

It's as simple as that. Let's look at some more nuanced examples.



