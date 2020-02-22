function __fish_rc_file -a rc_dept
    set rc_top $__fish_config_dir
    [ -n "$rc_dept" ] 
    and set dir_path $rc_top'/'$rc_dept
    or  set dir_path $rc_top

    find $dir_path -type f,l | sed -e "s@$dir_path/@@"
end

complete -c ef -f -a "(__fish_rc_file)"
complete -c ef -x -l conf -a "(__fish_rc_file conf.d)" -d "/conf.d"
complete -c ef -x -l func -a "(__fish_rc_file functions)" -d "/functions"
complete -c ef -x -l comp -a "(__fish_rc_file completions)" -d "/completions"
