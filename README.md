# mktable

mktable is a small program I use to generate ASCII tables from the commandline. 
When run without arguments, it will prompt for the values necessary to make the table.

# Building

Make sure you have the OCaml compiler installed, and run `make` in the project's directory.

# Operation

#### Running without arguments

Mktable will prompt for input on stdin when run without arguments:

```
$ ./mktable
Enter cell width: 8
Enter cell height: 4
Enter rows: 2
Enter columns: 3
Enter horizontal bar char: *
Enter vertical bar char: |
```

Output: 

```
|********|********|********|
|        |        |        |
|        |        |        |
|        |        |        |
|********|********|********|
|        |        |        |
|        |        |        |
|        |        |        |
|********|********|********|
```

#### Running with arguments

##### Argument Chart

| Argument       | Description                  |
| -------------- | ---------------------------- |
| 1              | Cell Width                   |
| 2              | Cell Height                  |
| 3              | Number of rows               |
| 4              | Number of columns            |
| 5              | Character of horizontal bar  |
| 6              | Character of vertical bar    |

The following example uses commandline arguments to print the same table as above:

```
$ ./mktable 8 4 2 3 '\*' '|'
```

# Why is this useful?

I use it to create faux datatables and spreadsheets when working with text files in Vim.
For example, typing the following from ex mode in Vim will insert the above table into your document:

```
:r!mktable 8 4 2 3 '\*' '|'
```

It could also be used to generate test input for other programs.

... and it's fun to play with too!
