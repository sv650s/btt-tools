FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m     ��
�� boovfals 	 o      ���� 0 debug DEBUG��  ��     
  
 l     ��������  ��  ��        l     ��  ��      read global variables     �   ,   r e a d   g l o b a l   v a r i a b l e s      l    ����  r        l   	 ����  I   	�� ��
�� .sysoloadscpt        file  m       �   t / U s e r s / v i n c e l u k / D r o p b o x / p r o j e c t s / b t t / s c p t / g l o b a l - v a r s . s c p t��  ��  ��    o      ���� 0 
globalvars 
globalVars��  ��        l     ��������  ��  ��        l    ����  r         m    ���� 2   o      ���� 0 	threshold 	THRESHOLD��  ��     ! " ! l     ��������  ��  ��   "  # $ # l     ��������  ��  ��   $  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   ) 8 2 we still have to tell the group what data to pull    * � + + d   w e   s t i l l   h a v e   t o   t e l l   t h e   g r o u p   w h a t   d a t a   t o   p u l l (  , - , l  � .���� . O   � / 0 / k   � 1 1  2 3 2 l   ��������  ��  ��   3  4 5 4 Z    ' 6 7�� 8 6 =    9 : 9 o    ���� 0 debug DEBUG : m    ��
�� boovfals 7 r    ! ; < ; l    =���� = I   �� >��
�� .sysoexecTEXT���     TEXT > m     ? ? � @ @ � s o u r c e   ~ / . b a s h _ p r o f i l e   & &   c d   ~ / D r o p b o x / p r o j e c t s / b t t   & &   c o n d a   r u n   - n   b t t   p y t h o n   g e t _ c o v i d _ d a i l y _ d a t a . p y   C A   ' S a n   F r a n c i s c o '��  ��  ��   < o      ���� 0 script_output  ��   8 r   $ ' A B A m   $ % C C � D D  2 0 0 | 5 0 0 B o      ���� 0 script_output   5  E F E l  ( (��������  ��  ��   F  G H G r   ( 1 I J I n  ( / K L K I   ) /�� M���� 0 	splitline 	splitLine M  N O N o   ) *���� 0 script_output   O  P�� P m   * + Q Q � R R  |��  ��   L  f   ( ) J o      ���� 0 output_lines   H  S T S r   2 8 U V U n   2 6 W X W 4   3 6�� Y
�� 
cobj Y m   4 5����  X o   2 3���� 0 output_lines   V o      ���� 0 today_count   T  Z [ Z r   9 A \ ] \ n   9 = ^ _ ^ 4   : =�� `
�� 
cobj ` m   ; <����  _ o   9 :���� 0 output_lines   ] o      ���� 0 	yda_count   [  a b a l  B B��������  ��  ��   b  c d c I  B K�� e��
�� .ascrcmnt****      � **** e b   B G f g f m   B E h h � i i  t o d a y _ c o u n t : g o   E F���� 0 today_count  ��   d  j k j I  L W�� l��
�� .ascrcmnt****      � **** l b   L S m n m m   L O o o � p p  y d a _ c o u n t : n o   O R���� 0 	yda_count  ��   k  q r q l  X X��������  ��  ��   r  s t s r   X a u v u l  X ] w���� w l  X ] x���� x n   X ] y z y o   Y ]���� 0 color_white COLOR_WHITE z o   X Y���� 0 
globalvars 
globalVars��  ��  ��  ��   v o      ���� 0 
font_color   t  { | { r   b k } ~ } l  b g ����  l  b g ����� � n   b g � � � o   c g���� 0 color_black COLOR_BLACK � o   b c���� 0 
globalvars 
globalVars��  ��  ��  ��   ~ o      ���� 0 background_color   |  � � � l  l l��������  ��  ��   �  � � � l   l l�� � ���   � 1 +
	less (green)
	same (yellow)
	more (red)
	    � � � � V 
 	 l e s s   ( g r e e n ) 
 	 s a m e   ( y e l l o w ) 
 	 m o r e   ( r e d ) 
 	 �  � � � Z   l� � ��� � � >  l q � � � o   l m���� 0 today_count   � m   m p � � � � �  N / A � k   t � �  � � � l  t t�� � ���   � = 7 set this so we can derive color tomorrow when it's N/A    � � � � n   s e t   t h i s   s o   w e   c a n   d e r i v e   c o l o r   t o m o r r o w   w h e n   i t ' s   N / A �  � � � I  t ��� � �
�� .BtttSetPnull���     **** � m   t w � � � � � > V L C o r o n a V i r u s C o u n t r y Y D A C o u n t S F O � �� ���
�� 
bTpV � o   z }���� 0 	yda_count  ��   �  � � � r   � � � � � c   � � � � � \   � � � � � o   � ����� 0 today_count   � o   � ����� 0 	yda_count   � m   � ���
�� 
nmbr � o      ���� 0 diff   �  � � � Z   � � � � � � � F   � � � � � ?   � � � � � o   � ����� 0 today_count   � o   � ����� 0 	yda_count   � ?   � � � � � o   � ����� 0 diff   � o   � ����� 0 	threshold 	THRESHOLD � r   � � � � � l  � � ����� � l  � � ����� � n   � � � � � o   � ����� 0 	color_red 	COLOR_RED � o   � ����� 0 
globalvars 
globalVars��  ��  ��  ��   � o      ���� 0 
font_color   �  � � � F   � � � � � A   � � � � � o   � ����� 0 today_count   � o   � ����� 0 	yda_count   � A   � � � � � o   � ����� 0 diff   � ]   � � � � � o   � ����� 0 	threshold 	THRESHOLD � m   � ������� �  ��� � r   � � � � � l  � � ����� � l  � � ����� � n   � � � � � o   � ����� 0 color_green COLOR_GREEN � o   � ����� 0 
globalvars 
globalVars��  ��  ��  ��   � o      ���� 0 
font_color  ��   � r   � � � � � l  � � ���~ � l  � � ��}�| � n   � � � � � o   � ��{�{ 0 color_yellow COLOR_YELLOW � o   � ��z�z 0 
globalvars 
globalVars�}  �|  �  �~   � o      �y�y 0 
font_color   �  � � � l  � ��x�w�v�x  �w  �v   �  � � � r   � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  { " t e x t " :   " 2 D A :   � o   � ��u�u 0 today_count   � m   � � � � � � �  \ n Y D A :   � o   � ��t�t 0 	yda_count   � m   � � � � � � � 0 " , 
 " b a c k g r o u n d _ c o l o r " :   " � o   � ��s�s 0 background_color   � m   � � � � � � � $ " , 
 " f o n t _ c o l o r " :   " � o   � ��r�r 0 
font_color   � m   � � � � � � �  " } � o      �q�q 
0 output   �  ��p � l �o�n�m�o  �n  �m  �p  ��   � k  � � �  � � � l �l � ��l   � ' ! get yesterday's color and set it    � � � � B   g e t   y e s t e r d a y ' s   c o l o r   a n d   s e t   i t �  � � � r   � � � I �k ��j
�k .BttGVarSnull���     **** � m  	 � � � � � > V L C o r o n a V i r u s C o u n t r y Y D A C o u n t S F O�j   � o      �i�i  0 daybeforecount dayBeforeCount �  �  � Z  �h�g >  o  �f�f  0 daybeforecount dayBeforeCount m  �e
�e 
msng k  {  r  +	 c  '

 \  # o  �d�d 0 	yda_count   o  "�c�c  0 daybeforecount dayBeforeCount m  #&�b
�b 
nmbr	 o      �a�a 0 diff   �` Z  ,{ F  ,? ?  ,3 o  ,/�_�_ 0 	yda_count   o  /2�^�^  0 daybeforecount dayBeforeCount ?  6; o  69�]�] 0 diff   o  9:�\�\ 0 	threshold 	THRESHOLD r  BK l BG�[�Z l BG�Y�X n  BG o  CG�W�W 0 	color_red 	COLOR_RED o  BC�V�V 0 
globalvars 
globalVars�Y  �X  �[  �Z   o      �U�U 0 
font_color     F  Nc!"! A  NU#$# o  NQ�T�T 0 	yda_count  $ o  QT�S�S  0 daybeforecount dayBeforeCount" A  X_%&% o  X[�R�R 0 diff  & ]  [^'(' m  [\�Q�Q��( o  \]�P�P 0 	threshold 	THRESHOLD  )�O) r  fo*+* l fk,�N�M, l fk-�L�K- n  fk./. o  gk�J�J 0 color_green COLOR_GREEN/ o  fg�I�I 0 
globalvars 
globalVars�L  �K  �N  �M  + o      �H�H 0 
font_color  �O   r  r{010 l rw2�G�F2 l rw3�E�D3 n  rw454 o  sw�C�C 0 color_yellow COLOR_YELLOW5 o  rs�B�B 0 
globalvars 
globalVars�E  �D  �G  �F  1 o      �A�A 0 
font_color  �`  �h  �g    676 l ���@�?�>�@  �?  �>  7 898 l ���=�<�;�=  �<  �;  9 :;: r  ��<=< b  ��>?> b  ��@A@ b  ��BCB b  ��DED b  ��FGF b  ��HIH b  ��JKJ b  ��LML m  ��NN �OO  { " t e x t " :   " Y D A :  M o  ���:�: 0 	yda_count  K m  ��PP �QQ  \ n D B 4 :  I o  ���9�9  0 daybeforecount dayBeforeCountG m  ��RR �SS 0 " , 
 " b a c k g r o u n d _ c o l o r " :   "E o  ���8�8 0 background_color  C m  ��TT �UU $ " , 
 " f o n t _ c o l o r " :   "A o  ���7�7 0 
font_color  ? m  ��VV �WW  " }= o      �6�6 
0 output  ; XYX l ���5�4�3�5  �4  �3  Y Z�2Z l ���1�0�/�1  �0  �/  �2   � [\[ l ���.�-�,�.  �-  �,  \ ]^] l ���+�*�)�+  �*  �)  ^ _`_ l ���(�'�&�(  �'  �&  ` aba L  ��cc o  ���%�% 
0 output  b d�$d l ���#�"�!�#  �"  �!  �$   0 m    ee�                                                                                      @ alis    F  Macintosh HD                   BD ����BetterTouchTool.app                                            ����            ����  
 cu             Applications  #/:Applications:BetterTouchTool.app/   (  B e t t e r T o u c h T o o l . a p p    M a c i n t o s h   H D   Applications/BetterTouchTool.app  / ��  ��  ��   - fgf l     � ���   �  �  g hih l     �jk�  j ' ! implementation of split function   k �ll B   i m p l e m e n t a t i o n   o f   s p l i t   f u n c t i o ni mnm i     opo I      �q�� 0 	splitline 	splitLineq rsr o      �� 0 	thestring 	theStrings t�t o      �� 0 thedelimiter theDelimiter�  �  p k     &uu vwv l     �xy�  x . ( save delimiters to restore old settings   y �zz P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g sw {|{ r     }~} n    � 1    �
� 
txdl� 1     �
� 
ascr~ o      �� 0 olddelimiters oldDelimiters| ��� l   ����  � - ' set delimiters to delimiter to be used   � ��� N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e d� ��� r    ��� o    �� 0 thedelimiter theDelimiter� n     ��� 1    
�
� 
txdl� 1    �
� 
ascr� ��� l   ����  �   create the array   � ��� "   c r e a t e   t h e   a r r a y� ��� r    ��� n    ��� 2    �
� 
citm� o    �� 0 	thestring 	theString� o      �� 0 thearray theArray� ��� l   ����  �   restore the old setting   � ��� 0   r e s t o r e   t h e   o l d   s e t t i n g� ��� r    ��� o    �
�
 0 olddelimiters oldDelimiters� n     ��� 1    �	
�	 
txdl� 1    �
� 
ascr� ��� l   ����  �   return the result   � ��� $   r e t u r n   t h e   r e s u l t� ��� I   ���
� .ascrcmnt****      � ****� m    �� ���  t h e A r r a y�  � ��� I   #���
� .ascrcmnt****      � ****� o    �� 0 thearray theArray�  � ��� L   $ &�� o   $ %� �  0 thearray theArray�  n ���� l     ��������  ��  ��  ��       �������  � ������ 0 	splitline 	splitLine
�� .aevtoappnull  �   � ****� ��p���������� 0 	splitline 	splitLine�� ����� �  ������ 0 	thestring 	theString�� 0 thedelimiter theDelimiter��  � ���������� 0 	thestring 	theString�� 0 thedelimiter theDelimiter�� 0 olddelimiters oldDelimiters�� 0 thearray theArray� ���������
�� 
ascr
�� 
txdl
�� 
citm
�� .ascrcmnt****      � ****�� '��,E�O���,FO��-E�O���,FO�j O�j O�� �����������
�� .aevtoappnull  �   � ****� k    ���  ��  ��  ��  ,����  ��  ��  �  � 1�� ��������e ?���� C Q���������� h�� o�������� � ����������������� � � � � ��� �������NPRTV�� 0 debug DEBUG
�� .sysoloadscpt        file�� 0 
globalvars 
globalVars�� 2�� 0 	threshold 	THRESHOLD
�� .sysoexecTEXT���     TEXT�� 0 script_output  �� 0 	splitline 	splitLine�� 0 output_lines  
�� 
cobj�� 0 today_count  �� 0 	yda_count  
�� .ascrcmnt****      � ****�� 0 color_white COLOR_WHITE�� 0 
font_color  �� 0 color_black COLOR_BLACK�� 0 background_color  
�� 
bTpV
�� .BtttSetPnull���     ****
�� 
nmbr�� 0 diff  
�� 
bool�� 0 	color_red 	COLOR_RED�� 0 color_green COLOR_GREEN�� 0 color_yellow COLOR_YELLOW�� 
0 output  
�� .BttGVarSnull���     ****��  0 daybeforecount dayBeforeCount
�� 
msng���fE�O�j E�O�E�O���f  �j E�Y �E�O)��l+ E�O��k/E�O��l/E` Oa �%j Oa _ %j O�a ,E` O�a ,E` O�a  �a a _ l O�_ a &E` O�_ 	 _ �a & �a ,E` Y -�_ 	 _ �i a & �a  ,E` Y �a !,E` Oa "�%a #%_ %a $%_ %a %%_ %a &%E` 'OPY �a (j )E` *O_ *a + d_ _ *a &E` O_ _ *	 _ �a & �a ,E` Y /_ _ *	 _ i� a & �a  ,E` Y �a !,E` Y hOa ,_ %a -%_ *%a .%_ %a /%_ %a 0%E` 'OPO_ 'OPUascr  ��ޭ