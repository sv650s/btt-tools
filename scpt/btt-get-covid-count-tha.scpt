FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m     ��
�� boovfals 	 o      ���� 0 debug DEBUG��  ��     
  
 l     ��������  ��  ��        l     ��  ��      read global variables     �   ,   r e a d   g l o b a l   v a r i a b l e s      l    ����  r        l   	 ����  I   	�� ��
�� .sysoloadscpt        file  m       �   t / U s e r s / v i n c e l u k / D r o p b o x / p r o j e c t s / b t t / s c p t / g l o b a l - v a r s . s c p t��  ��  ��    o      ���� 0 
globalvars 
globalVars��  ��        l     ��������  ��  ��        l     ��������  ��  ��        l     ��   !��     Y S today has to be less than this threshold compared to yesterday before we use green    ! � " " �   t o d a y   h a s   t o   b e   l e s s   t h a n   t h i s   t h r e s h o l d   c o m p a r e d   t o   y e s t e r d a y   b e f o r e   w e   u s e   g r e e n   # $ # l    %���� % r     & ' & m    ���� 2 ' o      ���� 0 	threshold 	THRESHOLD��  ��   $  ( ) ( l     ��������  ��  ��   )  * + * l     ��������  ��  ��   +  , - , l     �� . /��   . 8 2 we still have to tell the group what data to pull    / � 0 0 d   w e   s t i l l   h a v e   t o   t e l l   t h e   g r o u p   w h a t   d a t a   t o   p u l l -  1 2 1 l  � 3���� 3 O   � 4 5 4 k   � 6 6  7 8 7 I   �� 9 :
�� .BtttSetPnull���     **** 9 m     ; ; � < < $ C o r o n a V i r u s C o u n t r y : �� =��
�� 
bTpV = m     > > � ? ?  T H A��   8  @ A @ l   ��������  ��  ��   A  B C B l    �� D E��   D � �
	output has 4 things
	* today's new case count (THA)
	* today's new case count for BKK provence
	* yesterday's new case count (THA)
	* yesterday's new case count for BKK provence
	    E � F Fj 
 	 o u t p u t   h a s   4   t h i n g s 
 	 *   t o d a y ' s   n e w   c a s e   c o u n t   ( T H A ) 
 	 *   t o d a y ' s   n e w   c a s e   c o u n t   f o r   B K K   p r o v e n c e 
 	 *   y e s t e r d a y ' s   n e w   c a s e   c o u n t   ( T H A ) 
 	 *   y e s t e r d a y ' s   n e w   c a s e   c o u n t   f o r   B K K   p r o v e n c e 
 	 C  G H G Z    1 I J�� K I =    L M L o    ���� 0 debug DEBUG M m    ��
