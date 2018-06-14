import re
politician_file = open('politicians_with_fa_label_id')
out_politician_file = open('politicians_with_fa_label_id_',"a")
relation = "isMarriedTo"
for politician_data in politician_file:
    politician_name = politician_data.split(",")[1]
    search_pattern = ".*".join(politician_name.split())
    print(search_pattern)
    fact_file = open('/media/system/YAGO3_some_selected_files/'+'facts_spouse')
    founded = False
    for row in fact_file:
        if re.search(search_pattern, row ,re.I):
            result = re.search(relation+".*\t<(.*)>\t$" ,row ,re.I)
            # out_politician_file.write(politician_data[:-1]+","+result.group(1)+"\n")
            out_politician_file.write(politician_data.split(",")[0]+","+result.group(1).replace("_"," ")+"\n")
            print(result.group(1))
            founded = True
            break
    if not founded:
        print('ng')
        # out_politician_file.write(politician_data[:-1]+",NotGiven\n")
        # out_politician_file.write(politician_name+",NotGiven\n")