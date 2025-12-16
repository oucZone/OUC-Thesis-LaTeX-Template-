## 中国海洋大学硕博士学位论文 LaTeX 模板 (2025版)

🔥🔥🔥【20250225】数学字体以及西文文本为Times New Roman。

🔥🔥🔥【20250224】添加英文目录，图目录，表目录。

🔥🔥🔥【20250219】学校最新的模板行距是20磅，我们也进行相应修改。在main.tex 中添加了\setlength{\baselineskip}{20pt}，从中文摘要开始，段落行距就是20磅了。

🔥🔥🔥【20250218】2025年2月，学校印发了《研究生学位论文撰写指南》，发布了最新的研究生学位论文模板。针对最新模板，我们进行了大量修改。欢迎大家使用并提出建议！

🔥🔥🔥 特别提示，之前本仓库链接在：https://github.com/summitgao/OUC-LaTex-master 因为启用了2FA验证密码无法找回，现在启用本仓库继续维护。欢迎有问题在[issues](https://github.com/oucailab/OUC-LaTex-master/issues) 里面讨论





本模板是中国海洋大学硕博士学位论文 LaTeX 模板。LaTeX是一个流行的编辑科学类文章的工具。 大多数科学类书籍，期刊，文章都采用了LaTeX。 使用这个模板可以使你从无聊的格式限制中解脱出来，从而更专注地阐述自己的想法。 希望本模板能够帮助你入门LaTeX, 如果你有关于本模板的良好意见和建议，请在顶栏的问题(issue)一栏中提出。

本项目以 [GeoffreyChen](https://geoch.top) 编写的中国海洋大学的硕博士学位论文 LaTeX 模板为基础，按照最新版的 《[中国海洋大学研究生学位论文书写格式统一要求](http://grad.ouc.edu.cn/39/69/c1660a14697/page.psp)》 的要求编写。

学习LaTeX可以参考 Overleaf 的官方教程（[Learn LaTeX in 30 minutes](https://cn.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes)），或者在B站学习碗豆老师的45分钟教学视频 “[Latex科研写作入门](https://www.bilibili.com/video/BV1Au411N7Ew/)”。

本模板已经帮助2017级以来的多届中国海洋大学硕士、博士毕业生使用，在学生及答辩专家中反馈良好，大家可以放心使用。

<br>



## 如何使用

**本模板在 Overleaf 下测试通过，本地编译尚未测试。** 可以通过链接：https://www.overleaf.com/read/vmqmwgkcbnxf#aa257e   在线浏览本项目。考虑到 overleaf 服务器在国外，有时不太稳定，推荐大家使用国产软件 Texpage，我们组日常使用感觉比 overleaf 流畅许多，地址：https://texpage.com/

![img](img/20250219095840.jpg)


Overleaf 是一个线上 LaTeX 编辑器，可以在不安装任何工具的情况下编写 LaTeX 文档，同时也可以和其他人共享文档，共同编辑。

推荐使用 **Overleaf** 使用本模板，具体方法如下：

1. 下载模板代码，并压缩成 .zip 文件
2. 在 Overleaf 中上传这个 .zip 压缩文件以创建一个新 Overleaf 项目
3. 在 Overleaf 界面左上角点击 "Menu"
   - 选择 "Compiler" 为 "XeLaTeX"
   - 选择 "TeX Live version" 为 "2019" 或者更新的版本
4. 使用 Overleaf 编译

最近我也在使用 [TexPage](https://www.texpage.com/)，可以理解为国产版的 Overleaf，对于国内用户支持的要好一些，尤其是云盘同步功能，支持百度网盘和 WebDAV 。另外，遇到问题客服也很给力，发邮件能够12小时以内及时回复帮忙解决问题，大家可以考虑。

<br>



## 修改记录
- 20250218，按照研究生院提供的最新模板进行修改
- 20220221，修改参考文献自动连续：[1] [2] [3] 自动转化为 [1-3]
- 20220115，为方便在 Overleaf  中快速编译，将正文拆分为若干单独文件
- 20220501，修改“关键词”格式，小节不换页（赵政达修改）
- 20230126，考虑到图表标题和正文字体一样大，有时区分不开是正文还是图表标题，因此把图表标题改小一号（高峰修改）
- 20250216，根据新版范例，修改了“关键词”格式，奇偶数页眉要求，部分字体要求大小，调整了目录无空格要求（黄博斌修改）
- 20250220，对于英文图片和表格标题，使用 \thefigure 和 \thetable 自动生成序号
- 20250224，添加英文目录，图目录，表目录。修改图表caption的形式，中英文caption间距6磅。



## 反馈与贡献

本模版是由诸多感兴趣的同学一起维护的开源项目，我们非常欢迎问题反馈和新的贡献者！

### 反馈问题

如果在使用上有任何问题，请至 [在 GitHub 项目issue提问](https://github.com/oucailab/OUC-LaTex-master/issues) 



### 成为贡献者

这个仓库是面向用户的**示例模版**，如果你有很好的排版示例，可以提交到此仓库与大家分享。如果你想为本仓库贡献代码，欢迎发 Pull Request，然后再将更新同步到本仓库。

除了提交 Pull Request 之外，还有以下方式可以进行贡献：

* 帮助我们解答同学们的[问题](https://github.com/oucailab/OUC-LaTex-master/issues)，这些问题你也可能遇到过并且知道如何解决；
* 向周围同学安利 OUC-LaTex-master，让更多的同学使用我们维护的模板；
* 在讨论区中分享你的使用体验，以及吐槽。如果你也想成为项目的长期维护者，也可以通过邮件/讨论区告诉我们。:-)



## 开源许可

本项目代码基于 MIT 协议开源

学校标志的版权归中国海洋大学所有

有任何问题可以随时联系高老师：gaofeng@ouc.edu.cn

有任何问题也可以随时联系高老师的研究生小黄：yellowstar168@outlook.com

