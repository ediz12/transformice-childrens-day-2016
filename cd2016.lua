--[[ TFM Children's Day 2016

ART: 
    1) A 4 class + stage school, no outside part will be shown 
      	-Every classroom and stage will be decorated, EXCEPT the first floor 	
				- A stage INSIDE the school like those amphitheaters at schools idk if you have them
		2) Decoration arts
		3) Mess art (Lots of shamouseys)


GAMEPLAY:

1) 4 Tasks + 1 Stage task
	1.1) First floor: Decoration of a classroom
	1.2) Second floor: Dancedance
		- The mice have to follow the instructions shown on screen, in the form of arrows or something similar, making them move left, right, up, down, or performing a specific emote.
	1.3) Third floor: Cleaning up a classroom
		- The room has items all over it, the mice have to walk up to the items, pick them up and put them in a basket/bin to clear it up.
		- childrens day is literally "childrens" lol esp. the ones that go to primary schools celebrate it
	1.4) Fourth floor: Singing IF Pika contributes the ability to read chat without !. Else think of something else. If necessary, use the ui.addPopup with a textarea type.
	1.5) Stage: Everyone needs to be on stage on time to celebrate. No teleporting. 
	
CODING:
	0) Introduction
	1) Decoration
	2) Dancedance DONE
	3) Cleaning up
	4) Singing
	5) Stage
	6) Each task will give +1 points, so we'll have something high to collect(Every map you can basically get 5)
	7) User point loading/saving

Map: http://pastebin.com/eEJv1FkM

]]

-- TRANSLATIONS --

-- VARIABLES --

