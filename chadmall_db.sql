--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

-- Started on 2022-01-27 16:18:43 WAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 207 (class 1259 OID 16838)
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    prenom character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    adresse character varying(255) NOT NULL,
    id_habillements integer,
    id_medicaments integer
);


ALTER TABLE public.client OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16836)
-- Name: client_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.client_id_seq OWNER TO postgres;

--
-- TOC entry 3003 (class 0 OID 0)
-- Dependencies: 206
-- Name: client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;


--
-- TOC entry 205 (class 1259 OID 16752)
-- Name: habillements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.habillements (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    date_peremption date NOT NULL
);


ALTER TABLE public.habillements OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16750)
-- Name: habillements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.habillements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.habillements_id_seq OWNER TO postgres;

--
-- TOC entry 3004 (class 0 OID 0)
-- Dependencies: 204
-- Name: habillements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.habillements_id_seq OWNED BY public.habillements.id;


--
-- TOC entry 203 (class 1259 OID 16741)
-- Name: medicaments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medicaments (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    date_peremption date NOT NULL
);


ALTER TABLE public.medicaments OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16739)
-- Name: medicaments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.medicaments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medicaments_id_seq OWNER TO postgres;

--
-- TOC entry 3005 (class 0 OID 0)
-- Dependencies: 202
-- Name: medicaments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.medicaments_id_seq OWNED BY public.medicaments.id;


--
-- TOC entry 2857 (class 2604 OID 16841)
-- Name: client id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);


--
-- TOC entry 2856 (class 2604 OID 16755)
-- Name: habillements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.habillements ALTER COLUMN id SET DEFAULT nextval('public.habillements_id_seq'::regclass);


--
-- TOC entry 2855 (class 2604 OID 16744)
-- Name: medicaments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicaments ALTER COLUMN id SET DEFAULT nextval('public.medicaments_id_seq'::regclass);


