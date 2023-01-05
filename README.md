# How to use
1. Git clone this repo or download the ZIP. Make sure this `vimrc` directory is under `~` (user HOME directory for all OS platforms).
2. Put a `_vimrc` file (I prefer this filename, you can use other lawful init filename like `.vimrc` as you wish) under `~` with simplest content:

    ```vim
    source ~/vimrc/.vimrc
    " CUSTOM
    ```
    Or find reference in `useful_templates`.

## Complete mode
Depending on `bundle/Vundle.vim`, make sure you get it. Start Vim and execute `:PluginInstall`. If some network connection problems happen, please consider to use a proxy.

## Basic mode
If you need only the basic Vim configurations (without any plugin):
- Move `PluginManagerLoad.vim, PluginsOptions.vim` away, or only take `.vimrc` for use;
- `bundle/Vundle.vim` is also useless;

It worked well in pure UNIX-like command line environment (usually no connection to Internet) for myself.

## Useful templates
- `diffviewer.vim`

    I use gVim with this setting as the external diff viewer of TortoiseSVN (in Windows). Set TortoiseSVN option like:

    ```powershell
    X:\path\to\gvim.exe --noplugin -u "X:\path\to\diffviewer.vim" -d
    ```

- `gVimE_lnk`

    I use as a minimalism start shortcut in Windows. With `--noplugin` it will start very fast and take very small amount of memory. The very original taste of Vim right? :)

- `local_vimrc.vim`

    `_vimrc` reference, including settings like custom gVim window size for different monitor screens, overriding the defaults setting in `.vimrc`. Adapt for your own need.
