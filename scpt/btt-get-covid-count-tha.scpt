FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m     ��
�� boovfals 	 o      ���� 0 debug DEBUG��  ��     
  
 l     ��  ��    6 0 get data from th-stats and display data for BKK     �   `   g e t   d a t a   f r o m   t h - s t a t s   a n d   d i s p l a y   d a t a   f o r   B K K      l    ����  r        m    ��
�� boovfals  o      ���� *0 display_two_columns DISPLAY_TWO_COLUMNS��  ��        l     ��  ��       three letter country code     �   4   t h r e e   l e t t e r   c o u n t r y   c o d e      l    ����  r        m    	   �    T H A  o      ���� "0 current_country CURRENT_COUNTRY��  ��       !   l     �� " #��   " Y S today has to be less than this threshold compared to yesterday before we use green    # � $ $ �   t o d a y   h a s   t o   b e   l e s s   t h a n   t h i s   t h r e s h o l d   c o m p a r e d   t o   y e s t e r d a y   b e f o r e   w e   u s e   g r e e n !  % & % l    '���� ' r     ( ) ( m    ���� 2 ) o      ���� 0 	threshold 	THRESHOLD��  ��   &  * + * l     ��������  ��  ��   +  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   load functions    1 � 2 2    l o a d   f u n c t i o n s /  3 4 3 l     5���� 5 O     6 7 6 r     8 9 8 c     : ; : n     < = < m    ��
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
�� .BtttSetPnull���     **** � m   I L � � � � � $ C o r o n a V i r u s C o u n t r y � �� ���
�� 
bTpV � o   O P���� "0 current_country CURRENT_COUNTRY��   �  � � � l  U U�� � ���   � D > 	set_persistent_string_variable "CoronaVirusCountry" to "THA"    � � � � |   	 s e t _ p e r s i s t e n t _ s t r i n g _ v a r i a b l e   " C o r o n a V i r u s C o u n t r y "   t o   " T H A " �  � � � l  U U��������  ��  ��   �  � � � l   U U�� � ���   � � �
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
�� .sysoexecTEXT���     TEXT � m   a d � � � � � s o u r c e   ~ / . b a s h _ p r o f i l e   & &   c d   ~ / D r o p b o x / p r o j e c t s / b t t   & &   c o n d a   r u n   - n   b t t   p y t h o n   g e t _ c o v i d _ d a i l y _ d a t a . p y   C O U N T R Y   T h a i l a n d   - - s o u r c e   t h - d a t a��  ��  ��   � o      ���� 0 th_data  ��   � r   o z � � � l  o v ����� � I  o v�� ���
�� .sysoexecTEXT���     TEXT � m   o r � � � � � � s o u r c e   ~ / . b a s h _ p r o f i l e   & &   c d   ~ / D r o p b o x / p r o j e c t s / b t t   & &   c o n d a   r u n   - n   b t t   p y t h o n   g e t _ c o v i d _ d a i l y _ d a t a . p y   C O U N T R Y   T h a i l a n d��  ��  ��   � o      ���� 0 th_data  ��   � Z   } � � ��� � � =  } � � � � o   } ~���� *0 display_two_columns DISPLAY_TWO_COLUMNS � m   ~ ��
�� boovtrue � k   � � � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � m   � � � � � � �  N / A | N / A | 2 0 5 | 4 6 � o      ���� 0 th_data   �  ��� � l  � ��� � ���   � %  set th_data to "215|32|205|46"    � � � � >   s e t   t h _ d a t a   t o   " 2 1 5 | 3 2 | 2 0 5 | 4 6 "��  ��   � r   � � � � � m   � � � � � � �  2 0 5 | 4 6 � o      ���� 0 th_data   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n  � � � � � n  � � � � � I   � ��� ����� 0 	splitline 	splitLine �  � � � o   � ����� 0 th_data   �  ��� � m   � � � � � � �  |��  ��   � o   � ����� 0 
_globalfns 
_globalFns �  f   � � � o      ���� 0 output_lines   �  � � � Z   � � ��� � � =  � � � � � o   � ����� *0 display_two_columns DISPLAY_TWO_COLUMNS � m   � ���
�� boovtrue � k   � � � �  � � � r   � � � � � n   � � � � � 4   � �� �
� 
cobj � m   � ��~�~  � o   � ��}�} 0 output_lines   � o      �|�| 0 todaycounttha todayCountTHA �  � � � r   � � � � � n   � � � � � 4   � ��{ �
�{ 
cobj � m   � ��z�z  � o   � ��y�y 0 output_lines   � o      �x�x 0 todaycountbkk todayCountBKK �  � � � r   � � � � � n   � � � � � 4   � ��w �
�w 
cobj � m   � ��v�v  � o   � ��u�u 0 output_lines   � o      �t�t 0 ydacounttha ydaCountTHA �  ��s � r   � � � � � n   � � � � � 4   � ��r �
�r 
cobj � m   � ��q�q  � o   � ��p�p 0 output_lines   � o      �o�o 0 ydacountbkk ydaCountBKK�s  ��   � k   � � �  � � � r   � � � � � n   � � � � � 4   � ��n �
�n 
cobj � m   � ��m�m  � o   � ��l�l 0 output_lines   � o      �k�k 0 todaycounttha todayCountTHA �  � � � r   �  � � � n   � � �  � 4   � ��j
�j 
cobj m   � ��i�i   o   � ��h�h 0 output_lines   � o      �g�g 0 ydacounttha ydaCountTHA � �f r   n  	 4  	�e
�e 
cobj m  �d�d  o  �c�c 0 output_lines   o      �b�b &0 daybeforecounttha dayBeforeCountTHA�f   � 	 l �a�`�_�a  �`  �_  	 

 I �^�]
�^ .ascrcmnt****      � **** b   m   �  t o d a y C o u n t T H A : o  �\�\ 0 todaycounttha todayCountTHA�]    I %�[�Z
�[ .ascrcmnt****      � **** b  ! m   �  y d a C o u n t T H A : o   �Y�Y 0 ydacounttha ydaCountTHA�Z    l &&�X�W�V�X  �W  �V    r  &1 l &-�U�T l &-�S�R n  &- !  o  )-�Q�Q 0 color_white COLOR_WHITE! o  &)�P�P 0 _globalvars _globalVars�S  �R  �U  �T   o      �O�O 0 	fontcolor 	fontColor "#" r  2=$%$ l 29&�N�M& l 29'�L�K' n  29()( o  59�J�J 0 color_black COLOR_BLACK) o  25�I�I 0 _globalvars _globalVars�L  �K  �N  �M  % o      �H�H 0 background_color  # *+* l >>�G�F�E�G  �F  �E  + ,-, l  >>�D./�D  . � �	set dayBeforeCountTHA to get_string_variable "VLCoronaVirusCountryYDACountTHA"	if dayBeforeCountTHA is missing value then		set dayBeforeCountTHA to "N/A"	end if	log "dayBeforeCountTHA: " & dayBeforeCountTHA
	   / �00�  	 s e t   d a y B e f o r e C o u n t T H A   t o   g e t _ s t r i n g _ v a r i a b l e   " V L C o r o n a V i r u s C o u n t r y Y D A C o u n t T H A "  	 i f   d a y B e f o r e C o u n t T H A   i s   m i s s i n g   v a l u e   t h e n  	 	 s e t   d a y B e f o r e C o u n t T H A   t o   " N / A "  	 e n d   i f  	 l o g   " d a y B e f o r e C o u n t T H A :   "   &   d a y B e f o r e C o u n t T H A 
 	- 121 l >>�C�B�A�C  �B  �A  2 343 l  >>�@56�@  5 1 +
	less (green)
	same (yellow)
	more (red)
	   6 �77 V 
 	 l e s s   ( g r e e n ) 
 	 s a m e   ( y e l l o w ) 
 	 m o r e   ( r e d ) 
 	4 898 r  >E:;: m  >A<< �==  ; o      �?�? 0 
jsonoutput 
jsonOutput9 >?> l FF�>@A�>  @ ] W	if todayCountTHA is not "N/A" and dayBeforeCountTHA is equal to dayBeforeCountTHA then   A �BB � 	 i f   t o d a y C o u n t T H A   i s   n o t   " N / A "   a n d   d a y B e f o r e C o u n t T H A   i s   e q u a l   t o   d a y B e f o r e C o u n t T H A   t h e n? CDC Z  F�EF�=GE > FMHIH o  FI�<�< 0 todaycounttha todayCountTHAI m  ILJJ �KK  N / AF k  P�LL MNM I PW�;O�:
�; .ascrcmnt****      � ****O m  PSPP �QQ . d i s p l a y i n g   t o d a y ' s   d a t a�:  N RSR l XX�9TU�9  T = 7 set this so we can derive color tomorrow when it's N/A   U �VV n   s e t   t h i s   s o   w e   c a n   d e r i v e   c o l o r   t o m o r r o w   w h e n   i t ' s   N / AS WXW l  XX�8YZ�8  Y � �		set_persistent_string_variable "VLCoronaVirusCountryYDACountTHA" to ydaCountTHA		if DISPLAY_TWO_COLUMNS is true then			set_persistent_string_variable "VLCoronaVirusCountryYDACountBKK" to ydaCountBKK		end if
		   Z �[[�  	 	 s e t _ p e r s i s t e n t _ s t r i n g _ v a r i a b l e   " V L C o r o n a V i r u s C o u n t r y Y D A C o u n t T H A "   t o   y d a C o u n t T H A  	 	 i f   D I S P L A Y _ T W O _ C O L U M N S   i s   t r u e   t h e n  	 	 	 s e t _ p e r s i s t e n t _ s t r i n g _ v a r i a b l e   " V L C o r o n a V i r u s C o u n t r y Y D A C o u n t B K K "   t o   y d a C o u n t B K K  	 	 e n d   i f 
 	 	X \]\ l XX�7�6�5�7  �6  �5  ] ^_^ r  Xg`a` c  Xcbcb \  X_ded o  X[�4�4 0 todaycounttha todayCountTHAe o  [^�3�3 0 ydacounttha ydaCountTHAc m  _b�2
�2 
nmbra o      �1�1 0 diff  _ fgf l hh�0�/�.�0  �/  �.  g hih l hh�-�,�+�-  �,  �+  i jkj l hh�*�)�(�*  �)  �(  k lml Z  h�nopqn ?  horsr o  hk�'�' 0 todaycounttha todayCountTHAs o  kn�&�& 0 ydacounttha ydaCountTHAo r  r}tut l ryv�%�$v l ryw�#�"w n  ryxyx o  uy�!�! 0 	color_red 	COLOR_REDy o  ru� �  0 _globalvars _globalVars�#  �"  �%  �$  u o      �� 0 	fontcolor 	fontColorp z{z F  ��|}| A  ��~~ o  ���� 0 todaycounttha todayCountTHA o  ���� 0 ydacounttha ydaCountTHA} A  ����� o  ���� 0 diff  � ]  ����� m  ������� o  ���� 0 	threshold 	THRESHOLD{ ��� r  ����� l ������ l ������ n  ����� o  ���� 0 color_green COLOR_GREEN� o  ���� 0 _globalvars _globalVars�  �  �  �  � o      �� 0 	fontcolor 	fontColor�  q r  ����� l ������ l ������ n  ����� o  ���� 0 color_yellow COLOR_YELLOW� o  ���� 0 _globalvars _globalVars�  �  �  �  � o      �� 0 	fontcolor 	fontColorm ��� l ���
�	��
  �	  �  � ��� l ������  �  �  � ��� Z  ������� = ����� o  ���� *0 display_two_columns DISPLAY_TWO_COLUMNS� m  ���
� boovtrue� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� 
 2 D A :  � o  ���� 0 todaycounttha todayCountTHA� m  ���� ���  \ t� o  ��� �  0 ydacounttha ydaCountTHA� m  ���� ���  \ n B K K :                � o  ������ 0 todaycountbkk todayCountBKK� m  ���� ���  \ t� o  ������ 0 ydacountbkk ydaCountBKK� o      ���� 0 displaytext displayText�  � r  ����� b  ����� b  ����� b  ����� m  ���� ��� 
 2 D A :  � o  ������ 0 todaycounttha todayCountTHA� m  ���� ���  \ n Y D A :  � o  ������ 0 ydacounttha ydaCountTHA� o      ���� 0 displaytext displayText� ��� l ����������  ��  ��  � ���� l ����������  ��  ��  ��  �=  G k  ���� ��� I �������
�� .ascrcmnt****      � ****� m  ���� ��� h t o d a y ' s   d a t a   n o t   a v a i l a b l e ,   d i s p l a y   y e s t e r d a y ' s   d a t a��  � ��� l ��������  � Q K day before yesterday's count was stored in VLCoronaVirusCountryYDACountTHA   � ��� �   d a y   b e f o r e   y e s t e r d a y ' s   c o u n t   w a s   s t o r e d   i n   V L C o r o n a V i r u s C o u n t r y Y D A C o u n t T H A� ��� l ����������  ��  ��  � ��� Z  �5������� = ���� o  ������ *0 display_two_columns DISPLAY_TWO_COLUMNS� m  � ��
�� boovtrue� k  1�� ��� r  ��� I �����
�� .BttGVarSnull���     ****� m  �� ��� > V L C o r o n a V i r u s C o u n t r y Y D A C o u n t B K K��  � o      ���� &0 daybeforecountbkk dayBeforeCountBKK� ��� l ������  � 8 2 we may not have this value the first time you run   � ��� d   w e   m a y   n o t   h a v e   t h i s   v a l u e   t h e   f i r s t   t i m e   y o u   r u n� ��� Z  %������� = ��� o  ���� &0 daybeforecountbkk dayBeforeCountBKK� m  ��
�� 
msng� r  !��� m  �� ���  N / A� o      ���� &0 daybeforecountbkk dayBeforeCountBKK��  ��  � ���� I &1�����
�� .ascrcmnt****      � ****� b  &-��� m  &)�� ��� & d a y B e f o r e C o u n t B K K :  � o  ),���� &0 daybeforecountbkk dayBeforeCountBKK��  ��  ��  ��  � ��� l 66��������  ��  ��  � ��� l 66��������  ��  ��  � ��� l 66������  � 3 - displaying yesterday's data - let's use grey   � ��� Z   d i s p l a y i n g   y e s t e r d a y ' s   d a t a   -   l e t ' s   u s e   g r e y� ��� r  6A��� l 6= ����  l 6=���� n  6= o  9=���� 0 
color_grey 
COLOR_GREY o  69���� 0 _globalvars _globalVars��  ��  ��  ��  � o      ���� 0 	fontcolor 	fontColor�  l BB��������  ��  ��    Z  B�	��
 = BE o  BC���� *0 display_two_columns DISPLAY_TWO_COLUMNS m  CD��
�� boovtrue	 r  Hk b  Hg b  Hc b  H_ b  H[ b  HW b  HS b  HO m  HK � 
 Y D A :   o  KN���� 0 ydacounttha ydaCountTHA m  OR �    \ t o  SV���� &0 daybeforecounttha dayBeforeCountTHA m  WZ!! �""  \ n B K K :                 o  [^���� 0 ydacountbkk ydaCountBKK m  _b## �$$  \ t o  cf���� &0 daybeforecountbkk dayBeforeCountBKK o      ���� 0 displaytext displayText��  
 r  n�%&% b  n}'(' b  ny)*) b  nu+,+ m  nq-- �.. 
 Y D A :  , o  qt���� 0 ydacounttha ydaCountTHA* m  ux// �00  \ n D B Y :  ( o  y|���� &0 daybeforecounttha dayBeforeCountTHA& o      ���� 0 displaytext displayText 1��1 l ����������  ��  ��  ��  D 232 l ����������  ��  ��  3 454 L  ��66 b  ��787 b  ��9:9 b  ��;<; b  ��=>= b  ��?@? b  ��ABA m  ��CC �DD  { " t e x t " :   "B o  ������ 0 displaytext displayText@ m  ��EE �FF 0 " , 
 " b a c k g r o u n d _ c o l o r " :   "> o  ������ 0 background_color  < m  ��GG �HH $ " , 
 " f o n t _ c o l o r " :   ": o  ������ 0 	fontcolor 	fontColor8 m  ��II �JJ  " }5 KLK l ����������  ��  ��  L M��M l ����������  ��  ��  ��   } m   C FNN�                                                                                      @ alis    F  Macintosh HD                   BD ����BetterTouchTool.app                                            ����            ����  
 cu             Applications  #/:Applications:BetterTouchTool.app/   (  B e t t e r T o u c h T o o l . a p p    M a c i n t o s h   H D   Applications/BetterTouchTool.app  / ��  ��  ��   z OPO l     ��������  ��  ��  P Q��Q l     ��������  ��  ��  ��       ��RS��  R ��
�� .aevtoappnull  �   � ****S ��T����UV��
�� .aevtoappnull  �   � ****T k    �WW  XX  YY  ZZ  %[[  3\\  A]]  J^^  a__  y����  ��  ��  U  V P���� ������ @�������� H�������� l��N ����� ����� � � � �����������������������������<��JP��~�}�|�{�z�����y�����x�w�v���u!#-/CEGI�� 0 debug DEBUG�� *0 display_two_columns DISPLAY_TWO_COLUMNS�� "0 current_country CURRENT_COUNTRY�� 2�� 0 	threshold 	THRESHOLD
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
�� .sysoexecTEXT���     TEXT�� 0 th_data  �� 0 	splitline 	splitLine�� 0 output_lines  
�� 
cobj�� 0 todaycounttha todayCountTHA�� 0 todaycountbkk todayCountBKK�� 0 ydacounttha ydaCountTHA�� �� 0 ydacountbkk ydaCountBKK�� &0 daybeforecounttha dayBeforeCountTHA
�� .ascrcmnt****      � ****�� 0 color_white COLOR_WHITE�� 0 	fontcolor 	fontColor�� 0 color_black COLOR_BLACK�� 0 background_color  �� 0 
jsonoutput 
jsonOutput
� 
nmbr�~ 0 diff  �} 0 	color_red 	COLOR_RED
�| 
bool�{ 0 color_green COLOR_GREEN�z 0 color_yellow COLOR_YELLOW�y 0 displaytext displayText
�x .BttGVarSnull���     ****�w &0 daybeforecountbkk dayBeforeCountBKK
�v 
msng�u 0 
color_grey 
COLOR_GREY���fE�OfE�O�E�O�E�O� )j �,�&E�UO��%E�O*��/j E�O*��a %/j E` Oa [a a �l O�f  $�e  a j E` Y a j E` Y �e  a E` OPY 	a E` O)�,_ a l+ E` O�e  :_ a k/E`  O_ a l/E` !O_ a m/E` "O_ a a #/E` $Y (_ a k/E`  O_ a l/E` "O_ a m/E` %Oa &_  %j 'Oa (_ "%j 'O_ a ),E` *O_ a +,E` ,Oa -E` .O_  a / �a 0j 'O_  _ "a 1&E` 2O_  _ " _ a 3,E` *Y 3_  _ "	 _ 2i� a 4& _ a 5,E` *Y _ a 6,E` *O�e  (a 7_  %a 8%_ "%a 9%_ !%a :%_ $%E` ;Y a <_  %a =%_ "%E` ;OPY �a >j 'O�e  2a ?j @E` AO_ Aa B  a CE` AY hOa D_ A%j 'Y hO_ a E,E` *O�e  (a F_ "%a G%_ %%a H%_ $%a I%_ A%E` ;Y a J_ "%a K%_ %%E` ;OPOa L_ ;%a M%_ ,%a N%_ *%a O%OPU ascr  ��ޭ