import sys
from subprocess import check_output

c = ""

with open("config.txt" , 'r') as f:
    c = f.read()

ca = c.strip().splitlines()
print("DEBUG: ca=" + str(ca))

fn = ca[0]
inp = ca[2]
ffp = ca[3]
op = ca[4]
opfnf = ca[5]
vlf = op + ca[1]


t = []

with open(fn, 'r') as f:
    for l in f.read().splitlines():
        print("DEBUG line=" + l)
        ts = l.split()
        print("DEBUG slice=", ts)
        t.append(ts)

print(t)

fl = []
for i in range(0, len(t)):
    opfn = str(i) + ".mp4"
    fl.append("file \'" + opfn + "\'")

    cmd = ffp + " -y -i " + inp + " -ss " + t[i][0] + " -to " + t[i][1] + " -c copy " + op + "\\" + opfn
    print("DEBUG: " + cmd)
    check_output(cmd)

with open(vlf, 'w') as f:
    f.write("\n".join(fl))

#print("DEBUG: filelist=" + fl)
cmd2 = ffp + " -f concat -i " + vlf + " -c copy " + opfnf
print("DEBUG: cmd2=" + cmd2)
check_output(cmd2)


