from googletrans import Translator

input_file_name = "not_labeld"
ouput_file_name = "organs_with_fa_label"
src_lang = "en"
dest_lang = "fa"
result_format = "{src},\"{dest}\",translated\n"

translator = Translator()
all_words = open(input_file_name).read().split("\n")
result = ""
for index, word in enumerate(all_words):
    if word.isspace() or word == '':
        continue
    word = translator.translate(word, dest=dest_lang, src=src_lang)
    result += result_format.format_map({
        "src" : word.origin,
        "dest": word.text
    })
    print (index+1,"/",len(all_words))
ouput_file = open(ouput_file_name, 'a')
ouput_file.write(result[:-1])
