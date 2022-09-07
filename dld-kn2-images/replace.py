import sys

url = sys.argv[1]
fp = sys.argv[2]
ifn = sys.argv[3]

text = ""

with open(fp, "r") as f:
    text = f.read()

text = text.replace(url, ifn)
print("py: replaced url with " + ifn)

with open(fp, "w") as f:
    f.write(text)
