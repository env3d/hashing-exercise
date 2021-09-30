# A basic exercise on creating and using hashes

One of the ways md5sum or sha256sum is used is to provide a quick way to verify file contents without comparing the files byte by byte.

For example, if you are devops for a website that allows file uploads, you may have a need to erase identical files in a particular directory.

If you look at the images directory, you’ll find that there are many images there, many of them are actually duplicates of each other. 

One way to figure this out is to write a script that compares each file to every other file.  naivecmp.sh is such a script.  Study it and make sure you understand what it is doing.

If you run naivecmp.sh in a bash shell, you’ll notice that it outputs, on each line, files that are  identical as reported by the cmp command.

1. What command (one-line bash) can you use to output all the md5 hashes for every file in the images sub-directory?

The output must look like the following (file name, space, md5 hash):

```
images/0.png bc2601e263939f9b37a5982ebb5a3f68
images/100.png 7f9cad85ba7c70e83388389cc2a15c09
images/10.png f821d329a5d4c4475a9c6e4cd7967105
images/11.png cde41b1a6cc5c81718e0a8cae5f780bb
images/12.png f821d329a5d4c4475a9c6e4cd7967105
images/13.png bc2601e263939f9b37a5982ebb5a3f68
images/14.png cde41b1a6cc5c81718e0a8cae5f780bb
images/15.png 7f9cad85ba7c70e83388389cc2a15c09
images/16.png bc2601e263939f9b37a5982ebb5a3f68
images/17.png cde41b1a6cc5c81718e0a8cae5f780bb
```

2. What command (one-line bash) can you use to output all the unique md5 hashes, as follows?

```
1ddd79a25485b6e687333cc2994aff45
5008ce5edc91d27d12e466bf29435145
7f9cad85ba7c70e83388389cc2a15c09
a4871f3b5ebde39fb9ad5da61bb35ce9
bc2601e263939f9b37a5982ebb5a3f68
cde41b1a6cc5c81718e0a8cae5f780bb
d59fa8946ab3c9edfd5e775e6fa9f58b
```

3. Write a script, md5cmp.sh, that takes a directory name as argument, and performs the same function as naivecmp.sh (i.e. outputs all identical files on each line, separated by space), but uses md5 hash as the algorithm.  The expectation is that the md5 version will perform much faster than naivecmp.sh.


4. How much faster is your md5cmp.sh compared to naivecmp.sh?  What linux command can you use to compare run times of various programs?  Describe the commands you used and report the performance difference.
