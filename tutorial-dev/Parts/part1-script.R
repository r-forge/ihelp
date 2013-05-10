# Desktop
cd ~/Dekstop
mkdir exericse
cd exercise
R
getwd()

> getwd()
[1] "/home/gnustats/Desktop/exercise"

> options("prompt")
$prompt
[1] "> "

> options(prompt="R> ")
R> 


R> rep(1,50)
 [1] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
[39] 1 1 1 1 1 1 1 1 1 1 1 1
R> options("width")
$width
[1] 80
R> options(width=120)
R> rep(1,50)
 [1] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1

