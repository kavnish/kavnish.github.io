---
layout: post
title: Notes on Pytorch Slicing
subtitle: ____
tags: [post]
readtime: true
show-avatar: false
nav-short: true
full-width: false
published: true
---


There are a number of ways you can slice(hop-slice) a pytorch tensor. Some of the most used ways are below.

Indexing: Indexing returns single elements from the tensor. For example, 

`x[0, 1] would extract the element at row 0, column 1 of the tensor x.`


Multi Indexing: multi indexing can be used to selected different elements from a tensor based on their positions. For example, 

`x[[0, 2], [1, 3]] would extract the elements at row 0, column 1 and row 2, column 3 of the tensor x.`

Boolean indexing: You can use boolean indexing to extract elements from a tensor based on a boolean mask. For example, 

`x[x > 0] would extract all elements of the tensor x that are greater than 0.`

Slicing: the : can be used to extract a range of indexes from a particular dimension, if used without range it will extract all the elements from that dimension. For example, 

`x[:, 1:3] would extract all rows and columns 1 through 2 of the tensor x.`

Ellipsis slicing: You can use ellipsis slicing to extract a sub-tensor from a larger tensor along multiple dimensions. It is just a way to avoid using mutiple : to extract multiple dimensions. For example, 

`x[..., 1:3] would extract all elements along the first dimension and columns 1 through 2 of the tensor x.`

Newaxis slicing: You can use newaxis slicing to add a new dimension to a tensor. For example, 

`x[:, None, :] would add a new dimension between the first and second dimensions of the tensor x.`

Strided slicing: You can use strided slicing to extract elements from a tensor with a non-contiguous memory layout. For example, 

`x[:, ::2] would extract all rows and every other column of the tensor x.`


So these are the most used ways to slice a tensor. Note that different slicing methods return tensors with different shapes based on the slicing. There might be requirements where the values of the selected indexes/dimensions is needed in the orignal shape with everythong else as zero which is usually solved by creating a mask. I will add more information about creating masks (i.e. tensors which are of same shape as the original tensors) in later posts.And will also update this post with how the memory allocation of the sliced tensors work, Is it assigned new memory or is there any cool way to minimize the memory footprint.











