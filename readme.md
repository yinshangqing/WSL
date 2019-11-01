## WSL开机自启动ssh服务

#### 1、准备工作
**win+R**键调出运行，输入**shell:startup**确定进入开始菜单启动程序目录(大致是C:\Users\用户名\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup);

#### 2、放置文件
将startWSL放到上述目录
将打开wsl，将init.sh放到/目录（Ubuntu的根目录），即/init.sh，记得要提前安装openssh-server(apt-get install openssh-server)，应该默认安装好了;

#### 3、设置权限
需要默认以root运行，所以在cmd命令下，先查看安装的Ubuntu版本
（cmd下）使用
	ubuntu config --default-user root
​	**Ubuntu18.04**版本时使用下面的命令：
​	ubuntu1804 config --default-user root

#### 4、重启电脑

重启电脑后，wsl默认开始运行了，就可以使用xshell直接连了，不需要别的操作

详情可以参考：

https://blog.csdn.net/qq_18286031/article/details/102847379

https://blog.csdn.net/qq_18286031/article/details/102847496

