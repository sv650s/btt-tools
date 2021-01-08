FasdUAS 1.101.10   ��   ��    k             l     ��  ��      references:     � 	 	    r e f e r e n c e s :   
  
 l     ��  ��    | v https://superuser.com/questions/583560/how-to-open-a-new-tab-in-chrome-using-applescript-only-if-it-doesnt-already-ex     �   �   h t t p s : / / s u p e r u s e r . c o m / q u e s t i o n s / 5 8 3 5 6 0 / h o w - t o - o p e n - a - n e w - t a b - i n - c h r o m e - u s i n g - a p p l e s c r i p t - o n l y - i f - i t - d o e s n t - a l r e a d y - e x      l     ��  ��    g a https://stackoverflow.com/questions/22107418/open-url-and-activate-google-chrome-via-applescript     �   �   h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 2 2 1 0 7 4 1 8 / o p e n - u r l - a n d - a c t i v a t e - g o o g l e - c h r o m e - v i a - a p p l e s c r i p t      l     ��  ��    � � https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/conceptual/ASLR_variables.html     �  
   h t t p s : / / d e v e l o p e r . a p p l e . c o m / l i b r a r y / a r c h i v e / d o c u m e n t a t i o n / A p p l e S c r i p t / C o n c e p t u a l / A p p l e S c r i p t L a n g G u i d e / c o n c e p t u a l / A S L R _ v a r i a b l e s . h t m l      l     ��  ��    � � open tab in specific position: https://apple.stackexchange.com/questions/271702/applescript-how-to-open-a-link-in-google-chrome-in-a-new-adjacent-tab     �  ,   o p e n   t a b   i n   s p e c i f i c   p o s i t i o n :   h t t p s : / / a p p l e . s t a c k e x c h a n g e . c o m / q u e s t i o n s / 2 7 1 7 0 2 / a p p l e s c r i p t - h o w - t o - o p e n - a - l i n k - i n - g o o g l e - c h r o m e - i n - a - n e w - a d j a c e n t - t a b      l     ��������  ��  ��       !   l     ��������  ��  ��   !  " # " l     �� $ %��   $  	 t-mobile    % � & &    t - m o b i l e #  ' ( ' l     �� ) *��   ) > 8set openUrl to "https://mail.google.com/mail/u/0/#inbox"    * � + + p s e t   o p e n U r l   t o   " h t t p s : / / m a i l . g o o g l e . c o m / m a i l / u / 0 / # i n b o x " (  , - , l     �� . /��   . % set domain to "mail.google.com"    / � 0 0 > s e t   d o m a i n   t o   " m a i l . g o o g l e . c o m " -  1 2 1 l     ��������  ��  ��   2  3 4 3 l     �� 5 6��   5   set openUrl to ""    6 � 7 7 $   s e t   o p e n U r l   t o   " " 4  8 9 8 l     �� : ;��   :   set domain to ""    ; � < < "   s e t   d o m a i n   t o   " " 9  = > = l     ��������  ��  ��   >  ? @ ? i      A B A I     �� C��
