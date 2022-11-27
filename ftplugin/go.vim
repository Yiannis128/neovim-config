" This will run gofmt on every file that is saved.
autocmd! BufWritePost * silent !gofmt -w <afile>

