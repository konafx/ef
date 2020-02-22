function ef -d 'Edit fish'
    set rc_top $__fish_config_dir
    [ -n "$EDITOR" ]; and set editor $EDITOR; or set editor 'vim'

    # default => edit $rc_top/config.fish
    [ -z "$argv" ]; and eval "$editor" $rc_top/config.fish; and return

    # parse option
    set options (fish_opt -s s -l conf -r --long-only)
    set -a options (fish_opt -s f -l func -r --long-only)
    set -a options (fish_opt -s a -l comp -r --long-only)
    argparse -n ef $options -- $argv
    or return

    set ef_flags _flag_conf _flag_func  _flag_comp
    set rc_depts 'conf.d'   'functions' 'completions'
    for i in (seq (count $ef_flags))
        # Flag has value, edit or create file specified in rc_dept
        [ -n "$$ef_flags[$i]" ]
        and set rc_dept $rc_depts[$i]
        and set filename $$ef_flags[$i]
    end

    # complete suffix
    string match -qr '\.fish$' $filename; or set filename $filename'.fish'

    [ -z "$filename" ]
    and eval "$editor" $rc_top'/'$argv
    or  eval "$editor" $rc_top'/'$rc_dept'/'$filename

    return
end