�� .aevtoappnull  �   � **** C o      ���� 0 argv  ��   B k    , D D  E F E r      G H G n      I J I 4    �� K
�� 
cobj K m    ����  J o     ���� 0 argv   H o      ���� 0 openurl openUrl F  L M L r     N O N n     P Q P 4    �� R
�� 
cobj R m   	 
����  Q o    ���� 0 argv   O o      ���� 
0 domain   M  S T S l   �� U V��   U 4 . default value of tabIndex - 0 mean at the end    V � W W \   d e f a u l t   v a l u e   o f   t a b I n d e x   -   0   m e a n   a t   t h e   e n d T  X Y X r     Z [ Z m    ����   [ o      ���� 0 tabindex tabIndex Y  \ ] \ l   �� ^ _��   ^ !  optional, should be 1 or 2    _ � ` ` 6   o p t i o n a l ,   s h o u l d   b e   1   o r   2 ]  a b a Z    & c d���� c ?     e f e n     g h g 1    ��
�� 
leng h o    ���� 0 argv   f m    ����  d r    " i j i c      k l k n     m n m 4    �� o
�� 
cobj o m    ����  n o    ���� 0 argv   l m    ��
�� 
nmbr j o      ���� 0 tabindex tabIndex��  ��   b  p q p l  ' '��������  ��  ��   q  r s r I  ' .�� t��
�� .ascrcmnt****      � **** t b   ' * u v u m   ' ( w w � x x  o p e n U r l :   v o   ( )���� 0 openurl openUrl��   s  y z y I  / 6�� {��
�� .ascrcmnt****      � **** { b   / 2 | } | m   / 0 ~ ~ �    d o m a i n :   } o   0 1���� 
0 domain  ��   z  � � � I  7 >�� ���
�� .ascrcmnt****      � **** � b   7 : � � � m   7 8 � � � � �  t a b I n d e x :   � o   8 9���� 0 tabindex tabIndex��   �  � � � l  ? ?��������  ��  ��   �  � � � l  ? ?��������  ��  ��   �  � � � l  ? ?��������  ��  ��   �  � � � O   ?* � � � k   C) � �  � � � X   C � ��� � � k   U � � �  � � � r   U X � � � m   U V����  � o      ���� 0 i   �  ��� � X   Y � ��� � � k   k � � �  � � � Z   k � � ����� � E   k r � � � n   k p � � � 1   l p��
�� 
URL  � o   k l���� 0 t   � o   p q���� 
0 domain   � k   u � � �  � � � r   u | � � � o   u v���� 0 i   � n       � � � 1   w {��
�� 
acTI � o   v w���� 0 w   �  � � � r   } � � � � m   } ~����  � n       � � � 1    ���
�� 
pidx � o   ~ ���� 0 w   �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � m   � � � � � � �  f o u n d   U R L��   �  ��� � L   � �����  ��  ��  ��   �  ��� � r   � � � � � [   � � � � � o   � ����� 0 i   � m   � �����  � o      ���� 0 i  ��  �� 0 t   � n   \ _ � � � 2  ] _��
�� 
CrTb � o   \ ]���� 0 w  ��  �� 0 w   � 2  F I��
�� 
cwin �  � � � l  � ���������  ��  ��   �  � � � Z   �# � � � � � =  � � � � � o   � ����� 0 tabindex tabIndex � m   � �����  � k   � � � �  � � � l  � ��� � ���   �   open at the beginning    � � � � ,   o p e n   a t   t h e   b e g i n n i n g �  ��� � l  � � � � � � O  � � � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
CrTb � �� � �
�� 
insh � l  � � ����� �  :   � ���  ��   � �� ���
�� 
prdt � K   � � � � �� ���
�� 
URL  � o   � ����� 0 openurl openUrl��  ��   � 4  � ��� �
�� 
cwin � m   � �����  � &   open a new tab at the beginning    � � � � @   o p e n   a   n e w   t a b   a t   t h e   b e g i n n i n g��   �  � � � =  � � � � � o   � ����� 0 tabindex tabIndex � m   � �����  �  ��� � l  � � � � � � O  � � � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
CrTb � �� � �
�� 
insh � n   � � � � � 9   � ���
�� 
insl � l  � � ����� � e   � � � � 4  � �� �
� 
CrTb � m   � ��~�~ ��  ��   � �} ��|
�} 
prdt � K   � � � � �{ ��z
�{ 
URL  � o   � ��y�y 0 openurl openUrl�z  �|   � 4  � ��x �
�x 
cwin � m   � ��w�w  � $  open a new tab at the 2nd tab    � � � � <   o p e n   a   n e w   t a b   a t   t h e   2 n d   t a b��   � k   �# � �  � � � l  �! � �  � O  �! I  �v�u
�v .corecrel****      � null�u   �t
�t 
kocl m  �s
�s 
CrTb �r
�r 
insh n  	 9  �q
�q 
insl	 l 
�p�o
 e   4 �n
�n 
CrTb m  
�m�m���p  �o   �l�k
�l 
prdt K   �j�i
�j 
URL  o  �h�h 0 openurl openUrl�i  �k   4  � ��g
�g 
cwin m   � ��f�f  � + % open a new tab after the current tab     � J   o p e n   a   n e w   t a b   a f t e r   t h e   c u r r e n t   t a b �  l ""�e�e   � � tell front window to make new tab at after (get active tab) with properties {URL:openUrl} -- open a new tab after the current tab    �   t e l l   f r o n t   w i n d o w   t o   m a k e   n e w   t a b   a t   a f t e r   ( g e t   a c t i v e   t a b )   w i t h   p r o p e r t i e s   { U R L : o p e n U r l }   - -   o p e n   a   n e w   t a b   a f t e r   t h e   c u r r e n t   t a b  l ""�d�c�b�d  �c  �b    l ""�a�a   6 0 another way to open URL but it's kind of flakey    � `   a n o t h e r   w a y   t o   o p e n   U R L   b u t   i t ' s   k i n d   o f   f l a k e y �` l ""�_ �_     open location openUrl     �!! ,   o p e n   l o c a t i o n   o p e n U r l�`   � "#" l $$�^�]�\�^  �]  �\  # $%$ l $$�[&'�[  &   bring window to front   ' �(( ,   b r i n g   w i n d o w   t o   f r o n t% )�Z) I $)�Y�X�W
�Y .miscactvnull��� ��� null�X  �W  �Z   � m   ? @**�                                                                                  rimZ  alis    >  Macintosh HD                   BD ����Google Chrome.app                                              ����            ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��   � +�V+ l ++�U�T�S�U  �T  �S  �V   @ ,-, l     �R�Q�P�R  �Q  �P  - ./. l     �O�N�M�O  �N  �M  / 0�L0 l     �K�J�I�K  �J  �I  �L       
�H1234�G�F�E�D�C�H  1 �B�A�@�?�>�=�<�;
�B .aevtoappnull  �   � ****�A 0 openurl openUrl�@ 
0 domain  �? 0 tabindex tabIndex�> 0 i  �=  �<  �;  2 �: B�9�856�7
�: .aevtoappnull  �   � ****�9 0 argv  �8  5 �6�5�4�6 0 argv  �5 0 w  �4 0 t  6 �3�2�1�0�/�. w�- ~ �*�,�+�*�)�(�'�&�% ��$�#�"�!� �
�3 
cobj�2 0 openurl openUrl�1 
0 domain  �0 0 tabindex tabIndex
�/ 
leng
�. 
nmbr
�- .ascrcmnt****      � ****
�, 
cwin
�+ 
kocl
�* .corecnte****       ****�) 0 i  
�( 
CrTb
�' 
URL 
�& 
acTI
�% 
pidx
�$ 
insh
�# 
prdt�" 
�! .corecrel****      � null
�  
insl
� .miscactvnull��� ��� null�7-��k/E�O��l/E�OjE�O��,l ��m/�&E�Y hO��%j O��%j O��%j O� � _*�-[��l kh kE�O D��-[��l kh �a ,� Ρa ,FOk�a ,FOa j OhY hO�kE�[OY��[OY��O�k  $*�k/ *��a *5a a �la  UY Y�l  +*�k/  *��a *�k/Ea 4a a �la  UY **�k/  *��a *�i/Ea 4a a �la  UOPO*j UOP3 �77 z h t t p : / / a q i c n . o r g / c i t y / t h a i l a n d / b a n g k o k / c h u l a l o n g k o r n - h o s p i t a l4 �88 > a q i c n . o r g / c i t y / t h a i l a n d / b a n g k o k�G  �F �E  �D  �C  ascr  ��ޭ