import re
poli = open('politicians_with_fa_label_id')
out = open("polititions_party",'a')
for politician_data in poli:
    politician_name = politician_data.split(",")[1]
    search_pattern = ".*".join(politician_name.split())
    print(search_pattern)
    facts = open('/media/system/YAGO3_some_selected_files/'+'facts_affli')
    for row in facts:
        if re.search(search_pattern, row ,re.I):
            result = re.search("isAffiliatedTo"+".*\t<(.*)>\t$" ,row ,re.I)
            party_search_pattern = result.group(1).replace("_",".*")
            print(party_search_pattern)
            parties = open('parties_with_fa_label_id')
            for party_data in parties:
                if re.search(party_search_pattern, party_data ,re.I):
                    out.write(politician_data.split(",")[0]+","+party_data.split(',')[0]+"\n")
            
            break
    