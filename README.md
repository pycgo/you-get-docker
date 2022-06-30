# you-get-docker
制作一个docker镜像 可以跑 you-get

依赖
python3
ffmpeg

```bash
 docker run -itd --image=registry.aliyuncs.com/opsflow/you-get
```

镜像启动之后直接进入容器内部即可使用you-get 下载内容可以自己copy出容器 也可以自己挂载数据目录，请参考docker 命令
