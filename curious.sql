--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: chiori
--

INSERT INTO posts VALUES ('OA1NMA1EK', 'cg092m', '1402898011', 'cosplay,acen 2014,acen,MLP,MLP:FiM,vinyl scratch,octavia', '', '<p>What else can be said when the most amazing (your first and only) girlfriend in your life does matching cosplays/lolitas two days in a row, amazing thats what. We cosplayed Vinyl Scratch and Octavia from My Little Pony on Friday. We easily got 10+ pict', 'http://24.media.tumblr.com/501729c11ddf3536ae4b9ec4a5ecf6b7/tumblr_n5rkbu76CI1rf20blo1_1280.jpg');
INSERT INTO posts VALUES ('NSGORCFS2', 'rp014a', '1402951253', 'Lolita,Pirate,Fashion', '', 'Pirate lolita. &nbsp;I approve of this.', 'http://37.media.tumblr.com/24f7ce67b61b616cf325a9db8737176a/tumblr_n6f7nr5H0N1qh0pfwo1_500.jpg');
INSERT INTO posts VALUES ('ZC5OWA86D', 'cg092m', '1402951110', 'Growing old,Pain', '', 'One of the scariest things is when you go to your parents and complain about pains in which your parents respond ?I know how you feel, I had that pain last week?. Of course my next question is ?Are these pains common for you??. I?m about ready to cry and ', '');


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO schema_migrations VALUES ('20140714003437');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO users VALUES (1, 'Chiori Greene', 'chiorigreene@gmail.com', '76c1ce989af5e6d97a9ddb03e857256882a1654e01457d0592e304b080ee9a85', '0821083bc17842b9daaf73d1ba28b612a49eec3ea28cd2fca07a1b9097e6658e', '2014-07-14 18:54:58.38131', '2014-07-14 18:54:58.38131', 'cg092m', 'http://api.tumblr.com/v2/blog/tumblr.chiorichan.com/avatar');
INSERT INTO users VALUES (2, 'Rachel Petersen', 'elfinpen@gmail.com', '76c1ce989af5e6d97a9ddb03e857256882a1654e01457d0592e304b080ee9a85', '0821083bc17842b9daaf73d1ba28b612a49eec3ea28cd2fca07a1b9097e6658e', '2014-07-14 18:54:58.38131', '2014-07-14 18:54:58.38131', 'rp014a', 'http://api.tumblr.com/v2/blog/leahsama.tumblr.com/avatar');


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('users_id_seq', 2, true);


--
-- PostgreSQL database dump complete
--

