# neovim config

我的 nvim 配置。

## keymap

|key|action|
|-|-|
|<F5>|run|

## Plugin

### MarkdownPreview

**缺少 tslib 的问题**

进入插件 clone 的位置，类似这样的路径 `.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim`，手动指定 yarn 命令。

**在 wsl 下使用的问题**

在 wsl 下使用的人的确很少，在 issue 里看了半天，最后采取这样的方案。

1. 不使用 cmd.exe 调用，关闭打开时检测 wsl 为 win32 平台的代码，我自己 fork 了项目 [code](https://github.com/fcnaud/markdown-preview.nvim/blob/d1874da67e6c2397cdc7fd83ee4e3f1c36135e91/app/lib/util/opener.js?_pjax=%23js-repo-pjax-container%2C%20div%5Bitemtype%3D%22http%3A%2F%2Fschema.org%2FSoftwareSourceCode%22%5D%20main%2C%20%5Bdata-pjax-container%5D#L20)。

2. 在 wsl 中创建一个对应浏览器的链接并设置打开的方式
```shell
/usr/bin/edge -> '/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe'

vim.g.mkdp_browser = "edge"
```

### lsp

**使用 nvim-lsp-install 安装 lua server 错误**

[解决方法 issue](https://github.com/williamboman/nvim-lsp-installer/issues/342), 手动执行 `:LspInstall sumneko_lua@v2.5.6`


### 参考

**教程**

* [学习 Neovim 全 lua 配置](https://github.com/nshen/learn-neovim-lua)
* [在 neovim 中使用 Lua](https://github.com/glepnir/nvim-lua-guide-zh)

**参考配置**

* [glepnir](https://github.com/glepnir/nvim)
* [ayamir](https://github.com/ayamir/nvimdots)
* [imxiejie](https://github.com/imxiejie/ThinkVim)
