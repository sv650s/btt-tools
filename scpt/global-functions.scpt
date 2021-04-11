FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
This file contains functions that can be loaded by other scripts

To load (assumes global-functions.scpt is in the same directory of script being executed):
	tell application "Finder" to set _myPath to container of (path to me) as text	set gf_path to _myPath & "global-functions.scpt"	set _globalFns to load script (alias (gf_path))


To use function:
	set new_string to _globalFns's splitString(string, delimiter)
     � 	 	F 
 T h i s   f i l e   c o n t a i n s   f u n c t i o n s   t h a t   c a n   b e   l o a d e d   b y   o t h e r   s c r i p t s 
 
 T o   l o a d   ( a s s u m e s   g l o b a l - f u n c t i o n s . s c p t   i s   i n   t h e   s a m e   d i r e c t o r y   o f   s c r i p t   b e i n g   e x e c u t e d ) : 
 	 t e l l   a p p l i c a t i o n   " F i n d e r "   t o   s e t   _ m y P a t h   t o   c o n t a i n e r   o f   ( p a t h   t o   m e )   a s   t e x t  	 s e t   g f _ p a t h   t o   _ m y P a t h   &   " g l o b a l - f u n c t i o n s . s c p t "  	 s e t   _ g l o b a l F n s   t o   l o a d   s c r i p t   ( a l i a s   ( g f _ p a t h ) )  
 
 
 T o   u s e   f u n c t i o n : 
 	 s e t   n e w _ s t r i n g   t o   _ g l o b a l F n s ' s   s p l i t S t r i n g ( s t r i n g ,   d e l i m i t e r ) 
   
  
 l     ��������  ��  ��        l      ��  ��    � �
Splits a string using delimiter specified

Parameters:
* theString - string to split
* theDelimiter - delimiter used to split string

