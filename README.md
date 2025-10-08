# This is a typst template for writing reports.

This doesn't use the normal typst import system so you have two choices:
- Do it the hard way (manually copy paste file and import with file path).
- Do it the harder way (git clone and maybe submodules)

# The Harder Way

If your report is not in a git repo, then you can just simply clone this repository and use it.

To clone this repository, make sure you are in the same directory as the report.

```sh
git clone https://github.com/tblelrd/school-report-template template
```

Then to use this repository in the Typst file.

```typ
#import "template/school-report.typ": report, test-table
```

# The Harder Way but Harder

If your report is managed by git, then you will need to use git submodules, (be in the same directory as the report).

```sh
git submodule add https://github.com/tblelrd/school-report-template template
```

Then, you can install the submodule by doing.

```sh
git submodule update --init --recursive
```

And you can update the submodule by doing.

```sh
git submodule foreach git pull
```

Then to use this repository, it is the same.

```typ
#import "template/school-report.typ": report, test-table
```
