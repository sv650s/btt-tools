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
alis h l  4 9 i���� i b   4 9 j k j o   4 5���� 0 _mypath _myPath k m   5 8 l l � m m   g l o b a l - v a r s . s c p t��  ��  ��  ��  ��   e o      ���� 0 _globalvars _globalVars��  ��   b  n o n l     ��������  ��  ��   o  p q p l     ��������  ��  ��   q  r s r l     ��������  ��  ��   s  t u t l     �� v w��   v 8 2 we still have to tell the group what data to pull    w � x x d   w e   s t i l l   h a v e   t o   t e l l   t h e   g r o u p   w h a t   d a t a   t o   p u l l u  y z y l  C� {���� { O   C� | } | k   I� ~ ~   �  I  I T�� � �
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
 	 �  � � � Z   U � � ��� � � =  U X � � � o   U V���� 0 debug DEBUG � m   V W��
�� boovfals � Z   [ z � ��� � � =  [ ^ � � � o   [ \���� *0 display_two_columns DISPLAY_TWO_COLUMNS � m   \ ]��
�� boovtrue � r   a l � � � l  a h ����� � I  a h�� ���
�� .sysoexecTEXT���     TEXT � m   a d � � � � � s o u r c e   ~ / . b a s h _ p r o f i l e   & &   c d   ~ / D r o p b o x / p r o j e c t s / b t t   & &   c o n d a   r u n   - n   b t t   p y t h o n   g e t _ c o v i d _ d a i l y _ d a t a . p y   C O U N T R Y   N e t h e r l a n d s   - - s o u r c e   t h - d a t a��  ��  ��   � o      ���� 0 th_data  ��   � r   o z � � � l  o v ����� � I  o v�� ���
�� .sysoexecTEXT���     TEXT � m   o r � � � � � � s o u r c e   ~ / . b a s h _ p r o f i l e   & &   c d   ~ / D r o p b o x / p r o j e c t s / b t t   & &   c o n d a   r u n   - n   b t t   p y t h o n   g e t _ c o v i d _ d a i l y _ d a t a . p y   C O U N T R Y   N e t h e r l a n d s��  ��  ��   � o      ���� 0 th_data  ��   � Z   } � � ��� � � =  } � � � � o   } ~���� *0 display_two_columns DISPLAY_TWO_COLUMNS � m   ~ ��
�� boovtrue � k   � � � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � m   � � � � � � �  N / A | N / A | 2 0 5 | 4 6 � o      ���� 0 th_data   �  ��� � l  � ��� � ���   � %  set th_data to "215|32|205|46"    � � � � >   s e t   t h _ d a t a   t o   " 2 1 5 | 3 2 | 2 0 5 | 4 6 "��  ��   � r   � � � � � m   � � � � � � �  2 0 5 | 4 6 � o      ���� 0 th_data   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n  � � � � � n  � � � � � I   � ��� ����� 0 	splitline 	splitLine �  � � � o   � ����� 0 th_data   �  ��� � m   � � � � � � �  |��  ��   � o   � ����� 0 
_globalfns 
_globalFns �  f   � � � o      ���� 0 output_lines   �  � � � Z   � � ��� � � =  � � � � � o   � ����� *0 display_two_columns DISPLAY_TWO_COLUMNS � m   � ���
�� boovtrue � k   � � � �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � ���  � o   � ��~�~ 0 output_lines   � o      �}�} 0 
todaycount 
todayCount �  � � � r   � � � � � n   � � � � � 4   � ��| �
�| 
cobj � m   � ��{�{  � o   � ��z�z 0 output_lines   � o      �y�y 0 todaycountbkk todayCountBKK �  � � � r   � � � � � n   � � � � � 4   � ��x �
�x 
cobj � m   � ��w�w  � o   � ��v�v 0 output_lines   � o      �u�u 0 ydacount ydaCount �  ��t � r   � � � � � n   � � � � � 4   � ��s �
�s 
cobj � m   � ��r�r  � o   � ��q�q 0 output_lines   � o      �p�p 0 ydacountbkk ydaCountBKK�t  ��   � k   � � �  � � � r   � � � � � n   � � � � � 4   � ��o �
�o 
cobj � m   � ��n�n  � o   � ��m�m 0 output_lines   � o      �l�l 0 
todaycount 
todayCount �  � � � r   �  � � � n   � � � � � 4   � ��k �
�k 
cobj � m   � ��j�j  � o   � ��i�i 0 output_lines   � o      �h�h 0 ydacount ydaCount �  ��g � r   � � � n  	   4  	�f
�f 
cobj m  �e�e  o  �d�d 0 output_lines   � o      �c�c  0 daybeforecount dayBeforeCount�g   �  l �b�a�`�b  �a  �`    I �_�^
�_ .ascrcmnt****      � **** b  	 m  

 �  t o d a y C o u n t :	 o  �]�] 0 
