FasdUAS 1.101.10   ��   ��    k             l     ��  ��      references:     � 	 	    r e f e r e n c e s :   
  
 l     ��  ��    | v https://superuser.com/questions/583560/how-to-open-a-new-tab-in-chrome-using-applescript-only-if-it-doesnt-already-ex     �   �   h t t p s : / / s u p e r u s e r . c o m / q u e s t i o n s / 5 8 3 5 6 0 / h o w - t o - o p e n - a - n e w - t a b - i n - c h r o m e - u s i n g - a p p l e s c r i p t - o n l y - i f - i t - d o e s n t - a l r e a d y - e x      l     ��  ��    g a https://stackoverflow.com/questions/22107418/open-url-and-activate-google-chrome-via-applescript     �   �   h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 2 2 1 0 7 4 1 8 / o p e n - u r l - a n d - a c t i v a t e - g o o g l e - c h r o m e - v i a - a p p l e s c r i p t      l     ��  ��    � � https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/conceptual/ASLR_variables.html     �  
   h t t p s : / / d e v e l o p e r . a p p l e . c o m / l i b r a r y / a r c h i v e / d o c u m e n t a t i o n / A p p l e S c r i p t / C o n c e p t u a l / A p p l e S c r i p t L a n g G u i d e / c o n c e p t u a l / A S L R _ v a r i a b l e s . h t m l      l     ��  ��    � � open tab in specific position: https://apple.stackexchange.com/questions/271702/applescript-how-to-open-a-link-in-google-chrome-in-a-new-adjacent-tab     �  ,   o p e n   t a b   i n   s p e c i f i c   p o s i t i o n :   h t t p s : / / a p p l e . s t a c k e x c h a n g e . c o m / q u e s t i o n s / 2 7 1 7 0 2 / a p p l e s c r i p t - h o w - t o - o p e n - a - l i n k - i n - g o o g l e - c h r o m e - i n - a - n e w - a d j a c e n t - t a b      l     ��������  ��  ��       !   l     ��������  ��  ��   !  " # " l     ��������  ��  ��   #  $ % $ l     �� & '��   & / ) takes in 2 arguments: openUrl and domain    ' � ( ( R   t a k e s   i n   2   a r g u m e n t s :   o p e n U r l   a n d   d o m a i n %  ) * ) i      + , + I     �� -��
�� .aevtoappnull  �   � **** - o      ���� 0 argv  ��   , k    L . .  / 0 / r      1 2 1 n      3 4 3 4    �� 5
�� 
cobj 5 m    ����  4 o     ���� 0 argv   2 o      ���� 0 openurl openUrl 0  6 7 6 r     8 9 8 n     : ; : 4    �� <
�� 
cobj < m   	 
����  ; o    ���� 0 argv   9 o      ���� 
0 domain   7  = > = l   �� ? @��   ?   turn on/off debugging    @ � A A ,   t u r n   o n / o f f   d e b u g g i n g >  B C B r     D E D m    ��
�� boovfals E o      ���� 0 debug DEBUG C  F G F l   �� H I��   H 4 . default value of tabIndex - 0 mean at the end    I � J J \   d e f a u l t   v a l u e   o f   t a b I n d e x   -   0   m e a n   a t   t h e   e n d G  K L K r     M N M m    ����   N o      ���� 0 tabindex tabIndex L  O P O l   �� Q R��   Q !  optional, should be 1 or 2    R � S S 6   o p t i o n a l ,   s h o u l d   b e   1   o r   2 P  T U T Z    * V W���� V ?     X Y X n     Z [ Z 1    ��
�� 
leng [ o    ���� 0 argv   Y m    ����  W r    & \ ] \ c    $ ^ _ ^ n    " ` a ` 4    "�� b
�� 
cobj b m     !����  a o    ���� 0 argv   _ m   " #��
�� 
nmbr ] o      ���� 0 tabindex tabIndex��  ��   U  c d c l  + +��������  ��  ��   d  e f e Z   + J g h���� g o   + ,���� 0 debug DEBUG h k   / F i i  j k j I  / 6�� l��
�� .ascrcmnt****      � **** l b   / 2 m n m m   / 0 o o � p p  o p e n U r l :   n o   0 1���� 0 openurl openUrl��   k  q r q I  7 >�� s��
�� .ascrcmnt****      � **** s b   7 : t u t m   7 8 v v � w w  d o m a i n :   u o   8 9���� 
0 domain  ��   r  x�� x I  ? F�� y��
�� .ascrcmnt****      � **** y b   ? B z { z m   ? @ | | � } }  t a b I n d e x :   { o   @ A���� 0 tabindex tabIndex��  ��  ��  ��   f  ~  ~ l  K K��������  ��  ��     � � � l  K K��������  ��  ��   �  � � � l  K K��������  ��  ��   �  � � � O   KJ � � � k   OI � �  � � � X   O � ��� � � k   a � � �  � � � r   a d � � � m   a b����  � o      ���� 0 i   �  ��� � X   e � ��� � � k   y � � �  � � � Z   y � � ����� � E   y � � � � n   y ~ � � � 1   z ~��
�� 
URL  � o   y z���� 0 t   � o   ~ ���� 
0 domain   � k   � � � �  � � � r   � � � � � o   � ����� 0 i   � n       � � � 1   � ���
�� 
acTI � o   � ����� 0 w   �  � � � r   � � � � � m   � �����  � n       � � � 1   � ���
�� 
pidx � o   � ����� 0 w   �  � � � Z   � � � ����� � o   � ����� 0 debug DEBUG � I  � ��� ���
�� .ascrcmnt****      � **** � m   � � � � � � �  f o u n d   U R L��  ��  ��   �  ��� � L   � �����  ��  ��  ��   �  ��� � r   � � � � � [   � � � � � o   � ����� 0 i   � m   � �����  � o      ���� 0 i  ��  �� 0 t   � n   h m � � � 2  i m��
�� 
CrTb � o   h i���� 0 w  ��  �� 0 w   � 2  R U��
�� 
cwin �  � � � l  � ���������  ��  ��   �  � � � Z   �C � � � � � =  � � � � � o   � ����� 0 tabindex tabIndex � m   � �����  � k   � � � �  � � � l  � ��� � ���   �   open at the beginning    � � � � ,   o p e n   a t   t h e   b e g i n n i n g �  ��� � l  � � � � � � O  � � � � � I  � ����� �
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
cwin � m   � �����  � &   open a new tab at the beginning    � � � � @   o p e n   a   n e w   t a b   a t   t h e   b e g i n n i n g��   �  � � � =  � � � � � o   � ����� 0 tabindex tabIndex � m   � �����  �  ��� � l  � � � � � O  � � � � I  ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
CrTb � �� � �
�� 
insh � n   � � � � 9   �
� 
insl � l  �  ��~�} � e   �  � � 4  � �| �
�| 
CrTb � m   � ��{�{ �~  �}   � �z ��y
�z 
prdt � K   � � �x ��w
�x 
URL  � o  
�v�v 0 openurl openUrl�w  �y   � 4  � ��u �
�u 
cwin � m   � ��t�t  � $  open a new tab at the 2nd tab    � � � � <   o p e n   a   n e w   t a b   a t   t h e   2 n d   t a b��   � k  C � �  � � � l A � � � � O A � � � I @�s�r �
�s .corecrel****      � null�r   � �q � �
�q 
kocl � m   #�p
�p 
CrTb � �o � 
�o 
insh � n  &1 9  -1�n
�n 
insl l &-�m�l e  &- 4 &-�k
�k 
CrTb m  *+�j�j���m  �l    �i�h
�i 
prdt K  4: �g�f
�g 
URL  o  78�e�e 0 openurl openUrl�f  �h   � 4 �d	
�d 
cwin	 m  �c�c  � + % open a new tab after the current tab    � �

 J   o p e n   a   n e w   t a b   a f t e r   t h e   c u r r e n t   t a b �  l BB�b�b   � � tell front window to make new tab at after (get active tab) with properties {URL:openUrl} -- open a new tab after the current tab    �   t e l l   f r o n t   w i n d o w   t o   m a k e   n e w   t a b   a t   a f t e r   ( g e t   a c t i v e   t a b )   w i t h   p r o p e r t i e s   { U R L : o p e n U r l }   - -   o p e n   a   n e w   t a b   a f t e r   t h e   c u r r e n t   t a b  l BB�a�`�_�a  �`  �_    l BB�^�^   6 0 another way to open URL but it's kind of flakey    � `   a n o t h e r   w a y   t o   o p e n   U R L   b u t   i t ' s   k i n d   o f   f l a k e y �] l BB�\�\     open location openUrl    � ,   o p e n   l o c a t i o n   o p e n U r l�]   �  l DD�[�Z�Y�[  �Z  �Y    l DD�X �X     bring window to front     �!! ,   b r i n g   w i n d o w   t o   f r o n t "�W" I DI�V�U�T
�V .miscactvnull��� ��� null�U  �T  �W   � m   K L##�                                                                                  rimZ  alis    >  Macintosh HD                   BD ����Google Chrome.app                                              ����            ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��   � $�S$ l KK�R�Q�P�R  �Q  �P  �S   * %&% l     �O�N�M�O  �N  �M  & '(' l     �L�K�J�L  �K  �J  ( )�I) l     �H�G�F�H  �G  �F  �I       
�E*+,-�D�C�B�A�@�E  * �?�>�=�<�;�:�9�8
�? .aevtoappnull  �   � ****�> 0 openurl openUrl�= 
0 domain  �< 0 debug DEBUG�; 0 tabindex tabIndex�: 0 i  �9  �8  + �7 ,�6�5./�4
�7 .aevtoappnull  �   � ****�6 0 argv  �5  . �3�2�1�3 0 argv  �2 0 w  �1 0 t  / �0�/�.�-�,�+�* o�) v |#�(�'�&�%�$�#�"�! �� �����
�0 
cobj�/ 0 openurl openUrl�. 
0 domain  �- 0 debug DEBUG�, 0 tabindex tabIndex
�+ 
leng
�* 
nmbr
�) .ascrcmnt****      � ****
�( 
cwin
�' 
kocl
�& .corecnte****       ****�% 0 i  
�$ 
CrTb
�# 
URL 
�" 
acTI
�! 
pidx
�  
insh
� 
prdt� 
� .corecrel****      � null
� 
insl
� .miscactvnull��� ��� null�4M��k/E�O��l/E�OfE�OjE�O��,l ��m/�&E�Y hO� ��%j O��%j O��%j Y hO� � i*�-[��l kh kE�O N�a -[��l kh �a ,� 'ϡa ,FOk�a ,FO� a j Y hOhY hO�kE�[OY��[OY��O�k  &*�k/ *�a a *5a a �la  UY a�l  /*�k/ $*�a a *a k/Ea 4a a �la  UY .*�k/ $*�a a *a i/Ea 4a a �la  UOPO*j UOP, �00 � h t t p s : / / w w w . e x c h a n g e r a t e s . o r g . u k / D o l l a r s - t o - B a h t - c u r r e n c y - c o n v e r s i o n - p a g e . h t m l- �11 " e x c h a n g e r a t e s . o r g
�D boovfals�C  �B �A  �@   ascr  ��ޭ