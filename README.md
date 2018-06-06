#### بسم الله الرحمن الرحیم

توی این نوشته می‌خوام تلاش‌های مذبوحانه‌ی خودم رو برای ساخت یه دیتابیس رابطه‌ای که اینجا توضیحاتش اومده شرح بدم!

به نظرم رسید قبل از اینکه توی دیتاهایی که داریم سر در گم بشم اول یه نگاهی به فایل‌هایی که دارم بندازم. با توجه به اینکه حجم فایل‌ها خیلی زیادن اولین و ساده‌ترین ابزاری که به ذهنم رسید استفاده کنم کامندهای gnome بود.
هر چند ایده‌ی نوشتن یک بروزر هم به ذهنم رسید ولی قبلش تصمیم گرفتم یکم دستام رو گلی کنم. بعد از اینکه دستام گلی شد فهمیدم بیخیال شدن نوشتن یک مرورگر برای گشتن توی فایل‌ها خیلی هم تصمیم بدی نبود. هر فایل پیچ و خم خودشو داره و نوشتن یه مرورگر که باید هی به فکر پرفورمنسش هم باشی میتونست وقت زیادی ازم بگیره در حالی که همون کاربری ساده‌ای که من می‌خوام رو ابزارهای گنوم داشت.
برای همین یه ساعتی وقت گذاشتم و اون ابزارهایی که به نظرم به درد بخور میومد رو از [آموزش LPIC101 ](https://jadi.gitbooks.io/lpic1/) یاد گرفتم.

اول از همه رفتم سراغ فایل‌ها و به ترتیب حجمشون سعی کردم تحلیلشون کنم و ببینم توشون چیه

خداروشکر یه چیزای کلی ای اول هر فایل نوشته شده پس با `head` میتونم اول هر فایل رو بخونم بدون اینکه اون همه حجم رو با یه ادیتور باز کنم!

-----

### yagoLabels.tsv (3.6GB)

col 1 : \<id_.*\>

col 2 : \<.*\>

col 4 : \".*\"@..

col3 | desc | example
--- | --- | :---
rdfs:lable | ??? | `<Afro-Eurasia>  rdfs:label      "آفرو–اوراسیا"@fas`
redirectedFrom  | ??? | `<10983_Smolders>        <redirectedFrom>        "سيارك ۱۰۹۸۳"@fas`
hasFamilyName | نام خانوادگی | `<id_1i5amaq_1o4_nj9dcn>	<David_Helpling>	<hasFamilyName>	"Helpling"`
hasGivenName | نام کوچک | `<id_v060qu_15u_43yfi>	<Harold_Theobald>	<hasGivenName>	"Harold"`
skos:prefLabel | ??? | `<id_wl7rbm_1sz_1tq8yaq>	<nl/Tibirke_(parochie)>	skos:prefLabel	"Tibirke (parochie)"@eng`
isPreferredMeaningOf | ??? | `<id_10jfv89_nyg_hywqnh>	<wordnet_subsidiary_company_108003935>	<isPreferredMeaningOf>	"subsidiary"@eng`
hasGloss | ??? | `<id_o8bx5t_11h_196h34l>	<wordnet_deviltry_100745943>	<hasGloss>	"wicked and cruel behavior"@eng`

----

### yagoGeonamesTypes.tsv (462M)

اینجا میاد یه سری موجودیت جغرافیایی رو به نوعشون وصل میکنه، مثلا میگه دره‌ی فلان، دره است

col 1 : \<geoentity_.*\>

col 2 : rdf:type

col 3 : \<geoclass_.*\>

example: `	<geoentity_Peru-Chile_Trench_6363106>	rdf:type	<geoclass_trench>`

### yagoGeonamesOnlyData.tsv (2.3G)

اطلاعات مربوط به موجودیت‌های نقشه‌کشی نشده مانند مختصات، اسم‌های مستعار، سلسه‌های جایگیری، همسایگان

اینجا یه کم کثیف کاری کردم و خیلی هارد کد ستون‌های دوم و سوم رو درآوردم!
``` bash
cut yagoGeonamesOnlyData.tsv -f3 | uniq | less
```

col 1 : \<geoentity_.*\>

col 2 | col 3 | desc | example
--- | --- | --- | ---
rdfs:lable | \".*\" | ??? | `<geoentity_Peru-Chile_Trench_6363106>   rdfs:label      "Peruansko-Chilijskij Zhelob"`
hasLatitude | \".*\"\^\^\<degree\> [[:digit:]] | معلومه | ` <geoentity_London_Reefs_1879967>	<hasLatitude>	"8.85"^^<degrees>	8.85`
hasLongtitude | " | " | `	<geoentity_London_Reefs_1879967>	<hasLongitude>	"112.53333"^^<degrees>	112.53333`
hasGeonamesEntityId | \"[:digit:]\" | ای دیش رو میده. ولی نمی‌دونم به چه دردی می‌خوره هنوز | `	<geoentity_London_Reefs_1879967>	<hasGeonamesEntityId>	"1879967"	`
isLocatedIn | \<geoentity_.*\> | میگه چی تو چیه دیگه! | `	<geoentity_Dyker_Heights_6690888>	<isLocatedIn>	<geoentity_Dyker_Heights_5115614>	`

---
#yagoFacts.tsv (404M)

col 1 : \<id_.*\>

all cols : \<.*\>

همه‌ی ریلیشن‌ها در ستون سوم رو هم اینجوری به دست آوردم:
```
cat yagoFacts.tsv | cut -f3 | uniq | sort | uniq 
```
و نتیجه:
```
<actedIn>
<created>
<dealsWith>
<diedIn>
<directed>
<edited>
<exports>
<graduatedFrom>
<happenedIn>
<hasAcademicAdvisor>
<hasCapital>
<hasChild>
<hasCurrency>
<hasGender>
<hasGloss>
<hasMusicalRole>
<hasNeighbor>
<hasOfficialLanguage>
<hasWebsite>
<hasWonPrize>
<imports>
<influences>
<isAffiliatedTo>
<isCitizenOf>
<isConnectedTo>
<isInterestedIn>
<isKnownFor>
<isLeaderOf>
<isLocatedIn>
<isMarriedTo>
<isPoliticianOf>
<livesIn>
<owns>
<participatedIn>
<playsFor>
<wasBornIn>
<worksAt>
<wroteMusicFor>
```

---
### yagoConteXtFacts_fa.tsv (394M)

شاید بیشتر به درد این بخوره که تگ تقریبا به هم مرتیط رو پیدا کنیم.

col 1 : \<.*\>

col 2 : \<hasWikipediaAnchorText\>

col 3 : \<.*\>@fas
```
	<Wikipedia>	<hasWikipediaAnchorText>	"دانشنامهٔ"@fas		
	<Wikipedia>	<hasWikipediaAnchorText>	"واژه‌ای ترکیبی"@fas	
	<Wikipedia>	<hasWikipediaAnchorText>	"آزاد"@fas
```
---

### yagoInfoboxAttributes_fa.tsv (164M)
میشه اینجا اطلاعات مربوط به یک چیز رو با ریلیشن مشخص پیدا کرد.
در واقع دیتاهای توی ویکیپدیاست.

col 1 : \<id_.*\>

col 2 : \<fa\/.*\>

col 3 : \<infobox\/fa\/.*\>

col 4 : \".*\"@fa

که توی این ستون اگه اطلاعات مربوط به چندتا چیز با کاما از هم جدا شدن

```
<id_ccga4c_ej6_1a6o7af>	<fa/محمد_مصدق>	<infobox/fa/birthplace>	"محله سنگلج، [[تهران]]، [[ایران]]"@fa	
<id_ccga4c_b8r_1nhumg2>	<fa/محمد_مصدق>	<infobox/fa/caption>	"دکتر مصدق"@fa	
<id_ccga4c_loa_89wzt4>	<fa/محمد_مصدق>	<infobox/fa/children>	"احمد، غلامحسین، منصوره، ضیا اشرف، خدیجه"@fa	
<id_ccga4c_fss_14t1w7c>	<fa/محمد_مصدق>	<infobox/fa/deathdate>	"۱۴ اسفند، ۱۳۴۵{{سخ}}۵ مارس، ۱۹۶۷ میلادی"@fa	
<id_ccga4c_1rs_17vera7>	<fa/محمد_مصدق>	<infobox/fa/deathplace>	"[[احمدآباد (نظرآباد)|احمدآباد]]، ایران"@fa	
<id_ccga4c_37o_1yj8fw2>	<fa/محمد_مصدق>	<infobox/fa/image>	"Mossadeghmohammad.jpg"@fa	
```
---
### yagoTaxonomy.tsv (60M)

سلسه چیزهارو میشه از توش در آورد بیرون.

```
<id_1ay7am7_1m6_mp5t0j> <wikicat_Music_venues_in_Greece>        rdfs:subClassOf <wordnet_venue_108677628>       
<id_1ktyzig_1m6_1uy1h5f>        <wordnet_abnormality_104798185> rdfs:subClassOf <wordnet_unfamiliarity_104797482>       
<id_lw6bg3_1m6_10dcyt9> <wikicat_1945_elections_in_France>      rdfs:subClassOf <wordnet_election_100181781>    
<id_1nsvvk0_1m6_k664kn> <wikicat_Companies_based_in_Nagoya_Prefecture>  rdfs:subClassOf <wordnet_company_108058098>     
```

col 1 : \<id_.*\>

col 2 & 4 : \<wikicat_.\*\> or \<wordnet_.\*\>

col 3 : rdfs:subClassOf

---
### yagoRedirectLabels_fa.tsv (42M)

col 1 : \<.*\>

col 2 : \<yagoRedirectLabels_fa.tsv\>

col 3 : ".*"@fas
```
        <2010_Polish_Air_Force_Tu-154_crash>    <redirectedFrom>        "سانحه توپولف-154 نیروی هوایی لهستان (2010)"@fas        
        <Pristina>      <redirectedFrom>        "پريشتينا"@fas  
        <fa/فیلسوفان_سده_بیستم> <redirectedFrom>        "فیلسوفان سدهٔ بیستم"@fas        
        <Chinatown>     <redirectedFrom>        "محلهٔ چيني ها"@fas      
```
---
### yagoTypes.tsv (1.5G)

col 1 : \<id_.*\>

col 2 :

col 4 : \<wikicat\_.\*\> \| \<wordnet\_.\*\> \| \<yagoGeoEntity\>

col 3 : rdf:type

```
<id_10idpg4_88c_zcevt2> <Nur_Mohammad_Dartakideh>       rdf:type        <wikicat_Populated_places_in_Chabahar_County>   
<id_10idpg4_88c_1kvveil>        <Nur_Mohammad_Dartakideh>       rdf:type        <wordnet_administrative_district_108491826>     
<id_1g2r1pv_88c_k0tt9u> <Akbar_Ahmad>   rdf:type        <wikicat_Bahujan_Samaj_Party_politicians>       
<id_1g2r1pv_88c_1nlz59o>        <Akbar_Ahmad>   rdf:type        <wikicat_Living_people> 
```

---
### yagoSimpleTaxonomy.tsv (39M)

A simplified rdfs:subClassOf taxonomy. This taxonomy contains just WordNet leaves, the main YAGO branches, and owl:Thing. Use with yagoSimpleTypes.

col 3 : rdfs:subClassOf \| owl:disjointWith (???)

every line : "wikicat | wordnet | yagoGeoEntity"

```
	<wikicat_Census-designated_places_in_Muskingum_County,_Ohio>	rdfs:subClassOf	<yagoGeoEntity>	
	<wikicat_Gardens_in_Aomori_Prefecture>	rdfs:subClassOf	<yagoGeoEntity>	
	<wikicat_Gülen_schools>	rdfs:subClassOf	<wordnet_organization_108008335>	
	<wikicat_People_from_Warren_County,_Indiana>	rdfs:subClassOf	<wordnet_person_100007846>	
```

---

### yagoWikipediaInfo_fa.tsv (8.9M)

Stores the sizes, outlinks, and URLs of the Wikipedia articles of the YAGO entities.

col 2 : \<fa\/.*\>

col 3 : \<hasWikipediaUrl\> | \<linksTo\>

```
        <fa/آرشاگ_چوبانیان>     <linksTo>       <France>        
        <fa/آرشاگ_چوبانیان>     <linksTo>       <Armenian_language>     
        <fa/فرهنگسرا>   <hasWikipediaUrl>       <http://fa.wikipedia.org/wiki/%D9%81%D8%B1%D9%87%D9%86%DA%AF%D8%B3%D8%B1%D8%A7> 
        <fa/فرهنگسرا>   <linksTo>       <Isfahan>       
        <fa/فرهنگسرا>   <linksTo>       <Bahman>        
```

---

### yagoSchema.tsv (35K)

The domains, ranges and confidence values of YAGO relations.
یه سری اطلاعات در مورد ریلیشن ها میده. خیلی چیز به درد بخوری نیست به نظرم.

col 1 : \<id_.*\>


col 3 : one of these:
```
<hasConfidence>
rdfs:domain
rdfs:range
rdfs:subPropertyOf
rdf:type
```


```
<id_1oqls2d_1om_1mz1zi7>        <worksAt>       <hasConfidence> "0.9736"^^xsd:decimal   0.9736
<id_1kkdc1n_88c_lvxk21> rdf:Property    rdf:type        rdfs:Resource   
<id_oylqv_19s_hsj9sm>   <wasBornIn>     rdfs:domain     <wordnet_person_100007846>      
<id_l7ia5l_1id_1oybfv1> <hasNumberOfPeople>     rdfs:range      xsd:nonNegativeInteger  
<id_1iajk1l_1id_1wuf5k2>        rdfs:label      rdfs:range      xsd:string      
<id_dv6erj_88c_1kkdc1n> <exports>       rdf:type        rdf:Property    
<id_dhj6eh_19s_hsj9sm>  <diedIn>        rdfs:domain     <wordnet_person_100007846>   
```