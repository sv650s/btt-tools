FasdUAS 1.101.10   ��   ��    k             l     ��  ��      takes argument: COUNTRY     � 	 	 0   t a k e s   a r g u m e n t :   C O U N T R Y   
  
 i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 argv  ��    k    �       l     ��������  ��  ��        r         m     ��
�� boovtrue  o      ���� 0 debug DEBUG      l   ��  ��    V P today has to be less n this threshold compared to yesterday before we use green     �   �   t o d a y   h a s   t o   b e   l e s s   n   t h i s   t h r e s h o l d   c o m p a r e d   t o   y e s t e r d a y   b e f o r e   w e   u s e   g r e e n      r        m    ���� 2  o      ���� 0 	threshold 	THRESHOLD       r     ! " ! m    	 # # ?������� " o      ���� 0 threshold_pct THRESHOLD_PCT    $ % $ Z     & '�� ( & o    ���� 0 debug DEBUG ' r     ) * ) m     + + � , ,  N e t h e r l a n d s * o      ���� 0 country COUNTRY��   ( r     - . - c     / 0 / n     1 2 1 4    �� 3
�� 
cobj 3 m    ����  2 o    ���� 0 argv   0 m    ��
�� 
TEXT . o      ���� 0 country COUNTRY %  4 5 4 l   ��������  ��  ��   5  6 7 6 l   ��������  ��  ��   7  8 9 8 l   �� : ;��   :   load functions    ; � < <    l o a d   f u n c t i o n s 9  = > = O   / ? @ ? r   # . A B A c   # , C D C n   # * E F E m   ( *��
�� 
ctnr F l  # ( G���� G I  # (�� H��
�� .earsffdralis        afdr H  f   # $��  ��  ��   D m   * +��
�� 
ctxt B o      ���� 0 _mypath _myPath @ m      I I�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   >  J K J r   0 5 L M L b   0 3 N O N o   0 1���� 0 _mypath _myPath O m   1 2 P P � Q Q * g l o b a l - f u n c t i o n s . s c p t M o      ���� 0 gf_path   K  R S R r   6 D T U T I  6 @�� V��
�� .sysoloadscpt        file V l  6 < W���� W 4   6 <�� X
�� 
alis X l  : ; Y���� Y o   : ;���� 0 gf_path  ��  ��  ��  ��  ��   U o      ���� 0 
_globalfns 
_globalFns S  Z [ Z l  E E��������  ��  ��   [  \ ] \ l  E E��������  ��  ��   ]  ^ _ ^ l  E E�� ` a��   `   read global variables    a � b b ,   r e a d   g l o b a l   v a r i a b l e s _  c d c l  E E�� e f��   e \ V get home path and translate to POSIX format so we can use this across different users    f � g g �   g e t   h o m e   p a t h   a n d   t r a n s l a t e   t o   P O S I X   f o r m a t   s o   w e   c a n   u s e   t h i s   a c r o s s   d i f f e r e n t   u s e r s d  h i h r   E W j k j I  E S�� l��
�� .sysoloadscpt        file l l  E O m���� m 4   E O�� n
�� 
alis n l  I N o���� o b   I N p q p o   I J���� 0 _mypath _myPath q m   J M r r � s s   g l o b a l - v a r s . s c p t��  ��  ��  ��  ��   k o      ���� 0 _globalvars _globalVars i  t u t l  X X��������  ��  ��   u  v w v l  X X��������  ��  ��   w  x y x l  X X��������  ��  ��   y  z { z l  X X�� | }��   | 8 2 we still have to tell the group what data to pull    } � ~ ~ d   w e   s t i l l   h a v e   t o   t e l l   t h e   g r o u p   w h a t   d a t a   t o   p u l l {  ��  O   X� � � � k   ^� � �  � � � l  ^ ^��������  ��  ��   �  � � � l   ^ ^�� � ���   � � �
	output has 4 things
	* today's new case count ()
	* today's new case count for BKK provence
	* yesterday's new case count ()
	* yesterday's new case count for BKK provence
	    � � � �^ 
 	 o u t p u t   h a s   4   t h i n g s 
 	 *   t o d a y ' s   n e w   c a s e   c o u n t   ( ) 
 	 *   t o d a y ' s   n e w   c a s e   c o u n t   f o r   B K K   p r o v e n c e 
 	 *   y e s t e r d a y ' s   n e w   c a s e   c o u n t   ( ) 
 	 *   y e s t e r d a y ' s   n e w   c a s e   c o u n t   f o r   B K K   p r o v e n c e 
 	 �  � � � Z   ^ { � ��� � � =  ^ a � � � o   ^ _���� 0 debug DEBUG � m   _ `��
�� boovfals � r   d q � � � l  d m ����� � I  d m�� ���
�� .sysoexecTEXT���     TEXT � b   d i � � � m   d g � � � � � � s o u r c e   ~ / . b a s h _ p r o f i l e   & &   c d   ~ / D r o p b o x / p r o j e c t s / b t t   & &   c o n d a   r u n   - n   b t t   p y t h o n   g e t _ c o v i d _ d a i l y _ d a t a . p y   C O U N T R Y   � o   g h���� 0 country COUNTRY��  ��  ��   � o      ���� 0 
covid_data  ��   � r   t { � � � m   t w � � � � �  N / A | 2 0 5 | 4 6 � o      ���� 0 
covid_data   �  � � � l  | |��������  ��  ��   �  � � � r   | � � � � n  | � � � � n  } � � � � I   � ��� ����� 0 	splitline 	splitLine �  � � � o   � ����� 0 
covid_data   �  ��� � m   � � � � � � �  |��  ��   � o   } ����� 0 
_globalfns 
_globalFns �  f   | } � o      ���� 0 output_lines   �  � � � r   � � � � � n   � � � � � 4   � ��� �
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
�� .ascrcmnt****      � **** � b   � � � � � m   � � � � � � �  y d a C o u n t : � o   � ����� 0 ydacount ydaCount��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � l  � � ����� � l  � � ����� � n   � � � � � o   � ����� 0 color_white COLOR_WHITE � o   � ����� 0 _globalvars _globalVars��  ��  ��  ��   � o      �� 0 	fontcolor 	fontColor �  � � � r   � � � � � l  � � ��~�} � l  � � ��|�{ � n   � � � � � o   � ��z�z 0 color_black COLOR_BLACK � o   � ��y�y 0 _globalvars _globalVars�|  �{  �~  �}   � o      �x�x 0 background_color   �  � � � l  � ��w�v�u�w  �v  �u   �  � � � l   � ��t � ��t   � � �	set dayBeforeCount to get_string_variable "VLCoronaVirusCountryYDACount"	if dayBeforeCount is missing value then		set dayBeforeCount to "N/A"	end if	log "dayBeforeCount: " & dayBeforeCount
	    � � � ��  	 s e t   d a y B e f o r e C o u n t   t o   g e t _ s t r i n g _ v a r i a b l e   " V L C o r o n a V i r u s C o u n t r y Y D A C o u n t "  	 i f   d a y B e f o r e C o u n t   i s   m i s s i n g   v a l u e   t h e n  	 	 s e t   d a y B e f o r e C o u n t   t o   " N / A "  	 e n d   i f  	 l o g   " d a y B e f o r e C o u n t :   "   &   d a y B e f o r e C o u n t 
 	 �  � � � l  � ��s�r�q�s  �r  �q   �  � � � l   � ��p � ��p   � 1 +
	less (green)
	same (yellow)
	more (red)
	    � � � � V 
 	 l e s s   ( g r e e n ) 
 	 s a m e   ( y e l l o w ) 
 	 m o r e   ( r e d ) 
 	 �  � � � r   � � � � � m   � � � � � � �   � o      �o�o 0 
jsonoutput 
jsonOutput �  � � � l  � ��n � ��n   � T N	if todayCount is not "N/A" and dayBeforeCount is equal to dayBeforeCount then    � � � � � 	 i f   t o d a y C o u n t   i s   n o t   " N / A "   a n d   d a y B e f o r e C o u n t   i s   e q u a l   t o   d a y B e f o r e C o u n t   t h e n �  � � � Z   �� � �m � >  � � o   � ��l�l 0 
todaycount 
todayCount m   � � �  N / A  k   �f  I  � ��k	�j
�k .ascrcmnt****      � ****	 m   � �

 � . d i s p l a y i n g   t o d a y ' s   d a t a�j    l  � ��i�h�g�i  �h  �g    r   �
 c   � \   � o   � ��f�f 0 
todaycount 
todayCount o   ��e�e 0 ydacount ydaCount m  �d
�d 
nmbr o      �c�c 0 diff    l �b�a�`�b  �a  �`    l �_�^�]�_  �^  �]    l �\�[�Z�\  �[  �Z    Z  T ! ?  "#" o  �Y�Y 0 
todaycount 
todayCount# o  �X�X 0 ydacount ydaCount r   $%$ l &�W�V& l '�U�T' n  ()( o  �S�S 0 	color_red 	COLOR_RED) o  �R�R 0 _globalvars _globalVars�U  �T  �W  �V  % o      �Q�Q 0 	fontcolor 	fontColor  *+* F  #8,-, A  #*./. o  #&�P�P 0 
todaycount 
todayCount/ o  &)�O�O 0 ydacount ydaCount- A  -4010 o  -0�N�N 0 diff  1 ]  03232 m  01�M�M��3 o  12�L�L 0 	threshold 	THRESHOLD+ 4�K4 r  ;F565 l ;B7�J�I7 l ;B8�H�G8 n  ;B9:9 o  >B�F�F 0 color_green COLOR_GREEN: o  ;>�E�E 0 _globalvars _globalVars�H  �G  �J  �I  6 o      �D�D 0 	fontcolor 	fontColor�K  ! r  IT;<; l IP=�C�B= l IP>�A�@> n  IP?@? o  LP�?�? 0 color_yellow COLOR_YELLOW@ o  IL�>�> 0 _globalvars _globalVars�A  �@  �C  �B  < o      �=�= 0 	fontcolor 	fontColor ABA l UU�<�;�:�<  �;  �:  B CDC l UU�9�8�7�9  �8  �7  D EFE l UU�6GH�6  G   save space   H �II    s a v e   s p a c eF JKJ l UU�5LM�5  L F @ set displayText to "2DA: " & todayCount & "\\nYDA: " & ydaCount   M �NN �   s e t   d i s p l a y T e x t   t o   " 2 D A :   "   &   t o d a y C o u n t   &   " \ \ n Y D A :   "   &   y d a C o u n tK OPO r  UdQRQ b  U`STS b  U\UVU o  UX�4�4 0 
todaycount 
todayCountV m  X[WW �XX  \ n Y D A :  T o  \_�3�3 0 ydacount ydaCountR o      �2�2 0 displaytext displayTextP YZY l ee�1�0�/�1  �0  �/  Z [�.[ l ee�-�,�+�-  �,  �+  �.  �m   k  i�\\ ]^] I ip�*_�)
�* .ascrcmnt****      � ****_ m  il`` �aa h t o d a y ' s   d a t a   n o t   a v a i l a b l e ,   d i s p l a y   y e s t e r d a y ' s   d a t a�)  ^ bcb l qq�(de�(  d N H day before yesterday's count was stored in VLCoronaVirusCountryYDACount   e �ff �   d a y   b e f o r e   y e s t e r d a y ' s   c o u n t   w a s   s t o r e d   i n   V L C o r o n a V i r u s C o u n t r y Y D A C o u n tc ghg l qq�'�&�%�'  �&  �%  h iji l qq�$�#�"�$  �#  �"  j klk l qq�!mn�!  m 3 - displaying yesterday's data - let's use grey   n �oo Z   d i s p l a y i n g   y e s t e r d a y ' s   d a t a   -   l e t ' s   u s e   g r e yl pqp r  q|rsr l qxt� �t l qxu��u n  qxvwv o  tx�� 0 
color_grey 
COLOR_GREYw o  qt�� 0 _globalvars _globalVars�  �  �   �  s o      �� 0 	fontcolor 	fontColorq xyx l }}����  �  �  y z{z l }}�|}�  |   save space   } �~~    s a v e   s p a c e{ � l }}����  � J D set displayText to "YDA: " & ydaCount & "\\nDBY: " & dayBeforeCount   � ��� �   s e t   d i s p l a y T e x t   t o   " Y D A :   "   &   y d a C o u n t   &   " \ \ n D B Y :   "   &   d a y B e f o r e C o u n t� ��� r  }���� b  }���� b  }���� o  }��� 0 ydacount ydaCount� m  ���� ���  \ n D B Y :  � o  ����  0 daybeforecount dayBeforeCount� o      �� 0 displaytext displayText� ��� l ������  �  �  �   � ��� l ������  �  �  � ��� L  ���� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���  { " t e x t " :   "� o  ���
�
 0 displaytext displayText� m  ���� ��� 0 " , 
 " b a c k g r o u n d _ c o l o r " :   "� o  ���	�	 0 background_color  � m  ���� ��� $ " , 
 " f o n t _ c o l o r " :   "� o  ���� 0 	fontcolor 	fontColor� m  ���� ���  " }� ��� l ������  �  �  � ��� l ������  �  �  �   � m   X [���                                                                                      @ alis    F  Macintosh HD                   BD ����BetterTouchTool.app                                            ����            ����  
 cu             Applications  #/:Applications:BetterTouchTool.app/   (  B e t t e r T o u c h T o o l . a p p    M a c i n t o s h   H D   Applications/BetterTouchTool.app  / ��  ��    ��� l     � �����   ��  ��  � ���� l     ��������  ��  ��  ��       ������  � ��
�� .aevtoappnull  �   � ****� �� ��������
�� .aevtoappnull  �   � ****�� 0 argv  ��  � ���� 0 argv  � :������ #�� +������ I�������� P�������� r��� ����� � ����������� ��� ��������� ���
������������W��`��������� 0 debug DEBUG�� 2�� 0 	threshold 	THRESHOLD�� 0 threshold_pct THRESHOLD_PCT�� 0 country COUNTRY
�� 
cobj
�� 
TEXT
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
�� .sysoexecTEXT���     TEXT�� 0 
covid_data  �� 0 	splitline 	splitLine�� 0 output_lines  �� 0 
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
COLOR_GREY���eE�O�E�O�E�O� �E�Y 
��k/�&E�O� )j 
�,�&E�UO��%E�O*a �/j E` O*a �a %/j E` Oa Q�f  a �%j E` Y 	a E` O)a ,_ a l+ E` O_ �k/E` O_ �l/E` O_ �m/E` Oa  _ %j !Oa "_ %j !O_ a #,E` $O_ a %,E` &Oa 'E` (O_ a ) xa *j !O_ _ a +&E` ,O_ _  _ a -,E` $Y 3_ _ 	 _ ,i� a .& _ a /,E` $Y _ a 0,E` $O_ a 1%_ %E` 2OPY 'a 3j !O_ a 4,E` $O_ a 5%_ %E` 2OPOa 6_ 2%a 7%_ &%a 8%_ $%a 9%OPU ascr  ��ޭ