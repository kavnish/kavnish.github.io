---
layout: post
title: Notes on Pytorch Tensor Manipulation
subtitle: ____
tags: [post]
readtime: true
show-avatar: false
nav-short: true
full-width: false
published: true
---

There are a number of ways you can slice(hop-slice) a pytorch tensor. Below is a list of operation used during tensor operations while writing a NN module.


Indexing: Indexing returns single elements from the tensor. For example, 

`x[0, 1] would extract the element at row 0, column 1 of the tensor x.`

Note - `x[[0, 1]] would return the First and Second Row (index from the first dimension) of the tensor`


Multi Indexing: multi indexing can be used to selected different elements from a tensor based on their positions. For example, 

`x[[0, 2], [1, 3]] would extract the elements at row 0, column 1 and row 2, column 3 of the tensor x.`

Boolean indexing: You can use boolean indexing to extract elements from a tensor based on a boolean mask. For example, 

`x[x > 0] would extract all elements of the tensor x that are greater than 0.`

Slicing: the : can be used to extract a range of indexes from a particular dimension, if used without range it will extract all the elements from that dimension. For example, 

`x[:, 1:3] would extract all rows and columns 1 through 2 of the tensor x.`

Ellipsis slicing: You can use ellipsis slicing to extract a sub-tensor from a larger tensor along multiple dimensions. It is just a way to avoid using multiple : to extract multiple dimensions. For example, 

`x[..., 1:3] would extract all elements along the first dimension and columns 1 through 2 of the tensor x.`

New-Axis: You can use new-axis slicing to add a new dimension to a tensor. For example, 

`x[:, None, :] would add a new dimension between the first and second dimensions of the tensor x.`

Strides: You can use stride slicing to extract elements from a tensor with a non-contiguous memory layout. For example, 

`x[:, ::2] would extract all rows and every other column of the tensor x.`


Note that different slicing methods return tensors with different shapes based on the slicing. But sometimes there might be requirements where the values of the selected indexes/dimensions is needed in the original shape with everything else as zero which is usually solved by creating a mask. 
I will add more information about creating masks (i.e. tensors which are of same shape as the original tensors) in later posts.And will also update this post with how the memory allocation of the sliced tensors work, Is it assigned new memory or is there any cool way to minimize the memory footprint.

Following operations are used to modify or pull elements out of a tensor based on another tensor.

Gather: Gather is used to pull elements out of a tensor along a given dimension based on the indices provided in another tensor. For example,

`torch.gather(x, dim=1, index=torch.tensor([[0, 0], [1, 0]])) would extract elements at index 0 of the second dimension and index 1 of the second dimension of the tensor x.`


Scatter: Scatter is used to modify elements of a tensor along a given dimension based on the indices provided in another tensor. For example,

`torch.scatter(x, dim=1, index=torch.tensor([[0, 0], [1, 0]]), value=1) would set the elements at index 0 of the second dimension and index 1 of the second dimension of the tensor x to 1.`

Scatter-Reduce: Scatter-reduce is used to reduce elements of a tensor along a given dimension based on the indices provided in another tensor. For example,

`torch.scatter_reduce('mean', x, dim=1, index=torch.tensor([[0, 0], [1, 0]])) would compute the mean of the elements at index 0 of the second dimension and index 1 of the second dimension of the tensor x.`

Scatter-Update: Scatter-update is used to update elements of a tensor along a given dimension based on the indices provided in another tensor. For example,

`torch.scatter_update(x, dim=1, index=torch.tensor([[0, 0], [1, 0]]), value=torch.tensor([[1, 2], [3, 4]])) would set the elements at index 0 of the second dimension and index 1 of the second dimension of the tensor x to the corresponding elements of the tensor value.`

Miscellaneous operations -

Flip: Flip is used to reverse the order of elements in a tensor along a given dimension. For example,

`torch.flip(x, dims=[1]) would reverse the order of elements in the second dimension of the tensor x.`

Roll: Roll is used to shift the elements in a tensor along a given dimension. For example,

`torch.roll(x, shifts=1, dims=[1]) would shift the elements in the second dimension of the tensor x by 1.`

Transpose: Transpose is used to swap the dimensions of a tensor. For example,

`torch.transpose(x, dim0=0, dim1=1) would swap the first and second dimensions of the tensor x.`

Permute: Permute is used to reorder the dimensions of a tensor. For example,

`torch.permute(x, dims=[1, 0]) would swap the first and second dimensions of the tensor x.`

Unsqueeze: Unsqueeze is used to add a new dimension to a tensor. For example,

`torch.unsqueeze(x, dim=1) would add a new dimension between the first and second dimensions of the tensor x.`

Squeeze: Squeeze is used to remove a dimension from a tensor. For example,

`torch.squeeze(x, dim=1) would remove the second dimension of the tensor x.`

Expand: Expand Operation is used repeat a low dimension tensor to create more dimension.

`<Tensor>.expand(2, 3) would expand the tensor x to have 2 more dimensions with 2 and 3 elements respectively. if you don't want to expand a particular dimension you can pass -1 to that dimension.`

update: update elements with a certain value with other value

`torch.update(x, dim=1, index=torch.tensor([[0, 0], [1, 0]]), value=1) would set the elements at index 0 of the second dimension and index 1 of the second dimension of the tensor x to 1.`

where: where is used to select elements from one of two tensors based on a condition. For example,

`torch.where(x > 0, x, torch.zeros_like(x)) would set all elements of the tensor x that are greater than 0 to their original values and all other elements to 0.`

These are some og the most used tensor operations, I'll keep on adding more as I learn more about them.


<!-- 
##### Memory Management 

Pinned memory, profiler, using gc to clean cache? finding bottle necks juggling tensors between cpu and gpu after processing.

-->

References -

[1] https://pytorch.org/docs/stable/torch.html#tensor-creation-ops-and-factories













