FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m     ��
�� boovfals 	 o      ���� 0 debug DEBUG��  ��     
  
 l     ��  ��    6 0 get data from th-stats and display data for BKK     �   `   g e t   d a t a   f r o m   t h - s t a t s   a n d   d i s p l a y   d a t a   f o r   B K K      l    ����  r        m    ��
�� boovfals  o      ���� *0 display_two_columns DISPLAY_TWO_COLUMNS��  ��        l     ��  ��       three letter country code     �   4   t h r e e   l e t t e r   c o u n t r y   c o d e      l    ����  r        m    	   �    N L D  o      ���� "0 current_country CURRENT_COUNTRY��  ��       !   l     �� " #��   " Y S today has to be less than this threshold compared to yesterday before we use green    # � $ $ �   t o d a y   h a s   t o   b e   l e s s   t h a n   t h i s   t h r e s h o l d   c o m p a r e d   t o   y e s t e r d a y   b e f o r e   w e   u s e   g r e e n !  % & % l    '���� ' r     ( ) ( m    ���� 2 ) o      ���� 0 	threshold 	THRESHOLD��  ��   &  * + * l     ��������  ��  ��   +  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   load functions    1 � 2 2    l o a d   f u n c t i o n s /  3 4 3 l     5���� 5 O     6 7 6 r     8 9 8 c     : ; : n     < = < m    ��
�� 
ctnr = l    >���� > I   �� ?��
�� .earsffdralis        afdr ?  f    ��  ��  ��   ; m    ��
�� 
ctxt 9 o      ���� 0 _mypath _myPath 7 m     @ @�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   4  A B A l  ! & C���� C r   ! & D E D b   ! $ F G F o   ! "���� 0 _mypath _myPath G m   " # H H � I I * g l o b a l - f u n c t i o n s . s c p t E o      ���� 0 gf_path  ��  ��   B  J K J l  ' 1 L���� L r   ' 1 M N M I  ' /�� O��
�� .sysoloadscpt        file O l  ' + P���� P 4   ' +�� Q
�� 
alis Q l  ) * R���� R o   ) *���� 0 gf_path  ��  ��  ��  ��  ��   N o      ���� 0 
_globalfns 
_globalFns��  ��   K  S T S l     ��������  ��  ��   T  U V U l     ��������  ��  ��   V  W X W l     �� Y Z��   Y   read global variables    Z � [ [ ,   r e a d   g l o b a l   v a r i a b l e s X  \ ] \ l     �� ^ _��   ^ \ V get home path and translate to POSIX format so we can use this across different users    _ � ` ` �   g e t   h o m e   p a t h   a n d   t r a n s l a t e   t o   P O S I X   f o r m a t   s o   w e   c a n   u s e   t h i s   a c r o s s   d i f f e r e n t   u s e r s ]  a b a l  2 B c���� c r   2 B d e d I  2 >�� f��
�� .sysoloadscpt        file f l  2 : g���� g 4   2 :�� h
�� 
alis h l  4 9 i���� i b   4 9 j k j o   4 5���� 0 _mypath _myPath k m   5 8 l l � m m   g l o b a l - v a r s . s c p t��  ��  ��  ��  ��   e o      ���� 0 _globalvars _globalVars��  ��   b  n o n l     ��������  ��  ��   o  p q p l     ��������  ��  ��   q  r s r l     ��������  ��  ��   s  t u t l     �� v w��   v 8 2 we still have to tell the group what data to pull    w � x x d   w e   s t i l l   h a v e   t o   t e l l   t h e   g r o u p   w h a t   d a t a   t o   p u l l u  y z y l  C� {���� { O   C� | } | k   I� ~ ~   �  I  I T�� � �
�� .BtttSetPnull���     **** � m   I L � � � � � * C o r o n a V i r u s C o u n t r y N L D � �� ���
�� 
bTpV � o   O P���� "0 current_country CURRENT_COUNTRY��   �  � � � l  U U��������  ��  ��   �  � � � l   U U�� � ���   � � �
	output has 4 things
	* today's new case count (THA)
	* today's new case count for BKK provence
	* yesterday's new case count (THA)
	* yesterday's new case count for BKK provence
	    � � � �j 
 	 o u t p u t   h a s   4   t h i n g s 
 	 *   t o d a y ' s   n e w   c a s e   c o u n t   ( T H A ) 
 	 *   t o d a y ' s   n e w   c a s e   c o u n t   f o r   B K K   p r o v e n c e 
 	 *   y e s t e r d a y ' s   n e w   c a s e   c o u n t   ( T H A ) 
 	 *   y e s t e r d a y ' s   n e w   c a s e   c o u n t   f o r   B K K   p r o v e n c e 
 	 �  � � � Z   U p � ��� � � =  U X � � � o   U V���� 0 debug DEBUG � m   V W��
�� boovfals � r   [ f � � � l  [ b ����� � I  [ b�� ���
�� .sysoexecTEXT���     TEXT � m   [ ^ � � � � � � s o u r c e   ~ / . b a s h _ p r o f i l e   & &   c d   ~ / D r o p b o x / p r o j e c t s / b t t   & &   c o n d a   r u n   - n   b t t   p y t h o n   g e t _ c o v i d _ d a i l y _ d a t a . p y   C O U N T R Y   N e t h e r l a n d s��  ��  ��   � o      ���� 0 
covid_data  ��   � r   i p � � � m   i l � � � � �  2 0 5 | 4 6 � o      ���� 0 
covid_data   �  � � � l  q q��������  ��  ��   �  � � � r   q � � � � n  q ~ � � � n  r ~ � � � I   t ~�� ����� 0 	splitline 	splitLine �  � � � o   t w���� 0 
covid_data   �  ��� � m   w z � � � � �  |��  ��   � o   r t���� 0 
_globalfns 
_globalFns �  f   q r � o      ���� 0 output_lines   �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 output_lines   � o      ���� 0 
todaycount 
todayCount �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 output_lines   � o      ���� 0 ydacount ydaCount �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 output_lines   � o      ����  0 daybeforecount dayBeforeCount �  � � � l  � ���������  ��  ��   �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � b   � � � � � m   � � � � � � �  t o d a y C o u n t : � o   � ����� 0 
todaycount 
todayCount��   �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � b   � � � � � m   � � � � � � �  y d a C o u n t : � o   � ����� 0 ydacount ydaCount��   �  � � � l  � ���~�}�  �~  �}   �  � � � r   � � � � � l  � � ��|�{ � l  � � ��z�y � n   � � � � � o   � ��x�x 0 color_white COLOR_WHITE � o   � ��w�w 0 _globalvars _globalVars�z  �y  �|  �{   � o      �v�v 0 	fontcolor 	fontColor �  � � � r   � � � � � l  � � ��u�t � l  � � ��s�r � n   � � � � � o   � ��q�q 0 color_black COLOR_BLACK � o   � ��p�p 0 _globalvars _globalVars�s  �r  �u  �t   � o      �o�o 0 background_color   �  � � � l  � ��n�m�l�n  �m  �l   �  � � � l   � ��k � ��k   � � �	set dayBeforeCountTHA to get_string_variable "VLCoronaVirusCountryYDACountTHA"	if dayBeforeCountTHA is missing value then		set dayBeforeCountTHA to "N/A"	end if	log "dayBeforeCountTHA: " & dayBeforeCountTHA
	    � � � ��  	 s e t   d a y B e f o r e C o u n t T H A   t o   g e t _ s t r i n g _ v a r i a b l e   " V L C o r o n a V i r u s C o u n t r y Y D A C o u n t T H A "  	 i f   d a y B e f o r e C o u n t T H A   i s   m i s s i n g   v a l u e   t h e n  	 	 s e t   d a y B e f o r e C o u n t T H A   t o   " N / A "  	 e n d   i f  	 l o g   " d a y B e f o r e C o u n t T H A :   "   &   d a y B e f o r e C o u n t T H A 
 	 �  � � � l  � ��j�i�h�j  �i  �h   �  � � � l   � ��g � ��g   � 1 +
	less (green)
	same (yellow)
	more (red)
	    � � � � V 
 	 l e s s   ( g r e e n ) 
 	 s a m e   ( y e l l o w ) 
 	 m o r e   ( r e d ) 
 	 �  � � � r   � � � � � m   � � � � � � �   � o      �f�f 0 
jsonoutput 
jsonOutput �  � � � l  � ��e � ��e   � ] W	if todayCountTHA is not "N/A" and dayBeforeCountTHA is equal to dayBeforeCountTHA then    � � � � � 	 i f   t o d a y C o u n t T H A   i s   n o t   " N / A "   a n d   d a y B e f o r e C o u n t T H A   i s   e q u a l   t o   d a y B e f o r e C o u n t T H A   t h e n �  � � � Z   �� �d  >  � � o   � ��c�c 0 
todaycount 
todayCount m   � � �  N / A k   �c 	 I  � ��b
�a
�b .ascrcmnt****      � ****
 m   � � � . d i s p l a y i n g   t o d a y ' s   d a t a�a  	  l  � ��`�`   = 7 set this so we can derive color tomorrow when it's N/A    � n   s e t   t h i s   s o   w e   c a n   d e r i v e   c o l o r   t o m o r r o w   w h e n   i t ' s   N / A  l   � ��_�_   � �		set_persistent_string_variable "VLCoronaVirusCountryYDACountTHA" to ydaCountTHA		if DISPLAY_TWO_COLUMNS is true then			set_persistent_string_variable "VLCoronaVirusCountryYDACountBKK" to ydaCountBKK		end if
		    ��  	 	 s e t _ p e r s i s t e n t _ s t r i n g _ v a r i a b l e   " V L C o r o n a V i r u s C o u n t r y Y D A C o u n t T H A "   t o   y d a C o u n t T H A  	 	 i f   D I S P L A Y _ T W O _ C O L U M N S   i s   t r u e   t h e n  	 	 	 s e t _ p e r s i s t e n t _ s t r i n g _ v a r i a b l e   " V L C o r o n a V i r u s C o u n t r y Y D A C o u n t B K K "   t o   y d a C o u n t B K K  	 	 e n d   i f 
 	 	  l  � ��^�]�\�^  �]  �\    r   � c   � � \   � �  o   � ��[�[ 0 
todaycount 
todayCount  o   � ��Z�Z 0 ydacount ydaCount m   � ��Y
�Y 
nmbr o      �X�X 0 diff   !"! l �W�V�U�W  �V  �U  " #$# l �T�S�R�T  �S  �R  $ %&% l �Q�P�O�Q  �P  �O  & '(' Z  M)*+,) ?  -.- o  �N�N 0 
todaycount 
todayCount. o  
�M�M 0 ydacount ydaCount* r  /0/ l 1�L�K1 l 2�J�I2 n  343 o  �H�H 0 	color_red 	COLOR_RED4 o  �G�G 0 _globalvars _globalVars�J  �I  �L  �K  0 o      �F�F 0 	fontcolor 	fontColor+ 565 F  1787 A  #9:9 o  �E�E 0 
todaycount 
todayCount: o  "�D�D 0 ydacount ydaCount8 A  &-;<; o  &)�C�C 0 diff  < ]  ),=>= m  )*�B�B��> o  *+�A�A 0 	threshold 	THRESHOLD6 ?�@? r  4?@A@ l 4;B�?�>B l 4;C�=�<C n  4;DED o  7;�;�; 0 color_green COLOR_GREENE o  47�:�: 0 _globalvars _globalVars�=  �<  �?  �>  A o      �9�9 0 	fontcolor 	fontColor�@  , r  BMFGF l BIH�8�7H l BII�6�5I n  BIJKJ o  EI�4�4 0 color_yellow COLOR_YELLOWK o  BE�3�3 0 _globalvars _globalVars�6  �5  �8  �7  G o      �2�2 0 	fontcolor 	fontColor( LML l NN�1�0�/�1  �0  �/  M NON l NN�.�-�,�.  �-  �,  O PQP r  NaRSR b  N]TUT b  NYVWV b  NUXYX m  NQZZ �[[ 
 2 D A :  Y o  QT�+�+ 0 
todaycount 
todayCountW m  UX\\ �]]  \ n Y D A :  U o  Y\�*�* 0 ydacount ydaCountS o      �)�) 0 displaytext displayTextQ ^_^ l bb�(�'�&�(  �'  �&  _ `�%` l bb�$�#�"�$  �#  �"  �%  �d   k  f�aa bcb I fm�!d� 
�! .ascrcmnt****      � ****d m  fiee �ff h t o d a y ' s   d a t a   n o t   a v a i l a b l e ,   d i s p l a y   y e s t e r d a y ' s   d a t a�   c ghg l nn�ij�  i Q K day before yesterday's count was stored in VLCoronaVirusCountryYDACountTHA   j �kk �   d a y   b e f o r e   y e s t e r d a y ' s   c o u n t   w a s   s t o r e d   i n   V L C o r o n a V i r u s C o u n t r y Y D A C o u n t T H Ah lml l nn����  �  �  m non l nn����  �  �  o pqp l nn�rs�  r 3 - displaying yesterday's data - let's use grey   s �tt Z   d i s p l a y i n g   y e s t e r d a y ' s   d a t a   -   l e t ' s   u s e   g r e yq uvu r  nywxw l nuy��y l nuz��z n  nu{|{ o  qu�� 0 
color_grey 
COLOR_GREY| o  nq�� 0 _globalvars _globalVars�  �  �  �  x o      �� 0 	fontcolor 	fontColorv }~} l zz����  �  �  ~ � r  z���� b  z���� b  z���� b  z���� m  z}�� ��� 
 Y D A :  � o  }��� 0 ydacount ydaCount� m  ���� ���  \ n D B Y :  � o  ����  0 daybeforecount dayBeforeCount� o      �� 0 displaytext displayText� ��
� l ���	���	  �  �  �
   � ��� l ������  �  �  � ��� L  ���� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���  { " t e x t " :   "� o  ���� 0 displaytext displayText� m  ���� ��� 0 " , 
 " b a c k g r o u n d _ c o l o r " :   "� o  ���� 0 background_color  � m  ���� ��� $ " , 
 " f o n t _ c o l o r " :   "� o  ���� 0 	fontcolor 	fontColor� m  ���� ���  " }� ��� l ��� �����   ��  ��  � ���� l ����������  ��  ��  ��   } m   C F���                                                                                      @ alis    F  Macintosh HD                   BD ����BetterTouchTool.app                                            ����            ����  
 cu             Applications  #/:Applications:BetterTouchTool.app/   (  B e t t e r T o u c h T o o l . a p p    M a c i n t o s h   H D   Applications/BetterTouchTool.app  / ��  ��  ��   z ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ������  � ��
�� .aevtoappnull  �   � ****� �����������
�� .aevtoappnull  �   � ****� k    ���  ��  ��  ��  %��  3��  A��  J��  a��  y����  ��  ��  �  � =���� ������ @�������� H�������� l��� ����� ����� � ������������� ��� ��������� ���������������Z\��e���������� 0 debug DEBUG�� *0 display_two_columns DISPLAY_TWO_COLUMNS�� "0 current_country CURRENT_COUNTRY�� 2�� 0 	threshold 	THRESHOLD
�� .earsffdralis        afdr
�� 
ctnr
�� 
ctxt�� 0 _mypath _myPath�� 0 gf_path  
�� 
alis
�� .sysoloadscpt        file�� 0 
_globalfns 
_globalFns�� 0 _globalvars _globalVars
�� 
bTpV
�� .BtttSetPnull���     ****
�� .sysoexecTEXT���     TEXT�� 0 
covid_data  �� 0 	splitline 	splitLine�� 0 output_lines  
�� 
cobj�� 0 
todaycount 
todayCount�� 0 ydacount ydaCount��  0 daybeforecount dayBeforeCount
�� .ascrcmnt****      � ****�� 0 color_white COLOR_WHITE�� 0 	fontcolor 	fontColor�� 0 color_black COLOR_BLACK�� 0 background_color  �� 0 
jsonoutput 
jsonOutput
�� 
nmbr�� 0 diff  �� 0 	color_red 	COLOR_RED
�� 
bool�� 0 color_green COLOR_GREEN�� 0 color_yellow COLOR_YELLOW�� 0 displaytext displayText�� 0 
color_grey 
COLOR_GREY���fE�OfE�O�E�O�E�O� )j �,�&E�UO��%E�O*��/j E�O*��a %/j E` Oa ga a �l O�f  a j E` Y 	a E` O)�,_ a l+ E` O_ a k/E` O_ a l/E` O_ a m/E`  Oa !_ %j "Oa #_ %j "O_ a $,E` %O_ a &,E` 'Oa (E` )O_ a * |a +j "O_ _ a ,&E` -O_ _  _ a .,E` %Y 3_ _ 	 _ -i� a /& _ a 0,E` %Y _ a 1,E` %Oa 2_ %a 3%_ %E` 4OPY +a 5j "O_ a 6,E` %Oa 7_ %a 8%_  %E` 4OPOa 9_ 4%a :%_ '%a ;%_ %%a <%OPUascr  ��ޭ