# ef
[fish](https://github.com/fish-shell/fish-shell)の設定や関数、補完ファイルへのアクセスを簡単にするプラグイン

[English README](README.md)

## インストール
[fisher](https://github.com/jorgebucaran/fisher)を使用:
```
fisher add konafx/ef
```

### ~~要件~~ 動作確認済
- fish [3.1.0](https://github.com/fish-shell/fish-shell/releases/tag/3.1.0)

## 使い方
```
# 引数なしで、.config/fish/config.fishを開きます
# （正確に言うと、$__fish_config_dir/config.fishを開きます）
ef

# .config/fish/path/to/*.fishを開く
ef path/to/*.fish

# 関数を開く
ef --func <function file>

# 設定
ef --conf <configure file>

# 補完
ef --comp <completion file>
```

### 例
```
# 引数なしの実行と同じ動作をします
ef config.fish

# .config/fish/completions/ef.fishを開きます
ef completions/ef.fish

# .config/fish/functions/ef.fishを開きます
ef --func ef.fish

# 拡張子".fish"を自動で付け加えるので、先ほどと同じ動作をします
ef --func ef        

# もし completions/nyaa.fishが存在しなかったら、新しいファイルとして開くでしょう
ef --comp nyaa
```

### Notes
- 未実装、または対応しません
    - 拡張子が`.fish`じゃないファイル
    - `$__fish_config_dir`以下に存在しないファイル