--
-- TOC entry 2997 (class 0 OID 16838)
-- Dependencies: 207
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client (id, nom, prenom, email, adresse, id_habillements, id_medicaments) FROM stdin;
1	Jack	Barkas	jbarkas0@rediff.com	786 Butternut Parkway	1	1
2	Hermann	Flieger	hflieger1@biglobe.ne.jp	60459 Division Crossing	2	2
3	Aaren	Ketchen	aketchen2@zdnet.com	61 Little Fleur Trail	3	3
4	Kristy	Coward	kcoward3@1688.com	45399 Katie Terrace	4	4
5	Robby	Bearcroft	rbearcroft4@ed.gov	46 Holmberg Alley	5	5
6	Alida	Trenoweth	atrenoweth5@theglobeandmail.com	434 Nevada Trail	6	6
7	Dianne	Kryska	dkryska6@netlog.com	94584 Ridgeway Terrace	7	7
8	Dulsea	Simpkiss	dsimpkiss7@berkeley.edu	714 Division Drive	8	8
9	Ricoriki	Witcher	rwitcher8@123-reg.co.uk	6 Di Loreto Hill	9	9
10	Garrick	Issakov	gissakov9@bloglines.com	373 Stuart Trail	10	10
11	Rog	Tulloch	rtullocha@google.pl	26 Fordem Place	11	11
12	Petronella	Albery	palberyb@upenn.edu	3144 Texas Drive	12	12
13	Dara	Tesyro	dtesyroc@wunderground.com	76829 Hovde Plaza	13	13
14	Lenette	Klaus	lklausd@hc360.com	38 Northland Road	14	14
15	Micheil	Edward	medwarde@ezinearticles.com	93640 Tony Crossing	15	15
16	Monica	Hars	mharsf@ihg.com	74782 Arizona Drive	16	16
17	Arlin	Mongenot	amongenotg@bluehost.com	1618 Kings Hill	17	17
18	Beryle	Mennithorp	bmennithorph@state.tx.us	387 Buhler Crossing	18	18
19	Corrinne	Gutridge	cgutridgei@webmd.com	04021 Delaware Hill	19	19
20	Zaria	Dreigher	zdreigherj@linkedin.com	3709 Kinsman Center	20	20
21	Marja	Ventom	mventomk@amazonaws.com	046 Logan Place	21	21
22	Lorry	Henlon	lhenlonl@deviantart.com	53791 Westerfield Plaza	22	22
23	Guy	Kondratenko	gkondratenkom@cam.ac.uk	2 Gale Park	23	23
24	Patience	Bartusek	pbartusekn@ameblo.jp	47140 Gina Place	24	24
25	Raf	McCrostie	rmccrostieo@illinois.edu	47092 Waywood Place	25	25
26	Derry	Ellett	dellettp@uol.com.br	4 2nd Court	26	26
27	Terri	Willmont	twillmontq@163.com	61 Golf Alley	27	27
28	Germaine	Leates	gleatesr@barnesandnoble.com	1059 Dakota Plaza	28	28
29	Sharla	Marden	smardens@barnesandnoble.com	152 Vahlen Hill	29	29
30	Emmalee	Leisman	eleismant@vkontakte.ru	9 Bellgrove Circle	30	30
31	Cirillo	Linklater	clinklateru@state.tx.us	9 Fordem Alley	31	31
32	Karee	Salling	ksallingv@si.edu	98 Dawn Drive	32	32
33	April	Henrys	ahenrysw@sfgate.com	836 Buena Vista Road	33	33
34	Virginia	Reder	vrederx@cbsnews.com	29 American Drive	34	34
35	Nat	Scotting	nscottingy@cbslocal.com	062 Helena Street	35	35
36	Kip	McCowan	kmccowanz@loc.gov	436 Melby Point	36	36
37	Guendolen	Haking	ghaking10@vk.com	992 Charing Cross Pass	37	37
38	Margit	Darleston	mdarleston11@clickbank.net	41485 Annamark Pass	38	38
39	Franky	Mogey	fmogey12@1688.com	015 Welch Place	39	39
40	Friederike	Guerrier	fguerrier13@ovh.net	2877 Declaration Avenue	40	40
41	Mirella	Gillivrie	mgillivrie14@wordpress.com	7 Dexter Road	41	41
42	Kelsy	Miguel	kmiguel15@yahoo.com	52886 Eastwood Terrace	42	42
43	Dean	Talby	dtalby16@amazon.co.uk	59 Shelley Terrace	43	43
44	Ahmad	McDonald	amcdonald17@boston.com	695 Waywood Park	44	44
45	Verna	Crier	vcrier18@digg.com	8715 Southridge Avenue	45	45
46	Gladi	Wolsey	gwolsey19@oaic.gov.au	0810 Sherman Road	46	46
47	Blanch	Bullcock	bbullcock1a@amazon.co.uk	06139 Clemons Way	47	47
48	Valina	Cutress	vcutress1b@tinyurl.com	8 Laurel Alley	48	48
49	Misty	Kollatsch	mkollatsch1c@home.pl	89916 Lien Way	49	49
50	Alexandr	Jouanet	ajouanet1d@examiner.com	09 Kedzie Trail	50	50
51	Aloysia	Worlock	aworlock1e@independent.co.uk	8 Mendota Trail	51	51
52	Germayne	Petera	gpetera1f@edublogs.org	957 Lawn Street	52	52
53	Orelle	MacGee	omacgee1g@soup.io	98 Fulton Court	53	53
54	Collin	Durie	cdurie1h@sciencedaily.com	078 Swallow Trail	54	54
55	Lorens	Ivasechko	livasechko1i@sourceforge.net	030 Cardinal Circle	55	55
56	Patric	Dincke	pdincke1j@sakura.ne.jp	7 Stoughton Crossing	56	56
57	Joletta	Strelitzer	jstrelitzer1k@un.org	13582 Acker Circle	57	57
58	Vincents	Kener	vkener1l@discuz.net	740 Columbus Lane	58	58
59	Rhodia	Meakes	rmeakes1m@opensource.org	07406 Linden Parkway	59	59
60	Lynnelle	Fursland	lfursland1n@cisco.com	701 Calypso Pass	60	60
61	Auberta	Spurden	aspurden1o@businessweek.com	6 Butterfield Point	61	61
62	Keith	Lanphere	klanphere1p@yahoo.com	73 Waywood Parkway	62	62
63	Lorene	Caddan	lcaddan1q@boston.com	9 Bobwhite Place	63	63
64	Elfreda	Rothon	erothon1r@livejournal.com	30 Redwing Place	64	64
65	Nona	Edington	nedington1s@ow.ly	05803 Raven Junction	65	65
66	Justine	Sutworth	jsutworth1t@oracle.com	4 Stang Lane	66	66
67	Pepita	Lennon	plennon1u@businessinsider.com	63797 Jana Point	67	67
68	Tallou	Doddemeede	tdoddemeede1v@un.org	53910 Farwell Trail	68	68
69	Allix	Kretchmer	akretchmer1w@delicious.com	32 Sutherland Drive	69	69
70	Tilda	Safell	tsafell1x@dyndns.org	2 Homewood Lane	70	70
71	Minetta	Romand	mromand1y@vkontakte.ru	53720 Arizona Way	71	71
72	Isaiah	Tapping	itapping1z@redcross.org	89 Hollow Ridge Parkway	72	72
73	Calhoun	Paolino	cpaolino20@xing.com	1 Schmedeman Junction	73	73
74	Tuckie	Jansens	tjansens21@so-net.ne.jp	0031 Dexter Way	74	74
75	Lisa	Perrott	lperrott22@geocities.com	9 Ludington Plaza	75	75
76	Marlene	Kleinhausen	mkleinhausen23@histats.com	832 Buell Plaza	76	76
77	Rutherford	Inkle	rinkle24@kickstarter.com	552 Carey Crossing	77	77
78	Hector	McCague	hmccague25@artisteer.com	52499 Basil Circle	78	78
79	Lorne	Jarrett	ljarrett26@comcast.net	994 Armistice Court	79	79
80	Bruis	Serfati	bserfati27@accuweather.com	9580 Spenser Parkway	80	80
81	Tremaine	Bloy	tbloy28@berkeley.edu	036 Sheridan Lane	81	81
82	Baillie	Gaddesby	bgaddesby29@naver.com	2 Southridge Terrace	82	82
83	Clarke	Westhofer	cwesthofer2a@pbs.org	707 7th Place	83	83
84	Ogdon	Gentric	ogentric2b@yolasite.com	168 Stuart Parkway	84	84
85	Lotty	Dominichelli	ldominichelli2c@xrea.com	7 Northridge Alley	85	85
86	Costa	Thacker	cthacker2d@4shared.com	57 Shoshone Street	86	86
87	Karlyn	Custance	kcustance2e@over-blog.com	86 Porter Avenue	87	87
88	Janna	Brager	jbrager2f@behance.net	14289 Dixon Terrace	88	88
89	Massimiliano	Vamplus	mvamplus2g@photobucket.com	178 Blackbird Circle	89	89
90	Allie	Unsworth	aunsworth2h@fema.gov	47 Meadow Ridge Way	90	90
91	Olympe	Farran	ofarran2i@bizjournals.com	7 Artisan Court	91	91
92	Estevan	Bernuzzi	ebernuzzi2j@4shared.com	898 Melby Pass	92	92
93	Jeramie	Grane	jgrane2k@icq.com	961 Katie Center	93	93
94	Paco	Waldram	pwaldram2l@independent.co.uk	22609 Jana Hill	94	94
95	Ellsworth	Marchi	emarchi2m@shareasale.com	3 Mallory Lane	95	95
96	Bowie	Frascone	bfrascone2n@about.com	62 Cherokee Alley	96	96
97	Wolfie	Bartholomaus	wbartholomaus2o@cloudflare.com	945 Sutherland Pass	97	97
98	Brenn	Glanz	bglanz2p@ask.com	839 Wayridge Alley	98	98
99	Filbert	Summerill	fsummerill2q@hibu.com	1 Forster Court	99	99
100	Rock	Eard	reard2r@blogspot.com	1 Clyde Gallagher Point	100	100
101	Odessa	Dantesia	odantesia2s@networkadvertising.org	3 Ohio Avenue	101	101
102	Windy	Rougier	wrougier2t@ebay.co.uk	3354 Golf View Drive	102	102
103	Muffin	Saul	msaul2u@weather.com	5 Ludington Pass	103	103
104	Lauralee	Bartrop	lbartrop2v@techcrunch.com	4 Bunker Hill Alley	104	104
105	Bryana	Gane	bgane2w@wisc.edu	88 Waywood Point	105	105
106	Ruth	Speak	rspeak2x@so-net.ne.jp	7 West Place	106	106
107	Gaynor	Guyet	gguyet2y@vinaora.com	36151 Hoepker Crossing	107	107
108	Howard	Peasegood	hpeasegood2z@g.co	0 Onsgard Lane	108	108
109	Enriqueta	Haslock(e)	ehaslocke30@reverbnation.com	2 Stuart Road	109	109
110	Harold	Ivory	hivory31@mlb.com	914 Helena Park	110	110
111	Husain	Civitillo	hcivitillo32@nsw.gov.au	6570 Hayes Court	111	111
112	Jackie	Hassard	jhassard33@unesco.org	048 Hazelcrest Street	112	112
113	Hermann	Fetherstonhaugh	hfetherstonhaugh34@jigsy.com	74530 Rockefeller Center	113	113
114	Tatiana	Ginglell	tginglell35@amazon.com	49 Springs Crossing	114	114
115	Edwin	Edgar	eedgar36@usgs.gov	471 Katie Crossing	115	115
116	Jeanette	Litton	jlitton37@pagesperso-orange.fr	2 Dovetail Parkway	116	116
117	Bertha	Smitherham	bsmitherham38@vkontakte.ru	2107 Lotheville Way	117	117
118	Lawton	Braidon	lbraidon39@opensource.org	4492 Swallow Park	118	118
119	Darnell	Maffioni	dmaffioni3a@storify.com	8 Gulseth Street	119	119
120	Flin	Iglesia	figlesia3b@godaddy.com	2585 Leroy Lane	120	120
121	Pamella	Hunnicutt	phunnicutt3c@wufoo.com	17 Center Court	121	121
122	Marve	Angrick	mangrick3d@biglobe.ne.jp	883 Park Meadow Circle	122	122
123	Blair	Russo	brusso3e@chron.com	720 Rowland Pass	123	123
124	Adelina	MacCaughen	amaccaughen3f@yolasite.com	8203 Scott Way	124	124
125	Nanine	De Andisie	ndeandisie3g@yellowpages.com	4 Lien Street	125	125
126	Maggi	Itzhak	mitzhak3h@foxnews.com	865 Dennis Place	126	126
127	Madge	McCrum	mmccrum3i@dailymail.co.uk	9 Golf View Hill	127	127
128	Engracia	Renowden	erenowden3j@xinhuanet.com	9 Oak Center	128	128
129	Aime	Maudson	amaudson3k@ehow.com	484 Arrowood Circle	129	129
130	Pris	Leggat	pleggat3l@dell.com	57223 Maywood Road	130	130
131	Winifred	Peniello	wpeniello3m@artisteer.com	0 Straubel Parkway	131	131
132	Pearle	Kier	pkier3n@netlog.com	3816 Claremont Junction	132	132
133	Marshal	O'Bradden	mobradden3o@state.tx.us	667 Mayfield Crossing	133	133
134	Marcello	McLurg	mmclurg3p@vkontakte.ru	55 Quincy Trail	134	134
135	Crissy	Musto	cmusto3q@ehow.com	9 Kipling Place	135	135
136	Laurel	Summerscales	lsummerscales3r@wufoo.com	82212 Mayer Street	136	136
137	Tilly	Scotsbrook	tscotsbrook3s@yale.edu	349 Magdeline Circle	137	137
138	Ruggiero	Parmby	rparmby3t@ehow.com	4 Merrick Place	138	138
139	Brooks	Prestage	bprestage3u@mapquest.com	58 Fuller Place	139	139
140	Mallorie	Bohin	mbohin3v@loc.gov	25646 Talisman Terrace	140	140
141	Witty	Gerin	wgerin3w@1und1.de	583 Birchwood Avenue	141	141
142	Elwyn	Strathman	estrathman3x@networksolutions.com	64345 Bunker Hill Street	142	142
143	Babbette	Roggers	broggers3y@ocn.ne.jp	3832 Moose Point	143	143
144	Anya	Layman	alayman3z@example.com	6684 Sachs Drive	144	144
145	Arther	Lamputt	alamputt40@cloudflare.com	8083 Golden Leaf Way	145	145
146	Fowler	Seyffert	fseyffert41@scientificamerican.com	702 Acker Drive	146	146
147	Cindy	McMillan	cmcmillan42@mayoclinic.com	572 Thackeray Place	147	147
148	Tom	Heskins	theskins43@themeforest.net	45228 6th Court	148	148
149	Florri	Pye	fpye44@fda.gov	395 Charing Cross Drive	149	149
150	Leelah	Dalley	ldalley45@a8.net	901 Bay Center	150	150
151	Hermina	Davidai	hdavidai46@msn.com	5407 Dennis Center	151	151
152	Ambrose	Huggin	ahuggin47@tamu.edu	39 Colorado Parkway	152	152
153	Allene	Tozer	atozer48@tinypic.com	8 Tennessee Circle	153	153
154	Alejandra	Arkley	aarkley49@github.io	19 Mayfield Park	154	154
155	Ileana	Menat	imenat4a@pen.io	6 Buena Vista Drive	155	155
156	Doll	Minnis	dminnis4b@flickr.com	808 Sullivan Trail	156	156
157	Hestia	Andreolli	handreolli4c@ocn.ne.jp	16596 Loftsgordon Hill	157	157
158	Ephrayim	Lamlin	elamlin4d@google.nl	74054 Lighthouse Bay Circle	158	158
159	Brant	Bernhard	bbernhard4e@soundcloud.com	538 Haas Way	159	159
160	Xenos	Baumann	xbaumann4f@wikipedia.org	2 Mallard Court	160	160
161	Parrnell	Coltart	pcoltart4g@apache.org	373 Warbler Crossing	161	161
162	Luther	Marsters	lmarsters4h@wp.com	8114 Buena Vista Road	162	162
163	Ham	Birkinshaw	hbirkinshaw4i@gov.uk	54328 Becker Plaza	163	163
164	Marietta	Astie	mastie4j@xing.com	15559 Fremont Terrace	164	164
165	Thibaut	Rudloff	trudloff4k@clickbank.net	4 Burrows Junction	165	165
166	Wells	Ambage	wambage4l@barnesandnoble.com	643 Rockefeller Parkway	166	166
167	Karel	Dubique	kdubique4m@craigslist.org	3 Vermont Court	167	167
168	Jenda	Lawley	jlawley4n@google.com.hk	65730 Stephen Place	168	168
169	Charlot	Atterbury	catterbury4o@usda.gov	3 Canary Center	169	169
170	Wake	Gaddas	wgaddas4p@google.nl	2012 Little Fleur Court	170	170
171	Karie	Smither	ksmither4q@ovh.net	25 Bluejay Circle	171	171
172	Esme	Steely	esteely4r@nasa.gov	565 Aberg Parkway	172	172
173	Conni	Allchorne	callchorne4s@mapquest.com	237 Gina Terrace	173	173
174	Rhiamon	Abels	rabels4t@cbslocal.com	9266 Kings Park	174	174
175	Kristina	Bartoleyn	kbartoleyn4u@opensource.org	87 Hintze Junction	175	175
176	Afton	Wisam	awisam4v@feedburner.com	8346 Hagan Crossing	176	176
177	Sumner	Pischof	spischof4w@usgs.gov	28840 Pond Junction	177	177
178	Sharline	Skeermer	sskeermer4x@t.co	25 3rd Park	178	178
179	Ofelia	Paulon	opaulon4y@pen.io	15 Clarendon Avenue	179	179
180	Marcelia	Ebbles	mebbles4z@yellowpages.com	94 Service Plaza	180	180
181	Rasia	Behn	rbehn50@ycombinator.com	65 6th Trail	181	181
182	Keith	Humbey	khumbey51@skype.com	31 Waywood Avenue	182	182
183	Jere	Grund	jgrund52@hexun.com	82 Independence Way	183	183
184	Nowell	Bernardet	nbernardet53@abc.net.au	4251 Cardinal Road	184	184
185	Nissy	Mabbs	nmabbs54@google.es	73645 Thackeray Junction	185	185
186	Janetta	Larchiere	jlarchiere55@sohu.com	824 Toban Alley	186	186
187	Gus	Knatt	gknatt56@rakuten.co.jp	018 La Follette Street	187	187
188	Vernor	Alfuso	valfuso57@hibu.com	3444 Crownhardt Lane	188	188
189	Budd	Strettle	bstrettle58@bloglovin.com	0595 Myrtle Pass	189	189
190	Brod	Gabey	bgabey59@google.es	44526 Knutson Terrace	190	190
191	Juli	Philpotts	jphilpotts5a@indiatimes.com	95859 Mifflin Alley	191	191
192	Fidelia	Tayt	ftayt5b@so-net.ne.jp	43608 Brown Parkway	192	192
193	Franciskus	Rogliero	frogliero5c@biglobe.ne.jp	68 Lillian Park	193	193
194	Eba	Minocchi	eminocchi5d@psu.edu	36 Emmet Drive	194	194
195	Amory	Chipp	achipp5e@ustream.tv	46911 Dwight Circle	195	195
196	Ferd	Childe	fchilde5f@mapquest.com	0648 Golden Leaf Court	196	196
197	Joy	Stening	jstening5g@merriam-webster.com	1993 Stuart Circle	197	197
198	Nickie	Olden	nolden5h@psu.edu	12 Shelley Hill	198	198
199	Veradis	Frayn	vfrayn5i@tamu.edu	5 Surrey Drive	199	199
200	Henryetta	Crock	hcrock5j@blinklist.com	5 7th Road	200	200
\.


