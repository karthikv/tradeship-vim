# Tradeship for Vim
Vim plugin to run [tradeship](https://github.com/karthikv/tradeship), which
automatically imports missing JS dependencies and removes unused ones.

## Installation
Ensure you have tradeship installed:

```sh
$ npm install -g tradeship
# or use yarn:
$ yarn global add tradeship
```

Install tradeship-vim with your favorite package manager. For
[vim-plug](https://github.com/junegunn/vim-plug), add this to your `~/.vimrc`:

```vim
Plug 'karthikv/tradeship-vim'
```

And then run `:PlugInstall`.

## Usage
To run tradeship, you may either:

- Execute `:Tradeship`
- To run on save, add the following to your `~/.vimrc`:

  ```vim
  autocmd BufWritePre *.js,*.jsx Tradeship
  ```
- To run using a keyboard shortcut (e.g. <kbd>ctrl</kbd> + <kbd>alt</kbd> +
  <kbd>i</kbd>), add the following to your `~/.vimrc`:

  ```vim
  nnoremap <C-A-i> :Tradeship<CR>
  ```

The first time tradeship runs in a project directory with many JavaScript files,
it'll take some time to parse and cache dependencies. Future runs will be much
faster.

## License
[MIT](LICENSE.md)
