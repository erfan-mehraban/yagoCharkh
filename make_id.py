name = "protests_with_fa_label"
file = open(name)
out_file = open (name+"_id","a")
index = 0
for line in file:
    index += 1
    out_file.write(str(index)+","+line)