todaycount 
todayCount�^    I %�\�[
�\ .ascrcmnt****      � **** b  ! m   �  y d a C o u n t : o   �Z�Z 0 ydacount ydaCount�[    l &&�Y�X�W�Y  �X  �W    r  &1 l &-�V�U l &-�T�S n  &- o  )-�R�R 0 color_white COLOR_WHITE o  &)�Q�Q 0 _globalvars _globalVars�T  �S  �V  �U   o      �P�P 0 	fontcolor 	fontColor  r  2=  l 29!�O�N! l 29"�M�L" n  29#$# o  59�K�K 0 color_black COLOR_BLACK$ o  25�J�J 0 _globalvars _globalVars�M  �L  �O  �N    o      �I�I 0 background_color   %&% l >>�H�G�F�H  �G  �F  & '(' l  >>�E)*�E  ) � �	set dayBeforeCountTHA to get_string_variable "VLCoronaVirusCountryYDACountTHA"	if dayBeforeCountTHA is missing value then		set dayBeforeCountTHA to "N/A"	end if	log "dayBeforeCountTHA: " & dayBeforeCountTHA
	   * �++�  	 s e t   d a y B e f o r e C o u n t T H A   t o   g e t _ s t r i n g _ v a r i a b l e   " V L C o r o n a V i r u s C o u n t r y Y D A C o u n t T H A "  	 i f   d a y B e f o r e C o u n t T H A   i s   m i s s i n g   v a l u e   t h e n  	 	 s e t   d a y B e f o r e C o u n t T H A   t o   " N / A "  	 e n d   i f  	 l o g   " d a y B e f o r e C o u n t T H A :   "   &   d a y B e f o r e C o u n t T H A 
 	( ,-, l >>�D�C�B�D  �C  �B  - ./. l  >>�A01�A  0 1 +
	less (green)
	same (yellow)
	more (red)
	   1 �22 V 
 	 l e s s   ( g r e e n ) 
 	 s a m e   ( y e l l o w ) 
 	 m o r e   ( r e d ) 
 	/ 343 r  >E565 m  >A77 �88  6 o      �@�@ 0 
jsonoutput 
jsonOutput4 9:9 l FF�?;<�?  ; ] W	if todayCountTHA is not "N/A" and dayBeforeCountTHA is equal to dayBeforeCountTHA then   < �== � 	 i f   t o d a y C o u n t T H A   i s   n o t   " N / A "   a n d   d a y B e f o r e C o u n t T H A   i s   e q u a l   t o   d a y B e f o r e C o u n t T H A   t h e n: >?> Z  F�@A�>B@ > FMCDC o  FI�=�= 0 
todaycount 
todayCountD m  ILEE �FF  N / AA k  P�GG HIH I PW�<J�;
�< .ascrcmnt****      � ****J m  PSKK �LL . d i s p l a y i n g   t o d a y ' s   d a t a�;  I MNM l XX�:OP�:  O = 7 set this so we can derive color tomorrow when it's N/A   P �QQ n   s e t   t h i s   s o   w e   c a n   d e r i v e   c o l o r   t o m o r r o w   w h e n   i t ' s   N / AN RSR l  XX�9TU�9  T � �		set_persistent_string_variable "VLCoronaVirusCountryYDACountTHA" to ydaCountTHA		if DISPLAY_TWO_COLUMNS is true then			set_persistent_string_variable "VLCoronaVirusCountryYDACountBKK" to ydaCountBKK		end if
		   U �VV�  	 	 s e t _ p e r s i s t e n t _ s t r i n g _ v a r i a b l e   " V L C o r o n a V i r u s C o u n t r y Y D A C o u n t T H A "   t o   y d a C o u n t T H A  	 	 i f   D I S P L A Y _ T W O _ C O L U M N S   i s   t r u e   t h e n  	 	 	 s e t _ p e r s i s t e n t _ s t r i n g _ v a r i a b l e   " V L C o r o n a V i r u s C o u n t r y Y D A C o u n t B K K "   t o   y d a C o u n t B K K  	 	 e n d   i f 
 	 	S WXW l XX�8�7�6�8  �7  �6  X YZY r  Xg[\[ c  Xc]^] \  X__`_ o  X[�5�5 0 
todaycount 
todayCount` o  [^�4�4 0 ydacount ydaCount^ m  _b�3
�3 
nmbr\ o      �2�2 0 diff  Z aba l hh�1�0�/�1  �0  �/  b cdc l hh�.�-�,�.  �-  �,  d efe l hh�+�*�)�+  �*  �)  f ghg Z  h�ijkli ?  homnm o  hk�(�( 0 
todaycount 
todayCountn o  kn�'�' 0 ydacount ydaCountj r  r}opo l ryq�&�%q l ryr�$�#r n  rysts o  uy�"�" 0 	color_red 	COLOR_REDt o  ru�!�! 0 _globalvars _globalVars�$  �#  �&  �%  p o      � �  0 	fontcolor 	fontColork uvu F  ��wxw A  ��yzy o  ���� 0 
todaycount 
todayCountz o  ���� 0 ydacount ydaCountx A  ��{|{ o  ���� 0 diff  | ]  ��}~} m  ������~ o  ���� 0 	threshold 	THRESHOLDv � r  ����� l ������ l ������ n  ����� o  ���� 0 color_green COLOR_GREEN� o  ���� 0 _globalvars _globalVars�  �  �  �  � o      �� 0 	fontcolor 	fontColor�  l r  ����� l ������ l ������ n  ����� o  ���� 0 color_yellow COLOR_YELLOW� o  ���� 0 _globalvars _globalVars�  �  �  �  � o      �� 0 	fontcolor 	fontColorh ��� l ����
�	�  �
  �	  � ��� l ������  �  �  � ��� Z  ������� = ����� o  ���� *0 display_two_columns DISPLAY_TWO_COLUMNS� m  ���
