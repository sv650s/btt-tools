FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m     ��
�� boovfals 	 o      ���� 0 debug DEBUG��  ��     
  
 l     ��������  ��  ��        l    ����  r        m       �   $ 2 5 5 ,   2 5 5 ,   2 5 5 ,   2 5 5  o      ���� 0 color_white COLOR_WHITE��  ��        l    ����  r        m    	   �    0 ,   0 ,   0 ,   2 5 5  o      ���� 0 color_black COLOR_BLACK��  ��        l    ����  r        m       �      0 ,   2 2 8 ,   0 ,   2 5 5  o      ���� 0 color_green COLOR_GREEN��  ��     ! " ! l    #���� # r     $ % $ m     & & � ' ' " 2 5 5 ,   2 5 5   , 0   ,   2 5 5 % o      ���� 0 color_yellow COLOR_YELLOW��  ��   "  ( ) ( l    *���� * r     + , + m     - - � . . " 2 5 5 ,   1 5 3 ,   5 1 ,   2 5 5 , o      ���� 0 color_orange COLOR_ORANGE��  ��   )  / 0 / l    1���� 1 r     2 3 2 m     4 4 � 5 5  2 5 5 ,   0   , 0   ,   2 5 5 3 o      ���� 0 	color_red 	COLOR_RED��  ��   0  6 7 6 l    8���� 8 r     9 : 9 m     ; ; � < <   2 5 5 ,   0 ,   2 5 5 ,   2 5 5 : o      ���� 0 color_purple COLOR_PURPLE��  ��   7  = > = l    % ?���� ? r     % @ A @ m     ! B B � C C   2 0 4 ,   0 ,   1 0 2 ,   2 5 5 A o      ���� 0 color_maroon COLOR_MAROON��  ��   >  D E D l  & - F���� F r   & - G H G m   & ) I I � J J $ 1 9 0 ,   1 9 0 ,   1 9 0 ,   2 5 5 H o      ���� 0 
