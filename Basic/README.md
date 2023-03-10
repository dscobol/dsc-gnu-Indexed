# gnu-dsc-Indexed Basic

## List of program names and descriptions:

| Program  | Description                               | 
| :------  | :---------------------------------------- | 
|          |                                           |
| VSCBEX01 | This program will create and load an Indexed file with data from a text file.|
| VSCBEX02 | This program will read and display all the records from an indexed file.|
| VSCBEX03 | This program will load 5 Keys from a table and randomly read the records from an indexed file.|
| VSCBEX04 | This program will load 5 Keys from a table to read and update each record in the indexed file.|
| VSCBEX05 | This program will load 5 Keys from a table and delete each record in the indexed file.|

VSCBEX04 and VSCBEX05 modify the indexed file.
If you want a complete file again, re-run VSCBEX01.sh

## Directory Structure:

This is the directory structure use to create, compile and run these programs.
```
.
├── bin
├── cbl
├── cpy
├── data
├── idata
├── jcl
```

The bin and idata directories are not present as they are excluded by the .gitignore file.

## Running the examples:

Create the missing directories:
```
mkdir bin idata
```

CD into the jcl directory.

These "jobs" are "compile, link and go" scripts.

Run vscbex01.sh first to create the indexed file.

Then you can run the others in order (or not).

Just remember, you can always get a fresh version of the indexed file by re-running vscbex01.sh.