�� boovfals J r   " ) N O N l  " ' P���� P I  " '�� Q��
�� .sysoexecTEXT���     TEXT Q m   " # R R � S S s o u r c e   ~ / . b a s h _ p r o f i l e   & &   c d   ~ / D r o p b o x / p r o j e c t s / b t t   & &   c o n d a   r u n   - n   b t t   p y t h o n   g e t _ c o v i d _ d a i l y _ d a t a . p y   C O U N T R Y   T h a i l a n d   - - s o u r c e   t h - d a t a��  ��  ��   O o      ���� 0 th_data  ��   K k   , 1 T T  U V U r   , / W X W m   , - Y Y � Z Z  N / A | N / A | 2 0 5 | 4 6 X o      ���� 0 th_data   V  [�� [ l  0 0�� \ ]��   \ %  set th_data to "215|32|205|46"    ] � ^ ^ >   s e t   t h _ d a t a   t o   " 2 1 5 | 3 2 | 2 0 5 | 4 6 "��   H  _ ` _ l  2 2��������  ��  ��   `  a b a r   2 = c d c n  2 9 e f e I   3 9�� g���� 0 	splitline 	splitLine g  h i h o   3 4���� 0 th_data   i  j�� j m   4 5 k k � l l  |��  ��   f  f   2 3 d o      ���� 0 output_lines   b  m n m r   > J o p o n   > F q r q 4   A F�� s
�� 
cobj s m   D E����  r o   > A���� 0 output_lines   p o      ���� 0 todaycounttha todayCountTHA n  t u t r   K W v w v n   K S x y x 4   N S�� z
�� 
cobj z m   Q R����  y o   K N���� 0 output_lines   w o      ���� 0 todaycountbkk todayCountBKK u  { | { r   X d } ~ } n   X `  �  4   [ `�� �
�� 
cobj � m   ^ _����  � o   X [���� 0 output_lines   ~ o      ���� 0 ydacounttha ydaCountTHA |  � � � r   e s � � � n   e o � � � 4   h o�� �
�� 
cobj � m   k n����  � o   e h���� 0 output_lines   � o      ���� 0 ydacountbkk ydaCountBKK �  � � � l  t t��������  ��  ��   �  � � � I  t �� ���
�� .ascrcmnt****      � **** � b   t { � � � m   t w � � � � �  t o d a y C o u n t T H A : � o   w z���� 0 todaycounttha todayCountTHA��   �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � b   � � � � � m   � � � � � � �  y d a C o u n t T H A : � o   � ����� 0 ydacounttha ydaCountTHA��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � l  � � ����� � l  � � ����� � n   � � � � � o   � ����� 0 color_white COLOR_WHITE � o   � ����� 0 
globalvars 
globalVars��  ��  ��  ��   � o      ���� 0 	fontcolor 	fontColor �  � � � r   � � � � � l  � � ����� � l  � � ����� � n   � � � � � o   � ����� 0 color_black COLOR_BLACK � o   � ����� 0 
globalvars 
globalVars��  ��  ��  ��   � o      ���� 0 background_color   �  � � � l  � ���������  ��  ��   �  � � � l   � ��� � ���   � 1 +
	less (green)
	same (yellow)
	more (red)
	    � � � � V 
 	 l e s s   ( g r e e n ) 
 	 s a m e   ( y e l l o w ) 
 	 m o r e   ( r e d ) 
 	 �  � � � r   � � � � � m   � � � � � � �   � o      ���� 0 
jsonoutput 
jsonOutput �  � � � Z   �� � ��� � � >  � � � � � o   � ����� 0 todaycounttha todayCountTHA � m   � � � � � � �  N / A � k   �_ � �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � m   � � � � � � � . d i s p l a y i n g   t o d a y ' s   d a t a��   �  � � � l  � ��� � ���   � = 7 set this so we can derive color tomorrow when it's N/A    � � � � n   s e t   t h i s   s o   w e   c a n   d e r i v e   c o l o r   t o m o r r o w   w h e n   i t ' s   N / A �  � � � I  � ��� � �
�� .BtttSetPnull���     **** � m   � � � � � � � > V L C o r o n a V i r u s C o u n t r y Y D A C o u n t T H A � �� ���
�� 
bTpV � o   � ����� 0 ydacounttha ydaCountTHA��   �  � � � I  � ��� � �
�� .BtttSetPnull���     **** � m   � � � � � � � > V L C o r o n a V i r u s C o u n t r y Y D A C o u n t B K K � �� ���
�� 
bTpV � o   � ����� 0 ydacountbkk ydaCountBKK��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � c   � � � � � \   � � � � � o   � ����� 0 todaycounttha todayCountTHA � o   � ����� 0 ydacounttha ydaCountTHA � m   � ���
�� 
nmbr � o      �� 0 diff   �  � � � l  � ��~�}�|�~  �}  �|   �  � � � l  � ��{�z�y�{  �z  �y   �  � � � l  � ��x�w�v�x  �w  �v   �  � � � Z   �% � � � � � ?   � � � � � o   � ��u�u 0 todaycounttha todayCountTHA � o   � ��t�t 0 ydacounttha ydaCountTHA � r   � � � � � l  � � ��s�r � l  � � ��q�p � n   � � � � � o   � ��o�o 0 	color_red 	COLOR_RED � o   � ��n�n 0 
globalvars 
globalVars�q  �p  �s  �r   � o      �m�m 0 	fontcolor 	fontColor �  � � � F   � � � � A   � � � � � o   � ��l�l 0 todaycounttha todayCountTHA � o   � ��k�k 0 ydacounttha ydaCountTHA � A  	 � � � o  �j�j 0 diff   � ]     m  �i�i�� o  �h�h 0 	threshold 	THRESHOLD � �g r   l �f�e l �d�c n   o  �b�b 0 color_green COLOR_GREEN o  �a�a 0 
globalvars 
globalVars�d  �c  �f  �e   o      �`�` 0 	fontcolor 	fontColor�g   � r  %	
	 l !�_�^ l !�]�\ n  ! o  !�[�[ 0 color_yellow COLOR_YELLOW o  �Z�Z 0 
globalvars 
globalVars�]  �\  �_  �^  
 o      �Y�Y 0 	fontcolor 	fontColor �  l &&�X�W�V�X  �W  �V    l &&�U�T�S�U  �T  �S    l &&�R�R   %  old way - just show today data    � >   o l d   w a y   -   j u s t   s h o w   t o d a y   d a t a  l &&�Q�Q   b \		set jsonOutput to "{\"text\": \"2DA: " & todayCountTHA & "\\nBKK: " & todayCountBKK & "\",    � � 	 	 s e t   j s o n O u t p u t   t o   " { \ " t e x t \ " :   \ " 2 D A :   "   &   t o d a y C o u n t T H A   &   " \ \ n B K K :   "   &   t o d a y C o u n t B K K   &   " \ " ,  r  &]  b  &Y!"! b  &U#$# b  &Q%&% b  &M'(' b  &I)*) b  &E+,+ b  &A-.- b  &=/0/ b  &9121 b  &5343 b  &1565 b  &-787 m  &)99 �::  { " t e x t " :   " 2 D A :  8 o  ),�P�P 0 todaycounttha todayCountTHA6 m  -0;; �<<  \ t4 o  14�O�O 0 ydacounttha ydaCountTHA2 m  58== �>>  \ n B K K :  0 o  9<�N�N 0 todaycountbkk todayCountBKK. m  =@?? �@@  \ t, o  AD�M�M 0 ydacountbkk ydaCountBKK* m  EHAA �BB 0 " , 
 " b a c k g r o u n d _ c o l o r " :   "( o  IL�L�L 0 background_color  & m  MPCC �DD $ " , 
 " f o n t _ c o l o r " :   "$ o  QT�K�K 0 	fontcolor 	fontColor" m  UXEE �FF  " }  o      �J�J 0 
