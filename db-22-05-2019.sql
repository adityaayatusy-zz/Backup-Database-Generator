CREATE TABLE `backup` (
  `backup_id` int(11) NOT NULL AUTO_INCREMENT,
  `backup_name` varchar(120) NOT NULL,
  `backup_type` varchar(60) NOT NULL,
  PRIMARY KEY (`backup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(120) NOT NULL,
  `icon` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_nama` varchar(120) NOT NULL,
  `contact_email` varchar(120) NOT NULL,
  `contact_judul` varchar(120) NOT NULL,
  `contact_isi` text NOT NULL,
  `contact_status` varchar(60) NOT NULL DEFAULT 'belum',
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

CREATE TABLE `counter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visitor` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `level_program` (
  `level_program_id` int(11) NOT NULL AUTO_INCREMENT,
  `level_program_level` int(11) NOT NULL,
  `level_program_judul` varchar(80) NOT NULL,
  `level_program_image` varchar(120) NOT NULL,
  `program_id` int(11) NOT NULL,
  PRIMARY KEY (`level_program_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

CREATE TABLE `materi` (
  `materi_id` int(11) NOT NULL AUTO_INCREMENT,
  `materi_judul` varchar(200) NOT NULL,
  `materi_level` int(11) NOT NULL,
  `materi_isi` text NOT NULL,
  `materi_category` varchar(120) NOT NULL,
  `materi_tag` varchar(120) NOT NULL,
  PRIMARY KEY (`materi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_judul` varchar(200) NOT NULL,
  `post_isi` text NOT NULL,
  `post_thumb` varchar(120) NOT NULL,
  `post_author` varchar(10) NOT NULL DEFAULT 'admin',
  `post_comment` varchar(10) NOT NULL,
  `post_visitor` int(11) NOT NULL DEFAULT '0',
  `post_category` varchar(60) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `delete_at` date DEFAULT NULL,
  `post_status` varchar(10) NOT NULL,
  `post_tag` text NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

CREATE TABLE `programs` (
  `program_id` int(11) NOT NULL AUTO_INCREMENT,
  `program_judul` varchar(80) NOT NULL,
  `program_image` varchar(120) NOT NULL,
  `program_description` text NOT NULL,
  PRIMARY KEY (`program_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `slide` (
  `slide_id` int(11) NOT NULL AUTO_INCREMENT,
  `slide_img` varchar(120) NOT NULL,
  `slide_des` text NOT NULL,
  `slide_no` int(11) NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL AUTO_INCREMENT,
  `id_materi` int(11) NOT NULL,
  `soal` text NOT NULL,
  `jawaban` text NOT NULL,
  `jawaban_dummy` text NOT NULL,
  `prioritas` int(11) NOT NULL DEFAULT '1',
  `type` varchar(120) NOT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

CREATE TABLE `subscribe` (
  `subscribe_id` int(11) NOT NULL AUTO_INCREMENT,
  `subscribe_email` varchar(80) NOT NULL,
  PRIMARY KEY (`subscribe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL,
  `user_email` varchar(80) NOT NULL,
  `user_password` varchar(120) NOT NULL,
  `user_foto` varchar(120) NOT NULL DEFAULT '/img/user/profile.png',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active_key` varchar(120) DEFAULT NULL,
  `user_status` varchar(60) NOT NULL DEFAULT 'member',
  `user_api` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

INSERT INTO `category` (`id`,`category`,`icon`) VALUES ('1','Test','fab fa-accessible-icon'),('3','Techs','fas fa-book');

INSERT INTO `contact` (`contact_id`,`contact_nama`,`contact_email`,`contact_judul`,`contact_isi`,`contact_status`) VALUES ('1','aditya','adityaayatusy@gmail.com','bug','ada bug','belum'),('2','Adit','adityaayatusy@gmail.com','bug','Test','belum'),('3','Adit','adityaayatusy@gmail.com','bug','Test','belum'),('4','Adit','adityaayatusy@gmail.com','bug','Test','belum'),('5','Adit','adityaayatusy@gmail.com','bug','Test','belum'),('6','adit','adityaayatusy@gmail.com','bug','test','belum'),('7','test','adityaayatusy@gmail.com','ec7417e70eef75c7417570e606','kurang','belum'),('8','adit','adityaayatusy@gmail.com','5c741be99753c5c741bf997549','kurang','belum');

INSERT INTO `counter` (`id`,`visitor`) VALUES ('1','6844');

INSERT INTO `level_program` (`level_program_id`,`level_program_level`,`level_program_judul`,`level_program_image`,`program_id`) VALUES ('9','1','Dasar','/img/materi/pascal.png','2');

INSERT INTO `materi` (`materi_id`,`materi_judul`,`materi_level`,`materi_isi`,`materi_category`,`materi_tag`) VALUES ('10','Struktur Dasar','1','<p style="margin-left:0pt; margin-right:0pt; text-align:justify"><span style="font-family:Calibri"><span style="font-size:12,0000pt"><span style="font-family:Arial">Struktur&nbsp;dasar&nbsp;pascal&nbsp;terdapat&nbsp;3&nbsp;perintah&nbsp;utama&nbsp;yaitu:</span></span></span></p>

<ul>
	<li style="text-align:justify" value="50"><span style="color:#f39c12"><span style="font-family:Calibri"><span style="font-family:Arial">program&nbsp;</span></span></span><span style="color:null"><span style="font-family:Calibri"><span style="font-family:Arial">nama_program</span></span></span><span style="color:#f39c12"><span style="font-family:Calibri"><span style="font-family:Arial">;</span></span></span></li>
	<li style="text-align:justify" value="50"><span style="color:#f39c12"><span style="font-family:Calibri"><span style="font-family:Arial">begin</span></span></span></li>
	<li style="text-align:justify" value="50"><span style="color:#f39c12"><span style="font-family:Calibri"><span style="font-family:Arial">end.</span></span></span></li>
</ul>

<p style="margin-left:0pt; margin-right:0pt; text-align:justify"><span style="font-family:Calibri"><span style="font-size:12,0000pt"><span style="font-family:Arial">Untuk&nbsp;bagian&nbsp;</span></span><span style="color:#f39c12"><span style="font-family:Arial">program&nbsp;nama_program;</span></span>&nbsp;<span style="font-size:12,0000pt"><span style="font-family:Arial"><span style="color:#10141a">ini&nbsp;bersifat&nbsp;</span><span style="color:#3498db">opsional</span><span style="color:#10141a">&nbsp;yang&nbsp;artinya&nbsp;boleh&nbsp;ditambahkan&nbsp;atau&nbsp;tidak.</span></span></span></span></p>

<p style="margin-left:0pt; margin-right:0pt; text-align:justify"><span style="font-family:Calibri"><span style="font-size:12,0000pt"><span style="font-family:Arial"><span style="color:#10141a">Contoh&nbsp;penulisan&nbsp;block&nbsp;program&nbsp;pascal:</span></span></span></span></p>

<pre>
<code class="language-php">program nama_program;

begin

end.</code></pre>

<p style="margin-left:0pt; margin-right:0pt; text-align:justify"><span style="font-family:Calibri"><span style="font-size:12,0000pt"><span style="font-family:Arial"><span style="color:#10141a">dan&nbsp;struktur&nbsp;bahasa&nbsp;pemrograman&nbsp;pasca&nbsp;terdapat&nbsp;2&nbsp;bagian&nbsp;yaitu&nbsp;</span><span style="color:#3498db">Deklarasi</span><span style="color:#10141a">&nbsp;dan&nbsp;</span><span style="color:#3498db">Main&nbsp;program</span><span style="color:#10141a">:</span></span></span></span></p>

<pre>
<code class="language-php">program nama_program;
 
   { Deklarasi }
 
begin
 
   { Main program }
 
end.</code></pre>

<p style="margin-left:0pt; margin-right:0pt; text-align:justify"><span style="font-family:Calibri"><span style="font-size:12,0000pt"><span style="font-family:Arial"><span style="color:#3498db">Deklarasi</span><span style="color:#10141a">:&nbsp;untuk&nbsp;menaruh&nbsp;variable&nbsp;dan&nbsp;aturan&nbsp;pada&nbsp;program&nbsp;pascal.</span></span></span></span></p>

<p style="margin-left:0pt; margin-right:0pt; text-align:justify"><span style="font-family:Calibri"><span style="font-size:12,0000pt"><span style="font-family:Arial"><span style="color:#3498db">Main&nbsp;program</span><span style="color:#10141a">:&nbsp;berisi&nbsp;program&nbsp;utama&nbsp;kita&nbsp;atau&nbsp;program&nbsp;yang&nbsp;ingin&nbsp;kita&nbsp;output.</span></span></span></span></p>

<p style="margin-left:0pt; margin-right:0pt; text-align:justify">&nbsp;</p>

<blockquote>
<p style="margin-left:0pt; margin-right:0pt; text-align:justify"><span style="font-family:Calibri"><span style="font-size:12,0000pt"><span style="font-family:Arial">Note:Setelah&nbsp;mengikuti&nbsp;perintah&nbsp;diatas&nbsp;kalian&nbsp;bisa&nbsp;mengcompile&nbsp;program&nbsp;dan&nbsp;menjalankan&nbsp;nya.</span></span></span></p>
</blockquote>
','Pascal','Dasar'),('11','Aturan Pascal','2','<p style="margin-left:0pt; margin-right:0pt"><span style="color:null"><span style="font-family:Calibri"><span style="font-family:Arial">Aturan&nbsp;Penulisan&nbsp;Variabel&nbsp;dalam&nbsp;Pascal:</span></span></span></p>

<ul>
	<li style="text-align:left"><span style="color:null"><span style="font-family:Calibri"><span style="font-family:Arial">Karakter&nbsp;pertama&nbsp;harus&nbsp;berupa&nbsp;huruf.</span></span></span></li>
	<li style="text-align:left"><span style="color:null"><span style="font-family:Calibri"><span style="font-family:Arial">Karakter&nbsp;kedua&nbsp;dan&nbsp;seterusnya&nbsp;bisa&nbsp;berupa&nbsp;huruf,&nbsp;angka,&nbsp;atau&nbsp;karakter&nbsp;underscore&nbsp;&ldquo;_&rdquo;.</span></span></span></li>
	<li style="text-align:left"><span style="color:null"><span style="font-family:Calibri"><span style="font-family:Arial">Penulisan&nbsp;variabel&nbsp;tidak&nbsp;boleh&nbsp;menggunakan&nbsp;tanda-tanda&nbsp;khusus&nbsp;seperti&nbsp;*,&nbsp;+,&nbsp;-,&nbsp;&amp;,&nbsp;%,&nbsp;$,&nbsp;#,&nbsp;atau&nbsp;@.</span></span></span></li>
	<li style="text-align:left"><span style="font-family:Calibri"><span style="font-size:12,0000pt"><span style="background-color:#ffffff"><span style="font-family:Arial"><span style="color:#10141a">Tidak&nbsp;diizinkan&nbsp;menggunakan&nbsp;nama&nbsp;variabel&nbsp;pada&nbsp;<strong>Reserved&nbsp;Word</strong> (</span></span></span></span></span>kata-kata baku yang digunakan dalam program dan sudah terintergrated dalam pascal dan juga mempunyai bentuk serta kegunaan tertentu yang telah didefinisikan&nbsp; oleh&nbsp; Pascal<span style="font-family:Calibri"><span style="font-size:12,0000pt"><span style="background-color:#ffffff"><span style="font-family:Arial"><span style="color:#10141a">).</span></span></span></span></span></li>
</ul>

<p style="margin-left:0pt; margin-right:0pt"><span style="color:#e74c3c"><span style="font-family:Calibri"><span style="font-family:Arial">penulisan&nbsp;variabel&nbsp;yang&nbsp;salah:</span></span></span></p>

<ul>
	<li value="50"><span style="color:null"><span style="font-family:Calibri"><span style="font-family:Arial">1jagung:&nbsp;diawali&nbsp;dengan&nbsp;angka</span></span></span></li>
	<li value="50"><span style="color:null"><span style="font-family:Calibri"><span style="font-family:Arial">masuk+:&nbsp;menggunakan&nbsp;karakter&nbsp;&lsquo;+&rsquo;</span></span></span></li>
	<li value="50"><span style="color:null"><span style="font-family:Calibri"><span style="font-family:Arial">kura&nbsp;kurai:&nbsp;dipisahkan&nbsp;oleh&nbsp;spasi</span></span></span></li>
</ul>

<p style="margin-left:0pt; margin-right:0pt"><span style="color:#2ecc71"><span style="font-family:Calibri"><span style="font-family:Arial">penulisan&nbsp;variabel&nbsp;yang&nbsp;benar:</span></span></span></p>

<ul>
	<li><span style="color:null"><span style="font-family:Calibri"><span style="font-family:Arial">kura_kura</span></span></span></li>
	<li><span style="color:null"><span style="font-family:Calibri"><span style="font-family:Arial">jagung1</span></span></span></li>
	<li><span style="color:null"><span style="font-family:Calibri"><span style="font-family:Arial">BiSa</span></span></span></li>
</ul>

<blockquote>
<p style="margin-left:0pt; margin-right:0pt">Note: pascal tidak menggunakan aturan <span style="color:#3498db">case-sesitive</span></p>
</blockquote>
','Pascal','Dasar'),('12','Output','3','<p style="margin-left:0pt; margin-right:0pt; text-align:left"><span style="font-family:Calibri"><span style="font-size:12,0000pt"><span style="font-family:Arial">Dalam&nbsp;basa&nbsp;pemrograman&nbsp;pasca</span></span><span style="font-size:12,0000pt"><span style="font-family:Arial">l</span></span>&nbsp;<strong><span style="font-size:12,0000pt"><span style="font-family:Arial"><span style="color:#3498db"><strong>wr</strong></span></span></span></strong><strong><span style="font-size:12,0000pt"><span style="font-family:Arial"><span style="color:#3498db"><strong>i</strong></span></span></span></strong><strong><span style="font-size:12,0000pt"><span style="font-family:Arial"><span style="color:#3498db"><strong>te();&nbsp;</strong></span></span></span></strong><span style="font-size:12,0000pt"><span style="font-family:Arial">dan&nbsp;</span></span><strong><span style="font-size:12,0000pt"><span style="font-family:Arial"><span style="color:#3498db"><strong>writeln();&nbsp;</strong></span></span></span></strong><span style="font-size:12,0000pt"><span style="font-family:Arial">digunakan&nbsp;untuk&nbsp;mengoutput&nbsp;program.</span></span><span style="font-size:12,0000pt"><span style="font-family:Arial">&nbsp;</span></span><strong><span style="font-size:12,0000pt"><span style="font-family:Arial"><span style="color:#5b9bd5"><strong>write</strong></span></span></span></strong><strong><span style="font-size:12,0000pt"><span style="font-family:Arial"><span style="color:#5b9bd5"><strong>ln </strong></span></span></span></strong><span style="font-size:12,0000pt"><span style="font-family:Arial"><span style="color:null">digunakan</span>&nbsp;untuk&nbsp;mengoutput&nbsp;pada&nbsp;baris&nbsp;baru.</span></span></span></p>

<pre>
<code class="language-php">program output;

begin
 write('Hello World1');
 writeln(' Hello World2');
 write('Hello World3');
end.
</code></pre>

<pre>
<code class="language-php">Output:
 Hello World1 Hello World2
 Hello World3</code></pre>
','Pascal','Dasar'),('13','Komentar','4','<p style="margin-left:0pt; margin-right:0pt; text-align:justify"><span style="font-family:Calibri"><span style="font-size:12,0000pt"><span style="font-family:Arial"><span style="color:#3498db"><strong>Komentar</strong></span>&nbsp;pada&nbsp;bahasa&nbsp;pemrograman&nbsp;hanya&nbsp;untuk&nbsp;memberi&nbsp;penjelasan&nbsp;pada&nbsp;block&nbsp;program&nbsp;dan&nbsp;tidak&nbsp;akan&nbsp;di&nbsp;eksekusi&nbsp;atau&nbsp;dijalankan&nbsp;pada&nbsp;program.&nbsp;Pada&nbsp;bahasa&nbsp;pemrogram&nbsp;pascal&nbsp;terdapat&nbsp;3&nbsp;jenis&nbsp;komentar&nbsp;yang&nbsp;bisa&nbsp;digunakan:</span></span></span></p>

<pre>
<code class="language-json">(* Ini adalah komentar gaya lama *)

{ Ini adalah komentar Turbo Pascal }

// Ini adalah komentar Delphi. Semua diabaikan sampai akhir baris.</code></pre>

<p><span style="color:#3498db">komentar</span> (* *) dan { } bisa digunakan untuk <span style="color:#3498db">multi baris</span>:</p>

<pre>
<code class="language-ini">(*
   this comment 1
   this comment 2
*)

{
  this comment 1
  this comment 2 
}</code></pre>

<p>&nbsp;</p>
','Pascal','Dasar');

INSERT INTO `post` (`post_id`,`post_judul`,`post_isi`,`post_thumb`,`post_author`,`post_comment`,`post_visitor`,`post_category`,`create_at`,`update_at`,`delete_at`,`post_status`,`post_tag`) VALUES ('5','dasfs 5c4d68d672f4b','<p>test</p>
','/img/pc2.jpg','admin','0','2','tech','2019-01-27 15:16:22','2019-02-05 15:33:44',NULL,'publish','info'),('6','dasfs 5c4d68d672f4bs','<p>test</p>
','/img/pc1.jpg','admin','0','6','tech','2019-01-27 15:16:22','2019-02-25 20:12:52',NULL,'publish','info'),('7','rte','<p><br />
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />
&nbsp;</p>
','/img/pc3.jpg','admin','0','19','tech','2019-01-27 15:17:44','2019-02-05 15:12:26',NULL,'publish','info'),('8','test','<p><br />
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />
&nbsp;</p>
','/img/pc2.jpg','admin','0','5','tech','2019-01-27 15:18:12','2019-03-04 11:14:30',NULL,'publish','a'),('9','testsd','<p><br />
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />
&nbsp;</p>
','/img/pc2.jpg','admin','0','0','tech','2019-01-27 15:18:12','2019-02-24 17:34:26',NULL,'publish','a'),('10','testsd dsae','<p><br />
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />
&nbsp;</p>
','/img/pc2.jpg','admin','0','0','tech','2019-01-27 15:18:12','2019-02-24 17:34:22',NULL,'publish','a'),('11','testsd dsae dae','<p><br />
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />
&nbsp;</p>
','/img/pc2.jpg','admin','0','0','tech','2019-01-27 15:18:12','2019-02-24 17:34:19',NULL,'publish','a'),('12','testsd dsae dae dsafe','<p><br />
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />
&nbsp;</p>
','/img/pc1.jpg','admin','0','1','tech','2019-01-27 15:18:12','2019-02-24 17:35:20',NULL,'publish','a'),('13','testsd dsae dae dsafes','<p><br />
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />
&nbsp;</p>
','/img/pc3.jpg','admin','0','1','tech','2019-01-27 15:18:12','2019-02-24 17:34:03',NULL,'publish','a'),('14','dasfs 5c4d68d672f4b da','<p>test</p>
','/img/pc1.jpg','admin','0','5','tech','2019-01-27 15:16:22','2019-02-24 17:35:03',NULL,'publish','info'),('15','dasfs 5c4d68d672f4bsds','<p>test</p>
','/img/pc3.jpg','admin','0','87','tech','2019-01-27 15:16:22','2019-03-14 08:49:01',NULL,'publish','info'),('16','rte dsa','<p><br />
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />
&nbsp;</p>
','/img/pc3.jpg','admin','disable','1','tech','2019-01-27 15:17:44','2019-02-24 17:33:42',NULL,'waited','info'),('17','test re','<p><br />
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />
&nbsp;</p>
','/img/pc1.jpg','admin','0','78','tech','2019-01-27 15:18:12','2019-03-14 08:49:04',NULL,'publish','a'),('18','testsd gg','<p><br />
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />
&nbsp;</p>
','/img/pc3.jpg','admin','0','79','tech','2019-01-27 15:18:12','2019-02-25 20:42:57',NULL,'publish','a'),('19','testsd dsaegg','<p><br />
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />
&nbsp;</p>
','/img/pc1.jpg','admin','disable','3','tech','2019-01-27 15:18:12','2019-02-24 17:35:06','2019-02-24','waited','a'),('20','testsd dsae daedd','<p><br />
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />
&nbsp;</p>
','/img/pc3.jpg','admin','0','124','tech','2019-01-27 15:18:12','2019-03-14 08:49:01',NULL,'publish','a'),('22','testsd dsae dae dsafesds','<p><br />
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br />
&nbsp;</p>
','/img/pc1.jpg','admin','disable','1','tech','2019-01-27 15:18:12','2019-02-24 17:35:09',NULL,'waited','a'),('23','test 5c515261d94fe','<p>dsa</p>
','/img/pc3.jpg','admin','disable','1','Techs','2019-01-27 16:23:57','2019-02-05 10:25:17',NULL,'waited','a'),('25','test','<p>{&nbsp;</p>
','/img/pc3.jpg','admin','active','14','Techs','2019-02-25 20:59:38','2019-03-04 11:14:30',NULL,'publish','info'),('26','test','<p>test</p>
','/img/pc2.jpg','admin','active','5','Techs','2019-02-25 21:25:12','2019-03-04 11:14:30',NULL,'publish','a'),('27','test(5)','<p>tesa</p>
','/img/612.jpg','admin','active','5','Techs','2019-02-25 21:29:47','2019-03-04 11:14:29',NULL,'publish','a'),('28','test (5)','<p><img alt="wink" src="http://localhost/assets/ckeditor/plugins/smiley/images/wink_smile.png" style="height:23px; width:23px" title="wink" /></p>
','/img/pc2.jpg','admin','active','5','Techs','2019-02-25 21:30:20','2019-03-04 11:14:29',NULL,'publish','sa'),('29','test(6)','<p>aa</p>
','http://localhost/img/pc2.jpg','admin','active','19','Techs','2019-02-25 21:30:53','2019-03-14 08:49:06',NULL,'publish','a');

INSERT INTO `programs` (`program_id`,`program_judul`,`program_image`,`program_description`) VALUES ('2','Pascal','/img/materi/pascal-logo.png','<p><span style="font-size:14px">&nbsp; </span><span style="font-size:16px"><strong>Pascal</strong> adalah bahasa pemrograman <strong><span style="color:#2980b9">tingkat tinggi</span></strong>, bahasa pemrograman ini sangat cocok bagi pemula atau&nbsp;yang&nbsp; ingin belajar bahasa pemrograman, pascal dibuat oleh&nbsp;Profesor&nbsp;<a href="https://id.wikipedia.org/wiki/Niklaus_Wirth" target="_blank">Niklaus Wirth</a>&nbsp;pada tahun<strong> <span style="color:#e67e22">1971</span></strong>.</span></p>

<p><strong><span style="color:#2ecc71"><span style="font-size:16px">Kelebihan:</span></span></strong></p>

<ul>
	<li><span style="font-size:16px">Tipe Data Standar, tipe-tipe data standar yang telah tersedia pada kebanyakan bahasa pemrograman.</span></li>
	<li><span style="font-size:16px">Strongly-typed, programmer harus menentukan tipe data dari suatu variabel, dan variabel tersebut tidak dapat dipergunakan untuk menyimpan tipe data selain dari format yang ditentukan.</span></li>
	<li><span style="font-size:16px">Terstruktur, memiliki sintaks yang memungkinkan penulisan program dipecah menjadi fungsi-fungsi kecil (procedure dan function) yang dapat dipergunakan berulang-ulang.</span></li>
	<li><span style="font-size:16px">Sederhana dan Ekspresif, memiliki struktur yang sederhana dan sangat mendekati bahasa manusia (bahasa Inggris) sehingga mudah dipelajari dan dipahami.</span></li>
</ul>

<p><span style="color:#e74c3c"><strong><span style="font-size:16px">Kekurangan:</span></strong></span></p>

<ul>
	<li><span style="font-size:16px">Sintaks Pascal kurang efisien</span></li>
	<li><span style="font-size:16px">Tidak mendukung pemrograman berorientasi objek</span></li>
	<li><span style="font-size:16px">Pascal tidak fleksibel dan banyak kekurangan yang dibutuhkan untuk membuat aplikasi yang besar.</span></li>
</ul>

<blockquote>
<p><span style="font-size:16px"><strong>Compiler:</strong> Turbo Pascal, FPC</span></p>
</blockquote>
');

INSERT INTO `slide` (`slide_id`,`slide_img`,`slide_des`,`slide_no`) VALUES ('4','/img/pc1.jpg','<h2 style="text-align:center"><strong>SELAMAT DATANG DI</strong></h2>

<h3 style="text-align:center"><strong>SECRET CREATOR</strong></h3>

<p style="text-align:center">Learn Programs and Fix your Problem</p>
','0');

INSERT INTO `soal` (`id_soal`,`id_materi`,`soal`,`jawaban`,`jawaban_dummy`,`prioritas`,`type`) VALUES ('11','10','<p>{program name_program}</p>

<p>{begin}</p>

<p>{end.}</p>
','program name_program,begin,end.','','1','ddl'),('12','11','<p>Aturan yang <span style="color:#2ecc71">diperbolehkan</span> dalam penulisan variable pascal?</p>
','MaKAN,kita1','MaKAN,3isa,kupu kupu,kita1','1','checkbox'),('13','12','<p>{writeln}(&#39;Hello World&#39;);</p>
','writeln','','1','input'),('14','13','<p>jika ingin menggunakan sigle komentar bisa menggunakan?</p>
','//','//,**,#,{ }','1','choice');

INSERT INTO `users` (`user_id`,`user_name`,`user_email`,`user_password`,`user_foto`,`created_at`,`updated_at`,`active_key`,`user_status`,`user_api`) VALUES ('34','aditya','adityaayatusy@gmail.com','$2y$10$b/1kMI.oArdIsfaSExqZXe4OAij7gMYG8YB.R2FGYYknmCn95uXTi','img/user/profile.png','2019-01-22 14:03:41','2019-02-27 14:51:18',NULL,'admin','$2y$10$EgNOl6ez3OVBH1RUP9YHI.icvIxPFQMpXxhgm22uAZS.wFyuklSG6'),('38','Secret Creator','secretcreator17@gmail.com','$2y$10$lGRKfS6noqGVkUzrFqLWselw63Rmksa2P3l4WgMeQPDYryMlJXvXe','https://lh6.googleusercontent.com/-_Ar_n-adxqE/AAAAAAAAAAI/AAAAAAAAAAk/P4UGSP9odj8/s96-c/photo.jpg','2019-01-26 17:56:36','2019-01-30 14:55:54',NULL,'member','$2y$10$Beqr0OY1uPG1K3EbfdWmMupLOI4sgU/DavfzucGTSyW0Ed.Kzp13u'),('39','admin','admin@email.com','$2y$10$/ulHEB3ZaGqH2OZOX4YCCOjeAClLAxMkGuLgfH3gOugm2j4bo/NK.','profile.png','2019-02-24 16:56:59','2019-02-27 14:38:33',NULL,'admin',NULL);