� boovtrue� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� 
 2 D A :  � o  ���� 0 
todaycount 
todayCount� m  ���� ���  \ t� o  ���� 0 ydacount ydaCount� m  ���� ���  \ n B K K :                � o  ��� �  0 todaycountbkk todayCountBKK� m  ���� ���  \ t� o  ������ 0 ydacountbkk ydaCountBKK� o      ���� 0 displaytext displayText�  � r  ����� b  ����� b  ����� b  ����� m  ���� ��� 
 2 D A :  � o  ������ 0 
todaycount 
todayCount� m  ���� ���  \ n Y D A :  � o  ������ 0 ydacount ydaCount� o      ���� 0 displaytext displayText� ��� l ����������  ��  ��  � ���� l ����������  ��  ��  ��  �>  B k  ���� ��� I �������
�� .ascrcmnt****      � ****� m  ���� ��� h t o d a y ' s   d a t a   n o t   a v a i l a b l e ,   d i s p l a y   y e s t e r d a y ' s   d a t a��  � ��� l ��������  � Q K day before yesterday's count was stored in VLCoronaVirusCountryYDACountTHA   � ��� �   d a y   b e f o r e   y e s t e r d a y ' s   c o u n t   w a s   s t o r e d   i n   V L C o r o n a V i r u s C o u n t r y Y D A C o u n t T H A� ��� l ����������  ��  ��  � ��� Z  �5������� = ���� o  ������ *0 display_two_columns DISPLAY_TWO_COLUMNS� m  � ��
�� boovtrue� k  1�� ��� r  ��� I �����
�� .BttGVarSnull���     ****� m  �� ��� > V L C o r o n a V i r u s C o u n t r y Y D A C o u n t N L D��  � o      ����  0 daybeforecount dayBeforeCount� ��� l ������  � 8 2 we may not have this value the first time you run   � ��� d   w e   m a y   n o t   h a v e   t h i s   v a l u e   t h e   f i r s t   t i m e   y o u   r u n� ��� Z  %������� = ��� o  ���� &0 daybeforecountbkk dayBeforeCountBKK� m  ��
�� 
msng� r  !��� m  �� ���  N / A� o      ���� &0 daybeforecountbkk dayBeforeCountBKK��  ��  � ���� I &1�����
�� .ascrcmnt****      � ****� b  &-��� m  &)�� ��� & d a y B e f o r e C o u n t B K K :  � o  ),���� &0 daybeforecountbkk dayBeforeCountBKK��  ��  ��  ��  � ��� l 66��������  ��  ��  � ��� l 66��������  ��  ��  � ��� l 66������  � 3 - displaying yesterday's data - let's use grey   � ��� Z   d i s p l a y i n g   y e s t e r d a y ' s   d a t a   -   l e t ' s   u s e   g r e y� ��� r  6A��� l 6=������ l 6=������ n  6=��� o  9=���� 0 
color_grey 
COLOR_GREY� o  69���� 0 _globalvars _globalVars��  ��  ��  ��  � o      ���� 0 	fontcolor 	fontColor� � � l BB��������  ��  ��     Z  B��� = BE o  BC���� *0 display_two_columns DISPLAY_TWO_COLUMNS m  CD��
�� boovtrue r  Hk	 b  Hg

 b  Hc b  H_ b  H[ b  HW b  HS b  HO m  HK � 
 Y D A :   o  KN���� 0 ydacount ydaCount m  OR �  \ t o  SV����  0 daybeforecount dayBeforeCount m  WZ �  \ n B K K :                 o  [^���� 0 ydacountbkk ydaCountBKK m  _b �  \ t o  cf���� &0 daybeforecountbkk dayBeforeCountBKK	 o      ���� 0 displaytext displayText��   r  n� !  b  n}"#" b  ny$%$ b  nu&'& m  nq(( �)) 
 Y D A :  ' o  qt���� 0 ydacount ydaCount% m  ux** �++  \ n D B Y :  # o  y|����  0 daybeforecount dayBeforeCount! o      ���� 0 displaytext displayText ,��, l ����������  ��  ��  ��  ? -.- l ����������  ��  ��  . /0/ L  ��11 b  ��232 b  ��454 b  ��676 b  ��898 b  ��:;: b  ��<=< m  ��>> �??  { " t e x t " :   "= o  ������ 0 displaytext displayText; m  ��@@ �AA 0 " , 
 " b a c k g r o u n d _ c o l o r " :   "9 o  ������ 0 background_color  7 m  ��BB �CC $ " , 
 " f o n t _ c o l o r " :   "5 o  ������ 0 	fontcolor 	fontColor3 m  ��DD �EE  " }0 FGF l ����������  ��  ��  G H��H l ����������  ��  ��  ��   } m   C FII�                                                                                      @ alis    F  Macintosh HD                   BD ����BetterTouchTool.app                                            ����            ����  
 cu             Applications  #/:Applications:BetterTouchTool.app/   (  B e t t e r T o u c h T o o l . a p p    M a c i n t o s h   H D   Applications/BetterTouchTool.app  / ��  ��  ��   z JKJ l     ��������  ��  ��  K L��L l     ��������  ��  ��  ��       "��MN���� ��OPQRSTUVWXY7��Z����������������������������  M  ������������������������������������������������~�}�|�{�z�y�x�w