--
-- TOC entry 2995 (class 0 OID 16752)
-- Dependencies: 205
-- Data for Name: habillements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.habillements (id, nom, type, date_peremption) FROM stdin;
1	Athena	nam congue risus semper porta volutpat quam pede lobortis ligula	2021-07-17
2	Cleavland	congue eget semper rutrum nulla nunc purus phasellus	2021-11-19
3	Nicolas	cubilia curae nulla dapibus dolor vel	2021-07-24
4	Ardelia	sagittis sapien cum sociis natoque penatibus et magnis dis	2021-12-04
5	Egon	mauris morbi non lectus aliquam sit amet	2021-07-31
6	Ilaire	rutrum nulla nunc purus phasellus in felis donec semper	2021-10-21
7	Bernadine	erat fermentum justo nec condimentum neque sapien placerat ante	2022-01-16
8	Clementine	vitae mattis nibh ligula nec sem duis aliquam	2021-09-07
9	Nat	sodales scelerisque mauris sit amet eros suspendisse accumsan	2021-07-13
10	Dani	maecenas pulvinar lobortis est phasellus sit amet	2021-08-03
11	Randy	nibh in quis justo maecenas rhoncus aliquam lacus morbi	2021-09-30
12	Standford	semper interdum mauris ullamcorper purus	2021-12-19
13	Albertine	adipiscing elit proin risus praesent	2021-02-26
14	Van	gravida nisi at nibh in hac habitasse platea	2021-07-24
15	Concettina	pede posuere nonummy integer non velit donec diam neque	2021-11-08
16	Yardley	sapien non mi integer ac	2021-12-30
17	Allianora	dolor sit amet consectetuer adipiscing elit proin	2021-11-08
18	Ilyssa	suscipit nulla elit ac nulla sed vel enim sit amet	2021-05-03
19	Candace	praesent blandit lacinia erat vestibulum sed magna at nunc	2021-05-04
20	Annissa	venenatis turpis enim blandit mi in	2021-04-13
21	Merle	tortor sollicitudin mi sit amet lobortis sapien sapien non mi	2021-09-21
22	Vance	aliquet pulvinar sed nisl nunc rhoncus dui vel sem	2021-02-10
23	Merell	aliquet massa id lobortis convallis tortor	2021-03-05
24	Minta	morbi non quam nec dui luctus rutrum nulla tellus	2022-01-14
25	Nichol	libero nam dui proin leo odio porttitor id consequat	2021-08-05
26	Liana	sit amet eleifend pede libero	2021-03-10
27	Tore	interdum venenatis turpis enim blandit mi in porttitor pede	2021-03-23
28	Eamon	sagittis nam congue risus semper porta volutpat quam	2021-09-07
29	Lottie	phasellus id sapien in sapien iaculis congue	2021-04-20
30	Delmar	leo rhoncus sed vestibulum sit amet cursus id	2021-02-27
31	Karilynn	ligula vehicula consequat morbi a ipsum integer a	2021-06-08
32	Adams	posuere metus vitae ipsum aliquam non mauris morbi non	2021-05-26
33	Andonis	iaculis congue vivamus metus arcu	2021-01-23
34	Jonathon	orci nullam molestie nibh in lectus pellentesque at	2021-10-13
35	Alyson	in faucibus orci luctus et ultrices posuere cubilia	2021-07-17
36	Malva	sapien sapien non mi integer ac neque duis bibendum	2021-09-11
37	Carmine	morbi vel lectus in quam fringilla	2021-09-11
38	Raquela	ultrices vel augue vestibulum ante ipsum primis in	2021-03-20
39	Federico	semper interdum mauris ullamcorper purus sit	2021-07-31
40	Bil	pharetra magna ac consequat metus sapien ut	2021-02-07
41	Christian	libero non mattis pulvinar nulla pede ullamcorper augue a suscipit	2021-10-21
42	Junina	lacus morbi sem mauris laoreet	2021-01-28
43	Micah	hac habitasse platea dictumst aliquam	2021-10-06
44	Tyrone	nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum	2021-04-25
45	Clemmy	nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum	2021-11-01
46	Cathe	nulla elit ac nulla sed vel enim sit amet nunc	2021-11-15
47	Inga	vivamus in felis eu sapien cursus vestibulum proin eu mi	2021-07-25
48	Pauly	nullam orci pede venenatis non sodales sed tincidunt	2022-01-05
49	Fanni	sit amet consectetuer adipiscing elit proin risus praesent lectus	2021-09-09
50	Paula	aliquam sit amet diam in	2021-04-14
51	Shell	non ligula pellentesque ultrices phasellus id sapien in	2021-11-25
52	Arda	mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus	2021-07-03
53	Martyn	sit amet diam in magna bibendum	2021-04-06
54	Temp	sed justo pellentesque viverra pede ac diam cras pellentesque	2021-08-07
55	Arney	semper porta volutpat quam pede lobortis ligula sit amet eleifend	2021-01-29
56	Barbara-anne	ante ipsum primis in faucibus orci luctus	2021-08-14
57	Mitch	dapibus duis at velit eu	2021-06-24
58	Stephanus	ante vestibulum ante ipsum primis in faucibus orci luctus et	2021-06-10
59	Dirk	in congue etiam justo etiam pretium	2021-05-21
60	Alvie	curae donec pharetra magna vestibulum aliquet ultrices erat	2021-11-18
61	Sara	et tempus semper est quam pharetra magna ac consequat	2021-12-30
62	Dwayne	non quam nec dui luctus	2021-03-06
63	Gallagher	nunc donec quis orci eget orci vehicula condimentum	2021-11-05
64	Kalina	congue elementum in hac habitasse	2021-10-14
65	Kennith	maecenas ut massa quis augue luctus tincidunt	2021-12-09
66	Aron	arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean	2021-05-08
67	Gibbie	integer tincidunt ante vel ipsum praesent blandit lacinia	2021-10-11
68	Violante	turpis integer aliquet massa id lobortis	2021-08-09
69	Ansell	vestibulum ac est lacinia nisi venenatis tristique	2021-04-08
70	Addia	nisl nunc nisl duis bibendum felis	2021-11-25
71	Cyrillus	amet erat nulla tempus vivamus in felis eu sapien cursus	2021-09-05
72	Ode	nullam orci pede venenatis non	2022-01-21
73	Welch	pede malesuada in imperdiet et commodo vulputate justo in blandit	2021-04-19
74	Ludvig	augue vestibulum ante ipsum primis in faucibus orci	2021-02-25
75	Tomasine	pretium iaculis diam erat fermentum justo nec condimentum neque sapien	2021-01-28
76	Gerik	elit proin interdum mauris non	2021-09-09
77	Padraic	nulla quisque arcu libero rutrum ac lobortis vel dapibus at	2021-08-27
78	Tabbi	vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis	2021-05-10
79	Frasco	felis donec semper sapien a	2021-06-12
80	Adriaens	bibendum imperdiet nullam orci pede venenatis	2022-01-20
81	Gelya	morbi ut odio cras mi pede malesuada	2021-02-14
82	Gwenette	consequat nulla nisl nunc nisl duis	2021-03-16
83	Jaymee	lacus purus aliquet at feugiat non pretium quis lectus suspendisse	2021-09-11
84	Letizia	luctus et ultrices posuere cubilia curae nulla dapibus dolor vel	2021-06-18
85	Rhonda	pharetra magna ac consequat metus sapien	2022-01-08
86	Jewell	sem praesent id massa id nisl venenatis	2021-05-08
87	Marylynne	cum sociis natoque penatibus et magnis dis parturient	2021-09-19
88	Cobbie	posuere metus vitae ipsum aliquam non	2021-08-29
89	Simone	tempus vivamus in felis eu sapien cursus vestibulum	2021-05-30
90	Rosalyn	sapien urna pretium nisl ut volutpat	2021-07-09
91	Minta	tristique fusce congue diam id ornare imperdiet sapien urna pretium	2021-03-29
92	Clemence	sapien varius ut blandit non interdum in ante vestibulum ante	2021-06-15
93	Teddy	lectus vestibulum quam sapien varius ut blandit non interdum in	2021-02-11
94	Kristan	ut volutpat sapien arcu sed augue aliquam erat	2021-06-22
95	Samson	ipsum praesent blandit lacinia erat vestibulum sed magna at	2021-03-31
96	Meyer	integer ac leo pellentesque ultrices mattis odio donec	2021-09-17
97	Bale	justo lacinia eget tincidunt eget tempus vel	2021-04-12
98	Miner	id sapien in sapien iaculis	2021-06-10
99	Dynah	commodo vulputate justo in blandit ultrices	2021-11-07
100	Humfried	duis faucibus accumsan odio curabitur convallis duis consequat dui nec	2021-03-23
101	Trudy	tempus vel pede morbi porttitor	2021-02-01
102	Hercules	orci eget orci vehicula condimentum curabitur in	2021-12-30
103	Selig	venenatis tristique fusce congue diam id ornare imperdiet	2021-12-15
104	Maegan	mauris eget massa tempor convallis	2021-06-22
105	Brandais	magnis dis parturient montes nascetur ridiculus mus	2021-07-14
106	Mirabella	aenean sit amet justo morbi ut odio	2021-10-04
107	Zechariah	pellentesque ultrices phasellus id sapien in sapien iaculis congue	2021-08-27
108	Arlette	libero ut massa volutpat convallis morbi odio odio elementum eu	2021-02-16
109	Lucilia	cras mi pede malesuada in	2021-08-29
110	Aura	vulputate justo in blandit ultrices enim lorem ipsum	2021-06-22
111	Chelsie	ac lobortis vel dapibus at diam nam tristique tortor eu	2021-06-16
112	Shem	lobortis est phasellus sit amet erat nulla tempus vivamus in	2021-11-08
113	Melisent	pellentesque at nulla suspendisse potenti cras in	2021-06-23
114	Barris	sit amet erat nulla tempus vivamus in felis eu sapien	2021-03-26
115	Nicko	magna vulputate luctus cum sociis natoque	2021-04-01
116	Connor	at turpis a pede posuere nonummy integer	2021-08-09
117	Shanie	sagittis sapien cum sociis natoque	2021-07-26
118	Daryn	ac lobortis vel dapibus at diam nam tristique tortor eu	2021-02-13
119	Zack	sollicitudin vitae consectetuer eget rutrum at	2021-02-04
120	Fonz	et ultrices posuere cubilia curae duis faucibus accumsan odio	2021-04-14
121	Claudian	lobortis ligula sit amet eleifend	2021-10-24
122	Normie	augue a suscipit nulla elit ac nulla	2021-08-21
123	Mayor	odio cras mi pede malesuada	2021-07-16
124	Honor	nascetur ridiculus mus vivamus vestibulum sagittis	2021-10-09
125	Alicea	elit ac nulla sed vel enim	2021-07-16
126	Gal	accumsan tortor quis turpis sed ante vivamus tortor duis mattis	2021-06-19
127	Berrie	in lectus pellentesque at nulla suspendisse potenti	2021-08-26
128	Miof mela	ultrices vel augue vestibulum ante ipsum primis in faucibus orci	2022-01-08
129	Tannie	nullam orci pede venenatis non sodales sed tincidunt eu	2021-08-07
130	Ettie	rutrum neque aenean auctor gravida	2021-12-25
131	Modesta	leo odio condimentum id luctus	2021-04-16
132	Kyle	varius ut blandit non interdum in ante vestibulum ante ipsum	2021-12-20
133	Tadeo	ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue	2021-08-04
134	Seline	egestas metus aenean fermentum donec	2021-09-26
135	Prue	accumsan felis ut at dolor quis odio	2021-06-06
136	Georgia	erat tortor sollicitudin mi sit amet lobortis sapien sapien non	2021-12-13
137	Marita	non sodales sed tincidunt eu felis fusce	2021-08-01
138	Marlena	morbi a ipsum integer a nibh in quis	2021-06-29
139	Araldo	nulla ac enim in tempor turpis nec	2021-05-27
140	Carolan	imperdiet nullam orci pede venenatis non sodales sed	2021-07-12
141	Anett	sit amet erat nulla tempus vivamus in felis eu	2021-02-03
142	Geoffrey	vel pede morbi porttitor lorem id ligula	2021-09-06
143	Miguela	consequat in consequat ut nulla sed	2022-01-20
144	Brandon	posuere cubilia curae mauris viverra diam	2022-01-04
145	Clim	nullam varius nulla facilisi cras	2021-01-31
146	Thalia	suspendisse potenti nullam porttitor lacus at turpis donec	2021-10-18
147	Dionysus	ac nulla sed vel enim sit amet nunc viverra	2021-11-12
148	Caria	lectus pellentesque eget nunc donec quis orci eget orci	2021-08-12
149	Isaiah	tortor duis mattis egestas metus aenean fermentum donec ut	2021-03-18
150	Sebastien	sed sagittis nam congue risus	2021-02-01
151	Anny	mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor	2021-03-19
152	Kaia	eu mi nulla ac enim in tempor turpis nec	2021-12-26
153	Karlen	donec diam neque vestibulum eget	2021-06-12
154	Casie	id consequat in consequat ut nulla	2021-11-02
155	Berke	aliquam convallis nunc proin at	2021-03-31
156	Eddie	purus phasellus in felis donec semper sapien a libero nam	2021-06-21
157	Meara	eget nunc donec quis orci eget orci	2021-03-29
158	Angelika	proin eu mi nulla ac enim in	2021-11-10
159	Temp	morbi ut odio cras mi	2021-03-29
160	Sander	molestie nibh in lectus pellentesque at nulla suspendisse	2021-10-03
161	Tommie	vulputate vitae nisl aenean lectus pellentesque eget nunc donec	2021-08-08
162	Mellisa	nibh ligula nec sem duis aliquam convallis nunc	2021-05-31
163	Francesco	massa id nisl venenatis lacinia aenean sit amet justo	2021-10-15
164	Tabb	nulla neque libero convallis eget eleifend luctus	2021-12-02
165	Nadine	pede ullamcorper augue a suscipit nulla elit ac nulla	2021-05-29
166	Kesley	lacinia nisi venenatis tristique fusce congue diam	2021-06-09
167	Danica	aenean sit amet justo morbi ut odio	2021-03-30
168	Johnny	vitae ipsum aliquam non mauris morbi	2021-05-21
169	Felic	elit proin interdum mauris non ligula pellentesque ultrices	2021-05-30
170	Reg	eget nunc donec quis orci eget orci	2021-03-10
171	Maddie	consequat in consequat ut nulla sed accumsan	2021-07-23
172	Tandi	lobortis vel dapibus at diam	2021-05-23
173	Hakeem	in hac habitasse platea dictumst	2021-01-23
174	Zonda	luctus et ultrices posuere cubilia	2021-01-30
175	William	ac leo pellentesque ultrices mattis odio donec	2021-09-09
176	Roze	diam cras pellentesque volutpat dui maecenas	2022-01-12
177	Murdoch	nisl duis bibendum felis sed interdum venenatis turpis	2021-03-14
178	Bonnie	nunc rhoncus dui vel sem sed sagittis nam congue risus	2021-01-29
179	Hedwig	nibh in lectus pellentesque at nulla suspendisse	2021-06-28
180	Ericka	molestie sed justo pellentesque viverra pede ac diam cras pellentesque	2021-10-13
181	Sergent	nam ultrices libero non mattis pulvinar nulla pede ullamcorper	2021-07-22
182	Ethe	sapien urna pretium nisl ut volutpat sapien	2021-07-01
183	Padget	justo sollicitudin ut suscipit a feugiat et eros	2021-12-22
184	Teodoor	risus dapibus augue vel accumsan tellus nisi eu orci mauris	2021-08-09
185	My	risus auctor sed tristique in tempus sit amet	2021-10-14
186	Zared	convallis nulla neque libero convallis eget eleifend luctus ultricies	2021-06-02
187	Maddie	justo etiam pretium iaculis justo in hac habitasse platea	2021-12-21
188	Cullie	consequat ut nulla sed accumsan felis ut	2021-12-05
189	Kiah	nisl nunc rhoncus dui vel sem	2021-05-14
190	Susanna	eleifend pede libero quis orci nullam	2021-02-10
191	Brucie	quis orci nullam molestie nibh	2021-09-16
192	Lise	morbi porttitor lorem id ligula suspendisse ornare consequat lectus in	2021-04-28
193	Neely	lacus morbi sem mauris laoreet ut	2022-01-09
194	Carissa	amet eleifend pede libero quis orci	2021-07-29
195	Nissy	amet nulla quisque arcu libero rutrum ac lobortis	2021-05-05
196	Chelsae	nisl aenean lectus pellentesque eget nunc donec	2021-11-16
197	Gwenny	nunc commodo placerat praesent blandit	2021-02-17
198	Lacy	pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus	2021-11-28
199	Henrietta	pulvinar lobortis est phasellus sit amet erat nulla	2021-11-27
200	Olly	hac habitasse platea dictumst maecenas ut massa	2021-04-25
\.


