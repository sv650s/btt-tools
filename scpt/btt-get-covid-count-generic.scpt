FasdUAS 1.101.10   ��   ��    k             i         I     �� 	��
�� .aevtoappnull  �   � **** 	 o      ���� 0 argv  ��    k    � 
 
     l     ��������  ��  ��        r         m     ��
�� boovfals  o      ���� 0 debug DEBUG      l   ��  ��    Y S today has to be less than this threshold compared to yesterday before we use green     �   �   t o d a y   h a s   t o   b e   l e s s   t h a n   t h i s   t h r e s h o l d   c o m p a r e d   t o   y e s t e r d a y   b e f o r e   w e   u s e   g r e e n      r        m    ���� 2  o      ���� 0 	threshold 	THRESHOLD      l   ��������  ��  ��        Z      ��    o    	���� 0 debug DEBUG  k     ! !  " # " l   �� $ %��   $    three letter country code    % � & & 4   t h r e e   l e t t e r   c o u n t r y   c o d e #  '�� ' r     ( ) ( m     * * � + +  T h a i l a n d ) o      ���� 0 country COUNTRY��  ��     r     , - , n     . / . 4    �� 0
�� 
cobj 0 m    ����  / o    ���� 0 argv   - o      ���� 0 country COUNTRY   1 2 1 l   ��������  ��  ��   2  3 4 3 l   ��������  ��  ��   4  5 6 5 l   ��������  ��  ��   6  7 8 7 l   �� 9 :��   9   load functions    : � ; ;    l o a d   f u n c t i o n s 8  < = < O   ) > ? > r    ( @ A @ c    & B C B n    $ D E D m   " $��
�� 
ctnr E l   " F���� F I   "�� G��
�� .earsffdralis        afdr G  f    ��  ��  ��   C m   $ %��
�� 
ctxt A o      ���� 0 _mypath _myPath ? m     H H�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   =  I J I r   * / K L K b   * - M N M o   * +���� 0 _mypath _myPath N m   + , O O � P P * g l o b a l - f u n c t i o n s . s c p t L o      ���� 0 gf_path   J  Q R Q r   0 : S T S I  0 8�� U��
�� .sysoloadscpt        file U l  0 4 V���� V 4   0 4�� W
�� 
alis W l  2 3 X���� X o   2 3���� 0 gf_path  ��  ��  ��  ��  ��   T o      ���� 0 
_globalfns 
_globalFns R  Y Z Y l  ; ;��������  ��  ��   Z  [ \ [ l  ; ;��������  ��  ��   \  ] ^ ] l  ; ;�� _ `��   _   read global variables    ` � a a ,   r e a d   g l o b a l   v a r i a b l e s ^  b c b l  ; ;�� d e��   d \ V get home path and translate to POSIX format so we can use this across different users    e � f f �   g e t   h o m e   p a t h   a n d   t r a n s l a t e   t o   P O S I X   f o r m a t   s o   w e   c a n   u s e   t h i s   a c r o s s   d i f f e r e n t   u s e r s c  g h g r   ; K i j i I  ; G�� k��
�� .sysoloadscpt        file k l  ; C l���� l 4   ; C�� m
�� 
alis m l  = B n���� n b   = B o p o o   = >���� 0 _mypath _myPath p m   > A q q � r r   g l o b a l - v a r s . s c p t��  ��  ��  ��  ��   j o      ���� 0 _globalvars _globalVars h  s t s l  L L��������  ��  ��   t  u v u l  L L��������  ��  ��   v  w x w l  L L��������  ��  ��   x  y z y l  L L�� { |��   { 8 2 we still have to tell the group what data to pull    | � } } d   w e   s t i l l   h a v e   t o   t e l l   t h e   g r o u p   w h a t   d a t a   t o   p u l l z  ~�� ~ O   L�  �  k   R� � �  � � � l  R R�� � ���   � M G set_persistent_string_variable "CoronaVirusCountry" to CURRENT_COUNTRY    � � � � �   s e t _ p e r s i s t e n t _ s t r i n g _ v a r i a b l e   " C o r o n a V i r u s C o u n t r y "   t o   C U R R E N T _ C O U N T R Y �  � � � l  R R�� � ���   � D > 	set_persistent_string_variable "CoronaVirusCountry" to "THA"    � � � � |   	 s e t _ p e r s i s t e n t _ s t r i n g _ v a r i a b l e   " C o r o n a V i r u s C o u n t r y "   t o   " T H A " �  � � � l  R R��������  ��  ��   �  � � � l   R R�� � ���   � � �
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
 	 �  � � � Z   R o � ��� � � =  R U � � � o   R S���� 0 debug DEBUG � m   S T��
�� boovfals � r   X e � � � l  X a ����� � I  X a�� ���
�� .sysoexecTEXT���     TEXT � b   X ] � � � m   X [ � � � � � � s o u r c e   ~ / . b a s h _ p r o f i l e   & &   c d   ~ / D r o p b o x / p r o j e c t s / b t t   & &   c o n d a   r u n   - n   b t t   p y t h o n   g e t _ c o v i d _ d a i l y _ d a t a . p y   C O U N T R Y   � o   [ \���� 0 country COUNTRY��  ��  ��   � o      ���� 0 th_data  ��   � r   h o � � � m   h k � � � � �  N / A | 4 6 | 3 5 � o      ���� 0 th_data   �  � � � l  p p��������  ��  ��   �  � � � r   p � � � � n  p } � � � n  q } � � � I   s }�� ����� 0 	splitline 	splitLine �  � � � o   s v���� 0 th_data   �  ��� � m   v y � � � � �  |��  ��   � o   q s���� 0 
_globalfns 
_globalFns �  f   p q � o      ���� 0 output_lines   �  � � � r   � � � � � n   � � � � � 4   � ��� �
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
�� .ascrcmnt****      � **** � b   � � � � � m   � � � � � � �  y d a C o u n t : � o   � ����� 0 ydacount ydaCount��   �  � � � l  � ��������  ��  �   �  � � � r   � � � � � l  � � ��~�} � l  � � ��|�{ � n   � � � � � o   � ��z�z 0 color_white COLOR_WHITE � o   � ��y�y 0 _globalvars _globalVars�|  �{  �~  �}   � o      �x�x 0 	fontcolor 	fontColor �  � � � r   � � � � � l  � � ��w�v � l  � � ��u�t � n   � � � � � o   � ��s�s 0 color_black COLOR_BLACK � o   � ��r�r 0 _globalvars _globalVars�u  �t  �w  �v   � o      �q�q 0 background_color   �  � � � l  � ��p�o�n�p  �o  �n   �  � � � l  � ��m�l�k�m  �l  �k   �  � � � l   � ��j � ��j   � 1 +
	less (green)
	same (yellow)
	more (red)
	    � � � � V 
 	 l e s s   ( g r e e n ) 
 	 s a m e   ( y e l l o w ) 
 	 m o r e   ( r e d ) 
 	 �  � � � r   � � � � � m   � � � � � � �   � o      �i�i 0 
jsonoutput 
jsonOutput �  � � � l  � ��h � ��h   � T N	if todayCount is not "N/A" and dayBeforeCount is equal to dayBeforeCount then    � �   � 	 i f   t o d a y C o u n t   i s   n o t   " N / A "   a n d   d a y B e f o r e C o u n t   i s   e q u a l   t o   d a y B e f o r e C o u n t   t h e n �  Z   ���g >  � � o   � ��f�f 0 
todaycount 
todayCount m   � � �		  N / A k   �X

  I  � ��e�d
�e .ascrcmnt****      � **** m   � � � . d i s p l a y i n g   t o d a y ' s   d a t a�d    l  � ��c�c   = 7 set this so we can derive color tomorrow when it's N/A    � n   s e t   t h i s   s o   w e   c a n   d e r i v e   c o l o r   t o m o r r o w   w h e n   i t ' s   N / A  l  � ��b�a�`�b  �a  �`    r   � � c   � � \   � � o   � ��_�_ 0 
todaycount 
todayCount o   � ��^�^ 0 ydacount ydaCount m   � ��]
�] 
nmbr o      �\�\ 0 diff     l  � ��[�Z�Y�[  �Z  �Y    !"! l  � ��X�W�V�X  �W  �V  " #$# l  � ��U�T�S�U  �T  �S  $ %&% Z   �F'()*' ?   �+,+ o   � �R�R 0 
todaycount 
todayCount, o   �Q�Q 0 ydacount ydaCount( r  -.- l /�P�O/ l 0�N�M0 n  121 o  
�L�L 0 	color_red 	COLOR_RED2 o  
�K�K 0 _globalvars _globalVars�N  �M  �P  �O  . o      �J�J 0 	fontcolor 	fontColor) 343 F  *565 A  787 o  �I�I 0 
todaycount 
todayCount8 o  �H�H 0 ydacount ydaCount6 A  &9:9 o  "�G�G 0 diff  : ]  "%;<; m  "#�F�F��< o  #$�E�E 0 	threshold 	THRESHOLD4 =�D= r  -8>?> l -4@�C�B@ l -4A�A�@A n  -4BCB o  04�?�? 0 color_green COLOR_GREENC o  -0�>�> 0 _globalvars _globalVars�A  �@  �C  �B  ? o      �=�= 0 	fontcolor 	fontColor�D  * r  ;FDED l ;BF�<�;F l ;BG�:�9G n  ;BHIH o  >B�8�8 0 color_yellow COLOR_YELLOWI o  ;>�7�7 0 _globalvars _globalVars�:  �9  �<  �;  E o      �6�6 0 	fontcolor 	fontColor& JKJ l GG�5�4�3�5  �4  �3  K LML l GG�2�1�0�2  �1  �0  M NON l GG�/PQ�/  P   save space   Q �RR    s a v e   s p a c eO STS r  GVUVU b  GRWXW b  GNYZY o  GJ�.�. 0 
todaycount 
todayCountZ m  JM[[ �\\  \ n Y D A :  X o  NQ�-�- 0 ydacount ydaCountV o      �,�, 0 displaytext displayTextT ]^] l WW�+�*�)�+  �*  �)  ^ _�(_ l WW�'�&�%�'  �&  �%  �(  �g   k  [�`` aba I [b�$c�#
�$ .ascrcmnt****      � ****c m  [^dd �ee h t o d a y ' s   d a t a   n o t   a v a i l a b l e ,   d i s p l a y   y e s t e r d a y ' s   d a t a�#  b fgf l cc�"hi�"  h N H day before yesterday's count was stored in VLCoronaVirusCountryYDACount   i �jj �   d a y   b e f o r e   y e s t e r d a y ' s   c o u n t   w a s   s t o r e d   i n   V L C o r o n a V i r u s C o u n t r y Y D A C o u n tg klk l cc�!� ��!  �   �  l mnm l cc����  �  �  n opo l cc����  �  �  p qrq l cc�st�  s 3 - displaying yesterday's data - let's use grey   t �uu Z   d i s p l a y i n g   y e s t e r d a y ' s   d a t a   -   l e t ' s   u s e   g r e yr vwv r  cnxyx l cjz��z l cj{��{ n  cj|}| o  fj�� 0 
color_grey 
COLOR_GREY} o  cf�� 0 _globalvars _globalVars�  �  �  �  y o      �� 0 	fontcolor 	fontColorw ~~ l oo����  �  �   ��� l oo����  �   save space   � ���    s a v e   s p a c e� ��� r  o~��� b  oz��� b  ov��� o  or�� 0 ydacount ydaCount� m  ru�� ���  \ n D B Y :  � o  vy��  0 daybeforecount dayBeforeCount� o      �
�
 0 displaytext displayText� ��	� l ����  �  �  �	   ��� l ������  �  �  � ��� L  ���� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���  { " t e x t " :   "� o  ���� 0 displaytext displayText� m  ���� ��� 0 " , 
 " b a c k g r o u n d _ c o l o r " :   "� o  ���� 0 background_color  � m  ���� ��� $ " , 
 " f o n t _ c o l o r " :   "� o  ��� �  0 	fontcolor 	fontColor� m  ���� ���  " }� ��� l ����������  ��  ��  � ���� l ����������  ��  ��  ��   � m   L O���                                                                                      @ alis    F  Macintosh HD                   BD ����BetterTouchTool.app                                            ����            ����  
 cu             Applications  #/:Applications:BetterTouchTool.app/   (  B e t t e r T o u c h T o o l . a p p    M a c i n t o s h   H D   Applications/BetterTouchTool.app  / ��  ��    ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       "�������������������� ����������������������������������  �  ����������������������������������������������������������������
�� .aevtoappnull  �   � ****�� 0 debug DEBUG�� 0 	threshold 	THRESHOLD�� 0 country COUNTRY�� 0 _mypath _myPath�� 0 gf_path  �� 0 
_globalfns 
_globalFns�� 0 _globalvars _globalVars�� 0 th_data  �� 0 output_lines  �� 0 
todaycount 
todayCount�� 0 ydacount ydaCount��  0 daybeforecount dayBeforeCount�� 0 	fontcolor 	fontColor�� 0 background_color  �� 0 
jsonoutput 
jsonOutput�� 0 displaytext displayText�� 0 diff  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  � �� ��������
�� .aevtoappnull  �   � ****�� 0 argv  ��  � ���� 0 argv  � 7������ *���� H�������� O�������� q��� ����� � ����������� ��� ��������� ���������������[��d��������� 0 debug DEBUG�� 2�� 0 	threshold 	THRESHOLD�� 0 country COUNTRY
�� 
cobj
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
�� .sysoexecTEXT���     TEXT�� 0 th_data  �� 0 	splitline 	splitLine�� 0 output_lines  �� 0 
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
COLOR_GREY���fE�O�E�O� �E�Y ��k/E�O� )j �,�&E�UO��%E�O*��/j E�O*��a %/j E` Oa O�f  a �%j E` Y 	a E` O)�,_ a l+ E` O_ �k/E` O_ �l/E` O_ �m/E` Oa _ %j Oa _ %j O_ a  ,E` !O_ a ",E` #Oa $E` %O_ a & xa 'j O_ _ a (&E` )O_ _  _ a *,E` !Y 3_ _ 	 _ )i� a +& _ a ,,E` !Y _ a -,E` !O_ a .%_ %E` /OPY 'a 0j O_ a 1,E` !O_ a 2%_ %E` /OPOa 3_ /%a 4%_ #%a 5%_ !%a 6%OPU
�� boovfals�� 2� ���  F r a n c e� ��� f M a c i n t o s h   H D : U s e r s : v i l u k : D r o p b o x : p r o j e c t s : b t t : s c p t :� ��� � M a c i n t o s h   H D : U s e r s : v i l u k : D r o p b o x : p r o j e c t s : b t t : s c p t : g l o b a l - f u n c t i o n s . s c p t� ��� ���  � k      �� ��� l      ������  ���
This file contains functions that can be loaded by other scripts

To load (assumes global-functions.scpt is in the same directory of script being executed):
	tell application "Finder" to set _myPath to container of (path to me) as text	set gf_path to _myPath & "global-functions.scpt"	set _globalFns to load script (alias (gf_path))


To use function:
	set new_string to _globalFns's splitString(string, delimiter)
   � ���F 
 T h i s   f i l e   c o n t a i n s   f u n c t i o n s   t h a t   c a n   b e   l o a d e d   b y   o t h e r   s c r i p t s 
 
 T o   l o a d   ( a s s u m e s   g l o b a l - f u n c t i o n s . s c p t   i s   i n   t h e   s a m e   d i r e c t o r y   o f   s c r i p t   b e i n g   e x e c u t e d ) : 
 	 t e l l   a p p l i c a t i o n   " F i n d e r "   t o   s e t   _ m y P a t h   t o   c o n t a i n e r   o f   ( p a t h   t o   m e )   a s   t e x t  	 s e t   g f _ p a t h   t o   _ m y P a t h   &   " g l o b a l - f u n c t i o n s . s c p t "  	 s e t   _ g l o b a l F n s   t o   l o a d   s c r i p t   ( a l i a s   ( g f _ p a t h ) )  
 
 
 T o   u s e   f u n c t i o n : 
 	 s e t   n e w _ s t r i n g   t o   _ g l o b a l F n s ' s   s p l i t S t r i n g ( s t r i n g ,   d e l i m i t e r ) 
� ��� l     ��������  ��  ��  � ��� l      ������  � � �
Splits a string using delimiter specified

Parameters:
* theString - string to split
* theDelimiter - delimiter used to split string

Return:
* array of split string
   � ���N 
 S p l i t s   a   s t r i n g   u s i n g   d e l i m i t e r   s p e c i f i e d 
 
 P a r a m e t e r s : 
 *   t h e S t r i n g   -   s t r i n g   t o   s p l i t 
 *   t h e D e l i m i t e r   -   d e l i m i t e r   u s e d   t o   s p l i t   s t r i n g 
 
 R e t u r n : 
 *   a r r a y   o f   s p l i t   s t r i n g 
� ��� i     ��� I      ������� 0 	splitline 	splitLine� ��� o      ���� 0 	thestring 	theString� ���� o      ���� 0 thedelimiter theDelimiter��  ��  � k     &�� ��� l     ������  � . ( save delimiters to restore old settings   � ��� P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s� ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 olddelimiters oldDelimiters� ��� l   ������  � - ' set delimiters to delimiter to be used   � ��� N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e d� ��� r    ��� o    ���� 0 thedelimiter theDelimiter� n     ��� 1    
��
�� 
txdl� 1    ��
�� 
ascr� ��� l   ������  �   create the array   � ��� "   c r e a t e   t h e   a r r a y� ��� r    ��� n    ��� 2    ��
�� 
citm� o    ���� 0 	thestring 	theString� o      ���� 0 thearray theArray� ��� l   ��� ��  �   restore the old setting     � 0   r e s t o r e   t h e   o l d   s e t t i n g�  r     o    �� 0 olddelimiters oldDelimiters n      1    �~
�~ 
txdl 1    �}
�} 
ascr 	 l   �|
�|  
   return the result    � $   r e t u r n   t h e   r e s u l t	  I   �{�z
�{ .ascrcmnt****      � **** m     �  t h e A r r a y�z    I   #�y�x
�y .ascrcmnt****      � **** o    �w�w 0 thearray theArray�x   �v L   $ & o   $ %�u�u 0 thearray theArray�v  �  l     �t�s�r�t  �s  �r    l      �q�q  
Breaks a line into 2 with first line having specified number of words

Parameters:
* aString - string to split
* firstLineWordCount - number words to keep in first line

Return:
* new string with '\n' (newline) inserted between firstLineWordCount and firstLineWordCount + 1

    �( 
 B r e a k s   a   l i n e   i n t o   2   w i t h   f i r s t   l i n e   h a v i n g   s p e c i f i e d   n u m b e r   o f   w o r d s 
 
 P a r a m e t e r s : 
 *   a S t r i n g   -   s t r i n g   t o   s p l i t 
 *   f i r s t L i n e W o r d C o u n t   -   n u m b e r   w o r d s   t o   k e e p   i n   f i r s t   l i n e 
 
 R e t u r n : 
 *   n e w   s t r i n g   w i t h   ' \ n '   ( n e w l i n e )   i n s e r t e d   b e t w e e n   f i r s t L i n e W o r d C o u n t   a n d   f i r s t L i n e W o r d C o u n t   +   1 
 
  i     !  I      �p"�o�p &0 breakintotwolines breakIntoTwoLines" #$# o      �n�n 0 astring aString$ %�m% o      �l�l (0 firstlinewordcount firstLineWordCount�m  �o  ! k     w&& '(' I    �k)�j
�k .ascrcmnt****      � ****) b     *+* m     ,, �-- , B r e a k i n g   l i n e   i n t o   2 :  + o    �i�i 0 astring aString�j  ( ./. r    010 n   232 I   	 �h4�g�h 0 	splitline 	splitLine4 565 o   	 
�f�f 0 astring aString6 7�e7 m   
 88 �99   �e  �g  3  f    	1 o      �d�d 0 astring_list aString_list/ :;: r    <=< m    >> �??  = o      �c�c 0 
new_string  ; @A@ r    BCB m    �b�b C o      �a�a 0 counter  A DED X    lF�`GF k   * gHH IJI I  * 1�_K�^
�_ .ascrcmnt****      � ****K b   * -LML m   * +NN �OO  a W o r d :  M o   + ,�]�] 0 aword aWord�^  J PQP Z   2 WRSTUR =  2 5VWV o   2 3�\�\ 0 counter  W m   3 4�[�[ S r   8 ;XYX o   8 9�Z�Z 0 aword aWordY o      �Y�Y 0 
new_string  T Z[Z =  > C\]\ o   > ?�X�X 0 counter  ] [   ? B^_^ o   ? @�W�W (0 firstlinewordcount firstLineWordCount_ m   @ A�V�V [ `�U` r   F Maba b   F Kcdc b   F Iefe o   F G�T�T 0 
new_string  f m   G Hgg �hh  \ nd o   I J�S�S 0 aword aWordb o      �R�R 0 
new_string  �U  U r   P Wiji b   P Uklk b   P Smnm o   P Q�Q�Q 0 
new_string  n m   Q Roo �pp   l o   S T�P�P 0 aword aWordj o      �O�O 0 
new_string  Q q�Nq Z   X grs�M�Lr >  X [tut o   X Y�K�K 0 aword aWordu m   Y Zvv �ww  -s r   ^ cxyx [   ^ az{z o   ^ _�J�J 0 counter  { m   _ `�I�I y o      �H�H 0 counter  �M  �L  �N  �` 0 aword aWordG o    �G�G 0 astring_list aString_listE |}| I  m t�F~�E
�F .ascrcmnt****      � ****~ b   m p� m   m n�� ���  n e w _ s t r i n g :  � o   n o�D�D 0 
new_string  �E  } ��C� L   u w�� o   u v�B�B 0 
new_string  �C   ��� l     �A�@�?�A  �@  �?  � ��� l      �>���>  � � �
Truncates a string and only keep numberOfWords

Parameters:
* aString - string to truncate
* numberOfWords - number of words to keep

Return:
* string with only number of words to keep

   � ���v 
 T r u n c a t e s   a   s t r i n g   a n d   o n l y   k e e p   n u m b e r O f W o r d s 
 
 P a r a m e t e r s : 
 *   a S t r i n g   -   s t r i n g   t o   t r u n c a t e 
 *   n u m b e r O f W o r d s   -   n u m b e r   o f   w o r d s   t o   k e e p 
 
 R e t u r n : 
 *   s t r i n g   w i t h   o n l y   n u m b e r   o f   w o r d s   t o   k e e p 
 
� ��=� i    ��� I      �<��;�<  0 truncatestring truncateString� ��� o      �:�: 0 astring aString� ��9� o      �8�8 0 numberofwords numberOfWords�9  �;  � k     k�� ��� l     �7�6�5�7  �6  �5  � ��� I    �4��3
�4 .ascrcmnt****      � ****� b     	��� b     ��� b     ��� b     ��� m     �� ��� & T r u n c a t i n g   s t r i n g :  � o    �2�2 0 astring aString� m    �� ���    t o  � o    �1�1 0 numberofwords numberOfWords� m    �� ���    w o r d s  �3  � ��� r    ��� n   ��� I    �0��/�0 0 	splitline 	splitLine� ��� o    �.�. 0 astring aString� ��-� m    �� ���   �-  �/  �  f    � o      �,�, 0 	word_list  � ��� r    ��� m    �� ���  � o      �+�+ 0 
new_string  � ��� r    ��� m    �*�* � o      �)�) 0 counter  � ��� X     `��(�� k   0 [�� ��� I  0 7�'��&
�' .ascrcmnt****      � ****� b   0 3��� m   0 1�� ���  a W o r d :  � o   1 2�%�% 0 aword aWord�&  � ��$� Z   8 [���#�� ?   8 ;��� o   8 9�"�" 0 counter  � o   9 :�!�! 0 numberofwords numberOfWords�  S   > ?�#  � k   B [�� ��� Z   B U��� �� =  B E��� o   B C�� 0 counter  � m   C D�� � r   H K��� o   H I�� 0 aword aWord� o      �� 0 
new_string  �   � r   N U��� b   N S��� b   N Q��� o   N O�� 0 
new_string  � m   O P�� ���   � o   Q R�� 0 aword aWord� o      �� 0 
new_string  � ��� r   V [��� [   V Y��� o   V W�� 0 counter  � m   W X�� � o      �� 0 counter  �  �$  �( 0 aword aWord� o   # $�� 0 	word_list  � ��� I  a h���
� .ascrcmnt****      � ****� b   a d��� m   a b�� ��� > T r u n c a t e d   s t r i n g   ( n e w _ s t r i n g ) :  � o   b c�� 0 
new_string  �  � ��� L   i k�� o   i j�� 0 
new_string  �  �=  � ������  � ���� 0 	splitline 	splitLine� &0 breakintotwolines breakIntoTwoLines�  0 truncatestring truncateString� �
��	�����
 0 	splitline 	splitLine�	 ��� �  ��� 0 	thestring 	theString� 0 thedelimiter theDelimiter�  � ���� � 0 	thestring 	theString� 0 thedelimiter theDelimiter� 0 olddelimiters oldDelimiters�  0 thearray theArray� ��������
�� 
ascr
�� 
txdl
�� 
citm
�� .ascrcmnt****      � ****� '��,E�O���,FO��-E�O���,FO�j O�j O�� ��!���������� &0 breakintotwolines breakIntoTwoLines�� ����� �  ������ 0 astring aString�� (0 firstlinewordcount firstLineWordCount��  � �������������� 0 astring aString�� (0 firstlinewordcount firstLineWordCount�� 0 astring_list aString_list�� 0 
new_string  �� 0 counter  �� 0 aword aWord� ,��8��>������Ngov�
�� .ascrcmnt****      � ****�� 0 	splitline 	splitLine
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� x�%j O)��l+ E�O�E�OkE�O Q�[��l kh �%j O�k  �E�Y ��k  ��%�%E�Y 	��%�%E�O�� 
�kE�Y h[OY��O�%j O�� �������������  0 truncatestring truncateString�� ����� �  ������ 0 astring aString�� 0 numberofwords numberOfWords��  � �������������� 0 astring aString�� 0 numberofwords numberOfWords�� 0 	word_list  �� 0 
new_string  �� 0 counter  �� 0 aword aWord� ������������������
�� .ascrcmnt****      � ****�� 0 	splitline 	splitLine
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� l�%�%�%�%j O)��l+ E�O�E�OkE�O ?�[��l 	kh �%j O�� Y �k  �E�Y 	��%�%E�O�kE�[OY��O�%j O�� ��� ���  � k      �� � � l     ����   K E since this is being read by other files. we must use property format    � �   s i n c e   t h i s   i s   b e i n g   r e a d   b y   o t h e r   f i l e s .   w e   m u s t   u s e   p r o p e r t y   f o r m a t   l     ����   #  use this to load into script    � :   u s e   t h i s   t o   l o a d   i n t o   s c r i p t 	
	 l     ����   c ] set globalVars to (load script "/Users/vinceluk/Dropbox/projects/btt/scpt/global-vars.scpt")    � �   s e t   g l o b a l V a r s   t o   ( l o a d   s c r i p t   " / U s e r s / v i n c e l u k / D r o p b o x / p r o j e c t s / b t t / s c p t / g l o b a l - v a r s . s c p t " )
  l     ����   "  use this to access variable    � 8   u s e   t h i s   t o   a c c e s s   v a r i a b l e  l     ����   6 0 set variable to (the COLOR_WHITE of globalVars)    � `   s e t   v a r i a b l e   t o   ( t h e   C O L O R _ W H I T E   o f   g l o b a l V a r s )  l     ��������  ��  ��    l     ��������  ��  ��    j     ���� 0 color_white COLOR_WHITE m      �   $ 2 5 5 ,   2 5 5 ,   2 5 5 ,   2 5 5 !"! j    ��#�� 0 color_black COLOR_BLACK# m    �� �$$  0 ,   0 ,   0 ,   2 5 5" %&% j    ��'�� 0 color_green COLOR_GREEN' m    (( �))  0 ,   2 2 8 ,   0 ,   2 5 5& *+* j   	 ��,�� 0 color_yellow COLOR_YELLOW, m   	 
-- �..  2 5 5 , 2 5 5 , 0 ,   2 5 5+ /0/ j    ��1�� 0 color_orange COLOR_ORANGE1 m    22 �33 " 2 5 5 ,   1 5 9 ,   4 0 ,   2 5 50 454 l     ��67��  6 2 , property COLOR_ORANGE : "255, 153, 51, 255"   7 �88 X   p r o p e r t y   C O L O R _ O R A N G E   :   " 2 5 5 ,   1 5 3 ,   5 1 ,   2 5 5 "5 9:9 j    ��;�� 0 	color_red 	COLOR_RED; m    << �== $ 2 5 5 ,   1 0 2 ,   1 0 2 ,   2 5 5: >?> l     ��@A��  @ , & property COLOR_RED : "252, 3, 3, 255"   A �BB L   p r o p e r t y   C O L O R _ R E D   :   " 2 5 2 ,   3 ,   3 ,   2 5 5 "? CDC j    ��E�� 0 color_purple COLOR_PURPLEE m    FF �GG   2 5 5 ,   0 ,   2 5 5 ,   2 5 5D HIH j    ��J�� 0 color_maroon COLOR_MAROONJ m    KK �LL   2 0 4 ,   0 ,   1 0 2 ,   2 5 5I MNM j    ��O�� 0 
color_grey 
COLOR_GREYO m    �� �PP $ 1 9 0 ,   1 9 0 ,   1 9 0 ,   2 5 5N QRQ l     ��������  ��  ��  R STS l     ��UV��  U 3 - TODO: might need to double escapte this path   V �WW Z   T O D O :   m i g h t   n e e d   t o   d o u b l e   e s c a p t e   t h i s   p a t hT XYX j    0��Z�� 0 	home_path  Z n    /[\[ 1   * .��
�� 
psxp\ l   *]����] I   *��^_
�� .earsffdralis        afdr^ m     ��
�� afdrcusr_ ��`��
�� 
rtyp` m   # &��
�� 
TEXT��  ��  ��  Y aba j   1 7��c�� 0 	icon_path 	ICON_PATHc b   1 6ded o   1 2���� 0 	home_path  e m   2 5ff �gg 6 D r o p b o x / p r o j e c t s / b t t / i c o n s /b hih l     ��������  ��  ��  i jkj l    l����l I    ��m��
�� .ascrcmnt****      � ****m b     non m     pp �qq  h o m e _ p a t h :  o o    ���� 0 	home_path  ��  ��  ��  k r��r l   s����s I   ��t��
�� .ascrcmnt****      � ****t b    uvu m    ww �xx  I C O N _ P A T H :  v o    ���� 0 	icon_path 	ICON_PATH��  ��  ��  ��  � ��y�(-2<FK�z{|��  y �������������������������� 0 color_white COLOR_WHITE�� 0 color_black COLOR_BLACK�� 0 color_green COLOR_GREEN�� 0 color_yellow COLOR_YELLOW�� 0 color_orange COLOR_ORANGE�� 0 	color_red 	COLOR_RED�� 0 color_purple COLOR_PURPLE�� 0 color_maroon COLOR_MAROON�� 0 
color_grey 
COLOR_GREY�� 0 	home_path  �� 0 	icon_path 	ICON_PATH
�� .aevtoappnull  �   � ****z �}}  / U s e r s / v i l u k /{ �~~ P / U s e r s / v i l u k / D r o p b o x / p r o j e c t s / b t t / i c o n s /| ����������
�� .aevtoappnull  �   � **** k     �� j�� r����  ��  ��  �  � p��w
�� .ascrcmnt****      � ****�� �b  	%j O�b  
%j � ���  N / A | 3 0 4 5 4 | 5 2 6 6� ����� �  ������������������������������ ���  N / A� ��� 
 3 0 4 5 4� ���  5 2 6 6��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  � ���   3 0 4 5 4 \ n D B Y :   5 2 6 6�����  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   ascr  ��ޭޭ