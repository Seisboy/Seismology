# 使用funclab程序时的一些笔记
- 确保`funclab1.8.0_without_map_data`这一目录以及子目录在matlab的路径下，至少包含
`funclab1.8.0_without_map_data/processRFmatlab`和`funclab1.8.0_without_map_data/utilities`这两个目录；
- 在运行程序时确保自己在`funclab1.8.0_without_map_data/processRFmatlab/example_scriptsz`这一路径下；
- 确保P波到时（比如标记为`t0`）的标签为`P`，这个理论上是可以改变的，不过我还没有更改源码。
- 通过taup标记的到时满足上述条件：`taup_setsac -mod prem -ph P-0 xxxx.sac -evdpkm`
- 该程序未提供去仪器响应的操作，如果需要的话自己提前手动或写脚本完成这一工作，后期可能考虑将去仪器响应环节加入源码；
- 示例数据可以完美运行，不过在处理实际数据时需要对脚本进行小小的改动。因为某些原因导致程序中的输出目录和文件名中包含空格，需要自己调整脚本以处理不同的情况。
