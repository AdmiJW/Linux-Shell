# Linux 

You've downloaded Linux, either in your virtual machine or as a base OS. How do I use Linux?

The Linux distribution that this note is written off was __Kali Linux__. Linux is very commonly used among __Penetration Testers__.

---

<br><br>


## 1.0 - File Navigation in Bash 📁

| Command | Full | Description |
|-|-|-|
| `pwd` | Print Working Directory | Prints the current working directory's path, like `/home/user/Desktop` |
| `cd` | Change Directory | Changes the current working directory to the one specified. Eg: `cd ..` / `cd /home/user` |
| `ls` | List files | List all the files and directories in the current working directory |
| `mkdir` | Make Directory | Creates a new directory that goes by the name specified. Eg: `mkdir MyFolder` or `mkdir Desktop/MyFolder` |
| `rmdir` | Remove Directory | Deletes the specified directory. Eg: `rmdir MyFolder` or `rmdir Desktop/MyFolder` |
| `cp`, `rm`, `mv` | Copy, Remove, Move | Copies, Remove or Move file. Eg: `cp text.txt Downloads/`, `rm Downloads/text.txt`, `mv text.txt Downloads/` |
| `locate`, `updatedb` | Locate file, Update Database | Internally, linux uses a database to keep track of where certain files are located. It is good idea to frequently use `updatedb` to update file locations. Then, use `locate` to find files that matches the search. Eg: `locate .txt` |
| `passwd` | Password | Allows you to change password for login |
| `man` | User Manual | When you need help on certain commands, you can use `man` to read the manual. Eg: `man ls`. For shorter version you may want to put the flag `--help` instead. Eg: `ls --help`. |

### Notes:

* If you want root privillages, you may do `sudo su`. This allows you to have full control of even `root` files. Be careful.

* The tilde sign (~) in file path represents __Home Directory__. If you are using bash with root privillages, your ~ may represent `/root`.

* A lot of times, you may use __Tab__ for autocompletion. For example, type in `cd Desk` and press tab, it completes to `cd Desktop` for you (Given there are `Desktop` directory in your working directory)

* Use arrow up and arrow down to look through your previously executed commands.

---

<br><br>