Return:
* array of split string
     �  N 
 S p l i t s   a   s t r i n g   u s i n g   d e l i m i t e r   s p e c i f i e d 
 
 P a r a m e t e r s : 
 *   t h e S t r i n g   -   s t r i n g   t o   s p l i t 
 *   t h e D e l i m i t e r   -   d e l i m i t e r   u s e d   t o   s p l i t   s t r i n g 
 
 R e t u r n : 
 *   a r r a y   o f   s p l i t   s t r i n g 
      i         I      �� ���� 0 	splitline 	splitLine      o      ���� 0 	thestring 	theString   ��  o      ���� 0 thedelimiter theDelimiter��  ��    k     &       l     ��  ��    . ( save delimiters to restore old settings     �   P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s       r      ! " ! n     # $ # 1    ��
�� 
txdl $ 1     ��
�� 
ascr " o      ���� 0 olddelimiters oldDelimiters    % & % l   �� ' (��   ' - ' set delimiters to delimiter to be used    ( � ) ) N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e d &  * + * r     , - , o    ���� 0 thedelimiter theDelimiter - n      . / . 1    
��
�� 
txdl / 1    ��
�� 
ascr +  0 1 0 l   �� 2 3��   2   create the array    3 � 4 4 "   c r e a t e   t h e   a r r a y 1  5 6 5 r     7 8 7 n     9 : 9 2    ��
�� 
citm : o    ���� 0 	thestring 	theString 8 o      ���� 0 thearray theArray 6  ; < ; l   �� = >��   =   restore the old setting    > � ? ? 0   r e s t o r e   t h e   o l d   s e t t i n g <  @ A @ r     B C B o    ���� 0 olddelimiters oldDelimiters C n      D E D 1    ��
�� 
txdl E 1    ��
�� 
ascr A  F G F l   �� H I��   H   return the result    I � J J $   r e t u r n   t h e   r e s u l t G  K L K I   �� M��
�� .ascrcmnt****      � **** M m     N N � O O  t h e A r r a y��   L  P Q P I   #�� R��
�� .ascrcmnt****      � **** R o    ���� 0 thearray theArray��   Q  S�� S L   $ & T T o   $ %���� 0 thearray theArray��     U V U l     ��������  ��  ��   V  W X W l      �� Y Z��   Y
Breaks a line into 2 with first line having specified number of words

Parameters:
* aString - string to split
* firstLineWordCount - number words to keep in first line

Return:
* new string with '\n' (newline) inserted between firstLineWordCount and firstLineWordCount + 1

    Z � [ [( 
 B r e a k s   a   l i n e   i n t o   2   w i t h   f i r s t   l i n e   h a v i n g   s p e c i f i e d   n u m b e r   o f   w o r d s 
 
 P a r a m e t e r s : 
 *   a S t r i n g   -   s t r i n g   t o   s p l i t 
 *   f i r s t L i n e W o r d C o u n t   -   n u m b e r   w o r d s   t o   k e e p   i n   f i r s t   l i n e 
 
 R e t u r n : 
 *   n e w   s t r i n g   w i t h   ' \ n '   ( n e w l i n e )   i n s e r t e d   b e t w e e n   f i r s t L i n e W o r d C o u n t   a n d   f i r s t L i n e W o r d C o u n t   +   1 
 
 X  \ ] \ i     ^ _ ^ I      �� `���� &0 breakintotwolines breakIntoTwoLines `  a b a o      ���� 0 astring aString b  c�� c o      ���� (0 firstlinewordcount firstLineWordCount��  ��   _ k     w d d  e f e I    �� g��
�� .ascrcmnt****      � **** g b      h i h m      j j � k k , B r e a k i n g   l i n e   i n t o   2 :   i o    ���� 0 astring aString��   f  l m l r     n o n n    p q p I   	 �� r���� 0 	splitline 	splitLine r  s t s o   	 
���� 0 astring aString t  u�� u m   
  v v � w w   ��  ��   q  f    	 o o      ���� 0 astring_list aString_list m  x y x r     z { z m     | | � } }   { o      ���� 0 
new_string   y  ~  ~ r     � � � m    ����  � o      ���� 0 counter     � � � X    l ��� � � k   * g � �  � � � I  * 1�� ���
�� .ascrcmnt****      � **** � b   * - � � � m   * + � � � � �  a W o r d :   � o   + ,���� 0 aword aWord��   �  � � � Z   2 W � � � � � =  2 5 � � � o   2 3���� 0 counter   � m   3 4����  � r   8 ; � � � o   8 9���� 0 aword aWord � o      ���� 0 
new_string   �  � � � =  > C � � � o   > ?���� 0 counter   � [   ? B � � � o   ? @���� (0 firstlinewordcount firstLineWordCount � m   @ A����  �  ��� � r   F M � � � b   F K � � � b   F I � � � o   F G���� 0 
new_string   � m   G H � � � � �  \ n � o   I J���� 0 aword aWord � o      ���� 0 
new_string  ��   � r   P W � � � b   P U � � � b   P S � � � o   P Q���� 0 
new_string   � m   Q R � � � � �    � o   S T���� 0 aword aWord � o      ���� 0 
new_string   �  ��� � Z   X g � ����� � >  X [ � � � o   X Y���� 0 aword aWord � m   Y Z � � � � �  - � r   ^ c � � � [   ^ a � � � o   ^ _���� 0 counter   � m   _ `����  � o      ���� 0 counter  ��  ��  ��  �� 0 aword aWord � o    ���� 0 astring_list aString_list �  � � � I  m t�� ���
�� .ascrcmnt****      � **** � b   m p � � � m   m n � � � � �  n e w _ s t r i n g :   � o   n o���� 0 
new_string  ��   �  ��� � L   u w � � o   u v���� 0 
new_string  ��   ]  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �
Truncates a string and only keep numberOfWords

Parameters:
* aString - string to truncate
* numberOfWords - number of words to keep

Return:
* string with only number of words to keep

    � � � �v 
 T r u n c a t e s   a   s t r i n g   a n d   o n l y   k e e p   n u m b e r O f W o r d s 
 
 P a r a m e t e r s : 
 *   a S t r i n g   -   s t r i n g   t o   t r u n c a t e 
 *   n u m b e r O f W o r d s   -   n u m b e r   o f   w o r d s   t o   k e e p 
 
 R e t u r n : 
 *   s t r i n g   w i t h   o n l y   n u m b e r   o f   w o r d s   t o   k e e p 
 
 �  ��� � i     � � � I      �� �����  0 truncatestring truncateString �  � � � o      ���� 0 astring aString �  ��� � o      ���� 0 numberofwords numberOfWords��  ��   � k     k � �  � � � l     ��������  ��  ��   �  � � � I    �� ���
�� .ascrcmnt****      � **** � b     	 � � � b      � � � b      � � � b      � � � m      � � � � � & T r u n c a t i n g   s t r i n g :   � o    ���� 0 astring aString � m     � � � � �    t o   � o    ���� 0 numberofwords numberOfWords � m     � � � � �    w o r d s  ��   �  � � � r     � � � n    � � � I    �� ����� 0 	splitline 	splitLine �  � � � o    ���� 0 astring aString �  ��� � m     � � � � �   ��  ��   �  f     � o      ���� 0 	word_list   �  � � � r     � � � m     � � � � �   � o      ���� 0 
new_string   �  � � � r     � � � m    ����  � o      ���� 0 counter   �  � � � X     ` ��� � � k   0 [ � �    I  0 7����
�� .ascrcmnt****      � **** b   0 3 m   0 1 �  a W o r d :   o   1 2���� 0 aword aWord��   �� Z   8 [	��
 ?   8 ; o   8 9���� 0 counter   o   9 :���� 0 numberofwords numberOfWords	  S   > ?��  
 k   B [  Z   B U�� =  B E o   B C���� 0 counter   m   C D����  r   H K o   H I���� 0 aword aWord o      ���� 0 
new_string  ��   r   N U b   N S b   N Q o   N O���� 0 
new_string   m   O P �    o   Q R���� 0 aword aWord o      ���� 0 
new_string   �� r   V [ !  [   V Y"#" o   V W�� 0 counter  # m   W X�~�~ ! o      �}�} 0 counter  ��  ��  �� 0 aword aWord � o   # $�|�| 0 	word_list   � $%$ I  a h�{&�z
�{ .ascrcmnt****      � ****& b   a d'(' m   a b)) �** > T r u n c a t e d   s t r i n g   ( n e w _ s t r i n g ) :  ( o   b c�y�y 0 
new_string  �z  % +�x+ L   i k,, o   i j�w�w 0 
new_string  �x  ��       �v-./0�v  - �u�t�s�u 0 	splitline 	splitLine�t &0 breakintotwolines breakIntoTwoLines�s  0 truncatestring truncateString. �r �q�p12�o�r 0 	splitline 	splitLine�q �n3�n 3  �m�l�m 0 	thestring 	theString�l 0 thedelimiter theDelimiter�p  1 �k�j�i�h�k 0 	thestring 	theString�j 0 thedelimiter theDelimiter�i 0 olddelimiters oldDelimiters�h 0 thearray theArray2 �g�f�e N�d
�g 
ascr
�f 
txdl
�e 
citm
�d .ascrcmnt****      � ****�o '��,E�O���,FO��-E�O���,FO�j O�j O�/ �c _�b�a45�`�c &0 breakintotwolines breakIntoTwoLines�b �_6�_ 6  �^�]�^ 0 astring aString�] (0 firstlinewordcount firstLineWordCount�a  4 �\�[�Z�Y�X�W�\ 0 astring aString�[ (0 firstlinewordcount firstLineWordCount�Z 0 astring_list aString_list�Y 0 
new_string  �X 0 counter  �W 0 aword aWord5  j�V v�U |�T�S�R � � � � �
�V .ascrcmnt****      � ****�U 0 	splitline 	splitLine
�T 
kocl
�S 
cobj
�R .corecnte****       ****�` x�%j O)��l+ E�O�E�OkE�O Q�[��l kh �%j O�k  �E�Y ��k  ��%�%E�Y 	��%�%E�O�� 
�kE�Y h[OY��O�%j O�0 �Q ��P�O78�N�Q  0 truncatestring truncateString�P �M9�M 9  �L�K�L 0 astring aString�K 0 numberofwords numberOfWords�O  7 �J�I�H�G�F�E�J 0 astring aString�I 0 numberofwords numberOfWords�H 0 	word_list  �G 0 
new_string  �F 0 counter  �E 0 aword aWord8  � � ��D ��C ��B�A�@)
�D .ascrcmnt****      � ****�C 0 	splitline 	splitLine
�B 
kocl
�A 
cobj
�@ .corecnte****       ****�N l�%�%�%�%j O)��l+ E�O�E�OkE�O ?�[��l 	kh �%j O�� Y �k  �E�Y 	��%�%E�O�kE�[OY��O�%j O� ascr  ��ޭ