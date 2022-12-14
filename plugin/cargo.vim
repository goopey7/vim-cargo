if exists('g:vim_cargo')
  finish
endif
let vim_cargo=1

autocmd BufRead,BufNewFile Cargo.toml,Cargo.lock,*.rs compiler cargo
autocmd BufRead,BufNewFile Cargo.toml,Cargo.lock,*.rs setlocal makeprg=cargo

if !exists('g:cargo_command')
  let g:cargo_command = "make {cmd}"
else
  let g:cargo_command = "cargo {cmd}"
endif

com! -nargs=* CargoBench call cargo#bench()
com! -nargs=* CargoBuild call cargo#build()
com! -nargs=* CargoCheck call cargo#check()
com! -nargs=* CargoClean call cargo#clean()
com! -nargs=* CargoDoc call cargo#doc()
com! -nargs=* CargoRun call cargo#run()
com! -nargs=* CargoTest call cargo#test()
com! -nargs=* CargoUpdate call cargo#update()

func! cargo#bench()
  execute "cargo bench"
endf
func! cargo#build()
  execute "cargo build"
endf
func! cargo#check()
  execute "cargo check"
endf
func! cargo#clean()
  execute "cargo clean"
endf
func! cargo#doc()
  execute "cargo doc"
endf
func! cargo#run()
  execute "cargo run"
endf
func! cargo#test()
  execute "cargo test"
endf
func! cargo#update()
  execute "cargo update"
endf