--
-- TOC entry 2993 (class 0 OID 16741)
-- Dependencies: 203
-- Data for Name: medicaments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medicaments (id, nom, type, date_peremption) FROM stdin;
1	Rebbecca	fusce consequat nulla nisl nunc nisl duis bibendum felis sed	2021-05-28
2	Travis	vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla	2021-01-29
3	Ines	lectus suspendisse potenti in eleifend quam a odio	2021-05-08
4	Merralee	diam vitae quam suspendisse potenti nullam porttitor lacus	2021-02-15
5	Felipe	eget tempus vel pede morbi porttitor lorem id	2021-11-11
6	Annecorinne	tellus semper interdum mauris ullamcorper purus sit amet nulla quisque	2021-01-23
7	Noelyn	morbi a ipsum integer a	2021-12-26
8	Minny	iaculis diam erat fermentum justo nec	2021-02-02
9	Norene	gravida nisi at nibh in hac	2021-04-27
10	Nelly	et eros vestibulum ac est lacinia nisi	2021-02-25
11	Hazel	vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis	2021-04-22
12	Samara	vestibulum ante ipsum primis in faucibus orci	2022-01-14
13	Becca	luctus et ultrices posuere cubilia curae nulla dapibus dolor	2021-09-18
14	Lewes	felis ut at dolor	2021-07-09
15	Iggy	aliquet maecenas leo odio condimentum id luctus	2021-03-06
16	Nissa	id nisl venenatis lacinia aenean sit amet justo	2021-10-07
17	Jerome	ut rhoncus aliquet pulvinar sed	2021-09-18
18	Arielle	id ornare imperdiet sapien	2021-11-21
19	Ursuline	nisi vulputate nonummy maecenas tincidunt	2021-07-14
20	Dall	velit nec nisi vulputate nonummy maecenas	2021-06-24
21	Thebault	faucibus cursus urna ut tellus nulla ut erat id mauris vulputate	2021-12-26
22	Sylvia	lobortis sapien sapien non	2021-09-19
23	Opaline	ullamcorper augue a suscipit nulla elit	2021-11-29
24	Orsola	urna ut tellus nulla ut	2021-12-26
25	Sylvester	mi nulla ac enim in tempor turpis nec euismod scelerisque quam	2021-08-22
26	Ulises	iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae	2021-09-08
27	Kora	scelerisque quam turpis adipiscing	2021-03-30
28	Hatty	sit amet eleifend pede	2021-11-05
29	Emory	blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit	2021-08-11
30	Catlee	cras in purus eu magna	2021-09-10
31	Dale	eleifend luctus ultricies eu nibh quisque id	2021-03-11
32	Gabbi	congue elementum in hac	2021-04-05
33	Ruthann	faucibus orci luctus et ultrices posuere cubilia curae donec	2021-07-29
34	Mabel	eget congue eget semper rutrum nulla nunc purus phasellus in felis	2021-03-02
35	Merv	nisi venenatis tristique fusce congue diam id ornare imperdiet sapien	2021-04-03
36	Velvet	eget elit sodales scelerisque mauris sit amet	2021-12-19
37	Benita	quam pede lobortis ligula sit amet eleifend	2021-12-23
38	Ludovico	viverra eget congue eget semper rutrum	2021-07-06
39	Orly	venenatis lacinia aenean sit amet justo morbi	2021-10-09
40	Darby	at nunc commodo placerat praesent	2021-08-28
41	Andrey	ipsum aliquam non mauris morbi non lectus aliquam sit amet diam	2021-08-15
42	Ronna	pede ullamcorper augue a suscipit	2021-04-14
43	Ulrika	ipsum ac tellus semper interdum mauris ullamcorper purus sit	2021-02-27
44	Vail	nec nisi vulputate nonummy maecenas tincidunt lacus at	2021-03-16
45	Farrand	nisl nunc rhoncus dui vel sem	2021-02-21
46	Winnie	ultrices phasellus id sapien in sapien iaculis congue vivamus	2021-08-02
47	Matelda	rhoncus dui vel sem sed sagittis nam congue	2021-05-14
48	Doyle	scelerisque quam turpis adipiscing lorem vitae mattis	2021-02-12
49	Laney	purus sit amet nulla quisque arcu libero rutrum ac	2021-09-25
50	Andre	vulputate ut ultrices vel augue	2021-05-21
51	Skippy	augue aliquam erat volutpat in	2021-07-05
52	Arlette	nisi at nibh in hac habitasse platea	2021-07-16
53	Cyril	magnis dis parturient montes nascetur ridiculus mus etiam vel	2021-06-19
54	Randi	semper sapien a libero nam dui proin leo odio porttitor id	2021-10-27
55	Freddy	erat tortor sollicitudin mi sit amet	2021-09-10
56	Lianna	at dolor quis odio consequat varius integer ac	2021-12-01
57	Jase	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere	2021-04-24
58	Gael	eu orci mauris lacinia sapien quis libero	2021-08-08
59	Bent	magna vulputate luctus cum sociis natoque penatibus et magnis	2021-05-09
60	Robers	cum sociis natoque penatibus	2021-07-11
61	Lauritz	vitae quam suspendisse potenti nullam porttitor	2021-10-06
62	Sherwynd	fusce lacus purus aliquet at feugiat non pretium	2022-01-10
63	Jakob	in consequat ut nulla sed	2021-04-14
64	Marjy	accumsan tortor quis turpis sed ante vivamus tortor	2021-03-11
65	Sharline	risus auctor sed tristique in tempus sit amet sem fusce consequat	2021-04-26
66	Templeton	ut suscipit a feugiat et eros vestibulum ac est	2021-12-21
67	Brade	quam a odio in hac	2021-08-26
68	Jenelle	sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes	2021-03-01
69	Luigi	ridiculus mus vivamus vestibulum sagittis sapien cum sociis	2021-01-31
70	Donalt	congue elementum in hac habitasse platea dictumst morbi vestibulum velit id	2021-09-19
71	Adena	montes nascetur ridiculus mus vivamus vestibulum sagittis sapien	2021-04-25
72	Charmaine	nisl ut volutpat sapien arcu	2021-12-29
73	Barron	sapien a libero nam dui proin leo odio porttitor id consequat	2021-02-13
74	Letta	vestibulum quam sapien varius ut blandit non interdum in ante	2021-03-17
75	Carola	faucibus orci luctus et ultrices posuere cubilia curae nulla	2021-09-22
76	Stephine	nunc vestibulum ante ipsum primis in	2021-09-04
77	Leon	habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla	2021-01-25
78	Jeremiah	orci mauris lacinia sapien quis libero nullam sit	2021-04-06
79	Olimpia	aliquam lacus morbi quis tortor id nulla ultrices	2021-02-15
80	Janel	tortor quis turpis sed ante vivamus tortor duis	2021-10-16
81	Kennith	justo nec condimentum neque sapien placerat ante nulla justo aliquam quis	2021-12-29
82	Lennard	sapien cursus vestibulum proin eu mi	2021-10-23
83	Pedro	ac leo pellentesque ultrices	2021-01-31
84	Burton	praesent id massa id nisl	2021-09-22
85	Gauthier	at ipsum ac tellus semper interdum mauris ullamcorper	2021-04-23
86	Zondra	nulla ut erat id	2021-04-14
87	Jorey	mattis pulvinar nulla pede ullamcorper augue a	2021-03-01
88	Halette	rhoncus dui vel sem sed sagittis nam congue risus semper porta	2021-12-15
89	Heddie	a odio in hac habitasse platea dictumst maecenas ut massa	2021-08-25
90	Terry	orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae	2022-01-14
91	Edlin	eleifend quam a odio in hac habitasse platea	2021-04-08
92	Ellynn	scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed	2021-05-24
93	Caitrin	volutpat convallis morbi odio odio elementum	2021-04-11
94	Barnaby	posuere metus vitae ipsum aliquam non mauris morbi	2021-11-27
95	Dominica	nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit	2021-07-20
96	Percival	et magnis dis parturient montes nascetur ridiculus mus vivamus	2021-01-29
97	Kerk	eu mi nulla ac enim in	2022-01-17
98	Elbertina	odio odio elementum eu interdum	2021-12-01
99	Myrilla	praesent id massa id nisl venenatis lacinia aenean sit amet	2021-12-19
100	Rubin	nisi venenatis tristique fusce congue diam id	2021-10-20
101	Megen	suscipit a feugiat et eros vestibulum ac est	2022-01-04
102	Rowe	sed justo pellentesque viverra pede ac diam cras pellentesque volutpat	2021-12-24
103	Julietta	justo eu massa donec dapibus duis at velit	2021-10-20
104	Storm	amet sem fusce consequat nulla nisl nunc	2021-10-01
105	Mamie	proin risus praesent lectus vestibulum quam sapien varius ut	2021-07-12
106	Evvie	ante vestibulum ante ipsum primis in faucibus orci luctus	2021-04-09
107	Abbey	dictumst morbi vestibulum velit id pretium iaculis diam erat	2021-02-15
108	Elvera	odio elementum eu interdum eu tincidunt in leo	2022-01-10
109	Lusa	amet nulla quisque arcu libero rutrum ac	2021-07-12
110	Mal	ligula suspendisse ornare consequat lectus in est risus auctor	2021-09-14
111	Daron	etiam vel augue vestibulum rutrum	2022-01-11
112	Winslow	nulla quisque arcu libero rutrum ac lobortis vel dapibus	2021-02-12
113	Orsola	viverra dapibus nulla suscipit ligula in lacus	2021-11-12
114	Olav	viverra pede ac diam cras	2021-07-22
115	Sharia	vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed	2021-05-12
116	Toinette	morbi porttitor lorem id ligula	2021-04-03
117	Laurene	tempus sit amet sem fusce consequat nulla nisl	2021-04-01
118	Kelcie	in quam fringilla rhoncus mauris enim leo	2021-02-26
119	Hermina	gravida sem praesent id massa id nisl venenatis lacinia aenean sit	2022-01-05
120	Jade	nibh in hac habitasse	2022-01-04
121	Raddy	metus aenean fermentum donec ut mauris	2021-03-10
122	Cornie	mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante	2021-09-08
123	Kele	adipiscing elit proin interdum mauris non ligula	2021-11-24
124	Agnella	posuere metus vitae ipsum aliquam non mauris morbi	2021-04-22
125	Rafaello	imperdiet nullam orci pede venenatis non	2021-04-14
126	Stephie	odio donec vitae nisi nam ultrices libero non	2021-06-13
127	Obed	volutpat eleifend donec ut dolor morbi vel lectus in	2021-08-09
128	Dorelia	consequat morbi a ipsum	2021-02-22
129	Laryssa	pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus	2021-09-10
130	Nannette	elit ac nulla sed vel enim sit amet nunc viverra dapibus	2021-12-15
131	Dominica	justo in blandit ultrices enim	2021-06-06
132	Edvard	amet cursus id turpis integer aliquet massa	2021-02-25
133	Nari	sollicitudin ut suscipit a feugiat et eros	2021-02-21
134	Salomi	placerat praesent blandit nam nulla integer	2021-11-24
135	Ernie	ligula nec sem duis aliquam convallis nunc proin at turpis	2021-04-01
136	Corry	tortor sollicitudin mi sit amet lobortis sapien	2021-07-30
137	Floria	ut erat curabitur gravida nisi at nibh	2021-05-20
138	Annetta	aliquam augue quam sollicitudin vitae consectetuer	2021-02-03
139	Whitman	maecenas rhoncus aliquam lacus morbi quis tortor	2021-10-27
140	Hetty	tortor risus dapibus augue vel accumsan tellus nisi	2021-08-26
141	Amelita	dolor sit amet consectetuer adipiscing	2021-12-24
142	Barron	rhoncus aliquam lacus morbi	2021-03-07
143	Esra	posuere cubilia curae nulla dapibus	2021-10-04
144	Lynnette	justo morbi ut odio cras mi pede	2021-03-19
145	Colleen	in faucibus orci luctus et ultrices	2021-04-01
146	Clare	sapien urna pretium nisl ut volutpat sapien arcu	2021-04-14
147	Freddy	nonummy integer non velit donec diam neque vestibulum eget vulputate ut	2021-11-26
148	Isaak	ultrices phasellus id sapien in sapien iaculis congue vivamus metus	2021-08-27
149	Fanchon	et ultrices posuere cubilia curae nulla dapibus dolor	2021-11-29
150	Obidiah	odio curabitur convallis duis consequat dui nec nisi	2021-04-27
151	Abey	velit nec nisi vulputate nonummy maecenas	2021-01-27
152	Oliy	scelerisque mauris sit amet eros suspendisse accumsan tortor quis	2021-11-01
153	Paola	faucibus orci luctus et ultrices posuere	2021-08-07
154	Hortense	ipsum dolor sit amet consectetuer	2021-09-22
155	Cati	nunc nisl duis bibendum felis sed interdum venenatis	2021-05-31
156	Porter	habitasse platea dictumst morbi vestibulum velit id pretium	2021-04-04
157	Augustus	sed interdum venenatis turpis enim blandit	2021-04-29
158	Phoebe	non quam nec dui luctus	2021-05-21
159	Magdalena	donec odio justo sollicitudin ut suscipit a feugiat	2021-07-26
160	Christina	erat id mauris vulputate	2022-01-14
161	Jarred	nisi volutpat eleifend donec ut dolor	2021-02-20
162	Devan	in faucibus orci luctus et ultrices posuere cubilia curae nulla	2021-03-25
163	Ashly	iaculis congue vivamus metus arcu adipiscing molestie hendrerit	2021-11-28
164	Dorrie	praesent id massa id nisl venenatis lacinia	2021-03-01
165	Amitie	libero nam dui proin leo	2021-11-15
166	Stephine	vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus	2021-11-24
167	Barnett	dolor quis odio consequat varius integer ac leo pellentesque ultrices	2021-08-26
168	Beret	id nisl venenatis lacinia aenean	2021-12-09
169	Ellette	donec ut mauris eget massa tempor	2021-04-19
170	Llywellyn	nulla tellus in sagittis dui vel	2021-10-01
171	Jyoti	commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit	2021-12-16
172	Salomon	mauris sit amet eros suspendisse	2021-12-01
173	Traver	ultrices posuere cubilia curae mauris viverra diam vitae quam	2021-03-14
174	Lynnette	in quis justo maecenas	2021-03-07
175	Doe	vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris	2021-06-10
176	Cesar	vestibulum aliquet ultrices erat	2021-04-10
177	Kristopher	turpis adipiscing lorem vitae mattis nibh ligula	2021-09-04
178	Prinz	penatibus et magnis dis parturient montes nascetur ridiculus mus	2021-02-26
179	Sal	sem sed sagittis nam congue	2021-09-28
180	Dennison	tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat	2021-06-05
181	Rosamond	aliquam sit amet diam in magna bibendum imperdiet nullam	2021-04-05
182	Nehemiah	integer aliquet massa id	2021-11-30
183	Antonino	dapibus augue vel accumsan	2022-01-19
184	Jammie	in lectus pellentesque at	2022-01-08
185	Keane	pharetra magna vestibulum aliquet ultrices erat	2021-10-10
186	Willi	scelerisque mauris sit amet eros suspendisse accumsan tortor	2022-01-12
187	Kain	vulputate justo in blandit ultrices enim lorem	2021-03-12
188	Charley	mi sit amet lobortis	2021-06-30
189	Corney	at dolor quis odio consequat	2021-10-03
190	Teodoor	et commodo vulputate justo in blandit ultrices enim lorem ipsum	2021-07-26
191	Rafferty	semper interdum mauris ullamcorper purus sit amet nulla	2021-10-08
192	Gladi	ipsum dolor sit amet consectetuer	2021-03-24
193	Loren	mattis pulvinar nulla pede ullamcorper augue	2021-07-17
194	Cahra	enim sit amet nunc viverra dapibus nulla	2021-12-09
195	Pancho	nisl duis bibendum felis sed	2021-10-14
196	Tomasina	dui vel nisl duis ac nibh fusce lacus purus	2021-05-15
197	Hermon	purus eu magna vulputate	2021-12-13
198	Laney	cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin	2021-09-05
199	Zacharia	id massa id nisl venenatis lacinia	2021-06-12
200	Christophorus	id lobortis convallis tortor risus dapibus augue vel	2021-03-16
\.


