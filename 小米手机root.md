本教程正常情况无需双清或重装系统，可以进行OTA升级。升级后重复教程即可重新root。

但还是要记得备份数据后进行以下操作。注：刷机有风险，玩机需谨慎。 操作不当所造成后果与作者无关

注意最新miui13刷机之后，会导致招商银行app白屏，请谨慎对待



一、本教程适合开发或稳定版miui系统。需解BL锁，教程参考小米官网





![img](https://pic3.zhimg.com/v2-fdac5fb43045bd8a7c3f93b2233bdc9a_r.jpg)





![img](https://pic1.zhimg.com/80/v2-ba024aef9204d02ccc3d7c3acab5aaf0_720w.jpg)





![img](https://pic3.zhimg.com/80/v2-3dde79991bcb5329b44e6ba9a7cb4f3e_720w.jpg)



二、使用magisk制作修补文件。

1.点击下载最新完整包（需要和你当前手机版本一致，不一致请先升级）。

https://www.miui.com/shuaji-393.html

或者下载更新，如果没有更新的话可以点右上角下载最后的包。

下载更新的话，可以去Download->download_rom这个路径下去找包

![img](https://img-blog.csdnimg.cn/52c9cb3af5414d97b4e37a5bff917a93.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAeWVsbG93ZmlzaGVyeg==,size_9,color_FFFFFF,t_70,g_se,x_16)

 下载完成后，在他还在解包的时候（等他更新完也可，只是更包比较久，就不浪费时间了，注意不要重启），把包传电脑上。

2.解压下载好的安装包找到**boot.img**文件，位置如图



![img](https://pic3.zhimg.com/80/v2-c1b059c528131c346f9422bee20363ea_720w.jpg)



4.下载并安装magisk，酷安下载

安装



![img](https://pic2.zhimg.com/80/v2-a9c91cac2286f62b1a0d7545fa2b6951_720w.jpg)





选择一个修补文件（无root时没有直接安装选项，此处演示手机已root）



![img](https://pic2.zhimg.com/80/v2-3782d168e0d4e8825c3864aac80d33dd_720w.jpg)



选择**boot.img**



![img](https://pic2.zhimg.com/80/v2-b9772ce143821942a7fe11bf08150afd_720w.jpg)





在download目录下生成文件，修改后缀为**boot.img**



![img](https://pic3.zhimg.com/80/v2-2ed820fad5dfef939b5cf03903aa0376_720w.jpg)





- 上传至电脑

三、使用搞机助手安装magisk

1.并将boot.img放至此目录。

![image-20220530165725830](../../Users/Adnim/AppData/Roaming/Typora/typora-user-images/image-20220530165725830.png)



2.搞机助手进入引导模式

3.刷入镜像

![image-20220530165744945](../../Users/Adnim/AppData/Roaming/Typora/typora-user-images/image-20220530165744945.png)

4.注意img文件名称应该修改为 boot.img

5.成功之后重启 magisk安装结束！

6.接下来安装太极模块

https://taichi.cool/zh/download.html

7.下载之后压缩包传到手机，用magisk本地安装，之后重启

8.下载太极阳安装包，安装太极阳，结束