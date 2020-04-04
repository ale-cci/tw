## TW - Helper for large tex file
*Working progress*
#### Installation
Add this directory to your `PATH`

#### Usage
Copy tex template and style with
```
$ tw init "Project Name"
```

Create empty tex file ready to be added to the project
```
$ tw new-section "Section Name"
```

For more information see [the source code](https://github.com/ale-cci/tw/blob/master/tw).

#### Available Commands

| State | Command | Description |
|---|--|--|
| Done | tw init "Article Title" | Copy template and set title name and author |
| Done | tw new-section "Section Name" | Create new section with title "Section Name" |
| Done | tw update-cls new\_custom.cls | Change default 'custom.cls' with 'new\_custom.cls' |
| Done | tw latest-section edit | Edit latest saved tex file with '$EDITOR' |
| Done | tw latest-section view | Print the name of the latest edited section |
| Todo | tw edit-default NAME | Open default 'custom.cls', 'template.tex' or 'subfile.tex' with $EDITOR |
| Todo | tw help | Show help menu |