--
-- TOC entry 3006 (class 0 OID 0)
-- Dependencies: 206
-- Name: client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_id_seq', 1, false);


--
-- TOC entry 3007 (class 0 OID 0)
-- Dependencies: 204
-- Name: habillements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.habillements_id_seq', 1, false);


--
-- TOC entry 3008 (class 0 OID 0)
-- Dependencies: 202
-- Name: medicaments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.medicaments_id_seq', 1, false);


--
-- TOC entry 2863 (class 2606 OID 16846)
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);


--
-- TOC entry 2861 (class 2606 OID 16760)
-- Name: habillements habillements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.habillements
    ADD CONSTRAINT habillements_pkey PRIMARY KEY (id);


--
-- TOC entry 2859 (class 2606 OID 16749)
-- Name: medicaments medicaments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicaments
    ADD CONSTRAINT medicaments_pkey PRIMARY KEY (id);


--
-- TOC entry 2864 (class 2606 OID 16847)
-- Name: client client_id_habillements_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_id_habillements_fkey FOREIGN KEY (id_habillements) REFERENCES public.habillements(id);


--
-- TOC entry 2865 (class 2606 OID 16852)
-- Name: client client_id_medicaments_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_id_medicaments_fkey FOREIGN KEY (id_medicaments) REFERENCES public.medicaments(id);


-- Completed on 2022-01-27 16:18:43 WAT

--
-- PostgreSQL database dump complete
--