jsonoutput 
jsonOutput GHG l ^^�I�H�G�I  �H  �G  H I�FI l ^^�E�D�C�E  �D  �C  �F  ��   � k  b�JJ KLK I bi�BM�A
�B .ascrcmnt****      � ****M m  beNN �OO h t o d a y ' s   d a t a   n o t   a v a i l a b l e ,   d i s p l a y   y e s t e r d a y ' s   d a t a�A  L PQP l jj�@RS�@  R   display yesterday's data   S �TT 2   d i s p l a y   y e s t e r d a y ' s   d a t aQ UVU r  juWXW I jq�?Y�>
�? .BttGVarSnull���     ****Y m  jmZZ �[[ > V L C o r o n a V i r u s C o u n t r y Y D A C o u n t T H A�>  X o      �=�= &0 daybeforecounttha dayBeforeCountTHAV \]\ r  v�^_^ I v}�<`�;
�< .BttGVarSnull���     ****` m  vyaa �bb > V L C o r o n a V i r u s C o u n t r y Y D A C o u n t B K K�;  _ o      �:�: &0 daybeforecountbkk dayBeforeCountBKK] cdc l ���9ef�9  e 8 2 we may not have this value the first time you run   f �gg d   w e   m a y   n o t   h a v e   t h i s   v a l u e   t h e   f i r s t   t i m e   y o u   r u nd hih Z  ��jk�8�7j = ��lml o  ���6�6 &0 daybeforecountbkk dayBeforeCountBKKm m  ���5
�5 
msngk r  ��non m  ��pp �qq  N / Ao o      �4�4 &0 daybeforecountbkk dayBeforeCountBKK�8  �7  i rsr l ���3�2�1�3  �2  �1  s tut I ���0v�/
�0 .ascrcmnt****      � ****v b  ��wxw m  ��yy �zz & d a y B e f o r e C o u n t T H A :  x o  ���.�. &0 daybeforecounttha dayBeforeCountTHA�/  u {|{ I ���-}�,
�- .ascrcmnt****      � ****} b  ��~~ m  ���� ��� & d a y B e f o r e C o u n t B K K :   o  ���+�+ &0 daybeforecountbkk dayBeforeCountBKK�,  | ��� l ���*�)�(�*  �)  �(  � ��� l ���'���'  � 3 - displaying yesterday's data - let's use grey   � ��� Z   d i s p l a y i n g   y e s t e r d a y ' s   d a t a   -   l e t ' s   u s e   g r e y� ��� r  ����� l ����&�%� l ����$�#� n  ����� o  ���"�" 0 
color_grey 
COLOR_GREY� o  ���!�! 0 
globalvars 
globalVars�$  �#  �&  �%  � o      � �  0 	fontcolor 	fontColor� ��� l ������  �  �  � ��� l ������  � %  old way - just show today data   � ��� >   o l d   w a y   -   j u s t   s h o w   t o d a y   d a t a� ��� l ������  � ] W set jsonOutput to "{\"text\": \"YDA: " & ydaCountTHA & "\\nBKK: " & ydaCountBKK & "\",   � ��� �   s e t   j s o n O u t p u t   t o   " { \ " t e x t \ " :   \ " Y D A :   "   &   y d a C o u n t T H A   &   " \ \ n B K K :   "   &   y d a C o u n t B K K   &   " \ " ,� ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���  { " t e x t " :   " Y D A :  � o  ���� 0 ydacounttha ydaCountTHA� m  ���� ���  \ t� o  ���� &0 daybeforecounttha dayBeforeCountTHA� m  ���� ���  \ n B K K :  � o  ���� 0 ydacountbkk ydaCountBKK� m  ���� ���  \ t� o  ���� &0 daybeforecountbkk dayBeforeCountBKK� m  ���� ��� 0 " , 
 " b a c k g r o u n d _ c o l o r " :   "� o  ���� 0 background_color  � m  ���� ��� $ " , 
 " f o n t _ c o l o r " :   "� o  ���� 0 	fontcolor 	fontColor� m  ���� ���  " }� o      �� 0 
