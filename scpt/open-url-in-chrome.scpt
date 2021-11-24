FasdUAS 1.101.10   ��   ��    k             l     ��  ��      references:     � 	 	    r e f e r e n c e s :   
  
 l     ��  ��    | v https://superuser.com/questions/583560/how-to-open-a-new-tab-in-chrome-using-applescript-only-if-it-doesnt-already-ex     �   �   h t t p s : / / s u p e r u s e r . c o m / q u e s t i o n s / 5 8 3 5 6 0 / h o w - t o - o p e n - a - n e w - t a b - i n - c h r o m e - u s i n g - a p p l e s c r i p t - o n l y - i f - i t - d o e s n t - a l r e a d y - e x      l     ��  ��    g a https://stackoverflow.com/questions/22107418/open-url-and-activate-google-chrome-via-applescript     �   �   h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 2 2 1 0 7 4 1 8 / o p e n - u r l - a n d - a c t i v a t e - g o o g l e - c h r o m e - v i a - a p p l e s c r i p t      l     ��  ��    � � https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/conceptual/ASLR_variables.html     �  
   h t t p s : / / d e v e l o p e r . a p p l e . c o m / l i b r a r y / a r c h i v e / d o c u m e n t a t i o n / A p p l e S c r i p t / C o n c e p t u a l / A p p l e S c r i p t L a n g G u i d e / c o n c e p t u a l / A S L R _ v a r i a b l e s . h t m l      l     ��  ��    � � open tab in specific position: https://apple.stackexchange.com/questions/271702/applescript-how-to-open-a-link-in-google-chrome-in-a-new-adjacent-tab     �  ,   o p e n   t a b   i n   s p e c i f i c   p o s i t i o n :   h t t p s : / / a p p l e . s t a c k e x c h a n g e . c o m / q u e s t i o n s / 2 7 1 7 0 2 / a p p l e s c r i p t - h o w - t o - o p e n - a - l i n k - i n - g o o g l e - c h r o m e - i n - a - n e w - a d j a c e n t - t a b      l     ��������  ��  ��       !   l     ��������  ��  ��   !  " # " l     ��������  ��  ��   #  $ % $ l     �� & '��   & / ) takes in 2 arguments: openUrl and domain    ' � ( ( R   t a k e s   i n   2   a r g u m e n t s :   o p e n U r l   a n d   d o m a i n %  ) * ) i      + , + I     �� -��
�� .aevtoappnull  �   � **** - o      ���� 0 argv  ��   , k    j . .  / 0 / l     ��������  ��  ��   0  1 2 1 l     �� 3 4��   3   turn on/off debugging    4 � 5 5 ,   t u r n   o n / o f f   d e b u g g i n g 2  6 7 6 r      8 9 8 m     ��
�� boovfals 9 o      ���� 0 debug DEBUG 7  : ; : l   �� < =��   < 4 . default value of tabIndex - 0 mean at the end    = � > > \   d e f a u l t   v a l u e   o f   t a b I n d e x   -   0   m e a n   a t   t h e   e n d ;  ? @ ? r     A B A m    ����   B o      ���� 0 tabindex tabIndex @  C D C l   �� E F��   E !  optional, should be 1 or 2    F � G G 6   o p t i o n a l ,   s h o u l d   b e   1   o r   2 D  H I H l   ��������  ��  ��   I  J K J l   ��������  ��  ��   K  L M L l   ��������  ��  ��   M  N O N l   ��������  ��  ��   O  P Q P l   ��������  ��  ��   Q  R S R Z    T T U�� V T o    	���� 0 debug DEBUG U k    / W W  X Y X r     Z [ Z m     \ \ � ] ] 2 h t t p s : / / w e b m a i l . a g o d a . c o m [ o      ���� 0 openurl openUrl Y  ^ _ ^ r     ` a ` m     b b � c c " w e b m a i l . a g o d a . c o m a o      ���� 
0 domain   _  d e d r     f g f m    ����  g o      ���� 0 tabindex tabIndex e  h i h I   �� j��
�� .ascrcmnt****      � **** j b     k l k m     m m � n n  o p e n U r l :   l o    ���� 0 openurl openUrl��   i  o p o I    '�� q��
�� .ascrcmnt****      � **** q b     # r s r m     ! t t � u u  d o m a i n :   s o   ! "���� 
0 domain  ��   p  v�� v I  ( /�� w��
�� .ascrcmnt****      � **** w b   ( + x y x m   ( ) z z � { {  t a b I n d e x :   y o   ) *���� 0 tabindex tabIndex��  ��  ��   V k   2 T | |  } ~ } r   2 8  �  n   2 6 � � � 4   3 6�� �
�� 
cobj � m   4 5����  � o   2 3���� 0 argv   � o      ���� 0 openurl openUrl ~  � � � r   9 ? � � � n   9 = � � � 4   : =�� �
�� 
cobj � m   ; <����  � o   9 :���� 0 argv   � o      ���� 
0 domain   �  ��� � Z   @ T � ����� � ?   @ E � � � n   @ C � � � 1   A C��
�� 
leng � o   @ A���� 0 argv   � m   C D����  � r   H P � � � c   H N � � � n   H L � � � 4   I L�� �
�� 
cobj � m   J K����  � o   H I���� 0 argv   � m   L M��
�� 
nmbr � o      ���� 0 tabindex tabIndex��  ��  ��   S  � � � l  U U��������  ��  ��   �  � � � l  U U��������  ��  ��   �  � � � l  U U��������  ��  ��   �  � � � O   Uh � � � k   Yg � �  � � � I  Y ^������
�� .miscactvnull��� ��� null��  ��   �  � � � X   _ � ��� � � k   s � � �  � � � r   s x � � � m   s t����  � o      ���� 0 i   �  ��� � X   y � ��� � � k   � � � �  � � � Z   � � � ����� � E   � � � � � n   � � � � � 1   � ���
�� 
URL  � o   � ����� 0 t   � o   � ����� 
0 domain   � k   � � � �  � � � r   � � � � � o   � ����� 0 i   � n       � � � 1   � ���
�� 
acTI � o   � ����� 0 w   �  � � � r   � � � � � m   � �����  � n       � � � 1   � ���
�� 
pidx � o   � ����� 0 w   �  � � � Z   � � � ����� � o   � ����� 0 debug DEBUG � I  � ��� ���
�� .ascrcmnt****      � **** � m   � � � � � � �  f o u n d   U R L��  ��  ��   �  ��� � L   � �����  ��  ��  ��   �  ��� � r   � � � � � [   � � � � � o   � ����� 0 i   � m   � �����  � o      ���� 0 i  ��  �� 0 t   � n   | � � � � 2  } ���
�� 
CrTb � o   | }���� 0 w  ��  �� 0 w   � 2  b e��
�� 
cwin �  � � � l  � ���������  ��  ��   �  � � � Z   �e � � � � � =  � � � � � o   � ����� 0 tabindex tabIndex � m   � �����  � k   � � � �  � � � l  � ��� � ���   �   open at the beginning    � � � � ,   o p e n   a t   t h e   b e g i n n i n g �  ��� � l  � � � � � � O  � � � � � I  � ���~ �
� .corecrel****      � null�~   � �} � �
�} 
kocl � m   � ��|
�| 
CrTb � �{ � �
�{ 
insh � l  � � ��z�y �  :   � ��z  �y   � �x ��w
�x 
prdt � K   � � � � �v ��u
�v 
URL  � o   � ��t�t 0 openurl openUrl�u  �w   � 4  � ��s �
�s 
cwin � m   � ��r�r  � &   open a new tab at the beginning    � � � � @   o p e n   a   n e w   t a b   a t   t h e   b e g i n n i n g��   �  � � � =  � � � o  �q�q 0 tabindex tabIndex � m  �p�p  �  ��o � l 4 � � � � O 4   I 3�n�m
�n .corecrel****      � null�m   �l
�l 
kocl m  �k
�k 
CrTb �j
�j 
insh n  $ 9   $�i
�i 
insl l  	�h�g	 e   

 4  �f
�f 
CrTb m  �e�e �h  �g   �d�c
�d 
prdt K  '- �b�a
�b 
URL  o  *+�`�` 0 openurl openUrl�a  �c   4 �_
�_ 
cwin m  
�^�^  � $  open a new tab at the 2nd tab    � � <   o p e n   a   n e w   t a b   a t   t h e   2 n d   t a b�o   � k  7e  l 7c O 7c I >b�]�\
�] .corecrel****      � null�\   �[
�[ 
kocl m  BE�Z
�Z 
CrTb �Y
�Y 
insh n  HS 9  OS�X
�X 
insl l HO �W�V  e  HO!! 4 HO�U"
�U 
CrTb" m  LM�T�T���W  �V   �S#�R
�S 
prdt# K  V\$$ �Q%�P
�Q 
URL % o  YZ�O�O 0 openurl openUrl�P  �R   4 7;�N&
�N 
cwin& m  9:�M�M  + % open a new tab after the current tab    �'' J   o p e n   a   n e w   t a b   a f t e r   t h e   c u r r e n t   t a b ()( l dd�L*+�L  * � � tell front window to make new tab at after (get active tab) with properties {URL:openUrl} -- open a new tab after the current tab   + �,,   t e l l   f r o n t   w i n d o w   t o   m a k e   n e w   t a b   a t   a f t e r   ( g e t   a c t i v e   t a b )   w i t h   p r o p e r t i e s   { U R L : o p e n U r l }   - -   o p e n   a   n e w   t a b   a f t e r   t h e   c u r r e n t   t a b) -.- l dd�K�J�I�K  �J  �I  . /0/ l dd�H12�H  1 6 0 another way to open URL but it's kind of flakey   2 �33 `   a n o t h e r   w a y   t o   o p e n   U R L   b u t   i t ' s   k i n d   o f   f l a k e y0 4�G4 l dd�F56�F  5   open location openUrl   6 �77 ,   o p e n   l o c a t i o n   o p e n U r l�G   � 898 l ff�E�D�C�E  �D  �C  9 :;: l ff�B<=�B  <   bring window to front   = �>> ,   b r i n g   w i n d o w   t o   f r o n t; ?�A? l ff�@@A�@  @  	 activate   A �BB    a c t i v a t e�A   � m   U VCC�                                                                                  rimZ  alis    >  Macintosh HD                   BD ����Google Chrome.app                                              ����            ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��   � D�?D l ii�>�=�<�>  �=  �<  �?   * EFE l     �;�:�9�;  �:  �9  F GHG l     �8�7�6�8  �7  �6  H I�5I l     �4�3�2�4  �3  �2  �5       
�1JK�0�/LM�.�-�,�1  J �+�*�)�(�'�&�%�$
�+ .aevtoappnull  �   � ****�* 0 debug DEBUG�) 0 tabindex tabIndex�( 0 openurl openUrl�' 
0 domain  �& 0 i  �%  �$  K �# ,�"�!NO� 
�# .aevtoappnull  �   � ****�" 0 argv  �!  N ���� 0 argv  � 0 w  � 0 t  O �� \� b� m� t z���C��������� ���
�	��� 0 debug DEBUG� 0 tabindex tabIndex� 0 openurl openUrl� 
0 domain  
� .ascrcmnt****      � ****
� 
cobj
� 
leng
� 
nmbr
� .miscactvnull��� ��� null
� 
cwin
� 
kocl
� .corecnte****       ****� 0 i  
� 
CrTb
� 
URL 
� 
acTI
� 
pidx
� 
insh
�
 
prdt�	 
� .corecrel****      � null
� 
insl� kfE�OjE�O� (�E�O�E�OkE�O��%j O��%j O��%j Y $��k/E�O��l/E�O��,l ��m/�&E�Y hO�*j O u*�-[a �l kh kE` O V�a -[a �l kh �a ,� )_ �a ,FOk�a ,FO� a j Y hOhY hO_ kE` [OY��[OY��O�k  (*�k/ *a a a *5a a �la  UY e�l  1*�k/ &*a a a *a k/Ea 4a a �la  UY 0*�k/ &*a a a *a i/Ea 4a a �la  UOPOPUOP
�0 boovfals�/ L �PP , h t t p : / / m a i l . g o o g l e . c o mM �QQ  m a i l . g o o g l e . c o m�. �-  �,  ascr  ��ޭ