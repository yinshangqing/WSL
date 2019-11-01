sudo apt install zsh
git clone https://github.com/robbyrussell/oh-my-zsh
cd oh-my-zsh/tools
sh install.sh
emulate bash
chsh -s $(which zsh)
echo $SHELL
# 查看主题
ls ~/.oh-my-zsh/themes
vim ~/.zshrc
# 使用 ys 风格还有其余的风格（）
# ZSH_THEME="ys"
# ZSH_THEME="lambda"                                                                            
# ZSH_THEME="agnoster"
# ZSH_THEME="robbyrussell"
# plugins=(git z last-working-dir extract web-search osx rake rbenv ruby bundler dotenv)
# unsetopt BG_NICE(如果报错，加上这一句)
