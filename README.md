#### بسم الله الرحمن الرحیم

توی این نوشته می‌خوام تلاش‌های مذبوحانه‌ی خودم رو برای ساخت یه دیتابیس رابطه‌ای که اینجا توضیحاتش اومده شرح بدم!

به نظرم رسید قبل از اینکه توی دیتاهایی که داریم سر در گم بشم اول یه نگاهی به فایل‌هایی که دارم بندازم. با توجه به اینکه حجم فایل‌ها خیلی زیادن اولین و ساده‌ترین ابزاری که به ذهنم رسید استفاده کنم کامندهای gnome بود.
هر چند ایده‌ی نوشتن یک بروزر هم به ذهنم رسید ولی قبلش تصمیم گرفتم یکم دستام رو گلی کنم. بعد از اینکه دستام گلی شد فهمیدم بیخیال شدن نوشتن یک مرورگر برای گشتن توی فایل‌ها خیلی هم تصمیم بدی نبود. هر فایل پیچ و خم خودشو داره و نوشتن یه مرورگر که باید هی به فکر پرفورمنسش هم باشی میتونست وقت زیادی ازم بگیره در حالی که همون کاربری ساده‌ای که من می‌خوام رو ابزارهای گنوم داشت.
برای همین یه ساعتی وقت گذاشتم و اون ابزارهایی که به نظرم به درد بخور میومد رو از [آموزش LPIC101 ](http/jadi.gitbooks.lpi) یاد گرفتم.

اول از همه رفتم سراغ فایل‌ها و به ترتیب حجمشون سعی کردم تحلیلشون کنم و ببینم توشون چیه

خداروشکر یه چیزای کلی ای اول هر فایل نوشته شده پس با `head` میتونم اول هر فایل رو بخونم بدون اینکه اون همه حجم رو با یه ادیتور باز کنم!

-----

### yagoLabels.tsv (3.6GB)

col 1 : \<id_.*\>

col 2 : \<.*\>

col 4 : 	t.*	t@..

col3 | desc | example
--- | --- | :---
rdfs:lable | ??? | `<id_cayz1d_1ia_15fd6i>	<Afro-Eurasia>	rdfs:label	tآفرو–اوراسی	t@fas	`
redirectedFrom  | ??? | `<id_rswjmr_qkd_476ziv>	<10983_Smolders>	<redirectedFrom>	tسيارك ۱۰۹۸	t@fas	`
hasFamilyName | نام خانوادگی | `<id_1i5amaq_1o4_nj9dcn>	<David_Helpling>	<hasFamilyName>	tHelplin	t`
hasGivenName | نام کوچک | `<id_v060qu_15u_43yfi>	<Harold_Theobald>	<hasGivenName>	tHarol	t`
skos:prefLabel | ??? | `<id_wl7rbm_1sz_1tq8yaq>	<Tibirke_(parochie)>	skos:prefLabel	tTibirke (parochie	t@eng`
isPreferredMeaningOf | ??? | `<id_10jfv89_nyg_hywqnh>	<wordnet_subsidiary_company_108003935>	<isPreferredMeaningOf>	tsubsidiar	t@eng`
hasGloss | ??? | `<id_o8bx5t_11h_196h34l>	<wordnet_deviltry_100745943>	<hasGloss>	twicked and cruel behavio	t@eng`

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
rdfs:lable | 	t.*	t | ??? | `<geoentity_Peru-Chile_Trench_6363106>   rdfs:label     	tPeruansko-Chilijskij Zhelo	t`
hasLatitude | 	t.*	t\^\^\<degree\> [[:digit:]] | معلومه | ` <geoentity_London_Reefs_1879967>	<hasLatitude>	t8.8	t^^<degrees>	8.85`
hasLongtitude |	t |	t | `	<geoentity_London_Reefs_1879967>	<hasLongitude>	t112.5333	t^^<degrees>	112.53333`
hasGeonamesEntityId | 	t[:digit:]	t | ای دیش رو میده. ولی نمی‌دونم به چه دردی می‌خوره هنوز | `	<geoentity_London_Reefs_1879967>	<hasGeonamesEntityId>	t187996	t	`
isLocatedIn | \<geoentity_.*\> | میگه چی تو چیه دیگه! | `	<geoentity_Dyker_Heights_6690888>	<isLocatedIn>	<geoentity_Dyker_Heights_5115614>	`

---
### yagoFacts.tsv (404M)

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
```
<id_lfu7or_z7a_p2tltf>  <Meknassy_Sport>     <isLocatedIn>   <Meknassy>      
<id_18e993n_p3m_zkjp59> <Doug_Brochu>   <hasGender>     <male>  
<id_casl1f_z7a_36zb1a>  <Calucci's_Department>  <isLocatedIn>   <United_States> 
<id_121awtq_z7a_10ot5dv>        <Sass_Pordoi>        <isLocatedIn>   <Italy> 
<id_18qu7br_z7a_36zb1a> <A_Perfect_Place>       <isLocatedIn>   <United_States> 
<id_1fk9zwx_z7a_1xsfmb8>        <Museo_Arqueológico_de_Santiago>        <isLocatedIn>   <Santiago>      
<id_fcpwsg_z7a_36zb1a>  <Hunter,_Kansas>        <isLocatedIn>   <United_States> 
<id_122j09p_1ul_11dfc2s>        <John_Scales>   <playsFor>      <Ipswich_Town_F.C.>     
<id_11palep_z7a_zk40qr> <Dewa,_Togo>    <isLocatedIn>   <Togo>  
```
---
### yagoConteXtFacts_fa.tsv (394M)

شاید بیشتر به درد این بخوره که تگ تقریبا به هم مرتیط رو پیدا کنیم.

col 1 : \<.*\>

col 2 : \<hasWikipediaAnchorText\>

col 3 : \<.*\>@fas
```
	<Wikipedia>	<hasWikipediaAnchorText>	tدانشنامه	t@fas		
	<Wikipedia>	<hasWikipediaAnchorText>	tواژه‌ای ترکیب	t@fas	
	<Wikipedia>	<hasWikipediaAnchorText>	tآزا	t@fas
```
---

### yagoInfoboxAttributes_fa.tsv (164M)
میشه اینجا اطلاعات مربوط به یک چیز رو با ریلیشن مشخص پیدا کرد.
در واقع دیتاهای توی ویکیپدیاست.

col 1 : \<id_.*\>

col 2 : \<f.*\>

col 3 : \<infobof.*\>

col 4 : 	t.*	t@fa

که توی این ستون اگه اطلاعات مربوط به چندتا چیز با کاما از هم جدا شدن