�� .aevtoappnull  �   � ****�� 0 debug DEBUG�� *0 display_two_columns DISPLAY_TWO_COLUMNS�� "0 current_country CURRENT_COUNTRY�� 0 	threshold 	THRESHOLD�� 0 _mypath _myPath�� 0 gf_path  �� 0 
_globalfns 
_globalFns�� 0 _globalvars _globalVars�� 0 th_data  �� 0 output_lines  �� 0 
todaycount 
todayCount�� 0 ydacount ydaCount��  0 daybeforecount dayBeforeCount�� 0 	fontcolor 	fontColor�� 0 background_color  �� 0 
jsonoutput 
jsonOutput�� 0 diff  �� 0 displaytext displayText��  ��  ��  ��  �  �~  �}  �|  �{  �z  �y  �x  �w  N �v[�u�t\]�s
�v .aevtoappnull  �   � ****[ k    �^^  __  ``  aa  %bb  3cc  Add  Jee  aff  y�r�r  �u  �t  \  ] P�q�p �o�n�m @�l�k�j�i H�h�g�f�e l�dI ��c�b ��a�` � � � ��_�^�]�\�[�Z�Y�X�W
�V�U�T�S�R7�QEK�P�O�N�M�L�K�����J�����I�H�G���F(*>@BD�q 0 debug DEBUG�p *0 display_two_columns DISPLAY_TWO_COLUMNS�o "0 current_country CURRENT_COUNTRY�n 2�m 0 	threshold 	THRESHOLD
�l .earsffdralis        afdr
�k 
ctnr
�j 
ctxt�i 0 _mypath _myPath�h 0 gf_path  
�g 
alis
�f .sysoloadscpt        file�e 0 
_globalfns 
_globalFns�d 0 _globalvars _globalVars
�c 
bTpV
�b .BtttSetPnull���     ****
�a .sysoexecTEXT���     TEXT�` 0 th_data  �_ 0 	splitline 	splitLine�^ 0 output_lines  
�] 
cobj�\ 0 
todaycount 
todayCount�[ 0 todaycountbkk todayCountBKK�Z 0 ydacount ydaCount�Y �X 0 ydacountbkk ydaCountBKK�W  0 daybeforecount dayBeforeCount
�V .ascrcmnt****      � ****�U 0 color_white COLOR_WHITE�T 0 	fontcolor 	fontColor�S 0 color_black COLOR_BLACK�R 0 background_color  �Q 0 
jsonoutput 
jsonOutput
�P 
nmbr�O 0 diff  �N 0 	color_red 	COLOR_RED
�M 
bool�L 0 color_green COLOR_GREEN�K 0 color_yellow COLOR_YELLOW�J 0 displaytext displayText
�I .BttGVarSnull���     ****�H &0 daybeforecountbkk dayBeforeCountBKK
�G 
msng�F 0 
color_grey 
COLOR_GREY�s�fE�OfE�O�E�O�E�O� )j �,�&E�UO��%E�O*��/j E�O*��a %/j E` Oa [a a �l O�f  $�e  a j E` Y a j E` Y �e  a E` OPY 	a E` O)�,_ a l+ E` O�e  :_ a k/E`  O_ a l/E` !O_ a m/E` "O_ a a #/E` $Y (_ a k/E`  O_ a l/E` "O_ a m/E` %Oa &_  %j 'Oa (_ "%j 'O_ a ),E` *O_ a +,E` ,Oa -E` .O_  a / �a 0j 'O_  _ "a 1&E` 2O_  _ " _ a 3,E` *Y 3_  _ "	 _ 2i� a 4& _ a 5,E` *Y _ a 6,E` *O�e  (a 7_  %a 8%_ "%a 9%_ !%a :%_ $%E` ;Y a <_  %a =%_ "%E` ;OPY �a >j 'O�e  2a ?j @E` %O_ Aa B  a CE` AY hOa D_ A%j 'Y hO_ a E,E` *O�e  (a F_ "%a G%_ %%a H%_ $%a I%_ A%E` ;Y a J_ "%a K%_ %%E` ;OPOa L_ ;%a M%_ ,%a N%_ *%a O%OPU
�� boovfals
�� boovfals�� 2O �gg f M a c i n t o s h   H D : U s e r s : v i l u k : D r o p b o x : p r o j e c t s : b t t : s c p t :P �hh � M a c i n t o s h   H D : U s e r s : v i l u k : D r o p b o x : p r o j e c t s : b t t : s c p t : g l o b a l - f u n c t i o n s . s c p tQ �Ei j�E  i k      kk lml l      �Dno�D  n��
This file contains functions that can be loaded by other scripts

To load (assumes global-functions.scpt is in the same directory of script being executed):
	tell application "Finder" to set _myPath to container of (path to me) as text	set gf_path to _myPath & "global-functions.scpt"	set _globalFns to load script (alias (gf_path))


To use function:
	set new_string to _globalFns's splitString(string, delimiter)
   o �ppF 
 T h i s   f i l e   c o n t a i n s   f u n c t i o n s   t h a t   c a n   b e   l o a d e d   b y   o t h e r   s c r i p t s 
 
 T o   l o a d   ( a s s u m e s   g l o b a l - f u n c t i o n s . s c p t   i s   i n   t h e   s a m e   d i r e c t o r y   o f   s c r i p t   b e i n g   e x e c u t e d ) : 
 	 t e l l   a p p l i c a t i o n   " F i n d e r "   t o   s e t   _ m y P a t h   t o   c o n t a i n e r   o f   ( p a t h   t o   m e )   a s   t e x t  	 s e t   g f _ p a t h   t o   _ m y P a t h   &   " g l o b a l - f u n c t i o n s . s c p t "  	 s e t   _ g l o b a l F n s   t o   l o a d   s c r i p t   ( a l i a s   ( g f _ p a t h ) )  
 
 
 T o   u s e   f u n c t i o n : 
 	 s e t   n e w _ s t r i n g   t o   _ g l o b a l F n s ' s   s p l i t S t r i n g ( s t r i n g ,   d e l i m i t e r ) 
m qrq l     �C�B�A�C  �B  �A  r sts l      �@uv�@  u � �
Splits a string using delimiter specified

Parameters:
* theString - string to split
* theDelimiter - delimiter used to split string

Return:
* array of split string
   v �wwN 
 S p l i t s   a   s t r i n g   u s i n g   d e l i m i t e r   s p e c i f i e d 
 
 P a r a m e t e r s : 
 *   t h e S t r i n g   -   s t r i n g   t o   s p l i t 
 *   t h e D e l i m i t e r   -   d e l i m i t e r   u s e d   t o   s p l i t   s t r i n g 
 
 R e t u r n : 
 *   a r r a y   o f   s p l i t   s t r i n g 
t xyx i     z{z I      �?|�>�? 0 	splitline 	splitLine| }~} o      �=�= 0 	thestring 	theString~ �< o      �;�; 0 thedelimiter theDelimiter�<  �>  { k     &�� ��� l     �:���:  � . ( save delimiters to restore old settings   � ��� P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s� ��� r     ��� n    ��� 1    �9
�9 
txdl� 1     �8
�8 
ascr� o      �7�7 0 olddelimiters oldDelimiters� ��� l   �6���6  � - ' set delimiters to delimiter to be used   � ��� N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e d� ��� r    ��� o    �5�5 0 thedelimiter theDelimiter� n     ��� 1    
�4
�4 
txdl� 1    �3
�3 
ascr� ��� l   �2���2  �   create the array   � ��� "   c r e a t e   t h e   a r r a y� ��� r    ��� n    ��� 2    �1
�1 
citm� o    �0�0 0 	thestring 	theString� o      �/�/ 0 thearray theArray� ��� l   �.���.  �   restore the old setting   � ��� 0   r e s t o r e   t h e   o l d   s e t t i n g� ��� r    ��� o    �-�- 0 olddelimiters oldDelimiters� n     ��� 1    �,
�, 
txdl� 1    �+
�+ 
ascr� ��� l   �*���*  �   return the result   � ��� $   r e t u r n   t h e   r e s u l t� ��� I   �)��(
�) .ascrcmnt****      � ****� m    �� ���  t h e A r r a y�(  � ��� I   #�'��&
�' .ascrcmnt****      � ****� o    �%�% 0 thearray theArray�&  � ��$� L   $ &�� o   $ %�#�# 0 thearray theArray�$  y ��� l     �"�!� �"  �!  �   � ��� l      ����  �
Breaks a line into 2 with first line having specified number of words

Parameters:
* aString - string to split
* firstLineWordCount - number words to keep in first line

Return:
* new string with '\n' (newline) inserted between firstLineWordCount and firstLineWordCount + 1

   � ���( 
 B r e a k s   a   l i n e   i n t o   2   w i t h   f i r s t   l i n e   h a v i n g   s p e c i f i e d   n u m b e r   o f   w o r d s 
 
 P a r a m e t e r s : 
 *   a S t r i n g   -   s t r i n g   t o   s p l i t 
 *   f i r s t L i n e W o r d C o u n t   -   n u m b e r   w o r d s   t o   k e e p   i n   f i r s t   l i n e 
 
 R e t u r n : 
 *   n e w   s t r i n g   w i t h   ' \ n '   ( n e w l i n e )   i n s e r t e d   b e t w e e n   f i r s t L i n e W o r d C o u n t   a n d   f i r s t L i n e W o r d C o u n t   +   1 
 
� ��� i    ��� I      ���� &0 breakintotwolines breakIntoTwoLines� ��� o      �� 0 astring aString� ��� o      �� (0 firstlinewordcount firstLineWordCount�  �  � k     w�� ��� I    ���
� .ascrcmnt****      � ****� b     ��� m     �� ��� , B r e a k i n g   l i n e   i n t o   2 :  � o    �� 0 astring aString�  � ��� r    ��� n   ��� I   	 ���� 0 	splitline 	splitLine� ��� o   	 
�� 0 astring aString� ��� m   
 �� ���   �  �  �  f    	� o      �� 0 astring_list aString_list� ��� r    ��� m    �� ���  � o      �� 0 
new_string  � ��� r    ��� m    �� � o      �� 0 counter  � ��� X    l���� k   * g�� ��� I  * 1���
� .ascrcmnt****      � ****� b   * -��� m   * +�� ���  a W o r d :  � o   + ,�� 0 aword aWord�  � ��� Z   2 W����� =  2 5��� o   2 3�
�
 0 counter  � m   3 4�	�	 � r   8 ;��� o   8 9�� 0 aword aWord� o      �� 0 
new_string  � � � =  > C o   > ?�� 0 counter   [   ? B o   ? @�� (0 firstlinewordcount firstLineWordCount m   @ A��   � r   F M b   F K	 b   F I

 o   F G�� 0 
new_string   m   G H �  \ n	 o   I J�� 0 aword aWord o      � �  0 
new_string  �  � r   P W b   P U b   P S o   P Q���� 0 
new_string   m   Q R �    o   S T���� 0 aword aWord o      ���� 0 
new_string  � �� Z   X g���� >  X [ o   X Y���� 0 aword aWord m   Y Z �  - r   ^ c [   ^ a  o   ^ _���� 0 counter    m   _ `����  o      ���� 0 counter  ��  ��  ��  � 0 aword aWord� o    ���� 0 astring_list aString_list� !"! I  m t��#��
�� .ascrcmnt****      � ****# b   m p$%$ m   m n&& �''  n e w _ s t r i n g :  % o   n o���� 0 
new_string  ��  " (��( L   u w)) o   u v���� 0 
new_string  ��  � *+* l     ��������  ��  ��  + ,-, l      ��./��  . � �
Truncates a string and only keep numberOfWords

Parameters:
* aString - string to truncate
* numberOfWords - number of words to keep

Return:
* string with only number of words to keep

   / �00v 
 T r u n c a t e s   a   s t r i n g   a n d   o n l y   k e e p   n u m b e r O f W o r d s 
 
 P a r a m e t e r s : 
 *   a S t r i n g   -   s t r i n g   t o   t r u n c a t e 
 *   n u m b e r O f W o r d s   -   n u m b e r   o f   w o r d s   t o   k e e p 
 
 R e t u r n : 
 *   s t r i n g   w i t h   o n l y   n u m b e r   o f   w o r d s   t o   k e e p 
 
- 1��1 i    232 I      ��4����  0 truncatestring truncateString4 565 o      ���� 0 astring aString6 7��7 o      ���� 0 numberofwords numberOfWords��  ��  3 k     k88 9:9 l     ��������  ��  ��  : ;<; I    ��=��
�� .ascrcmnt****      � ****= b     	>?> b     @A@ b     BCB b     DED m     FF �GG & T r u n c a t i n g   s t r i n g :  E o    ���� 0 astring aStringC m    HH �II    t o  A o    ���� 0 numberofwords numberOfWords? m    JJ �KK    w o r d s  ��  < LML r    NON n   PQP I    ��R���� 0 	splitline 	splitLineR STS o    ���� 0 astring aStringT U��U m    VV �WW   ��  ��  Q  f    O o      ���� 0 	word_list  M XYX r    Z[Z m    \\ �]]  [ o      ���� 0 
new_string  Y ^_^ r    `a` m    ���� a o      ���� 0 counter  _ bcb X     `d��ed k   0 [ff ghg I  0 7��i��
�� .ascrcmnt****      � ****i b   0 3jkj m   0 1ll �mm  a W o r d :  k o   1 2���� 0 aword aWord��  h n��n Z   8 [op��qo ?   8 ;rsr o   8 9���� 0 counter  s o   9 :���� 0 numberofwords numberOfWordsp  S   > ?��  q k   B [tt uvu Z   B Uwx��yw =  B Ez{z o   B C���� 0 counter  { m   C D���� x r   H K|}| o   H I���� 0 aword aWord} o      ���� 0 
new_string  ��  y r   N U~~ b   N S��� b   N Q��� o   N O���� 0 
new_string  � m   O P�� ���   � o   Q R���� 0 aword aWord o      ���� 0 
new_string  v ���� r   V [��� [   V Y��� o   V W���� 0 counter  � m   W X���� � o      ���� 0 counter  ��  ��  �� 0 aword aWorde o   # $���� 0 	word_list  c ��� I  a h�����
�� .ascrcmnt****      � ****� b   a d��� m   a b�� ��� > T r u n c a t e d   s t r i n g   ( n e w _ s t r i n g ) :  � o   b c���� 0 
new_string  ��  � ���� L   i k�� o   i j���� 0 
new_string  ��  ��  j ��������  � �������� 0 	splitline 	splitLine�� &0 breakintotwolines breakIntoTwoLines��  0 truncatestring truncateString� ��{���������� 0 	splitline 	splitLine�� ����� �  ������ 0 	thestring 	theString�� 0 thedelimiter theDelimiter��  � ���������� 0 	thestring 	theString�� 0 thedelimiter theDelimiter�� 0 olddelimiters oldDelimiters�� 0 thearray theArray� ���������
�� 
ascr
�� 
txdl
�� 
citm
�� .ascrcmnt****      � ****�� '��,E�O���,FO��-E�O���,FO�j O�j O�� ������������� &0 breakintotwolines breakIntoTwoLines�� ����� �  ������ 0 astring aString�� (0 firstlinewordcount firstLineWordCount��  � �������������� 0 astring aString�� (0 firstlinewordcount firstLineWordCount�� 0 astring_list aString_list�� 0 
new_string  �� 0 counter  �� 0 aword aWord� ��������������&
�� .ascrcmnt****      � ****�� 0 	splitline 	splitLine
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� x�%j O)��l+ E�O�E�OkE�O Q�[��l kh �%j O�k  �E�Y ��k  ��%�%E�Y 	��%�%E�O�� 
�kE�Y h[OY��O�%j O�� ��3����������  0 truncatestring truncateString�� ����� �  ������ 0 astring aString�� 0 numberofwords numberOfWords��  � �������������� 0 astring aString�� 0 numberofwords numberOfWords�� 0 	word_list  �� 0 
new_string  �� 0 counter  �� 0 aword aWord� FHJ��V��\������l��
�� .ascrcmnt****      � ****�� 0 	splitline 	splitLine
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� l�%�%�%�%j O)��l+ E�O�E�OkE�O ?�[��l 	kh �%j O�� Y �k  �E�Y 	��%�%E�O�kE�[OY��O�%j O�R ��� ���  � k      �� ��� l     ������  � K E since this is being read by other files. we must use property format   � ��� �   s i n c e   t h i s   i s   b e i n g   r e a d   b y   o t h e r   f i l e s .   w e   m u s t   u s e   p r o p e r t y   f o r m a t� ��� l     ������  � #  use this to load into script   � ��� :   u s e   t h i s   t o   l o a d   i n t o   s c r i p t� ��� l     ������  � c ] set globalVars to (load script "/Users/vinceluk/Dropbox/projects/btt/scpt/global-vars.scpt")   � ��� �   s e t   g l o b a l V a r s   t o   ( l o a d   s c r i p t   " / U s e r s / v i n c e l u k / D r o p b o x / p r o j e c t s / b t t / s c p t / g l o b a l - v a r s . s c p t " )� ��� l     ������  � "  use this to access variable   � ��� 8   u s e   t h i s   t o   a c c e s s   v a r i a b l e� ��� l     ������  � 6 0 set variable to (the COLOR_WHITE of globalVars)   � ��� `   s e t   v a r i a b l e   t o   ( t h e   C O L O R _ W H I T E   o f   g l o b a l V a r s )� ��� l     ��~�}�  �~  �}  � ��� l     �|�{�z�|  �{  �z  � ��� j     �y��y 0 color_white COLOR_WHITE� m     �� ��� $ 2 5 5 ,   2 5 5 ,   2 5 5 ,   2 5 5� ��� j    �x��x 0 color_black COLOR_BLACK� m    YY ���  0 ,   0 ,   0 ,   2 5 5� ��� j    �w��w 0 color_green COLOR_GREEN� m    XX ���  0 ,   2 2 8 ,   0 ,   2 5 5� ��� j   	 �v��v 0 color_yellow COLOR_YELLOW� m   	 
�� ���  2 5 5 , 2 5 5 , 0 ,   2 5 5� ��� j    �u��u 0 color_orange COLOR_ORANGE� m    �� ��� " 2 5 5 ,   1 5 9 ,   4 0 ,   2 5 5� ��� l     �t���t  � 2 , property COLOR_ORANGE : "255, 153, 51, 255"   � ��� X   p r o p e r t y   C O L O R _ O R A N G E   :   " 2 5 5 ,   1 5 3 ,   5 1 ,   2 5 5 "� ��� j    �s��s 0 	color_red 	COLOR_RED� m    �� ��� $ 2 5 5 ,   1 0 2 ,   1 0 2 ,   2 5 5� ��� l     �r���r  � , & property COLOR_RED : "252, 3, 3, 255"   � ��� L   p r o p e r t y   C O L O R _ R E D   :   " 2 5 2 ,   3 ,   3 ,   2 5 5 "� ��� j    �q��q 0 color_purple COLOR_PURPLE� m    �� ���   2 5 5 ,   0 ,   2 5 5 ,   2 5 5� ��� j    �p��p 0 color_maroon COLOR_MAROON� m    �� ���   2 0 4 ,   0 ,   1 0 2 ,   2 5 5� ��� j    �o��o 0 
color_grey 
COLOR_GREY� m    �� ��� $ 1 9 0 ,   1 9 0 ,   1 9 0 ,   2 5 5� ��� l     �n�m�l�n  �m  �l  � ��� l     �k���k  � 3 - TODO: might need to double escapte this path   � ��� Z   T O D O :   m i g h t   n e e d   t o   d o u b l e   e s c a p t e   t h i s   p a t h� ��� j    0�j��j 0 	home_path  � n    /   1   * .�i
�i 
psxp l   *�h�g I   *�f
�f .earsffdralis        afdr m     �e
�e afdrcusr �d�c
�d 
rtyp m   # &�b
�b 
TEXT�c  �h  �g  �  j   1 7�a�a 0 	icon_path 	ICON_PATH b   1 6	
	 o   1 2�`�` 0 	home_path  
 m   2 5 � 6 D r o p b o x / p r o j e c t s / b t t / i c o n s /  l     �_�^�]�_  �^  �]    l    �\�[ I    �Z�Y
�Z .ascrcmnt****      � **** b      m      �  h o m e _ p a t h :   o    �X�X 0 	home_path  �Y  �\  �[   �W l   �V�U I   �T�S
�T .ascrcmnt****      � **** b     m     �  I C O N _ P A T H :   o    �R�R 0 	icon_path 	ICON_PATH�S  �V  �U  �W  � �Q�YX������ !�Q   �P�O�N�M�L�K�J�I�H�G�F�E�P 0 color_white COLOR_WHITE�O 0 color_black COLOR_BLACK�N 0 color_green COLOR_GREEN�M 0 color_yellow COLOR_YELLOW�L 0 color_orange COLOR_ORANGE�K 0 	color_red 	COLOR_RED�J 0 color_purple COLOR_PURPLE�I 0 color_maroon COLOR_MAROON�H 0 
color_grey 
COLOR_GREY�G 0 	home_path  �F 0 	icon_path 	ICON_PATH
�E .aevtoappnull  �   � **** �""  / U s e r s / v i l u k /  �## P / U s e r s / v i l u k / D r o p b o x / p r o j e c t s / b t t / i c o n s /! �D$�C�B%&�A
�D .aevtoappnull  �   � ****$ k     '' (( �@�@  �C  �B  %  & �?
�? .ascrcmnt****      � ****�A �b  	%j O�b  
%j S �)) " 2 0 6 4 3 | 2 1 7 9 4 | 2 1 0 2 6T �>*�> *  UVW�=�<�;�:�9�8�7�6�5�4�3�2�1U �++ 
 2 0 6 4 3V �,, 
 2 1 7 9 4W �-- 
 2 1 0 2 6�=  �<  �;  �:  �9  �8  �7  �6  �5  �4  �3  �2  �1  ����Z �.. , 2 D A :   2 0 6 4 3 \ n Y D A :   2 1 7 9 4��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   ascr  ��ޭ