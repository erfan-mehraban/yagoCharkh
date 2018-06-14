import re
import io
import mmap
infobox_path ='/media/system/YAGO3_some_selected_files/'+'infobox.tsv'
lable_path ='/media/system/YAGO3_some_selected_files/'+'fa_labels.tsv'
search_file_path = '/media/system/YAGO3_some_selected_files/'+'parties_pure'
with_lable_file = open('parties_with_fa_label','a')
searching_file = open(search_file_path)
index = 0
without_lable = []
for item in searching_file:
    item=item[:-1]
    index += 1
    search_pattern = ".*".join(item.split())
    # print(search_pattern)
    founded = False
    lables = io.open(lable_path,'r', encoding="utf-8")
    for lable_row in lables:
        res = re.search(search_pattern, lable_row , re.I)
        if res:
            with_lable_file.write(item+',"'+re.search("\"(.*)\"",lable_row).group(1)+"\",labeled\n")
            print(item+',"'+re.search("\"(.*)\"",lable_row).group(1)+"\",labeled")
            # print (item+" "+lable_row)
            founded = True
            break
    if not founded:
        print("layer2")
        infobox_file = io.open(infobox_path , 'r', encoding="utf-8")
        founded_infobox = False
        for infobox_row in infobox_file:
            res = re.search(search_pattern, infobox_row , re.I)
            if res:
                try:
                    la = re.search("fa/(.*)\>", infobox_row).group(1).replace("_"," ")
                    founded_infobox = True
                    with_lable_file.write(item+','+la+",labeled\n")
                    print(item+',"'+la+"\",labeled")
                    break
                except Exception as e:
                    print(e)
                    pass
        if not founded_infobox:
            print("failed "+search_pattern)
            without_lable.append(item)
print("---------------\n")
print("\n".join(without_lable))