# Seismology
地震学研究中用到的脚本和笔记 :eyes:
## Self-developed code
- [lsresp.pl](https://github.com/seisboy/Seismology/blob/master/Receiver%20Function/lsresp.pl): 检测仪器响应文件是否存在

- [numENZ.pl](https://github.com/seisboy/Seismology/blob/master/Receiver%20Function/numENZ.pl): 检测ENZ三分量的数目

- [runnumENZ.pl](https://github.com/seisboy/Seismology/blob/master/Receiver%20Function/runnumENZ.pl): 配合[numENZ.pl](https://github.com/seisboy/Seismology/blob/master/Receiver%20Function/numENZ.pl)使用
## funclab
[funclab](https://drive.google.com/file/d/0B2KG63pkFxf_aFRkYzJlVmFfYVE/view)是用于处理接收函数的matlab程序

- [Notes.md](https://github.com/seisboy/Seismology/blob/master/funclab/Notes.md): 仅仅是笔记

- [run_all_examples.m](https://github.com/seisboy/Seismology/blob/master/funclab/run_all_examples.m): 以下五个脚本的综合体. 同原程序保持一致.

- [script01a_processPrfns.m](https://github.com/seisboy/Seismology/blob/master/funclab/script01a_processPrfns.m): 反卷积（P波接受函数）. 进行了修改, 主要是针对“空格问题”.

- [script01b_processSrfns.m](https://github.com/seisboy/Seismology/blob/master/funclab/script01b_processPrfns.m): 反卷积（S波接受函数）. 未开发.

- [script02_checkPrfns.m](https://github.com/seisboy/Seismology/blob/master/funclab/script02_checkPrfns.m): 质量控制. 和原版保持同步, 确保`STATION_PREFIX`同`net`一致.

- [script03a_plotGatherTimeStacks.m](https://github.com/seisboy/Seismology/blob/master/funclab/script03a_plotGatherTimeStacks.m): 未开发.

- [script03b_plotGatherDepthStacks.m](https://github.com/seisboy/Seismology/blob/master/funclab/script3b_plotGatherDepthStacks.m): 未开发.
