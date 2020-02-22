# ef
[Fish](https://github.com/fish-shell/fish-shell) plugin for easy access to open config, function and completion file 

[日本語のREADME](README_jp.md)

## Install
With [fisher](https://github.com/jorgebucaran/fisher):
```
fisher add konafx/ef
```

### ~~Requirements~~ Verifications
- fish [3.1.0](https://github.com/fish-shell/fish-shell/releases/tag/3.1.0)

## Usage
```
# No arguments, it will open .config/fish/config.fish (To be pracise, open $__fish_config_dir/config.fish)
ef

# .config/fish/path/to/*.fish
ef path/to/*.fish

# fish function
ef --func <function file>

# configure file
ef --conf <configure file>

# completion
ef --comp <completion file>
```

### Example
```
# equal to no arguments
ef config.fish

# this will open .config/fish/completions/ef.fish
ef completions/ef.fish

# this will open .config/fish/functions/ef.fish
ef --func ef.fish

# same as before, auto add suffix ".fish" to filename
ef --func ef        

# if completions/nyaa.fish is not exist, this will open it as [New File]
ef --comp nyaa
```

### Notes
- Not implemented
    - NON `.fish` files
        - [Future]: add option
    - not under `$__fish_config_dir`