jsonoutput 
jsonOutput� ��� l ������  �  �  �   � ��� l ������  �  �  � ��� L  ���� o  ���� 0 
jsonoutput 
jsonOutput� ��� l ���
�	��
  �	  �  �   5 m    ���                                                                                      @ alis    F  Macintosh HD                   BD ����BetterTouchTool.app                                            ����            ����  
 cu             Applications  #/:Applications:BetterTouchTool.app/   (  B e t t e r T o u c h T o o l . a p p    M a c i n t o s h   H D   Applications/BetterTouchTool.app  / ��  ��  ��   2 ��� l     ����  �  �  � ��� l     ����  � ' ! implementation of split function   � ��� B   i m p l e m e n t a t i o n   o f   s p l i t   f u n c t i o n� ��� i     ��� I      ���� 0 	splitline 	splitLine� ��� o      �� 0 	thestring 	theString� �� � o      ���� 0 thedelimiter theDelimiter�   �  � k     &�� ��� l     ������  � . ( save delimiters to restore old settings   � ��� P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s� ��� r     ��� n    ��� 1    ��
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
citm� o    ���� 0 	thestring 	theString� o      ���� 0 thearray theArray�    l   ����     restore the old setting    � 0   r e s t o r e   t h e   o l d   s e t t i n g  r     o    ���� 0 olddelimiters oldDelimiters n     	
	 1    ��
�� 
txdl
 1    ��
�� 
ascr  l   ����     return the result    � $   r e t u r n   t h e   r e s u l t  I   ����
�� .ascrcmnt****      � **** m     �  t h e A r r a y��    I   #����
�� .ascrcmnt****      � **** o    ���� 0 thearray theArray��   �� L   $ & o   $ %���� 0 thearray theArray��  � �� l     ��������  ��  ��  ��       ����   ������ 0 	splitline 	splitLine
�� .aevtoappnull  �   � **** ����������� 0 	splitline 	splitLine�� �� ��    ������ 0 	thestring 	theString�� 0 thedelimiter theDelimiter��   ���������� 0 	thestring 	theString�� 0 thedelimiter theDelimiter�� 0 olddelimiters oldDelimiters�� 0 thearray theArray ��������
�� 
ascr
�� 
txdl
�� 
citm
�� .ascrcmnt****      � ****�� '��,E�O���,FO��-E�O���,FO�j O�j O� ��!����"#��
�� .aevtoappnull  �   � ****! k    �$$  %%  &&  #''  1����  ��  ��  "  # D�� ��������� ;�� >�� R���� Y k���������������� ��� ��������� ��� � � � �������������9;=?ACENZ����a����py������������ 0 debug DEBUG
�� .sysoloadscpt        file�� 0 
globalvars 
globalVars�� 2�� 0 	threshold 	THRESHOLD
�� 
bTpV
�� .BtttSetPnull���     ****
�� .sysoexecTEXT���     TEXT�� 0 th_data  �� 0 	splitline 	splitLine�� 0 output_lines  
�� 
cobj�� 0 todaycounttha todayCountTHA�� 0 todaycountbkk todayCountBKK�� 0 ydacounttha ydaCountTHA�� �� 0 ydacountbkk ydaCountBKK
�� .ascrcmnt****      � ****�� 0 color_white COLOR_WHITE�� 0 	fontcolor 	fontColor�� 0 color_black COLOR_BLACK�� 0 background_color  �� 0 
jsonoutput 
jsonOutput
�� 
nmbr�� 0 diff  �� 0 	color_red 	COLOR_RED
�� 
bool�� 0 color_green COLOR_GREEN�� 0 color_yellow COLOR_YELLOW
�� .BttGVarSnull���     ****�� &0 daybeforecounttha dayBeforeCountTHA�� &0 daybeforecountbkk dayBeforeCountBKK
�� 
msng�� 0 
color_grey 
COLOR_GREY���fE�O�j E�O�E�O�����l 
O�f  �j E�Y �E�OPO)��l+ E` O_ a k/E` O_ a l/E` O_ a m/E` O_ a a /E` Oa _ %j Oa _ %j O�a ,E` O�a ,E` Oa E`  O_ a ! �a "j Oa #�_ l 
Oa $�_ l 
O_ _ a %&E` &O_ _  �a ',E` Y /_ _ 	 _ &i� a (& �a ),E` Y �a *,E` Oa +_ %a ,%_ %a -%_ %a .%_ %a /%_ %a 0%_ %a 1%E`  OPY �a 2j Oa 3j 4E` 5Oa 6j 4E` 7O_ 7a 8  a 9E` 7Y hOa :_ 5%j Oa ;_ 7%j O�a <,E` Oa =_ %a >%_ 5%a ?%_ %a @%_ 7%a A%_ %a B%_ %a C%E`  OPO_  OPU ascr  ��ޭ