xml=[[<C><P L="2063" H="1390" /><Z><S><S P="0,0,0.0,0.2,0,0,0,0" L="108" o="324650" X="263" Y="38" T="12" m="" H="124" /><S P="0,0,0.3,0.2,0,0,0,0" L="94" o="324650" X="356" Y="84" T="12" m="" H="18" /><S P="0,0,0.3,0.2,60,0,0,0" L="90" o="324650" X="423" Y="118" T="12" m="" H="10" /><S P="0,0,0.3,0.2,-18,0,0,0" L="248" o="324650" X="343" Y="217" T="12" m="" H="58" /><S P="0,0,0.3,0.2,0,0,0,0" L="890" o="324650" X="998" Y="209" T="12" m="" H="72" /><S P="0,0,0.3,0.2,-18,0,0,0" L="149" o="324650" X="842" Y="180" T="12" m="" H="45" /><S P="0,0,0.0,0.2,0,0,0,0" L="94" o="324650" X="1401" Y="83" T="12" m="" H="318" /><S P="0,0,0.3,0.2,-70,0,0,0" L="256" o="324650" X="514" Y="295" T="12" m="" H="10" /><S P="0,0,0.3,0.2,0,0,0,0" L="570" o="324650" X="581" Y="457" T="12" m="" H="10" /><S P="0,0,0.3,0.2,3,0,0,0" L="10" o="324650" X="313" Y="377" T="12" m="" H="285" /><S P="0,0,0.3,0.2,0,0,0,0" L="148" o="324650" X="634" Y="448" T="12" m="" H="25" /><S P="0,0,0.3,0.2,0,0,0,0" L="177" o="324650" X="824" Y="375" T="12" m="" H="18" /><S P="0,0,0.3,0.2,0,0,0,0" L="177" o="324650" X="824" Y="323" T="12" m="" H="10" /><S P="0,0,0.3,0.2,0,0,0,0" L="188" o="324650" X="1084" Y="464" T="12" m="" H="18" /><S P="0,0,0.3,1,0,0,0,0" L="55" o="324650" X="1183" Y="473" T="12" m="" H="82" /><S P="0,0,0.3,0.2,0,0,0,0" L="121" o="324650" X="1342" Y="356" T="12" m="" H="10" /><S P="0,0,0.3,0.2,53,0,0,0" L="117" o="324650" X="905" Y="501" T="12" m="" H="10" /><S L="100" o="324650" X="966" H="10" Y="592" T="12" m="" P="0,0,0.3,0.2,59,0,0,0" /><S P="0,0,0.3,0.2,40,0,0,0" L="61" o="324650" X="998" Y="648" T="12" m="" H="10" /><S P="0,0,0.3,0.2,0,0,0,0" L="580" o="324650" X="1508" Y="601" T="12" m="" H="66" /><S L="580" o="324650" X="1607" H="66" Y="400" T="12" m="" P="0,0,0.3,0.2,40,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="52" o="324650" X="1197" Y="808" T="12" m="" H="440" /><S P="0,0,0.3,0.2,-21,0,0,0" L="100" o="324650" H="10" Y="612" T="12" m="" X="1130" /><S L="191" o="324650" H="19" X="1085" Y="734" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="324650" H="70" X="1085" Y="713" T="12" m="" P="0,0,0.3,1,53,0,0,0" /><S L="668" o="324650" H="48" X="537" Y="760" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="324650" X="365" H="685" Y="858" T="12" m="" P="0,0,0.3,0.2,-10,0,0,0" /><S L="226" o="324650" X="632" H="36" Y="720" T="12" m="" P="0,0,0.3,0.2,-1,0,0,0" /><S L="218" o="324650" X="694" H="10" Y="902" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="63" o="324650" X="547" H="10" Y="914" T="12" m="" P="0,0,0.3,0.2,-10,0,0,0" /><S L="56" o="324650" X="853" H="10" Y="869" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="865" o="324650" X="349" H="23" Y="807" T="12" m="" P="0,0,0.3,0.2,80,0,0,0" /><S L="167" o="324650" X="782" H="22" Y="991" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="348" o="324650" X="526" H="20" Y="1002" T="12" m="" P="0,0,0.3,0.2,-4,0,0,0" /><S L="115" o="324650" X="903" H="23" Y="769" T="12" m="" P="0,0,0.3,0.2,43,0,0,0" /><S P="0,0,0.3,0.2,53,0,0,0" L="115" o="324650" H="18" Y="850" T="12" m="" X="980" /><S L="52" o="324650" X="1037" H="10" Y="910" T="12" m="" P="0,0,0.3,0.2,40,0,0,0" /><S L="184" o="324650" X="1082" H="24" Y="981" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="310" o="324650" X="1485" H="15" Y="938" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="132" o="324650" X="1482" H="15" Y="837" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,-20,0,0,0" L="132" o="324650" H="15" Y="817" T="12" m="" X="1606" /><S L="50" o="324650" X="1884" H="507" Y="768" T="12" m="" P="0,0,0,0.2,-15,0,0,0" /><S L="253" o="324650" X="959" H="13" Y="1077" T="12" m="" P="0,0,0.3,0.2,50,0,0,0" /><S L="54" o="324650" X="706" H="30" Y="971" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="204" o="324650" X="1121" H="14" Y="1215" T="12" m="" P="0,0,0.3,0.2,-8,0,0,0" /><S P="0,0,0.3,0.2,-35,0,0,0" L="204" o="324650" H="14" Y="1151" T="12" m="" X="1281" /><S L="368" o="324650" X="1487" H="56" Y="1078" T="12" m="" P="0,0,1.2,0.2,-3,0,0,0" /><S L="184" o="324650" X="1718" H="10" Y="1075" T="12" m="" P="0,0,0.3,0.2,-10,0,0,0" /><S L="285" o="324650" X="850" H="23" Y="1322" T="12" m="" P="0,0,0.3,0.2,-15,0,0,0" /><S L="314" o="324650" X="684" H="30" Y="1350" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="64" o="324650" X="614" H="74" Y="1303" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,-60,0,0,0" L="90" o="324650" H="90" Y="1249" T="12" m="" X="441" /><S L="143" o="324650" X="533" H="26" Y="1297" T="12" m="" P="0,0,0.3,0.2,30,0,0,0" /><S L="25" o="324650" X="769" H="10" Y="982" T="13" m="" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="25" o="324650" H="10" Y="981" T="13" m="" X="634" /><S L="25" o="324650" H="10" X="565" Y="984" T="13" m="" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="25" o="324650" X="503" Y="989" T="13" m="" H="10" /><S P="0,0,0.3,0.2,0,0,0,0" L="42" o="324650" X="1770" Y="1048" T="13" m="" H="10" /><S L="42" o="324650" X="1820" H="10" Y="1016" T="13" m="" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="42" o="324650" H="10" Y="978" T="13" m="" X="1880" /><S P="0,0,0.3,0.2,0,0,0,0" L="112" o="324650" X="1040" Y="1338" T="13" m="" H="10" /><S P="0,0,0.3,0.2,0,0,0,0" L="10" o="324650" X="762" Y="1249" T="12" m="" H="80" /><S P="0,0,0.3,0.2,0,0,0,0" L="63" o="324650" X="797" Y="1216" T="12" m="" H="13" /></S><D><DS Y="1317" X="683" /></D><O /></Z></C>]]
xml=[[<C><P L="2063" H="1390" /><Z><S><S P="0,0,0.3,0.2,60,0,0,0" L="90" o="324650" X="423" Y="118" T="12" m="" H="10" /><S P="0,0,0.3,0.2,-18,0,0,0" L="248" o="324650" X="343" Y="217" T="12" m="" H="58" /><S P="0,0,0.3,0.2,0,0,0,0" L="457" o="324650" X="781" Y="197" T="12" m="" H="37" /><S P="0,0,0.0,0.2,0,0,0,0" L="94" o="324650" X="1453" Y="85" T="12" m="" H="318" /><S P="0,0,0.3,0.2,-70,0,0,0" L="256" o="324650" X="515" Y="301" T="12" m="" H="10" /><S P="0,0,0.3,0.2,0,0,0,0" L="570" o="324650" X="584" Y="464" T="12" m="" H="10" /><S P="0,0,0.3,0.2,3,0,0,0" L="10" o="324650" X="313" Y="377" T="12" m="" H="285" /><S P="0,0,0.3,0.2,0,0,0,0" L="148" o="324650" X="634" Y="448" T="12" m="" H="25" /><S P="0,0,0.3,0.2,0,0,0,0" L="177" o="324650" X="826" Y="387" T="12" m="" H="18" /><S P="0,0,0.3,0.2,0,0,0,0" L="177" o="324650" X="821" Y="333" T="12" m="" H="10" /><S P="0,0,0.3,0.2,0,0,0,0" L="188" o="324650" X="1084" Y="464" T="12" m="" H="18" /><S P="0,0,0.3,1,0,0,0,0" L="55" o="324650" X="1183" Y="473" T="12" m="" H="82" /><S P="0,0,0.3,0.2,0,0,0,0" L="121" o="324650" X="1339" Y="362" T="12" m="" H="10" /><S P="0,0,0.3,0.2,53,0,0,0" L="117" o="324650" X="899" Y="508" T="12" m="" H="10" /><S L="100" o="324650" X="961" H="10" Y="596" T="12" m="" P="0,0,0.3,0.2,59,0,0,0" /><S P="0,0,2,0.2,40,0,0,0" L="61" X="1010" Y="656" T="12" m="" H="10" o="324650" /><S P="0,0,0.3,0.2,0,0,0,0" L="580" o="324650" X="1508" Y="601" T="12" m="" H="66" /><S L="580" o="324650" X="1607" H="66" Y="400" T="12" m="" P="0,0,0.3,0.2,40,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="52" o="324650" X="1197" Y="808" T="12" m="" H="440" /><S P="0,0,0.3,0.2,-16,0,0,0" L="141" o="324650" H="14" Y="611" T="12" m="" X="1133" /><S L="218" o="324650" H="19" X="1072" Y="739" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="12" o="324650" H="70" X="1050" Y="731" T="12" m="" P="0,0,0.3,0.2,63,0,0,0" /><S L="364" o="324650" H="48" X="696" Y="756" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="324650" X="365" H="355" Y="941" T="12" m="" P="0,0,0.3,0.2,-9,0,0,0" /><S L="226" o="324650" X="632" H="36" Y="715" T="12" m="" P="0,0,0.3,0.2,1,0,0,0" /><S L="124" o="324650" X="633" H="10" Y="906" T="12" m="" P="0,0,0.3,0.2,-2,0,0,0" /><S L="63" o="324650" X="551" H="10" Y="913" T="12" m="" P="0,0,0.3,0.2,-10,0,0,0" /><S L="56" o="324650" X="857" H="10" Y="873" T="12" m="" P="0,0,0.3,0.2,-2,0,0,0" /><S L="167" o="324650" X="785" H="22" Y="996" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="348" o="324650" X="526" H="20" Y="1002" T="12" m="" P="0,0,0.3,0.2,-4,0,0,0" /><S L="115" o="324650" X="907" H="23" Y="782" T="12" m="" P="0,0,0.3,0.2,48,0,0,0" /><S P="0,0,0.3,0.2,53,0,0,0" L="115" o="324650" H="18" Y="854" T="12" m="" X="970" /><S L="52" o="324650" X="1021" H="10" Y="907" T="12" m="" P="0,0,2,0.2,40,0,0,0" /><S L="255" o="324650" X="1089" H="22" Y="984" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="310" o="324650" X="1485" H="15" Y="938" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,-20,0,0,0" L="132" o="324650" H="15" Y="823" T="12" m="" X="1589" /><S L="50" o="324650" X="1881" H="507" Y="768" T="12" m="" P="0,0,0,0.2,-13,0,0,0" /><S L="123" o="324650" X="983" H="13" Y="1118" T="12" m="" P="0,0,0.3,0.2,47,0,0,0" /><S P="0,0,0.3,0.2,-36,0,0,0" L="204" o="324650" H="21" Y="1164" T="12" m="" X="1249" /><S L="368" o="324650" X="1486" H="56" Y="1072" T="12" m="" P="0,0,1.2,0.2,-3,0,0,0" /><S L="184" o="324650" X="1718" H="10" Y="1075" T="12" m="" P="0,0,0.3,0.2,-10,0,0,0" /><S L="285" o="324650" X="850" H="23" Y="1322" T="12" m="" P="0,0,0.3,0.2,-15,0,0,0" /><S L="314" o="324650" X="684" H="30" Y="1350" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="64" o="324650" X="608" H="74" Y="1302" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,-60,0,0,0" L="90" o="324650" H="90" Y="1249" T="12" m="" X="441" /><S L="143" o="324650" X="533" H="26" Y="1297" T="12" m="" P="0,0,0.3,0.2,30,0,0,0" /><S L="25" o="324650" X="765" Y="986" T="13" m="" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="25" o="324650" Y="984" T="13" m="" X="633" /><S L="25" o="324650" X="563" Y="991" T="13" m="" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="25" o="324650" X="503" Y="991" T="13" m="" /><S P="0,0,0.3,0.2,0,0,0,0" L="42" o="324650" X="1757" Y="1046" T="13" m="" /><S L="42" o="324650" X="1818" Y="1005" T="13" m="" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="42" o="324650" Y="975" T="13" m="" X="1870" /><S P="0,0,0.3,0.2,0,0,0,0" L="112" o="324650" X="1010" Y="1359" T="13" m="" /><S P="0,0,0.3,0.2,0,0,0,0" L="10" o="324650" X="760" Y="1249" T="12" m="" H="80" /><S P="0,0,0.3,0.2,0,0,0,0" L="63" o="324650" X="797" Y="1216" T="12" m="" H="13" /><S P="0,0,0.3,0.2,-17,0,0,0" L="268" o="324650" X="1011" Y="185" T="12" m="" H="51" /><S P="0,0,0.3,0.2,-39,0,0,0" L="121" o="324650" X="1114" Y="128" T="12" m="" H="10" /><S P="0,0,0,0.2,-90,0,0,0" L="248" o="324650" X="279" Y="107" T="12" m="" H="58" /><S P="0,0,0.3,0.2,-60,0,0,0" L="256" o="324650" X="303" Y="189" T="12" m="" H="10" /><S P="0,0,0.3,0.2,0,0,0,0" L="41" o="324650" X="382" Y="98" T="12" m="" H="41" /><S L="157" o="324650" X="1479" H="10" Y="842" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="48" o="324650" X="1380" H="10" Y="835" T="12" m="" P="0,0,0.3,0.2,16,0,0,0" /><S L="12" o="324650" H="70" X="1251" Y="501" T="12" m="" P="0,0,0.3,1,87,0,0,0" /><S P="0,0,0.3,0.2,82,0,0,0" L="142" o="324650" X="852" Y="604" T="12" m="" H="10" /><S P="0,0,0.3,0.2,95,0,0,0" L="126" o="324650" X="433" Y="611" T="12" m="" H="11" /><S P="0,0,0.3,0.2,-39,0,0,0" L="100" o="324650" X="614" Y="90" T="12" m="" H="10" /><S P="0,0,0.3,0.2,-58,0,0,0" L="100" o="324650" X="636" Y="72" T="12" m="" H="15" /><S P="0,0,0.3,0.2,0,0,0,0" L="222" o="324650" X="1167" Y="159" T="12" m="" H="18" /><S P="0,0,0.3,0.2,0,0,0,0" L="222" o="324650" X="1240" Y="161" T="12" m="" H="18" /><S P="0,0,0.3,0.2,-22,0,0,0" L="208" o="324650" X="824" Y="169" T="12" m="" H="17" /><S P="0,0,0.3,0.2,-12,0,0,0" L="208" o="324650" X="765" Y="179" T="12" m="" H="17" /><S P="0,0,0.3,0.2,-86,0,0,0" L="62" o="324650" X="1356" Y="133" T="12" m="" H="10" /><S P="0,0,0.3,0.2,0,0,0,0" L="112" o="324650" X="1091" Y="1322" T="13" m="" /><S L="184" o="324650" X="1194" H="24" Y="1217" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="25" o="324650" Y="982" T="13" m="" X="702" /><S L="12" o="324650" H="70" X="1191" Y="589" T="12" m="" P="0,0,0.3,1,63,0,0,0" /><S L="10" o="324650" X="426" H="355" Y="1189" T="12" m="" P="0,0,0.3,0.2,-14,0,0,0" /><S L="10" o="324650" X="319" H="355" Y="635" T="12" m="" P="0,0,0.3,0.2,-6,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="43" o="324650" Y="978" T="13" m="" X="356" /><S L="124" o="324650" X="743" H="10" Y="904" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="139" o="324650" X="931" H="13" Y="1056" T="12" m="" P="0,0,0.3,0.2,52,0,0,0" /><S L="32" o="324650" X="878" H="13" Y="998" T="12" m="" P="0,0,0.3,0.2,26,0,0,0" /><S L="32" o="324650" X="1027" H="13" Y="1164" T="12" m="" P="0,0,2,0.2,35,0,0,0" /><S P="0,0,0.3,0.2,-3,0,0,0" L="177" o="324650" X="588" Y="644" T="12" m="" H="10" /><S P="0,0,0.3,0.2,0,0,0,0" L="125" o="324650" X="733" Y="640" T="12" m="" H="10" /><S L="226" o="324650" X="426" H="36" Y="759" T="12" m="" P="0,0,0.3,0.2,-4,0,0,0" /></S><D><DS Y="1317" X="683" /></D><O /></Z></C>]]

level= -1
arrowTimer = 0
danceTimer = 0
currentDance = nil
roomList = {}
players = {}
levelinit = {
  {
    arrows = {{880, 1270, -125}, {1009, 1076, 135}, {858, 887, 0}},
    
	},
  {
    arrows = {{876, 923, -90}, {997, 814, 135}},
    
	},
  {
    arrows = {{869, 679, -90}, {1044, 661, 135}, {1140, 545, -120}},
    
	},
  {
    arrows = {{1309, 507, 90}, {997, 541, 135}, {824, 399, 90}},
    
	},
  {
    arrows = {{1009, 1076, -45}, {997, 814, -45}, {997, 541, -45}, {1250, 1096, -135}, {824, 399, -90}}    
	},
}

decoration = {
	{
	name = "PurpleBalloon",
	image = "1540114e5d9.png",
	coords = {767, 955},
	imgcoords = {708, 852},
	imgtype = "!2",
	},
	{
	name = "BlueBalloon",
	image = "1540114f93d.png",
	coords = {502, 955},
	imgcoords = {455, 860},
	imgtype = "!2",
	},
	{
	name = "OrangeBalloon",
	image = "15401150e1f.png",
	coords = {563, 955},
	imgcoords = {521, 855},
	imgtype = "!2",
	},
	{
	name = "PinkBalloon",
	image = "15401152172.png",
	coords = {767, 955},
	imgcoords = {743, 852},
	imgtype = "!2",
	},
	{
	name = "Flags",
	image = "1540115636e.png",
	coords = {665, 955},
	imgcoords = {620, 930},
	imgtype = "!2",
	},
	{
	name = "HappyChildrensDayText",
	image = "1540c8f8dd5.png",
	coords = {656, 865},
	imgcoords = {580, 832},
	imgtype = "?2",
	},
	--[[
	{
	name = "Happy",
	image = "15401157910.png",
	coords = {656, 865},
	},
	{
	name = "ChildrensText", 1540c8f8dd5.png
	image = "154011536e6.png",
	coords = {656, 865},
	},
	{
	name = "DayText",
	image = "15401154cab.png",
	coords = {656, 865},
	}	]]
}

translations={
  en={
    poems={
      {
        "Twinkle twinkle little shit,",
        "Listen here, you fucking twit,",
        "This is a poem, get used to it,",
        "Bla bla bla something else",
      }
    }
  },
  tr={
    poems = {
      {
        "Sanki her tarafta var bir düğün",
        "Çünkü, en şerefli en mutlu gün",
        "Bugün yirmi üç Nisan",
        "Hep neşeyle doluyor insan",
      },
    }
  }
}

-- FUNCTIONS --

function decorationBox()
	local box = {}
	for i, item in ipairs(decoration) do
		box[i] = i
	end
	return box
end

function giveDecoItem(name)
	local player = players[name]
	if player.item then
		tfm.exec.chatMessage("Nice try")
	else
		player.item = table.remove(player.box, math.random(#player.box))
		local item = decoration[player.item]
		tfm.exec.chatMessage(item.name.." "..item.coords[1].." "..item.coords[2])
		player.img = tfm.exec.addImage("1540154230c.png", "!2", item.coords[1]-25, item.coords[2]-25, name)
	end
end


function inRectangle(x1,y1,x2,y2,width,height)
  if x1>x2-(width/2) and x1<x2+(width/2) and y1>y2-(height/2) and y1<y2+(height/2) then
    --ui.addTextArea(69,"",nil,x2-(width/2),y2-(height/2),width,height,0x324650,0x212F36,0.8)
    return true
  end
end

function inCircle(x1,y1,r1,x2,y2,r2) -- (x - x1) ^ 2 + (y - y1) ^ 2 < r * r
	local x=x2-x1
	local y=y2-y1
	local r=r2+r1
	return x*x+y*y< r * r
end


function translate(str,lang)
	lang=lang or "en"
	return translations[lang] and translations[lang][str] or translations["en"][str] or str or "Error"
end

rd = false
function randomDance()
  moves = {
    {false, "Dance", 0},
    {false, "Clap", 5},
    {false, "Confetti", 9},
    {false, "Laugh", 1},
    {true, "Left", 0, 90},
    {true, "Right", 2, -90},
    {true, "Up", 1, 180},
    {true, "Down", 3, 0},
    }
  m = moves[math.random(1, 8)]
  if m[1] == false then
    if rd then
      tag = "<vp>"
      rd = false
    else
      tag = "<r>"
      rd = true
    end
    ui.updateTextArea(0, tag..'<p align="center"><font size="25" face="Comic Sans MS"><b>'..string.upper(m[2])..'!</b></font></p>', nil)
  else
    ui.updateTextArea(0, "", nil)
    tfm.exec.addShamanObject(0, 581, 533, m[4])
    tfm.exec.addShamanObject(0, 649, 533, m[4])
    tfm.exec.addShamanObject(0, 711, 533, m[4])
  end
  
  return m
end

function randomPoem(lang)
  local poem
  if translations[lang] and translations[lang]["poems"] and translations[lang]["poems"][1] then
		poem = translations[lang]["poems"][math.random(1, #translations[lang]["poems"])]
  else
		poem = translations["en"]["poems"][math.random(1, #translations["en"]["poems"])]
  end
	return {poem, 1, #poem}
end

function givePoemLine(name)
	if not players[name].poem[1] then
		players[name].poem = randomPoem("tr")
	end
	
	if players[name].poem[2] <= players[name].poem[3] then -- Check if the user has reached the last line
		ui.updateTextArea(0, '<vp><p align="center"><font size="15" face="Comic Sans MS"><b>'..players[name].poem[1][players[name].poem[2]], name)
		--ui.updateTextArea(0, "Hello", name)
	else 
		-- success tick image
		players[name].poem = randomPoem("tr")
		tfm.exec.chatMessage("<rose>Grats!! "..name.." finished a poem!!")
		ui.updateTextArea(0, '<vp><p align="center"><font size="15" face="Comic Sans MS"><b>'..players[name].poem[1][1], name)
	end
end

function renderBackground(name)
	tfm.exec.addImage("153b4627ae8.jpg", "?0", 0, 696, name)
	tfm.exec.addImage("153b462a45f.jpg", "?0", 0, 2, name)
	tfm.exec.addImage("1540c8e656b.png", "!0", 0, 0, name)
end

function proceed()
  level = level + 1
  if level == 0 then
  	-- DECORATION INITIALS
    for _,name in pairs(roomList) do
      tfm.exec.bindKeyboard(name, 32, true, true)
	  players[name].box = decorationBox()
    end   
	
  elseif level == 1 then
    -- DANCE INITIALS
    for _,name in pairs(roomList) do
      for i=0,3 do tfm.exec.bindKeyboard(name, i, true, true) end
	  tfm.exec.bindKeyboard(name, 32, true, false)
	  tfm.exec.removeImage(players[name].img)
    end
    currentDance = randomDance()
    ui.addTextArea(0, "", nil, 542, 512, 200, 50, 0x324650,0x212F36,0.25, false)
    
  elseif level == 2 then
    -- CLEANUP INITIALS
    for _,name in pairs(roomList) do
      for i=0,3 do tfm.exec.bindKeyboard(name, i, true, false) end
	  tfm.exec.bindKeyboard(name, 32, true, true)
    end
	
    ui.removeTextArea(0, nil)
    
  elseif level == 3 then
    -- SING INITIALS
	ui.addTextArea(0, '', nil, 475, 289, 325, 30, 0x324650,0x212F36,0.75, false)
	for i, name in pairs(roomList) do
		tfm.exec.bindKeyboard(name, 32, true, false)
		givePoemLine(name)
	end
    
  else
    -- STAGE
    ui.removeTextArea(0, nil)
  end
end

-- EVENTS --

function eventNewPlayer(name)
  renderBackground(name)
end

function eventEmotePlayed(name, emote, flag)
  if level == 1 and currentDance[1] == false and inRectangle(tfm.get.room.playerList[name].x,tfm.get.room.playerList[name].y,630,650,600,200) then
    tfm.exec.chatMessage("You got it!",name)
    --DANCE TIME
		if players[name].dance[1] == false then
      if emote == currentDance[3] then
      	tfm.exec.chatMessage("<vp>"..name.. " did the right emote("..currentDance[2]..")")
      else
        tfm.exec.chatMessage("<r>"..name.. " did the wrong emote("..emote..")!")
      end
      players[name].dance[1] = true
    end
  end
end

function eventLoop(time, remaining)
	arrowTimer = arrowTimer + 1
  if arrowTimer == 3 then
    for _, arrows in pairs(levelinit[level+1]) do
        for _, arrow in pairs(arrows) do
          	tfm.exec.addShamanObject(0, arrow[1], arrow[2], arrow[3])
        end
    end
    arrowTimer = 0
  end
  
  if level == 1 then
    danceTimer = danceTimer + 1
    if danceTimer == 5 then
      currentDance = randomDance()
      danceTimer = 0
      for i, name in pairs(roomList) do
	  --tfm.exec.chatMessage(i.." "..name)
        players[name].dance = {false}
      end
    end
  end
end

function eventKeyboard(name, key, down, x, y)
  if level == 0 then
	local player = players[name]
	if inCircle(855, 959, 12, tfm.get.room.playerList[name].x, tfm.get.room.playerList[name].y, 12) and key == 32 then
		tfm.exec.chatMessage("Peekaboo!")
		if #player.box <= 0 then
			tfm.exec.chatMessage("u r done noob")
		else
			giveDecoItem(name)
		end
	elseif player.item and inCircle(decoration[player.item].coords[1], decoration[player.item].coords[2], 10, tfm.get.room.playerList[name].x, tfm.get.room.playerList[name].y, 10) and key == 32 then
		tfm.exec.chatMessage("Boo boo!")
		tfm.exec.addImage(decoration[player.item].image,decoration[player.item].imgtype, decoration[player.item].imgcoords[1], decoration[player.item].imgcoords[2], name)
		tfm.exec.removeImage(player.img)
		player.item = nil
		player.img = nil
		if #player.box <= 0 then
			tfm.exec.chatMessage("wowoowwowow u did it")
		end
	end
	
		--[[giveDecoItem(player)
	elseif players[player].item and inCircle(decoration[players[player].item].coords[1], decoration[players[player].item].coords[2], 15, tfm.get.room.playerList[player].x, tfm.get.room.playerList[player].y, 15) and key == 32 then
		tfm.exec.chatMessage("Boo boo!")
		local item = players[player].item
		decoration[item].placed = true
		tfm.exec.addImage(decoration[item].image,"?51", decoration[item].coords[1], decoration[item].coords[2], nil)
		tfm.exec.removeImage(players[player].img)
		table.remove(box, players[player].item)
		players[player].item = nil
		players[player].img = nil]]
	
  elseif level == 1 and currentDance[1] == true and inRectangle(tfm.get.room.playerList[name].x,tfm.get.room.playerList[name].y,630,650,600,200) then
    if players[name].dance[1] == false  then
      if key == currentDance[3] then
      	tfm.exec.chatMessage("<vp>"..name.. " did the right move("..currentDance[2]..")")
      else
        tfm.exec.chatMessage("<r>"..name.. " did the wrong move("..key..")!")
      end
      players[name].dance[1] = true
    end
  end
end

function eventChatCommand(name, msg)
  if level == 3 then

	if string.lower(msg) == string.lower(players[name].poem[1][players[name].poem[2]]) then
		tfm.exec.chatMessage("<vp>"..name.." said the correct line!")
		players[name].poem[2] = players[name].poem[2] + 1
		givePoemLine(name)
	else
		tfm.exec.chatMessage("<r>"..name.." said the wrong line!")
	end
  end
  
  if (name == "Ediz" or name=="Shamousey") and msg == "proc" then proceed() tfm.exec.chatMessage(level) end
end


function eventMouse(name, x, y)
  tfm.exec.chatMessage(name..", "..x..", "..y)
  tfm.exec.movePlayer(name,x,y)
end
system.bindMouse("Ediz", true)
system.bindMouse("Shamousey", true)



-- START --

tfm.exec.disableAutoNewGame()
tfm.exec.disableAfkDeath()
tfm.exec.disableAutoShaman()
tfm.exec.newGame(xml)
tfm.exec.setGameTime(150)

for name,player in pairs(tfm.get.room.playerList) do
	eventNewPlayer(name)
  players[name] = {dance = {false}, poem = {false}}
  table.insert(roomList, name)
end

proceed()

