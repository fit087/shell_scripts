# shell scripts GNU/Linux and Windows
## GNU/Linux

### Browse through the file system
`ls -tr` list files by **time** but print in **reverse** order

`ls -hlt` list files with attributes `l` sorted by `t` time and printed with human friendly sizes `h`

`zip -r folder{.zip,}` compress a folder in zip format

`less zipfile.zip` list of files within a zip file

`tar xvzf foo.tar.gz` decompress a gzip file

`tar xvjf foo.tar.bz2` decompress a bzip2 file

`mv !(subfolder) subfolder` [move all files in current folder to subfolder][1]

#### Fasd
Fasd keeps track of files and directories you have accessed, so that you can quickly reference them in the command line.

| Commands                        | Description                       |
|---------------------------------|-----------------------------------|
| `z folder`                      | Jump to the folder                |
| `v text_file`                   | open in vim                       |
| ``mv update.html `d folder` ``  | d retrieve the path of the folder |
| ``cp `f file` .``               | f retrieve the path to the file   |

### Connect to the server

```bash
ssh user@domain:port
ssh user@ip:port
ssh -X user@domain
ssh -Y user@domain
```

<!-- Links' List -->
[1]:https://askubuntu.com/questions/91740/how-to-move-all-files-in-current-folder-to-subfolder "How to move all files in current folder to subfolder?"
