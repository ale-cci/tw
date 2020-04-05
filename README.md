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
| Done | tw edit latest | Edit latest saved tex file with '$EDITOR' |
| Done | tw edit custom.cls | Edit default 'custom.cls' file with '$EDITOR' |
| Done | tw edit template.tex | Edit default 'template.tex' file with '$EDITOR' |
| Todo | tw help | Show help menu |