color_grey 
COLOR_GREY��  ��   E  K L K l     ��������  ��  ��   L  M N M l     �� O P��   O Y S today has to be less than this threshold compared to yesterday before we use green    P � Q Q �   t o d a y   h a s   t o   b e   l e s s   t h a n   t h i s   t h r e s h o l d   c o m p a r e d   t o   y e s t e r d a y   b e f o r e   w e   u s e   g r e e n N  R S R l  . 5 T���� T r   . 5 U V U m   . 1���� 2 V o      ���� 0 	threshold 	THRESHOLD��  ��   S  W X W l     ��������  ��  ��   X  Y Z Y l     ��������  ��  ��   Z  [ \ [ l     �� ] ^��   ] 8 2 we still have to tell the group what data to pull    ^ � _ _ d   w e   s t i l l   h a v e   t o   t e l l   t h e   g r o u p   w h a t   d a t a   t o   p u l l \  ` a ` l  6 b���� b O   6 c d c k   < e e  f g f I  < I�� h i
�� .BtttSetPnull���     **** h m   < ? j j � k k $ C o r o n a V i r u s C o u n t r y i �� l��
�� 
bTpV l m   B E m m � n n  T H A��   g  o p o l  J J��������  ��  ��   p  q r q l   J J�� s t��   s � �
	output has 4 things
	* today's new case count (THA)
	* today's new case count for BKK provence
	* yesterday's new case count (THA)
	* yesterday's new case count for BKK provence
	    t � u uj 
 	 o u t p u t   h a s   4   t h i n g s 
 	 *   t o d a y ' s   n e w   c a s e   c o u n t   ( T H A ) 
 	 *   t o d a y ' s   n e w   c a s e   c o u n t   f o r   B K K   p r o v e n c e 
 	 *   y e s t e r d a y ' s   n e w   c a s e   c o u n t   ( T H A ) 
 	 *   y e s t e r d a y ' s   n e w   c a s e   c o u n t   f o r   B K K   p r o v e n c e 
 	 r  v w v Z   J g x y�� z x =  J M { | { o   J K���� 0 debug DEBUG | m   K L��
�� boovfals y r   P [ } ~ } l  P W ����  I  P W�� ���
�� .sysoexecTEXT���     TEXT � m   P S � � � � � s o u r c e   ~ / . b a s h _ p r o f i l e   & &   c d   ~ / D r o p b o x / p r o j e c t s / b t t   & &   c o n d a   r u n   - n   b t t   p y t h o n   g e t _ c o v i d _ d a i l y _ d a t a . p y   C O U N T R Y   T h a i l a n d   - - s o u r c e   t h - d a t a��  ��  ��   ~ o      ���� 0 th_data  ��   z k   ^ g � �  � � � r   ^ e � � � m   ^ a � � � � �  N / A | N / A | 2 0 5 | 4 6 � o      ���� 0 th_data   �  ��� � l  f f�� � ���   � %  set th_data to "215|32|205|46"    � � � � >   s e t   t h _ d a t a   t o   " 2 1 5 | 3 2 | 2 0 5 | 4 6 "��   w  � � � l  h h��������  ��  ��   �  � � � r   h w � � � n  h s � � � I   i s�� ����� 0 	splitline 	splitLine �  � � � o   i l���� 0 th_data   �  ��� � m   l o � � � � �  |��  ��   �  f   h i � o      ���� 0 output_lines   �  � � � r   x � � � � n   x � � � � 4   { ��� �
�� 
cobj � m   ~ ����  � o   x {���� 0 output_lines   � o      ���� 0 todaycounttha todayCountTHA �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 output_lines   � o      ���� 0 todaycountbkk todayCountBKK �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 output_lines   � o      ���� 0 ydacounttha ydaCountTHA �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 output_lines   � o      ���� 0 ydacountbkk ydaCountBKK �  � � � l  � ���������  ��  ��   �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � b   � � � � � m   � � � � � � �  t o d a y C o u n t T H A : � o   � ����� 0 todaycounttha todayCountTHA��   �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � b   � � � � � m   � � � � � � �  y d a C o u n t T H A : � o   � ����� 0 ydacounttha ydaCountTHA��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � o   � ����� 0 color_white COLOR_WHITE � o      ���� 0 	fontcolor 	fontColor �  � � � r   � � � � � o   � ����� 0 color_black COLOR_BLACK � o      ���� 0 background_color   �  � � � l  � ���������  ��  ��   �  � � � l   � ��� � ���   � 1 +
	less (green)
	same (yellow)
	more (red)
	    � � � � V 
 	 l e s s   ( g r e e n ) 
 	 s a m e   ( y e l l o w ) 
 	 m o r e   ( r e d ) 
 	 �  � � � r   � � � � � m   � � � � � � �   � o      ���� 0 
jsonoutput 
jsonOutput �  � � � Z   �� � ��� � � >  � � � � � o   � ����� 0 todaycounttha todayCountTHA � m   � � � � � � �  N / A � k   �{ � �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � m   � � � � � � � . d i s p l a y i n g   t o d a y ' s   d a t a��   �  � � � l  � ��� � ���   � = 7 set this so we can derive color tomorrow when it's N/A    � � � � n   s e t   t h i s   s o   w e   c a n   d e r i v e   c o l o r   t o m o r r o w   w h e n   i t ' s   N / A �  � � � I  � ��� � �
�� .BtttSetPnull���     **** � m   � � � � � � � > V L C o r o n a V i r u s C o u n t r y Y D A C o u n t T H A � �� ���
�� 
bTpV � o   � ����� 0 ydacounttha ydaCountTHA��   �  � � � I  ��� � �
�� .BtttSetPnull���     **** � m   � � � � � � � > V L C o r o n a V i r u s C o u n t r y Y D A C o u n t B K K � �� ��
�� 
bTpV  o   ���� 0 ydacountbkk ydaCountBKK��   �  l ��~�}�  �~  �}    r   c   \  	
	 o  �|�| 0 todaycounttha todayCountTHA
 o  �{�{ 0 ydacounttha ydaCountTHA m  �z
�z 
nmbr o      �y�y 0 diff    l �x�w�v�x  �w  �v    l �u�t�s�u  �t  �s    l �r�q�p�r  �q  �p    Z  Q ?   o  �o�o 0 todaycounttha todayCountTHA o  �n�n 0 ydacounttha ydaCountTHA r  "' o  "#�m�m 0 	color_red 	COLOR_RED o      �l�l 0 	fontcolor 	fontColor  F  *A A  *1  o  *-�k�k 0 todaycounttha todayCountTHA  o  -0�j�j 0 ydacounttha ydaCountTHA A  4=!"! o  47�i�i 0 diff  " ]  7<#$# m  78�h�h��$ o  8;�g�g 0 	threshold 	THRESHOLD %�f% r  DI&'& o  DE�e�e 0 color_green COLOR_GREEN' o      �d�d 0 	fontcolor 	fontColor�f   r  LQ()( o  LM�c�c 0 color_yellow COLOR_YELLOW) o      �b�b 0 	fontcolor 	fontColor *+* l RR�a�`�_�a  �`  �_  + ,-, l RR�^�]�\�^  �]  �\  - ./. l RR�[�Z�Y�[  �Z  �Y  / 010 r  Ry232 b  Ru454 b  Rq676 b  Rm898 b  Ri:;: b  Re<=< b  Ra>?> b  R]@A@ b  RYBCB m  RUDD �EE  { " t e x t " :   " 2 D A :  C o  UX�X�X 0 todaycounttha todayCountTHAA m  Y\FF �GG  \ n B K K :  ? o  ]`�W�W 0 todaycountbkk todayCountBKK= m  adHH �II 0 " , 
 " b a c k g r o u n d _ c o l o r " :   "; o  eh�V�V 0 background_color  9 m  ilJJ �KK $ " , 
 " f o n t _ c o l o r " :   "7 o  mp�U�U 0 	fontcolor 	fontColor5 m  qtLL �MM  " }3 o      �T�T 0 
jsonoutput 
jsonOutput1 NON l zz�S�R�Q�S  �R  �Q  O P�PP l zz�O�N�M�O  �N  �M  �P  ��   � k  ~�QQ RSR I ~��LT�K
�L .ascrcmnt****      � ****T m  ~�UU �VV h t o d a y ' s   d a t a   n o t   a v a i l a b l e ,   d i s p l a y   y e s t e r d a y ' s   d a t a�K  S WXW l ���JYZ�J  Y   display yesterday's data   Z �[[ 2   d i s p l a y   y e s t e r d a y ' s   d a t aX \]\ r  ��^_^ I ���I`�H
�I .BttGVarSnull���     ****` m  ��aa �bb > V L C o r o n a V i r u s C o u n t r y Y D A C o u n t T H A�H  _ o      �G�G &0 daybeforecounttha dayBeforeCountTHA] cdc r  ��efe I ���Fg�E
�F .BttGVarSnull���     ****g m  ��hh �ii > V L C o r o n a V i r u s C o u n t r y Y D A C o u n t B K K�E  f o      �D�D &0 daybeforecountbkk dayBeforeCountBKKd jkj l ���Clm�C  l 8 2 we may not have this value the first time you run   m �nn d   w e   m a y   n o t   h a v e   t h i s   v a l u e   t h e   f i r s t   t i m e   y o u   r u nk opo Z  ��qr�B�Aq = ��sts o  ���@�@ &0 daybeforecountbkk dayBeforeCountBKKt m  ���?
�? 
msngr r  ��uvu m  ��ww �xx  N / Av o      �>�> &0 daybeforecountbkk dayBeforeCountBKK�B  �A  p yzy l ���=�<�;�=  �<  �;  z {|{ I ���:}�9
�: .ascrcmnt****      � ****} b  ��~~ m  ���� ��� & d a y B e f o r e C o u n t T H A :   o  ���8�8 &0 daybeforecounttha dayBeforeCountTHA�9  | ��� I ���7��6
�7 .ascrcmnt****      � ****� b  ����� m  ���� ��� & d a y B e f o r e C o u n t B K K :  � o  ���5�5 &0 daybeforecountbkk dayBeforeCountBKK�6  � ��� l ���4�3�2�4  �3  �2  � ��� l ���1���1  � 3 - displaying yesterday's data - let's use grey   � ��� Z   d i s p l a y i n g   y e s t e r d a y ' s   d a t a   -   l e t ' s   u s e   g r e y� ��� r  ����� o  ���0�0 0 
color_grey 
COLOR_GREY� o      �/�/ 0 	fontcolor 	fontColor� ��� l ���.�-�,�.  �-  �,  � ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���  { " t e x t " :   " Y D A :  � o  ���+�+ 0 ydacounttha ydaCountTHA� m  ���� ���  \ n B K K :  � o  ���*�* 0 ydacountbkk ydaCountBKK� m  ���� ��� 0 " , 
 " b a c k g r o u n d _ c o l o r " :   "� o  ���)�) 0 background_color  � m  ���� ��� $ " , 
 " f o n t _ c o l o r " :   "� o  ���(�( 0 	fontcolor 	fontColor� m  ���� ���  " }� o      �'�' 0 
jsonoutput 
jsonOutput� ��&� l ���%�$�#�%  �$  �#  �&   � ��� l ���"�!� �"  �!  �   � ��� L  ��� o  ��� 0 
jsonoutput 
jsonOutput� ��� l ����  �  �  �   d m   6 9���                                                                                      @ alis    F  Macintosh HD                   BD ����BetterTouchTool.app                                            ����            ����  
 cu             Applications  #/:Applications:BetterTouchTool.app/   (  B e t t e r T o u c h T o o l . a p p    M a c i n t o s h   H D   Applications/BetterTouchTool.app  / ��  ��  ��   a ��� l     ����  �  �  � ��� l     ����  � ' ! implementation of split function   � ��� B   i m p l e m e n t a t i o n   o f   s p l i t   f u n c t i o n� ��� i     ��� I      ���� 0 	splitline 	splitLine� ��� o      �� 0 	thestring 	theString� ��� o      �� 0 thedelimiter theDelimiter�  �  � k     &�� ��� l     ����  � . ( save delimiters to restore old settings   � ��� P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s� ��� r     ��� n    ��� 1    �
� 
txdl� 1     �
� 
ascr� o      �� 0 olddelimiters oldDelimiters� ��� l   ����  � - ' set delimiters to delimiter to be used   � ��� N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e d� ��� r    ��� o    �� 0 thedelimiter theDelimiter� n     ��� 1    
�
� 
txdl� 1    �

�
 
ascr� ��� l   �	���	  �   create the array   � ��� "   c r e a t e   t h e   a r r a y� ��� r    ��� n    ��� 2    �
� 
citm� o    �� 0 	thestring 	theString� o      �� 0 thearray theArray� ��� l   ����  �   restore the old setting   � ��� 0   r e s t o r e   t h e   o l d   s e t t i n g� ��� r    ��� o    �� 0 olddelimiters oldDelimiters� n     ��� 1    �
� 
txdl� 1    �
� 
ascr� ��� l   ����  �   return the result   � ��� $   r e t u r n   t h e   r e s u l t� ��� I   � ���
�  .ascrcmnt****      � ****� m       �  t h e A r r a y��  �  I   #����
�� .ascrcmnt****      � **** o    ���� 0 thearray theArray��   �� L   $ & o   $ %���� 0 thearray theArray��  � �� l     ��������  ��  ��  ��       ��	
��   ������ 0 	splitline 	splitLine
�� .aevtoappnull  �   � ****	 ����������� 0 	splitline 	splitLine�� ����   ������ 0 	thestring 	theString�� 0 thedelimiter theDelimiter��   ���������� 0 	thestring 	theString�� 0 thedelimiter theDelimiter�� 0 olddelimiters oldDelimiters�� 0 thearray theArray ������ ��
�� 
ascr
�� 
txdl
�� 
citm
�� .ascrcmnt****      � ****�� '��,E�O���,FO��-E�O���,FO�j O�j O�
 ��������
�� .aevtoappnull  �   � **** k              !  (  /  6  =  D  R  `����  ��  ��     I�� �� �� �� &�� -�� 4�� ;�� B�� I������� j�� m�� ����� � ����������������� ��� ����� ��� � � � �������DFHJLUa����h����w��������� 0 debug DEBUG�� 0 color_white COLOR_WHITE�� 0 color_black COLOR_BLACK�� 0 color_green COLOR_GREEN�� 0 color_yellow COLOR_YELLOW�� 0 color_orange COLOR_ORANGE�� 0 	color_red 	COLOR_RED�� 0 color_purple COLOR_PURPLE�� 0 color_maroon COLOR_MAROON�� 0 
color_grey 
COLOR_GREY�� 2�� 0 	threshold 	THRESHOLD
�� 
bTpV
�� .BtttSetPnull���     ****
�� .sysoexecTEXT���     TEXT�� 0 th_data  �� 0 	splitline 	splitLine�� 0 output_lines  
�� 
cobj�� 0 todaycounttha todayCountTHA�� 0 todaycountbkk todayCountBKK�� 0 ydacounttha ydaCountTHA�� �� 0 ydacountbkk ydaCountBKK
�� .ascrcmnt****      � ****�� 0 	fontcolor 	fontColor�� 0 background_color  �� 0 
jsonoutput 
jsonOutput
�� 
nmbr�� 0 diff  
�� 
bool
�� .BttGVarSnull���     ****�� &0 daybeforecounttha dayBeforeCountTHA�� &0 daybeforecountbkk dayBeforeCountBKK
�� 
msng��fE�O�E�O�E�O�E�O�E�O�E�O�E�O�E�O�E` Oa E` Oa E` Oa �a a a l O�f  a j E` Y a E` OPO)_ a l+ E`  O_  a !k/E` "O_  a !l/E` #O_  a !m/E` $O_  a !a %/E` &Oa '_ "%j (Oa )_ $%j (O�E` *O�E` +Oa ,E` -O_ "a . �a /j (Oa 0a _ $l Oa 1a _ &l O_ "_ $a 2&E` 3O_ "_ $ 
�E` *Y )_ "_ $	 _ 3i_  a 4& 
�E` *Y �E` *Oa 5_ "%a 6%_ #%a 7%_ +%a 8%_ *%a 9%E` -OPY �a :j (Oa ;j <E` =Oa >j <E` ?O_ ?a @  a AE` ?Y hOa B_ =%j (Oa C_ ?%j (O_ E` *Oa D_ $%a E%_ &%a F%_ +%a G%_ *%a H%E` -OPO_ -OPU ascr  ��ޭ