```
<id_ccga4c_ej6_1a6o7af>	<محمد_مصدق>	<infobbirthplace>	tمحله سنگلج، [[تهران]]، [[ایران]	t@fa	
<id_ccga4c_b8r_1nhumg2>	<محمد_مصدق>	<infobcaption>	tدکتر مصد	t@fa	
<id_ccga4c_loa_89wzt4>	<محمد_مصدق>	<infobchildren>	tاحمد، غلامحسین، منصوره، ضیا اشرف، خدیج	t@fa	
<id_ccga4c_fss_14t1w7c>	<محمد_مصدق>	<infobdeathdate>	t۱۴ اسفند، ۱۳۴۵{{سخ}}۵ مارس، ۱۹۶۷ میلاد	t@fa	
<id_ccga4c_1rs_17vera7>	<محمد_مصدق>	<infobdeathplace>	t[[احمدآباد (نظرآباد)|احمدآباد]]، ایرا	t@fa	
<id_ccga4c_37o_1yj8fw2>	<محمد_مصدق>	<infobimage>	tMossadeghmohammad.jp	t@fa	
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

خیلی شبیه به تگهای ریدایرکت فرام ها توی فایل yagoLables هست.

col 1 : \<.*\>

col 2 : \<redirectedFrom\>

col 3 :	t.	t@fas
```
        <2010_Polish_Air_Force_Tu-154_crash>    <redirectedFrom>       	tسانحه توپولف-154 نیروی هوایی لهستان (2010	t@fas        
        <Pristina>      <redirectedFrom>       	tپريشتين	t@fas  
        <فیلسوفان_سده_بیستم> <redirectedFrom>       	tفیلسوفان سدهٔ بیست	t@fas        
        <Chinatown>     <redirectedFrom>       	tمحلهٔ چيني ه	t@fas      
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

every line :	twikicat | wordnet | yagoGeoEntit	t

```
	<wikicat_Census-designated_places_in_Muskingum_County,_Ohio>	rdfs:subClassOf	<yagoGeoEntity>	
	<wikicat_Gardens_in_Aomori_Prefecture>	rdfs:subClassOf	<yagoGeoEntity>	
	<wikicat_Gülen_schools>	rdfs:subClassOf	<wordnet_organization_108008335>	
	<wikicat_People_from_Warren_County,_Indiana>	rdfs:subClassOf	<wordnet_person_100007846>	
```

---

### yagoWikipediaInfo_fa.tsv (8.9M)

Stores the sizes, outlinks, and URLs of the Wikipedia articles of the YAGO entities.

col 2 : \<f.*\>

col 3 : \<hasWikipediaUrl\> | \<linksTo\>

```
        <آرشاگ_چوبانیان>     <linksTo>       <France>        
        <آرشاگ_چوبانیان>     <linksTo>       <Armenian_language>     
        <فرهنگسرا>   <hasWikipediaUrl>       <htt/fa.wikipedia.owi%D9%81%D8%B1%D9%87%D9%86%DA%AF%D8%B3%D8%B1%D8%A7> 
        <فرهنگسرا>   <linksTo>       <Isfahan>       
        <فرهنگسرا>   <linksTo>       <Bahman>        
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
<id_1oqls2d_1om_1mz1zi7>        <worksAt>       <hasConfidence>	t0.973	t^^xsd:decimal   0.9736
<id_1kkdc1n_88c_lvxk21> rdf:Property    rdf:type        rdfs:Resource   
<id_oylqv_19s_hsj9sm>   <wasBornIn>     rdfs:domain     <wordnet_person_100007846>      
<id_l7ia5l_1id_1oybfv1> <hasNumberOfPeople>     rdfs:range      xsd:nonNegativeInteger  
<id_1iajk1l_1id_1wuf5k2>        rdfs:label      rdfs:range      xsd:string      
<id_dv6erj_88c_1kkdc1n> <exports>       rdf:type        rdf:Property    
<id_dhj6eh_19s_hsj9sm>  <diedIn>        rdfs:domain     <wordnet_person_100007846>   
```




خب حالا می‌خوام که یه سری موجودیت توی دیتاهایی که هست پیدا کنم. همون مثال رو حانی رو میگیرم و با بیل توی دیتاها چرخ میزنم که ببینم چی هست
```
grep -i	thassan.*rouhan	t yagoRedirectLabels_fa.tsv
```
```
	<Hassan_Rouhani>	<redirectedFrom>	tدکترحسن روحان	t@fas	
	<Hassan_Rouhani_presidential_campaign,_2013>	<redirectedFrom>	tحسن روحانی در انتخابات ریاست‌جمهوری ایران (1392	t@fas	
	<Hassan_Rouhani>	<redirectedFrom>	tشيخ ديپلما	t@fas	
	<Hassan_Rouhani>	<redirectedFrom>	tشیخ دیپلما	t@fas	
	<Hassan_Rouhani>	<redirectedFrom>	tحسن فريدو	t@fas	
	<Hassan_Rouhani_presidential_campaign,_2013>	<redirectedFrom>	tحسن روحانی در انتخابات ریاست جمهوری ایران (۱۳۹۲	t@fas	
	<Hassan_Rouhani>	<redirectedFrom>	tدکتر حسن فریدو	t@fas	
	<Hassan_Rouhani>	<redirectedFrom>	tدكتر روحان	t@fas	
	<Hassan_Rouhani>	<redirectedFrom>	tدكتر حسن فريدو	t@fas	
	<Hassan_Rouhani>	<redirectedFrom>	tدکتر روحان	t@fas	
	<Hassan_Rouhani>	<redirectedFrom>	tدكترحسن روحان	t@fas	
	<Hassan_Rouhani>	<redirectedFrom>	tحسن روحان	t@fas	
	<Hassan_Rouhani>	<redirectedFrom>	tپيشواي مذهب	t@fas	
	<Hassan_Rouhani_presidential_campaign,_2013>	<redirectedFrom>	tحسن روحاني در انتخابات رياست جمهوري ايران (1392	t@fas	
	<Hassan_Rouhani>	<redirectedFrom>	tروحاني	t@fas	
	<Hassan_Rouhani>	<redirectedFrom>	tدکتر حسن روحان	t@fas	
	<Hassan_Rouhani>	<redirectedFrom>	tدكتر حسن روحان	t@fas	
	<Hassan_Rouhani_presidential_campaign,_2013>	<redirectedFrom>	tحسن روحاني در انتخابات رياست جمهوري ايران (۱۳۹۲	t@fas	
	<Hassan_Rouhani>	<redirectedFrom>	tعالم دين	t@fas	
	<Hassan_Rouhani_presidential_campaign,_2013>	<redirectedFrom>	tحسن روحانی در انتخابات ریاست جمهوری ایران (1392	t@fas	
	<Hassan_Rouhani>	<redirectedFrom>	tعالم دین	t@fas	
	<Hassan_Rouhani>	<redirectedFrom>	tپیشوای مذهب	t@fas	
	<Hassan_Rouhani>	<redirectedFrom>	tحسن فریدو	t@fas	
```
خب اینجا یه سری لقب و شهرت داریم. جالبه!
```
grep -i	thassan.*rouhan	t yagoLabels.tsv
```
```
<id_j6oh03_qkd_1m2nhii>	<Hassan_Rouhani>	<redirectedFrom>	tHasan Rohan	t@eng	
<id_j6oh03_1ia_opo8qb>	<Hassan_Rouhani>	rdfs:label	tHasan Rouhan	t@spa	
<id_j6oh03_qkd_eyedda>	<Hassan_Rouhani>	<redirectedFrom>	tRowhan	t@eng	
<id_j6oh03_1ia_opo8qb>	<Hassan_Rouhani>	rdfs:label	tHasan Rouhan	t@pol	
<id_128kwea_qkd_1qhbzb9>	<Hassan_Rouhani_presidential_campaign,_2013>	<redirectedFrom>	tحسن روحاني در انتخابات رياست جمهوري ايران (1392	t@fas
<id_j6oh03_qkd_1e6dmpg>	<Hassan_Rouhani>	<redirectedFrom>	tHassan Rowhan	t@eng	
<id_j6oh03_qkd_1e6dmpg>	<Hassan_Rouhani>	<redirectedFrom>	tHassan Rowhan	t@spa	
<id_j6oh03_qkd_r98hys>	<Hassan_Rouhani>	<redirectedFrom>	tعالم دین	t@fas	
<id_128kwea_qkd_iq0io5>	<Hassan_Rouhani_presidential_campaign,_2013>	<redirectedFrom>	tحسن روحاني در انتخابات رياست جمهوري ايران (۱۳۹۲	t@fas	
<id_fji5ly_1sz_bujaed>	<Inauguration_of_Hassan_Rouhani>	skos:prefLabel	tInauguration of Hassan Rouhan	t@eng	
<id_j6oh03_15u_44o4m>	<Hassan_Rouhani>	<hasGivenName>	tHassa	t	
<id_128kwea_1ia_1q1kp9>	<Hassan_Rouhani_presidential_campaign,_2013>	rdfs:label	tحسن روحانی در انتخابات ریاست‌جمهوری ایرا	t@fas	
```
اینجا هم به انواع و اقسام زبون های مختلف اسم ایشون هست. یه کمپین هم اون وسط میبینیم!
```
grep -i	thassan.*rouhan	t yagoFacts.tsv               
```
```
<id_j6oh03_10x_ozmjfg>	<Hassan_Rouhani>	<graduatedFrom>	<Glasgow_Caledonian_University>	
<id_j6oh03_10x_knw1r3>	<Hassan_Rouhani>	<graduatedFrom>	<University_of_Tehran>	
<id_j6oh03_1c7_zjx1yu>	<Hassan_Rouhani>	<isLeaderOf>	<Iran>	
<id_j6oh03_10x_qs91q9>	<Hassan_Rouhani>	<graduatedFrom>	<University_of_Glasgow>	
<id_j6oh03_1s2_1oudnjq>	<Hassan_Rouhani>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
<id_j6oh03_14h_zjx1yu>	<Hassan_Rouhani>	<isPoliticianOf>	<Iran>	
<id_j6oh03_1s2_1edkg9z>	<Hassan_Rouhani>	<isAffiliatedTo>	<Islamic_Republican_Party>	
<id_j6oh03_10x_18jvp3p>	<Hassan_Rouhani>	<graduatedFrom>	<Qom_Hawza>	
<id_j6oh03_1c7_bqvclm>	<Hassan_Rouhani>	<isLeaderOf>	<Non-Aligned_Movement>	
<id_j6oh03_p3m_zkjp59>	<Hassan_Rouhani>	<hasGender>	<male>	
<id_j6oh03_oyl_tk3qk6>	<Hassan_Rouhani>	<wasBornIn>	<Sorkheh>
```
این که حزب روحانیون مبارز اون وسط هست میتونه منو به یه سری آدم دیگه برسونه. ایز لیدر آف هم جالبه.
```
cat yagoFacts.tsv | grep -i	t\<isLeaderOf\>.*<Iran\	t                  
```
```
<id_1h8zcle_1c7_zjx1yu>	<Eshaq_Jahangiri>	<isLeaderOf>	<Iran>	
<id_j6oh03_1c7_zjx1yu>	<Hassan_Rouhani>	<isLeaderOf>	<Iran>	
<id_5mxh1z_1c7_zjx1yu>	<Ali_Khamenei>	<isLeaderOf>	<Iran>
```
خب پس خیلی به دردم نخورد!
```
cat yagoFacts.tsv | grep -i	t<isAffiliatedTo>.*<Combatant_Clergy_Association	t
```
```
<id_c9o4f0_1s2_1oudnjq>	<Abbas-Ali_Amid_Zanjani>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
<id_imq5du_1s2_1oudnjq>	<Mohammad-Reza_Mahdavi_Kani>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
<id_j6oh03_1s2_1oudnjq>	<Hassan_Rouhani>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
<id_11670mh_1s2_1oudnjq>	<Mostafa_Pourmohammadi>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
<id_rp5j2f_1s2_1oudnjq>	<Ali_Meshkini>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
<id_1cl3w0j_1s2_1oudnjq>	<Mohammad_Yazdii>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
<id_10709pj_1s2_1oudnjq>	<Hashemi_Rafsanjani>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
<id_5mxh1z_1s2_1oudnjq>	<Ali_Khamenei>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
<id_1fvo9gq_1s2_1oudnjq>	<Mohammad-Hassan_Aboutorabi_Fard>	<isAffiliatedTo>	<Combatant_Clergy_Association>
```
```
cat yagoFacts.tsv | grep -i	tCombatant_Clergy_Associatio	t
```
```
<id_1oudnjq_z7a_5uo9mw>	<Combatant_Clergy_Association>	<isLocatedIn>	<Tehran>	
<id_c9o4f0_1s2_1oudnjq>	<Abbas-Ali_Amid_Zanjani>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
<id_imq5du_1s2_1oudnjq>	<Mohammad-Reza_Mahdavi_Kani>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
<id_1oudnjq_z7a_zjx1yu>	<Combatant_Clergy_Association>	<isLocatedIn>	<Iran>	
<id_j6oh03_1s2_1oudnjq>	<Hassan_Rouhani>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
<id_11670mh_1s2_1oudnjq>	<Mostafa_Pourmohammadi>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
<id_rp5j2f_1s2_1oudnjq>	<Ali_Meshkini>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
<id_1cl3w0j_1s2_1oudnjq>	<Mohammad_Yazdii>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
<id_10709pj_1s2_1oudnjq>	<Hashemi_Rafsanjani>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
<id_5mxh1z_1s2_1oudnjq>	<Ali_Khamenei>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
<id_1oudnjq_ice_ierbyk>	<Combatant_Clergy_Association>	<hasWebsite>	<htt/rohaniatmobarez.c>	
<id_1fvo9gq_1s2_1oudnjq>	<Mohammad-Hassan_Aboutorabi_Fard>	<isAffiliatedTo>	<Combatant_Clergy_Association>	
```
این که یه حزبی توی ایران باشه به درد می‌خوره
ولی یه جور باید بفهمم که هم تو ایرانه و هم حزبه

```
cat yagoFacts.tsv | grep -i	t<isLocatedIn>.*<Iran	t | cut -f2 > in_iran
cat yagoFacts.tsv | grep -i	t<isAffiliatedTo	t | cut -f4 > affiliated
grep -Fx -f affiliated in_iran
```
```
<Combatant_Clergy_Association>
<Islamic_Republican_Party>
<Iranian_reform_movement>
<Azadegan_League>
<Shahrdari_Gorgan_BC>
<Azad_University_Tehran_BC>
<Mojahedin_of_the_Islamic_Revolution_Organization>
<Bank_Sepah>
<Rastakhiz_Party>
<Mahram_Tehran_BC>
<Islamic_Society_of_Engineers>
<Bank_Melli_Iran>
<Kurdistan_Workers'_Party>
<Islamic_Iran_Participation_Front>
<Executives_of_Construction_Party>
<Petrochimi_Bandar_Imam_BC>
<Association_of_Combatant_Clerics>
<Nation_Party_of_Iran>
<Pars_Khodro>
<University_of_Tehran>
<Zob_Ahan_Isfahan_BC>
<National_Trust_Party_(Iran)>
<Saba_Battery_Tehran_BC>
<Alliance_of_Builders_of_Islamic_Iran>
<National_Front_(Iran)>
```
خب مثل اینکه پارس خودرو یا دانشگاه تهران  یا شهرداری گرگان حزب سیاسی نیست :|
در هر صورت لیست به درد بخوری شاید باشه!

برگردیم به همون روحانی
```
grep -i	thassan.*rouhan	t yagoTypes.tsv              
```
```
<id_128kwea_88c_gbx2ko>	<Hassan_Rouhani_presidential_campaign,_2013>	rdf:type	<wordnet_political_campaign_107472929>	
<id_j6oh03_88c_k9sqxo>	<Hassan_Rouhani>	rdf:type	<wikicat_Alumni_of_Glasgow_Caledonian_University>	
<id_j6oh03_88c_1hw68kf>	<Hassan_Rouhani>	rdf:type	<wikicat_Combatant_Clergy_Association_politicians>	
<id_j6oh03_88c_k157oh>	<Hassan_Rouhani>	rdf:type	<wikicat_Iranian_Majlis_Deputy_Speakers>	
<id_j6oh03_88c_1rb0t67>	<Hassan_Rouhani>	rdf:type	<wikicat_Iranian_Majlis_Representatives>	
<id_j6oh03_88c_juljkk>	<Hassan_Rouhani>	rdf:type	<wikicat_Iranian_academics>	
<id_j6oh03_88c_1cewq2z>	<Hassan_Rouhani>	rdf:type	<wikicat_Iranian_clerics>	
<id_j6oh03_88c_173d4kp>	<Hassan_Rouhani>	rdf:type	<wikicat_Iranian_diplomats>	
<id_j6oh03_88c_xis0s7>	<Hassan_Rouhani>	rdf:type	<wikicat_Iranian_lawyers>	
<id_j6oh03_88c_ef6kon>	<Hassan_Rouhani>	rdf:type	<wikicat_Iranian_politicians>	
<id_j6oh03_88c_up6ot4>	<Hassan_Rouhani>	rdf:type	<wikicat_Iranian_reformists>	
<id_j6oh03_88c_1fv0w2t>	<Hassan_Rouhani>	rdf:type	<wikicat_Iranian_revolutionaries>	
<id_j6oh03_88c_1jibh39>	<Hassan_Rouhani>	rdf:type	<wikicat_Iranian_scholars>	
<id_j6oh03_88c_1oqwaqw>	<Hassan_Rouhani>	rdf:type	<wikicat_Iranian_writers>	
<id_j6oh03_88c_12dr1lc>	<Hassan_Rouhani>	rdf:type	<wikicat_Islamic_Republican_Party_politicians>	
<id_j6oh03_88c_1nlz59o>	<Hassan_Rouhani>	rdf:type	<wikicat_Living_people>	
<id_j6oh03_88c_1cf6iq>	<Hassan_Rouhani>	rdf:type	<wikicat_Muslim_theologians>	
<id_j6oh03_88c_1x8jksx>	<Hassan_Rouhani>	rdf:type	<wikicat_People_from_Semnan_Province>	
<id_j6oh03_88c_12hu0w7>	<Hassan_Rouhani>	rdf:type	<wikicat_People_of_the_Iranian_Revolution>	
<id_j6oh03_88c_ug6gob>	<Hassan_Rouhani>	rdf:type	<wikicat_Presidents_of_Iran>	
<id_j6oh03_88c_161i36g>	<Hassan_Rouhani>	rdf:type	<wikicat_Scholars_of_constitutional_law>	
<id_j6oh03_88c_10dtai>	<Hassan_Rouhani>	rdf:type	<wikicat_Shia_clerics>	
<id_j6oh03_88c_vafydj>	<Hassan_Rouhani>	rdf:type	<wordnet_officeholder_110371450>	
<id_fji5ly_88c_11pvtxm>	<Inauguration_of_Hassan_Rouhani>	rdf:type	<wikicat_Ceremonies_in_Iran>	
<id_fji5ly_88c_kj68k7>	<Inauguration_of_Hassan_Rouhani>	rdf:type	<wikicat_Presidential_inaugurations>	
<id_fji5ly_88c_1jtpavx>	<Inauguration_of_Hassan_Rouhani>	rdf:type	<wordnet_event_100029378>	
```
این لیست جالبیه. اگه بشه یه جورایی گسترش داد شاید بشه به آدمای بیشتری رسید.
```
grep -i	thassan.*rouhan	t yagoSimpleTaxonomy.tsv   
✘
grep -i	trouhan	t yagoTaxonomy.tsv
✘
```
با همون لیست تایپ ها بیشتر کار می‌کنم
```
egrep -i	twikicat_Iranian_politician	t yagoSimpleTaxonomy.tsv             
	<wikicat_Iranian_politicians>	rdfs:subClassOf	<wordnet_person_100007846>	
	<wikicat_Iranian_politicians_who_committed_suicide>	rdfs:subClassOf	<wordnet_person_100007846>	
```
```
egrep -i	twikicat_Iranian_politician	t yagoTaxonomy.tsv      
<id_ef6kon_1m6_1kbnimg>	<wikicat_Iranian_politicians>	rdfs:subClassOf	<wordnet_politician_110450303>	
<id_gyvrxe_1m6_1kbnimg>	<wikicat_Iranian_politicians_who_committed_suicide>	rdfs:subClassOf	<wordnet_politician_110450303>	
```
```
egrep -i	twikicat_Iranian_politician	t yagoTypes.tsv > wikicat_Iranian_politicians
wc wikicat_Iranian_politicians                                     
  311  1244 26885 wikicat_Iranian_politicians
```
سیصد و یازده تا سیاستمدار ایرانی خوبه!
```
egrep -i	trouhan	t yagoConteXtFacts_fa.tsv
```
بهم کلی اطلاعات میده که همین جوری به دردم نمی‌خوره. احتمالا باید با یادگیری ماشین یا تحلیل زبان و این چیزا که بلد نیستم باهاش کار کنم.
پس خیلی سمت این دیتا ها نمی‌رم. یه بخشیشون رو خوندم که بیشتر دید بهم بده جدول هام چیا باشه.
```
egrep	trouhan	t yagoInfoboxAttributes_fa.tsv
<id_1meauui_mcq_7shk77>	<حسن_روحانی>	<infobwebsite>	t[htt/rouhani.ir rouhani.ir]{{سخ}}[htt/president.ir president.ir	t@fa	
```
```
egrep	tحسن_روحان	t yagoInfoboxAttributes_fa.tsv 
```
```
<id_1meauui_1c9_54ycsn>	<حسن_روحانی>	<infobalmamater>	t[[دانشگاه کلدونین گلاسگو]]{{سخ}}[[دانشگاه تهران]]{{سخ}}[[حوزه علمیه قم]	t@fa	
<id_1meauui_e7k_zi8p3k>	<حسن_روحانی>	<infobbirthdate>	t[[۹ دی]] [[۱۳۲۷]]{{سخ}}{{تاریخ تولد و سن|۱۹۴۸|۱۲|۳۰|df=y}	t@fa	
<id_1meauui_ej6_1jqyf4r>	<حسن_روحانی>	<infobbirthplace>	t[[سرخه]]، [[استان سمنان|سمنان]]، [[ایران]	t@fa	
<id_1meauui_1pg_10bm9q7>	<حسن_روحانی>	<infobblankname>	tرهب	t@fa	
<id_1meauui_foi_1c5z2k0>	<حسن_روحانی>	<infobconstituency>	t[[استان سمنان]	t@fa	
<id_1meauui_foi_1c5z2k0>	<حسن_روحانی>	<infobconstituency>	t[[استان سمنان]	t@fa	
<id_1meauui_37o_1fwohh7>	<حسن_روحانی>	<infobimage>	tHassan Rouhani in Bishkek.jp	t@fa	
<id_1meauui_3ta_10zjm53>	<حسن_روحانی>	<infobname>	tحسن روحان	t@fa	
<id_1meauui_ood_79s68d>	<حسن_روحانی>	<infobnamedata>	t[[سید علی خامنه‌ای]	t@fa	
<id_1meauui_vbi_g2yzf6>	<حسن_روحانی>	<infoboffice>	t[[رئیس‌جمهور ایران]	t@fa	
<id_1meauui_vbi_m5843k>	<حسن_روحانی>	<infoboffice>	t[[شورای عالی امنیت ملی جمهوری اسلامی ایران|دبیر شورای عالی امنیت ملی]	t@fa	
<id_1meauui_vbi_197d5hv>	<حسن_روحانی>	<infoboffice>	t[[شورای عالی امنیت ملی جمهوری اسلامی ایران|نماینده رهبر در شورای عالی امنیت ملی]	t@fa	
<id_1meauui_vbi_vprhx6>	<حسن_روحانی>	<infoboffice>	t[[مجلس خبرگان رهبری|نماینده مجلس خبرگان رهبری]	t@fa	
<id_1meauui_vbi_1vq740v>	<حسن_روحانی>	<infoboffice>	t[[مجلس شورای اسلامی|نایب رئیس مجلس شورای اسلامی]	t@fa	
<id_1meauui_vbi_1qmutcq>	<حسن_روحانی>	<infoboffice>	t[[مجلس شورای اسلامی|نماینده مجلس شورای اسلامی]	t@fa	
<id_1meauui_vbi_byf6l9>	<حسن_روحانی>	<infoboffice>	t[[مجمع تشخیص مصلحت نظام|عضو مجمع تشخیص مصلحت نظام]	t@fa	
<id_1meauui_vbi_67drr0>	<حسن_روحانی>	<infoboffice>	t[[مرکز تحقیقات استراتژیک|رئیس مرکز تحقیقات استراتژیک{{سخ}}مجمع تشخیص مصلحت نظام]	t@fa	
<id_1meauui_1r7_1nkb1i7>	<حسن_روحانی>	<infobotherparty>	t[[حزب جمهوری اسلامی]]{{سخ}	t@fa	
<id_1meauui_3bb_1hv2i71>	<حسن_روحانی>	<infobparty>	tرهبر [[حزب اعتدال و توسعه]	t@fa	
<id_1meauui_oes_go99sb>	<حسن_روحانی>	<infobpredecessor>	t[[بهزاد نبوی]	t@fa	
<id_1meauui_oes_17w8rbq>	<حسن_روحانی>	<infobpredecessor>	t[[سید محمد موسوی خوئینی‌ها]	t@fa	
<id_1meauui_oes_j7z9pi>	<حسن_روحانی>	<infobpredecessor>	t[[محمود احمدی‌نژاد]	t@fa	
<id_1meauui_j0j_bi58bx>	<حسن_روحانی>	<infobpresident>	t[[اکبر هاشمی رفسنجانی]]{{سخ}}[[سید محمد خاتمی]	t@fa	
<id_1meauui_1k7_hs14d8>	<حسن_روحانی>	<infobreligion>	t[[اسلام]] [[شیعه]] [[دوازده امامی]	t@fa	
<id_1meauui_1fy_pvyi3k>	<حسن_روحانی>	<infobsignature>	tRouhani_signature.pn	t@fa	
<id_1meauui_xdd_1kqhaec>	<حسن_روحانی>	<infobspouse>	t[[صاحبه عربی]] (زادهٔ ۱۳۳۳	t@fa	
<id_1meauui_1du_13z8zku>	<حسن_روحانی>	<infobsuccessor>	t[[سید محمدرضا خاتمی]	t@fa	
<id_1meauui_1du_1oixo49>	<حسن_روحانی>	<infobsuccessor>	t[[علی اکبر ولایتی]	t@fa	
<id_1meauui_1du_ep2ia7>	<حسن_روحانی>	<infobsuccessor>	t[[علی شمخانی]	t@fa	
<id_1meauui_1du_1nmxxr2>	<حسن_روحانی>	<infobsuccessor>	t[[علی لاریجانی]	t@fa	
<id_1meauui_1dl_q8lv7c>	<حسن_روحانی>	<infobtermend>	tتاکنو	t@fa	
<id_1meauui_1dl_5lr4cv>	<حسن_روحانی>	<infobtermend>	t۱۲ مرداد ۱۳۹	t@fa	
<id_1meauui_1dl_nbbfpo>	<حسن_روحانی>	<infobtermend>	t۱۹ شهریور ۱۳۹	t@fa	
<id_1meauui_1dl_50ruup>	<حسن_روحانی>	<infobtermend>	t۲۴ مرداد ۱۳۸	t@fa	
<id_1meauui_1dl_19qw1ju>	<حسن_روحانی>	<infobtermend>	t۶ خرداد ۱۳۷	t@fa	
<id_1meauui_1w1_1c1qky>	<حسن_روحانی>	<infobtermstart>	t۱۰ مرداد ۱۳۷	t@fa	
<id_1meauui_1w1_5lr4cv>	<حسن_روحانی>	<infobtermstart>	t۱۲ مرداد ۱۳۹	t@fa	
<id_1meauui_1w1_pmj15y>	<حسن_روحانی>	<infobtermstart>	t۱۸ اردیبهشت ۱۳۷	t@fa	
<id_1meauui_1w1_14bf85b>	<حسن_روحانی>	<infobtermstart>	t۲۲ آبان ۱۳۶	t@fa	
<id_1meauui_1w1_1f916ut>	<حسن_روحانی>	<infobtermstart>	t۲۲ مهر ۱۳۶	t@fa	
<id_1meauui_1w1_1rdj9je>	<حسن_روحانی>	<infobtermstart>	t۲۹ بهمن ۱۳۷	t@fa	
<id_1meauui_1w1_1bvqqd7>	<حسن_روحانی>	<infobtermstart>	t۷ خرداد ۱۳۵	t@fa	
<id_1meauui_1w1_1bvqqep>	<حسن_روحانی>	<infobtermstart>	t۷ خرداد ۱۳۷	t@fa	
<id_1meauui_1n2_94n6ra>	<حسن_روحانی>	<infobvicepresident>	t[[اسحاق جهانگیری]	t@fa	
<id_1meauui_mcq_7shk77>	<حسن_روحانی>	<infobwebsite>	t[htt/rouhani.ir rouhani.ir]{{سخ}}[htt/president.ir president.ir	t@fa	
```
اینا به نظرم جالب اومدن:
party:
```
<id_ccga4c_3bb_1cwswxg>	<محمد_مصدق>	<infobparty>	t[[جبهه ملی ایران]	t@fa	
<id_g38apx_3bb_3qag3b>	<جان_ادواردز>	<infobparty>	t[[حزب دموکرات ایالات متحده آمریکا]	t@fa	
<id_tmqev0_3bb_l9hdnc>	<جان_کری>	<infobparty>	t[[حزب دموکرات ایالات متحده آمریکا|دموکرات]	t@fa	
<id_1xjkexj_3bb_14n32y3>	<آدولف_هیتلر>	<infobparty>	t[[حزب ملی کارگران سوسیالیست آلمان]] (حزب نازی	t@fa	
<id_9zfzsl_s8m_1nij08v>	<دیاربکر>	<infobleaderparty>	t[[حزب آشتی و دموکراسی|BDP]	t@fa	
```
office:
```
<id_ccga4c_vbi_3fu9sb>	<محمد_مصدق>	<infoboffice>	tنماینده مجلس شورای مل	t@fa	
<id_1jfmda5_vbi_c5l7el>	<نادر_باتمانقلیچ>	<infoboffice>	t[[سفیران ایران در عراق|سفیر ایران در عراق]	t@fa	
<id_1jfmda5_vbi_1ygmqcd>	<نادر_باتمانقلیچ>	<infoboffice>	t[[فهرست استانداران خراسان|استاندار خراسان]]{{-}}نایب‌ [[تولیت آستان قدس رضوی در دوره پهلوی|تولیت آستان قدس رضوی]	t@fa	
<id_1jfmda5_vbi_xmf9d3>	<نادر_باتمانقلیچ>	<infoboffice>	t[[وزارت کشور|وزیر کشور]	t@fa	
<id_1jfmda5_vbi_16eldw>	<نادر_باتمانقلیچ>	<infoboffice>	tرئیس سازمان تربیت بدن	t@fa	
<id_1jfmda5_vbi_r7u1p6>	<نادر_باتمانقلیچ>	<infoboffice>	tسفیر ایران در [[پاکستان]	t@fa	
<id_tmqev0_vbi_fc5ox8>	<جان_کری>	<infoboffice>	t[[سناتور]] [[ایالت ماساچوست]] در [[مجلس سنای ایالات متحده آمریکا|مجلس سنای ایالات متحده]	t@fa	
<id_tmqev0_vbi_1hibgjy>	<جان_کری>	<infoboffice>	t۶۸مین [[وزرای خارجه آمریکا|وزیر امورخارجه ایالات متحده]	t@fa	
<id_1xjkexj_vbi_10xjfmg>	<آدولف_هیتلر>	<infoboffice>	t[[صدراعظم آلمان]	t@fa	
<id_1xjkexj_vbi_1trzqqh>	<آدولف_هیتلر>	<infoboffice>	t[[پیشوا (لقب)|پیشوای]] [[آلمان]	t@fa	
<id_5frbru_vbi_1f3fs7c>	<ویکتور_یوشچنکو>	<infoboffice>	t[[نخست وزیر]] [[اوکراین]	t@fa	
<id_5frbru_vbi_14aikk9>	<ویکتور_یوشچنکو>	<infoboffice>	t۳ مین [[رئیس جمهور]] [[اوکراین]	t@fa	
<id_376dza_vbi_1vfustw>	<یولیا_تیموشنکو>	<infoboffice>	t[[نخست‌وزیر]] [[اوکراین]	t@fa	
```
برمیگردم به ویکی کت ها. کلا هرچی که مربوط به پولیتیک و ایران باشه رو می‌خوام ببینم
```
grep -i	tiran.*polotic\|politic.*ira	t yagoTypes.tsv 
```
چیزای حالبی توش بود
wikicat_Political_parties_in_Iran
wikicat_Political_organisations_in_Iran
wikicat_Books_about_politics_of_Iran
wikicat_Iranian_Majlis_Representatives
wikicat_Government_ministers_of_Iran

جنگ و انتخابات هم ایده ی خوبیه
```
grep -i	tiran.*war\|war.*ira	t yagoTypes.tsv
```
```
<id_p2rs2n_88c_1p2d7gj>	<Operation_Dawn_2>	rdf:type	<wikicat_Military_operations_of_the_Iran–Iraq_War>	
<id_cg9w8z_88c_b1za0o>	<Order_of_battle_during_the_Iran–Iraq_War>	rdf:type	<wikicat_Battles_involving_Iran>	
<id_z8ch02_88c_yxhl7a>	<Battle_of_Barbalissos>	rdf:type	<wikicat_Wars_involving_Iran>	
<id_7b9ku7_88c_1as3fu0>	<Iran_crisis_of_1946>	rdf:type	<wikicat_Cold_War_conflicts>	
```
جنگ رو میشه با کانفلیکت و وار جدا کرد
```
<id_gqyyk9_88c_1454wb8>	<Iran-Iraq_War>	rdf:type	<wikicat_20th-century_conflicts>	
<id_1fyshun_88c_209ort>	<Iran–Iraq_War>	rdf:type	<wordnet_conflict_100958896>	
<id_10er9ad_88c_209ort>	<Iran–Israel_proxy_conflict>	rdf:type	<wordnet_conflict_100958896>	
```
```
grep -i	telection.*iran\|iran.*electio	t yagoTypes.tsv
<id_1j7o2yn_88c_169d1e3>	<Iranian_legislative_election\,_2008>	rdf:type	<wikicat_2008_elections_in_Iran>	
<id_1j7o2yn_88c_nu24b6>	<Iranian_legislative_election\,_2008>	rdf:type	<wikicat_Elections_in_Iran>	
<id_1j7o2yn_88c_10dcyt9>	<Iranian_legislative_election\,_2008>	rdf:type	<wordnet_election_100181781>	
<id_1j7o2yj_88c_r37r3v>	<Iranian_legislative_election\,_2004>	rdf:type	<wikicat_2004_elections_in_Asia>	
<id_1j7o2yj_88c_nu24b6>	<Iranian_legislative_election\,_2004>	rdf:type	<wikicat_Elections_in_Iran>	
<id_1j7o2yj_88c_10dcyt9>	<Iranian_legislative_election\,_2004>	rdf:type	<wordnet_election_100181781>	
```

به طور کلی پس از این مشاهدات متوجه شدم که خیلی نمیشه بین موجودیت هایی که داریم ارتباط برقرار کنیم.
بیشتر میتونیم بگیم اینا هستن و توی این گروهن. مثلا اینا سیاستمدارن، اینا جنگن و ...
دستمون برای ارتباط برقرار کردن ها بسته است. بیشتر یه سری جدول یکی دو ستونه خواهیم داشت.

به طور کلی این فایل ها نوع موجودیت ها رو اعلام میکنن:
type
taxanomy
simpletaxamonoy
اینا هم ارتباط ها رو مشخص میکنه
infoboxattribiute
facts
اینا هم میگن چه کلماتی به هم مرتبط اند:
wikipediainfo_fa
contextFacts
با اینا هم میشه لیبل فارسی درآورد:
lables
redirectlables_fa
wikipedia_info
infobox


جداولی که می‌توان داشت:
سیاستمداران
احزاب
انتخابات
اعتراضات و فعالیت‌های مدنی
قراردادها و تفاهم نامه ها
سازمان ها و نهادها
جنگ
عملیات
-
ژن خوب (نزدیکان سیاستمداران)
سمت و شغل
دانشگاه
جنسیت

خب حالا می‌خوام شروع کنم و موجودیت هایی رو که دارم استخراج کنم
برای مثال سیاستمداران ایرانی سر راستن و خوبن برای شروع

```
cat yagoFacts.tsv | grep -i	t\<isPoliticianOf\>.*<Iran\	t | cut -f2 | tr '_' ' ' | tr '-' ' ' | sed ' | sed ' > politicians_1
```
rows covered -> + 248
دلیل حذف _ , - , > , < از توی تکست این بود که موقع پیدا کردن لیبل هاش دستم بازتر باشه و بتونم اسپیس ها رو ایگنور کنم.
البته یه سری داده های عجیب الشکل مثل موارد زیر هم توشون بود:
```
Ali Razmara
Mohammad Ali Khan Ala al Saltaneh
```
همچنین از فایل های دیگه هم میشه یه سری اسم درآورد
مثلا توی تایپ ها اینا رو داریم:
```
cat yagoTaxonomy.tsv | grep -i	tIran.*politic\|politic.*ira	t | cut -f2-

<wikicat_Political_parties_in_Iran>	rdfs:subClassOf	<wordnet_party_108256968>	
<wikicat_Pan-Iranist_Party_politicians>	rdfs:subClassOf	<wordnet_politician_110450303>	
<wikicat_National_Front_(Iran)_politicians>	rdfs:subClassOf	<wordnet_politician_110450303>	
<wikicat_Iranian_women_in_politics>	rdfs:subClassOf	<wordnet_woman_110787470>	
<wikicat_Iranian_politicians>	rdfs:subClassOf	<wordnet_politician_110450303>	
<wikicat_Assassinated_Iranian_politicians>	rdfs:subClassOf	<wordnet_politician_110450303>	
<wikicat_Iranian_political_scientists>	rdfs:subClassOf	<wordnet_political_scientist_110450161>	
<wikicat_Books_about_politics_of_Iran>	rdfs:subClassOf	<wordnet_book_106410904>	
<wikicat_Iranian_political_activists>	rdfs:subClassOf	<wordnet_militant_110315837>	
<wikicat_Ang_Kapatiran_politicians>	rdfs:subClassOf	<wordnet_politician_110450303>	
<wikicat_Madeiran_politicians>	rdfs:subClassOf	<wordnet_politician_110450303>	
<wikicat_Iranian_political_people>	rdfs:subClassOf	<wordnet_person_100007846>	
<wikicat_Political_scandals_in_Iran>	rdfs:subClassOf	<wordnet_scandal_107223811>	
<wikicat_Political_repressions_in_Iran>	rdfs:subClassOf	<wordnet_repression_113996571>	
<wikicat_Iranian_politicians_who_committed_suicide>	rdfs:subClassOf	<wordnet_politician_110450303>	
<wikicat_Youth_wings_of_political_parties_in_Iran>	rdfs:subClassOf	<wordnet_wing_102151625>	
<wikicat_Defunct_political_parties_in_Iran>	rdfs:subClassOf	<wordnet_party_108256968>	
<wikicat_Socialist_Party_(Iran)_politicians>	rdfs:subClassOf	<wordnet_politician_110450303>	
<wikicat_Islamic_Iran_Participation_Front_politicians>	rdfs:subClassOf	<wordnet_politician_110450303>	
<wikicat_Political_organisations_in_Iran>	rdfs:subClassOf	<wordnet_organization_108008335>	
<wikicat_National_Trust_Party_(Iran)_politicians>	rdfs:subClassOf	<wordnet_politician_110450303>	
<wikicat_Democracy_Party_(Iran)_politicians>	rdfs:subClassOf	<wordnet_politician_110450303>	
<wikicat_New_Iran_Party_politicians>	rdfs:subClassOf	<wordnet_politician_110450303>	
```
که از بین اینا اونایی که سیاستمدارن به درد میخورن
یعنی
```
cat yagoTaxonomy.tsv | grep -i	tIran.*politic\|politic.*ira	t | grep	tpolitician	t | cut -f2 > wikicat_iran_politician_types 
cat wikicat_iran_politician_types
<wikicat_Pan-Iranist_Party_politicians>
<wikicat_National_Front_(Iran)_politicians>
<wikicat_Iranian_politicians>
<wikicat_Assassinated_Iranian_politicians>
<wikicat_Ang_Kapatiran_politicians>
<wikicat_Madeiran_politicians>
<wikicat_Iranian_politicians_who_committed_suicide>
<wikicat_Socialist_Party_(Iran)_politicians>
<wikicat_Islamic_Iran_Participation_Front_politicians>
<wikicat_National_Trust_Party_(Iran)_politicians>
<wikicat_Democracy_Party_(Iran)_politicians>
<wikicat_New_Iran_Party_politicians>
```
نمایندگان محلس و وزرا رو هم اضفافه میکنم
همچنین انقلابیون
rows covered -> + 16
```
cat yagoTypes.tsv | grep -f wikicat_iran_politician_types | cut -f2 | uniq | tr '_' ' ' | tr '-' ' ' | sed 's/>//' | sed 's/<//' > politicians_2
```
rows covered -> + 635
ولی احتمالا اینا باهم اشتراک هم دارن
```
cat politicians_1 > politicians
cat politicians_2 >> politicians
sort politicians | uniq > politicians_pure
```

خب حالا باید برای این سیاستمدارانی که داریم لیبل فارسی پیدا کنیم
برای همین یه برنامه باید بنویسم که تمامی خط هایی که فارسی نیستند را خوانده و سعی کند در فایل هایی که لیبل فارسی دارند جست و جو کند. همچنین اگر چیزی پیدا نکرد آن ها را ترجمه کند.
حجم فایل لیبل ها زیاده و پایتون هم برای این کار کنده. برای فقط لیبل‌های فارسی رو جدا کردم که چیزی حدود 43 مگابایت شد.
```
cat yagoLabels.tsv | egrep @fas.$ | cut -f (\d)	4 | > fa_labels.tsv
```
میشه لیبل ها رو از توی yagoInfoboxAttributes_fa.tsv هم در آورد
با کد پایتون findLable.py متوجه شدم که لیست زیر لیبل فارسی ندارد
```
ar/إبراهيم مردوخي
ar/أمير عباس هويدا
ar/سياماك ميرسيدي
ar/عبد الرحمن بيراني
ar/محمود ويسي

Abdol Ali Badrei
Abdolmajid Pirzadeh Jahromi
Abolghasem Khazali
Abolhassan Diba
Ahmad Bahar
Ahmad Hussein Adl
Ahmad Motamedi
Ahmad Sadegh Bonab
Ahmad Salamatian
Ali Abbaspoor Tehrani Fard
Ali Aghazadeh Dafsari
Ali Akbar Moinfar
Ali Akbar Siassi
Ali Akbar Zargham
Ali Khatami
Ali Mohammad Besharati
Alireza Sheikhattar
Amir Hossein Rabii
Amir Nosrat'ollah Balakhanlou
Asadollah Abbasi
Azadeh Shafiq
de/Abolqasem Naser al Molk
de/Alinaghi Alikhani
de/Ebrahim Alam
de/Mohammed Hossein Saif Qazi
de/Najaf Qoli Khan Samsam al Saltaneh
de/Parviz Nikkhah
de/Zabihollah Bakhshi
Ebrahim Azizi
Elham Aminzadeh
es/Mehranguiz Manoutchehrian
Fereidon Hasanvand
Fereydoun Djam
fr/Abdol Hossein Hamzavi
fr/Abdollah Behbahani
fr/Abdol Rahman Faramarzi
fr/Fariba Hachtroudi
fr/Farrokh Rou Parsa
fr/Mehdi Gholi Hedayat
fr/Reza Sardar Fakher Hekmat
fr/Taher Movassaghian
fr/Yishmael Movassaghian
Ghiyathu'd Din ibn Rashid'ud Din
Gholam Hossein Jahanshahi
Gholāmḥusayn Ṣefātī Dezfūlī
Hamid Reza Chitgar
Hamid Reza Katouzian
Hassan Rahnavardi
Hassan Shariatmadari
Heidar Arfaa
Hekmat E Shirazi
Homa Arjomand
Hosein Dadgar
Hossein Ghods Nakhai
Hossein Hashemi
Hossein Marashi
Hossein Namazi
Hossein Navab
Hushang Hamidi
Hussein Sheikholeslam
Isa Kalantari
Issa Kalantari
Jaime Ornelas Camacho
Javad Shahrestani
Kamal Daneshyar
Karim Khodapanahi
Kasra Nikzad
Kazem Jalali
Kazem Vaziri Hamaneh
Mahmoud Djam
Mahmoud Farshidi
Manouchehr Ganji
Maurice Motamed
Mehrangiz Dowlatshahi
Mirza Ali Asghar Khan Amin al Soltan
Mirza Hassan Khan Esfandiary
Mohammad Ali Hosseini
Mohammad Ardakani
Mohammad Bahrami
Mohammad Beheshti Shirazi
Mohammad Hosseini (politician)
Mohammad Hossein Jalali
Mohammad Hossein Khoshvaght
Mohammad Jahromi
Mohammad Montazeri
Mohammad Reza Hekmat
Morteza Zarringol
Mostafa Mir Salim
Mousa Chegini
Mousa Namjoo
Mousa Qorbani
Mozaffar Alam
Nasser Minachi
Nasser Yeganeh
nl/Ali Razmara
nl/Jafaar Sharif Emami
Nosrat ollah Jahanshahlou
Parviz C. Radji
Paulo Cafôfo
Prince Sadruddin Aga Khan
Rahimkhan Chalabianloo
Rasoul Movahedian
Reza Alamouti
Roozbeh Farahanipour
Sadeq Khalilian
Safdar Rahmat Abadi
Sedigh Kamangar
Shah Seyyed Ali Kazemi
Soheila Darvishkohan
Yadollah Javani
Zahra Shojaei
649,Paulo Cafôfo,"پائولو کاففو",translated,m
Ziaeddin Tavakkoli
Zohreh Akhyani
```
اونای که سر رشته ‌ar دارن رو همین جوری میشه گذاشت و نیاز به لیبل فارسی ندارد
متوجه شدم که چندتا از داده ها اشتباهن
برای همین حذفشون کردم
(یه سری اسپانیایی اون وسط بودن :|)
اونایی رو هم که موندن با translate.py ترجمه کردم
خب کارم با سیاستمداران تموم شد

حالا میرم سراغ احزاب
```
cat yagoTaxonomy.tsv | grep -i	tpart.*iran\|iran.*par	t
```
که از بینشون اینا به درد بخورن:
```
<wikicat_Youth_wings_of_political_parties_in_Iran>
<wikicat_Political_parties_in_Iran>
<wikicat_Socialist_parties_in_Iran>
<wikicat_Marriage,_unions_and_partnerships_in_Iran>
<wikicat_Communist_parties_in_Iran>
<wikicat_Defunct_political_parties_in_Iran>
```
rows covered -> +6

```
cat yagoTypes.tsv | grep -f wikicat_iran_parties | cut -f 2 | tr '_-' '  ' | sed 's/>//' | sed 's/<//' | uniq | sort | uniq > parties_1
```
rows covered -> +114
اونایی که لیبل فارسی نداشتن
```
Aryan League
Baluchistan People's Party
Coalition of Iran's Independent Volunteers
Comrades Party
Komeley Jiyanewey Kurd
Democratic Coalition of Reformists
Comité pour le Renversement
Parti démocratique azerbaïdjani
Iranian People Party
Iran Liberation Front
Marz e Por Gohar
Movement of God Worshipping Socialists
Rastakhiz Partij
Organization of Iranian People's Fedai Guerrillas (1985)
Organization of Iranian People's Fedai Guerrillas (In Search of Identity Program)
People's Democratic Front (Iran)
Pragmatic Conservatives
Rahe Kargar
Revenge group (Anjoman)
Revolutionary Republican Party of Iran
Social Democratic Party (Persia)
Socialist Party of Iran
Socialist Workers’ Party of Iran
Worker communism Unity Party of Iran
Workers Left Unity – Iran
Young Communist League of Persia
```

چندتاشون که غلط بود حذف شد. و در نهابت ترجمه شدند

```
<wikicat_2006_elections_in_Iran>
<wikicat_2012_elections_in_Iran>
<wikicat_2013_elections_in_Iran>
<wikicat_2008_elections_in_Iran>
<wikicat_Elections_in_Iran>
<wikicat_2009_elections_in_Iran>
```
rows covered -> +6
```
cat yagoTypes.tsv | grep -f wikicat_election | cut -f2 | uniq | tr '_-' '  '| sed 's/>//' | sed 's/<//' | sort | uniq > election
```
مشاهده شد که انتخابات دارای تگ، سال، نوع میباشد
ولی توی اسم انتخابات ها کاما وجود داره
برای همین دلیمتر این فایل رو استثنائا تب میذارم
نوع انتخابات رو مجبور شدم دستی وارد کنم
ولی بقیه موارد قابل استخراج بود

میرسیم به اعتراضات
```
cat yagoSimpleTaxonomy.tsv | grep -i "protest.*iran\|iran.*protest"
	<wikicat_Student_protests_in_Iran>	rdfs:subClassOf	<wordnet_abstraction_100002137>	
	<wikicat_Protests_in_Iran>	rdfs:subClassOf	<wordnet_abstraction_100002137>

cat yagoTypes.tsv | grep -i "<wikicat_Protests_in_Iran>" | cut -f2 | uniq | tr '_-' '  '| sed 's/>//' | sed 's/<//' | sort | uniq > protest_pure

```
rows covered -> 22
تنها نکته ای که هست اینکه کلی اعتراض در سال ۸۸ داشتیم که شاید یکی بشه درنظر گرفتشون
کما اینکه چندتا از رکورد ها اصلا خودشون مجموعه ای از اعتراضات هستن
هرچندشاید این تیبل نرمال فرم ۱ هم نباشه چون اینارو بشه تکراری در نظر گرفت
ولی با این حال من بهشون دست نمیزنم
چون دانش کافی برای تصمیم گیری در این زمینه رو ندارم

با گشتن واژه ی قرارداد و گسترش سرچ به تایپ زیر رسیدم
```
<wikicat_Treaties_of_Iran>
```
```
cat yagoTypes.tsv | grep -f wikicat_Treaties_of_Iran | cut -f2 | uniq | tr '_-' '  '| sed 's/>//' | sed 's/<//' | sort | uniq > treaties_pure
```
rows covered -> +82

با سرچ کردن سازمان و ایران در تکسونومی به تایپ های زیر رسیدم
```
<wikicat_Iranian_security_organizations>
<wikicat_Human_rights_organisations_based_in_Iran>
<wikicat_Political_organisations_in_Iran>
```
rows covered -> +12

```
cat yagoTaxonomy.tsv | grep -i "_war.*iran\|iran.*_war"
<id_1p2d7gj_1m6_1bofoym>	<wikicat_Military_operations_of_the_Iran–Iraq_War>	rdfs:subClassOf	<wordnet_operation_100955060>
<id_1ihgqg6_1m6_yhnzh7>	<wikicat_World_War_II_Iranian_infantry_weapons>	rdfs:subClassOf	<wordnet_weapon_104565375>	
<id_xt03n6_1m6_7x3c25>	<wikicat_World_War_II_airfields_in_Iran>	rdfs:subClassOf	<wordnet_airfield_102687992>	
<id_1mh7eny_1m6_yhnzh7>	<wikicat_Post–Cold_War_weapons_of_Iran>	rdfs:subClassOf	<wordnet_weapon_104565375>	
<id_1g5bu6_1m6_1c0ik8l>	<wikicat_Post–Cold_War_anti-tank_missiles_of_Iran>	rdfs:subClassOf	<wordnet_missile_103773504>	
<id_jbbg59_1m6_rxghn>	<wikicat_Amphibious_warfare_vessels_of_the_Islamic_Republic_of_Iran_Navy>	rdfs:subClassOf	<wordnet_vessel_105397333>	
<id_1cyoiu8_1m6_1azzfx4>	<wikicat_Iranian_war_films>	rdfs:subClassOf	<wordnet_movie_106613686>	
<id_1a5a323_1m6_1kqv7tc>	<wikicat_World_War_II_sites_in_Iran>	rdfs:subClassOf	<wordnet_site_108651247>	
<id_y62x9y_1m6_1azzfx4>	<wikicat_Iran–Iraq_War_films>	rdfs:subClassOf	<wordnet_movie_106613686>	
<id_fr6t43_1m6_1jvsmsf>	<wikicat_Naval_battles_of_the_Iran–Iraq_War_involving_the_United_States>	rdfs:subClassOf	<wordnet_naval_battle_100958477>	
<id_pmn72v_1m6_1jvsmsf>	<wikicat_Naval_battles_of_the_Iran–Iraq_War>	rdfs:subClassOf	<wordnet_naval_battle_100958477>	
<id_yxhl7a_1m6_ih3z61>	<wikicat_Wars_involving_Iran>	rdfs:subClassOf	<wordnet_war_100973077>	
<id_1wu7ndg_1m6_hsj9sm>	<wikicat_Iranian_people_of_World_War_II>	rdfs:subClassOf	<wordnet_person_100007846>	
<id_1we9tld_1m6_hsj9sm>	<wikicat_Iraqi_people_of_the_Iran–Iraq_War>	rdfs:subClassOf	<wordnet_person_100007846>	
<id_rf5u43_1m6_i8qkog>	<wikicat_United_Nations_Security_Council_resolutions_concerning_the_Iran–Iraq_War>	rdfs:subClassOf	<wordnet_resolution_106511874>	
<id_19t5gzz_1m6_pw63pf>	<wikicat_Iranian_civil_wars>	rdfs:subClassOf	<wordnet_civil_war_100962567>	
<id_s54w9t_1m6_hsj9sm>	<wikicat_Iranian_people_of_the_Iran–Iraq_War>	rdfs:subClassOf	<wordnet_person_100007846>	
```
که از بین اینا
اینا به درد میخورن:
```
<wikicat_Military_operations_of_the_Iran–Iraq_War>
<wikicat_Naval_battles_of_the_Iran–Iraq_War_involving_the_United_States>
<wikicat_Naval_battles_of_the_Iran–Iraq_War>

<wikicat_Wars_involving_Iran>
<wikicat_Iranian_civil_wars>
```
rows covered -> +5
```
cat yagoTypes.tsv | grep -f war_types | cut -f2 | uniq | tr '_-' '  '| sed 's/>//' | sed 's/<//' | sort | uniq > war_pure
```
rows covered -> +72
```
cat yagoTypes.tsv | grep -f op_types | cut -f2 | uniq | tr '_-' '  '| sed 's/>//' | sed 's/<//' | sort | uniq > op_pure 
```
rows covered -> +59

به دیتاهایی که تا الان به دست آوردم با make_id.py ای دی میدم که تو ریلیشن ساختن ازش استفاده کنم.

میشه حالا جدول سیاستمداران را کامل تر کرد

برای سریع تر شدن هم برای هر لیبل، اون سطر هایی که اون لیبل رو دارن جدا میکردم و میریختم تو یه فایل که سرچ رو سریع تر کرد
اینجوری:
```
grep -i "isMarriedTo" yagoFacts.tsv | cut -f2- > facts_spouse
```

با برنامه findfact ریلیشن های زیر رو برای هر سیاستمدار در میارم
تگ های زیر رو استفاده کردم.
```
<wasBornIn>
<hasGender>
<graduatedFrom>
```
rows covered -> (hasgender) 518
(grad) 114
(Born) 292
البته برای دانشگاه مجبور شدم که یه رابطه ی m to m تعریف کنم.

حالا با برنامه ی politician_party.py سیاساتمدارها رو به حزب هاشون وصل میکنیم.
rows covered -> +129

خب حالا ژنای خوب رو هم جدا کنیم
```
<hasChild>
<isMarriedTo>
```
rows covered -> 63

به جز لیبل های فارسی در کل 2393 ردیف پوشش داده شد.
(789 labeled, total:3182)