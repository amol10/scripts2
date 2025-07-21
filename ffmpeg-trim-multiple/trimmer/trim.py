import sys
from subprocess import check_output


def trim(configuration):

    
    #time_slices = []

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


