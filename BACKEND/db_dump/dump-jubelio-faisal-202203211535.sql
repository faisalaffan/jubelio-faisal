toc.dat                                                                                             0000600 0004000 0002000 00000005265 14216034331 0014444 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       "    #                z            jubelio-faisal    14.2 (Debian 14.2-1.pgdg110+1)    14.1     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         ?           1262    172033    jubelio-faisal    DATABASE     d   CREATE DATABASE "jubelio-faisal" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
     DROP DATABASE "jubelio-faisal";
                root    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                root    false         ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   root    false    3         ?            1259    172035    product    TABLE     ?   CREATE TABLE public.product (
    id_product bigint NOT NULL,
    name character varying,
    sku character varying,
    product_no character varying,
    "desc" text
);
    DROP TABLE public.product;
       public         heap    root    false    3         ?            1259    172042    product_id_product_seq    SEQUENCE        CREATE SEQUENCE public.product_id_product_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_id_product_seq;
       public          root    false    3    209         ?           0    0    product_id_product_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_id_product_seq OWNED BY public.product.id_product;
          public          root    false    210         _           2604    172043    product id_product    DEFAULT     x   ALTER TABLE ONLY public.product ALTER COLUMN id_product SET DEFAULT nextval('public.product_id_product_seq'::regclass);
 A   ALTER TABLE public.product ALTER COLUMN id_product DROP DEFAULT;
       public          root    false    210    209         ?          0    172035    product 
   TABLE DATA                 public          root    false    209       3307.dat ?           0    0    product_id_product_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.product_id_product_seq', 52, true);
          public          root    false    210                                                                                                                                                                                                                                                                                                                                                   3307.dat                                                                                            0000600 0004000 0002000 00000034303 14216034331 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (28, 'asd', 'asd', 'asd', 'asd');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (29, 'Baseus Cable 1 Meter Micro USB', 'BS010', '26682888', '<p>Baseus White 1 Meter Micro USB 5 Pin to USB 2.0 High Speed Data Sync Charge<br>Cable for Samsung HTC Nokia Sony LG Xiaomi</p><p>100% new top quality high speed Micro USB 5pin to USB 2.0 data sync charge cable<br>High speed more reliable data transfer and charging, save time save money<br>Round cable, durable and strong, 1 meter length<br>2-in-1 function allowing charging and data transfer at the same time<br>Easily charges your device by simple connecting to USB port of your PC or wall<br>plug (not included)<br>Update music / data and more to your smart phone devices with micro usb port<br>through this data cable<br>Wide compatibility, suitable for most Android mobile phones, such as Samsung,<br>HTC, LG, Nokia, Sony, etc.<br>Cable Length: 1 Meter</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (30, '222 - Black-1112', '16LSOL-M0901001/M', '29325975', '<p>Baju kekinian, super duper keren, material combo 30s, bahan adem</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (31, 'Baju Magdalene', 'MAGDALENE_BLACK', '28022696', '<p>dsadasdaas</p>
<p>asdasd</p>
<p>asdasdasd</p>
<p>asd</p>
<p>asdasdasdasdafgfghdfhthgfg</p>
<p>ghghfgj</p>
<p>gjj</p>
<p>gf</p>
<p>hfgh</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (32, 'TORU Motomo Aluminium Case for iPhone 6 Plus - Silver', 'TORU02', '28022849', '<p>TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan. Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p><p>Features<br>High Quality Material<br>TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan.</p><p>Lightweight Design<br>Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p><p>Compatibility<br>TORU Motomo Aluminium Case cocok dan pas untuk iPhone 6+ Anda.</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (33, 'TORU Motomo Aluminium Case for iPhone 6 Plus - Dark Blue', 'TORU01', '28022841', '<p>TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan. Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p><p>Features<br>High Quality Material<br>TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan.</p><p>Lightweight Design<br>Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p><p>Compatibility<br>TORU Motomo Aluminium Case cocok dan pas untuk iPhone 6+ Anda.</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (34, 'Tas selempang Biru Dongker', '1203578196', '26026531', 'Tas Selempang Merk Dhavin
Memiliki Bahan yang kuat dan tahan lama
memudahkan anda membawa barang-barang saat berpergian
memiliki bentuk yang simpel dan trendy.

Ready Stok Warna Navy Blue');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (35, 'SGP Neo Hybrid Ex Plastic Case for iPhone 6 Plus - Magenta', 'SPGN01', '28022896', '<p>Spigen Hard Case untuk iPhone 6 Plus ini terbuat dari bahan Polycarbonate yang<br>kokoh dan ringan. Case ini juga hadir dengan berbagai pilihan warna menarik.</p><p>Top Quality and Durable Polycarbonate Material<br>Dengan bahan Plastic yang kuat dan kokoh membuat Hard Case ini dapat mengabsorb<br>impact yang terjadi saat terjatuh atau terbentur.</p><p>Easy Fold Design<br>SGP Tough Armor dilengkapi dengan kickstand pada bagian belakang yang berfungsi<br>agar iPhone Anda dapat digunakan dalam posisi berdiri dengan stabil.</p><p>Perfectly Fit Your Cell Phone<br>Design yang super tipis dan ringan membuat iPhone 6 Plus Anda lebih nyaman saat<br>digunakan. Hard Case ini juga hadir dengan berbagai pilihan warna-warna menarik.</p><p>Shockproof Air Cushion<br>Case ini dilengkapi dengan sistem peredam jatuh sehingga iPhone Anda tidak akan<br>rusak saat terjatuh.</p><p>Warna Magenta</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (36, 'test el6', 'tes-el6-Hit', '25920735', '<p>test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (37, 'test el6', 'tes-el6-Hit', '25920736', '<p>test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (38, 'SGP Neo Hybrid Ex Plastic Case for iPhone 6 Plus - Gold', 'SPGN02', '28022865', '<p>Spigen Hard Case untuk iPhone 6 Plus ini terbuat dari bahan Polycarbonate yang<br>kokoh dan ringan. Case ini juga hadir dengan berbagai pilihan warna menarik.</p><p>Top Quality and Durable Polycarbonate Material<br>Dengan bahan Plastic yang kuat dan kokoh membuat Hard Case ini dapat mengabsorb<br>impact yang terjadi saat terjatuh atau terbentur.</p><p>Easy Fold Design<br>SGP Tough Armor dilengkapi dengan kickstand pada bagian belakang yang berfungsi<br>agar iPhone Anda dapat digunakan dalam posisi berdiri dengan stabil.</p><p>Perfectly Fit Your Cell Phone<br>Design yang super tipis dan ringan membuat iPhone 6 Plus Anda lebih nyaman saat<br>digunakan. Hard Case ini juga hadir dengan berbagai pilihan warna-warna menarik.</p><p>Shockproof Air Cushion<br>Case ini dilengkapi dengan sistem peredam jatuh sehingga iPhone Anda tidak akan<br>rusak saat terjatuh.</p><p>Warna Gold</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (39, 'test el6', 'tes-el6-Hit', '25919173', '<p>test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (40, 'SPG Full Armor Case for iphone 6 plus', 'SPG04', '25996821', '<p>&nbsp;CASE SPG Full Armor Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan. Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p>
<p>High Quality Material</p>
<p>SPG Full Armor Case terbuat dari &nbsp;&nbsp;bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra &nbsp;&nbsp;untuk iPhone 6+ Anda dari goresan dan benturan.</p>
<p>Lightweight Design</p>
<p>Dengan design yang ramping dan ringan, Anda &nbsp;&nbsp;tetap mendapat akses ke setiap tombol dengan mudah.</p>
<p>Compatibility</p>
<p>SPG Full Armor Case cocok dan pas &nbsp;&nbsp;untuk iPhone 6+ Anda.</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (41, 'test el5', 'test el4', '25919155', '<p>test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (42, 'Pakaian Kucing Dan Anjing HOOPET  Warna GREY', 'HPET02', '28022257', '<p>BRAND HOOPETUNTUK ANJING DAN KUCING</p><p><br>GAYA YG BERBEDA<br>BAHAN YG LEMBUT<br> * Hangat Di Musim dingi</p><p>PERHATIAN!<br>Pada saat memesan harap buat catatan UKURAN / SIZE yg di pesan,<br>Apabila tidak mencatumkan UKURAN/SIZE Maka kami kirim ukuran secara acak dengan<br>stok yg tersedia</p><p><br>SIZE Leher(cm/inch) Dada(cm/inch) Panjang(cm/inch)</p><p>BESAR =M 30/11.8inc 35-40/13.8inc-15.8inc 28/11inc</p><p>MEDIUM = S 26/10.2inc 30-35/11.8inc-13.8inc 23/9.1inc</p><p>KECIL =XS 22/8.7inc 25-30/10inc-11.8inc 18/7.1inc</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (43, 'test el5', '1609397612', '25922874', '<p>test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (44, 'Pakaian Anjing Dan Kucing HOOPET warna SILVER', 'HPET03', '28022796', '<p>BAJU BRAND HOOPET UNTUK ANJING DAN KUCING</p><p><br>GAYA YG BERBEDA<br>BAHAN YG LEMBUT<br>* Hangat Di Musim dingi</p><p>PERHATIAN!<br>Pada saat memesan harap buat catatan UKURAN / SIZE yg di pesan,<br>Apabila tidak mencatumkan UKURAN/SIZE Maka kami kirim ukuran secara acak dengan<br>stok yg tersedia</p><p>SIZE Leher(cm/inch) Dada(cm/inch) Panjang(cm/inch)</p><p>BESAR =M 28/11inc 33-38/13inc-15.8inc 28/11inc</p><p>MEDIUM = S 25/9.8inc 28-33/11inc-13.8inc 23/9inc</p><p>KECIL =XS 22/8.7inc 23-28/9inc-11.8inc 18/7.1inc</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (45, 'Gembok anti maling warna silver', 'GBK2', '28022648', '<p>Gembok Anti Maling murah garansi 1 tahun</p>
<p>design minimalis tahan dan kokoh, telah teruji ketahanannya, terbuat dari bahan tidak mudah karat dan mudah digunakan.</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (46, 'Pakaian Anjing Dan Kucing HOOPET PERAK Atau SILVER', '15Y0020GH0001', '25815395', '<h3>Baju Brand HOOPET untuk anjing dan kucing</h3> <h3><br/></h3> <h3>Gaya yg Berbeda</h3> <h3>Bahan Yg Lembut</h3> <ul> <li>Hangat Di Musim dingi</li> </ul> <p>PERHATIAN!<br/> Pada saat memesan harap buat catatan UKURAN / SIZE yg di pesan,<br/> Apabila tidak mencatumkan UKURAN/SIZE Maka kami kirim ukuran secara acak dengan stok yg tersedia</p> <p>SIZE Leher(cm/inch) Dada(cm/inch) Panjang(cm/inch)</p> <p>BESAR =M 28/11inc 33-38/13inc-15.8inc 28/11inc</p> <p>MEDIUM = S 25/9.8inc 28-33/11inc-13.8inc 23/9inc</p> <p>KECIL =XS 22/8.7inc 23-28/9inc-11.8inc 18/7.1inc</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (47, 'kopi gayo', 'kopigy1', '28022653', '<p>fdashfUFHYDHFYDHFYASHIJDISC sfbhsdbfsdfndkcmkmkjsaub hd</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (48, 'NOOSY TPU Soft Case for iPhone 6 Plus - Transparant', 'NOOSY02', '28022238', '<p>TPU soft case NOOSY untuk iPhone 6 Plus Anda terbuat dari bahan material yang lembut dan berkualitas untuk melindungi setiap sisi iPhone Anda dari benturan dan goresan.</p><p>Features<br>High Quality Material<br>Soft case ini terbuat dari bahan material metal yang lembut dan berkualitas, sehingga memberikan perlindungan ekstra untuk iPhone 6 Plus Anda dari goresan dan benturan.</p><p>Easy Access to All Buttons<br>Anda tetap mendapat akses ke setiap port dan button yang terdapat di device Anda dengan gampang.</p><p>Removable, Durable, Reusable and Washable<br>Tidak perlu kuatir soft case ini kotor saat dipakai beraktivitas karena Anda dapat mencuci case ini tanpa mengurangi kualitasnya.</p><p>Compatibility<br>Case ini cocok dan pas untuk iPhone 6 Plus Anda.</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (49, 'Baju Corak Carik Warna Warni', 'BLACK', '28022645', '<p>Baju Corak Carik Warna Warni Bahan Katun Baju Corak Carik Warna Warni banyak warna Baju Corak Carik Warna Warni Baju Corak Carik Warna Warni</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (50, 'Baju Kaos Polos Aneka Size', 'KAOS2', '28022716', '<p>&nbsp;StyleBasics Men''s Round Neck Basic T-shirt merupakan kaos polos tanpa corak yang cocok dikenakan oleh pria. Kaos ini dirancang dengan model kerah bulat (round neck) yang nyaman digunakan untuk beraktivitas untuk suasana yang santai. Kaos ini terbuat dari bahan 30S dengan ketebalan yang tepat, sehingga memberikan kesejukkan saat Anda mengenakannya. Teknik jahitannya yang rapi juga akan menjaga kaos ini tetap awet dan tahan lama. &nbsp;</p>
<p><strong>Detail</strong> - Model: Kaos - Warna: Merah - Gender: Pria - Material: Fabric 30S - Desain: Round neck - Ukuran: XXL&nbsp;</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (51, 'Celana Dalam Sepeda Cycling Pants Bantalan Gel Empuk', 'CD001', '26269125', '<p>&nbsp;Celana Dalam Sepeda dengan Bantalan Gel Empuk Sejuk Nyaman Dipakai<br>
</p>
<p>DESKRIPSI PRODUK :<br>
</p>
<p>1. Tebal bantalan 2.1cm <br>
2. Didesain khusus dengan Elastic Interface Technology yang mampu memaksimalkan performa dan kenyamanan anda saat berkendara <br>
3. Bantalan yang empuk berfungsi untuk Mengurangi gesekan yang terjadi saat mengayuh sepeda sehingga mengurangi kemungkinan lecet pada kulit<br>
4. Dibuat dengan bahan yang berpori sehingga tidak mudah basah oleh keringat &nbsp;</p>
<p><br></p>
<p>&nbsp;Cotton + Nylon Material</p>
<p>Terbuat dari bahan katun dan nylon yang lentur sehingga muat untuk banyak ukuran badan.&nbsp;</p>
<p><br></p>
<p>Body Fit</p>
<p>Celana ini memiliki model body fit sehingga pergerakan Anda menjadi lebih leluasa dan tidak terbeban sama sekali. Sangat cocok digunakan untuk bersepeda baik indoor maupun outdoor.</p>
<p><br></p>
<p><br></p>
<p>Ready Ukuran XXL (Ukuran celana 36-40)</p>');
INSERT INTO public.product OVERRIDING SYSTEM VALUE VALUES (52, 'Celana Dalam Sepeda Cycling Pants Bantalan Gel Empuk', 'CD001', '26682731', '<p>Celana Dalam Sepeda dengan Bantalan Gel Empuk Sejuk Nyaman Dipakai</p><p><br>DESKRIPSI PRODUK :</p><p><br>1. Tebal bantalan 2.1cm <br>2. Didesain khusus dengan Elastic Interface Technology yang mampu memaksimalkan<br>performa dan kenyamanan anda saat berkendara <br>3. Bantalan yang empuk berfungsi untuk Mengurangi gesekan yang terjadi saat<br>mengayuh sepeda sehingga mengurangi kemungkinan lecet pada kulit<br>4. Dibuat dengan bahan yang berpori sehingga tidak mudah basah oleh keringat</p><p></p><p><br>Cotton + Nylon Material</p><p>Terbuat dari bahan katun dan nylon yang lentur sehingga muat untuk banyak ukuran<br>badan.</p><p></p><p><br>Body Fit</p><p>Celana ini memiliki model body fit sehingga pergerakan Anda menjadi lebih<br>leluasa dan tidak terbeban sama sekali. Sangat cocok digunakan untuk bersepeda<br>baik indoor maupun outdoor.</p><p></p><p></p><p></p><p>Ready Ukuran XXL (Ukuran celana 36-40)</p>');


                                                                                                                                                                                                                                                                                                                             restore.sql                                                                                         0000600 0004000 0002000 00000005070 14216034331 0015363 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.1

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

DROP DATABASE "jubelio-faisal";
--
-- Name: jubelio-faisal; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE "jubelio-faisal" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


\connect -reuse-previous=on "dbname='jubelio-faisal'"

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

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: product; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product (
    id_product bigint NOT NULL,
    name character varying,
    sku character varying,
    product_no character varying,
    "desc" text
);


--
-- Name: product_id_product_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.product_id_product_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: product_id_product_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.product_id_product_seq OWNED BY public.product.id_product;


--
-- Name: product id_product; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product ALTER COLUMN id_product SET DEFAULT nextval('public.product_id_product_seq'::regclass);


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: -
--

\i $$PATH$$/3307.dat

--
-- Name: product_id_product_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.product_id_product_seq', 52, true);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        