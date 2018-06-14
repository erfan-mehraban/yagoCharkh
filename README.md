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
خب اینجا یه سری لقب و شهرت داریم. جالبه!
```
grep -i	thassan.*rouhan	t yagoLabels.tsv
```
اینجا هم به انواع و اقسام زبون های مختلف اسم ایشون هست. یه کمپین هم اون وسط میبینیم!
```
grep -i	thassan.*rouhan	t yagoFacts.tsv               
```
این که حزب روحانیون مبارز اون وسط هست میتونه منو به یه سری آدم دیگه برسونه. ایز لیدر آف هم جالبه.
```
cat yagoFacts.tsv | grep -i	t\<isLeaderOf\>.*<Iran\	t                  
```
خب پس خیلی به دردم نخورد!
```
cat yagoFacts.tsv | grep -i	t<isAffiliatedTo>.*<Combatant_Clergy_Associati
cat yagoFacts.tsv | grep -i	tCombatant_Clergy_Associati
```
این که یه حزبی توی ایران باشه به درد می‌خوره
ولی یه جور باید بفهمم که هم تو ایرانه و هم حزبه

```
cat yagoFacts.tsv | grep -i	t<isLocatedIn>.*<Iran	t | cut -f2 > in_iran
cat yagoFacts.tsv | grep -i	t<isAffiliatedTo	t | cut -f4 > affiliated
grep -Fx -f affiliated in_iran
```
خب مثل اینکه پارس خودرو یا دانشگاه تهران  یا شهرداری گرگان حزب سیاسی نیست :|
در هر صورت لیست به درد بخوری شاید باشه!

برگردیم به همون روحانی
```
grep -i	thassan.*rouhan	t yagoTypes.tsv              
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
```
```
egrep -i	twikicat_Iranian_politician	t yagoTaxonomy.tsv
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
egrep	"حسن_روحانی" yagoInfoboxAttributes_fa.tsv 
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
```
wikicat_Political_parties_in_Iran
wikicat_Political_organisations_in_Iran
wikicat_Books_about_politics_of_Iran
wikicat_Iranian_Majlis_Representatives
wikicat_Government_ministers_of_Iran
```
جنگ و انتخابات هم ایده ی خوبیه
```
grep -i	tiran.*war\|war.*ira	t yagoTypes.tsv
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
...
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
...
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
...
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
-> (grad) 114
-> (Born) 292
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
(829 labeled, total: 3222)