# screencapture

Capture images from the screen every 30 seconds using cron and convert them into a video


## Setup

```bash
$ cd
$ git clone https://github.com/Tatzyr/screencapture
$ crontab -e
* * * * * $HOME/screencapture/capture.sh & sleep 30; $HOME/screencapture/capture.sh
```


## Convert images into a Video

Running this command will create `~/screencapture/20161007.m4v`.

```bash
$ cd ~/screencapture
$ ./encode.sh 20161007
```

\* You must edit `VIDEO_WIDTH` and `VIDEO_HEIGHT` in `encode.sh` before run this command.


## Dependency

* macOS
* FFmpeg


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Tatzyr/screencapture.


## Licence

See [LICENSE](LICENSE).
