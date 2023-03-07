import time
x=1
f=open("/var/www/index.html", "w+")
while x>0:
        x=x+1
        f.write(' ')
        f.seek(0)
        f.write("<html><br><br><center>Container is up for "+str(x)+" seconds</center><script>setTimeout(function(){location.reload();}, 1000);</script></html>")
        time.sleep(1)
f.close()
