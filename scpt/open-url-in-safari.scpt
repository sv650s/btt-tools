FasdUAS 1.101.10   ��   ��    k             l     ��  ��      references:     � 	 	    r e f e r e n c e s :   
  
 l     ��  ��    o i https://stackoverflow.com/questions/2892622/open-url-in-new-safari-tab-with-applescriptdoesnt-already-ex     �   �   h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 2 8 9 2 6 2 2 / o p e n - u r l - i n - n e w - s a f a r i - t a b - w i t h - a p p l e s c r i p t d o e s n t - a l r e a d y - e x      l     ��  ��    Y S https://stackoverflow.com/questions/7221087/applescript-to-get-the-url-from-safari     �   �   h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 7 2 2 1 0 8 7 / a p p l e s c r i p t - t o - g e t - t h e - u r l - f r o m - s a f a r i      l     ��  ��    i c focus tab: https://stackoverflow.com/questions/39037588/applescript-search-safari-tab-and-open-tab     �   �   f o c u s   t a b :   h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 3 9 0 3 7 5 8 8 / a p p l e s c r i p t - s e a r c h - s a f a r i - t a b - a n d - o p e n - t a b      l     ��������  ��  ��        l     ��  ��    / ) takes in 2 arguments: openUrl and domain     �   R   t a k e s   i n   2   a r g u m e n t s :   o p e n U r l   a n d   d o m a i n     !   i      " # " I     �� $��
�� .aevtoappnull  �   � **** $ o      ���� 0 argv  ��   # k    # % %  & ' & l     ��������  ��  ��   '  ( ) ( r      * + * m     ����  + o      ���� 0 waittime waitTime )  , - , r     . / . m    ��
�� boovfals / o      ���� 0 foundurl foundUrl -  0 1 0 l   ��������  ��  ��   1  2 3 2 l   ��������  ��  ��   3  4 5 4 r     6 7 6 n     8 9 8 4   	 �� :
�� 
cobj : m   
 ����  9 o    	���� 0 argv   7 o      ���� 0 openurl openUrl 5  ; < ; r     = > = n     ? @ ? 4    �� A
�� 
cobj A m    ����  @ o    ���� 0 argv   > o      ���� 
0 domain   <  B C B l   �� D E��   D 4 . default value of tabIndex - 0 mean at the end    E � F F \   d e f a u l t   v a l u e   o f   t a b I n d e x   -   0   m e a n   a t   t h e   e n d C  G H G r     I J I m    ����   J o      ���� 0 tabindex tabIndex H  K L K l   �� M N��   M !  optional, should be 1 or 2    N � O O 6   o p t i o n a l ,   s h o u l d   b e   1   o r   2 L  P Q P Z    . R S���� R ?     T U T n     V W V 1    ��
�� 
leng W o    ���� 0 argv   U m    ����  S r   " * X Y X c   " ( Z [ Z n   " & \ ] \ 4   # &�� ^
�� 
cobj ^ m   $ %����  ] o   " #���� 0 argv   [ m   & '��
�� 
nmbr Y o      ���� 0 tabindex tabIndex��  ��   Q  _ ` _ l  / /��������  ��  ��   `  a b a I  / 6�� c��
�� .ascrcmnt****      � **** c b   / 2 d e d m   / 0 f f � g g  o p e n U r l :   e o   0 1���� 0 openurl openUrl��   b  h i h I  7 >�� j��
�� .ascrcmnt****      � **** j b   7 : k l k m   7 8 m m � n n  d o m a i n :   l o   8 9���� 
0 domain  ��   i  o p o I  ? F�� q��
�� .ascrcmnt****      � **** q b   ? B r s r m   ? @ t t � u u  t a b I n d e x :   s o   @ A���� 0 tabindex tabIndex��   p  v w v l  G G��������  ��  ��   w  x y x O   G! z { z k   K  | |  } ~ } I  K P������
�� .miscactvnull��� ��� null��  ��   ~   �  l  Q Q��������  ��  ��   �  � � � I  Q V�� ���
�� .ascrcmnt****      � **** � m   Q R � � � � � < b e f o r e   l o o p i n g   t h r o u g h   w i n d o w s��   �  � � � X   W � ��� � � k   m � � �  � � � I  m r�� ���
�� .ascrcmnt****      � **** � o   m n���� 0 w  ��   �  � � � r   s x � � � m   s t����  � o      ���� 0 i   �  ��� � X   y � ��� � � k   � � � �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � o   � ����� 0 t  ��   �  � � � l  � � � � � � r   � � � � � n   � � � � � 1   � ���
�� 
pURL � o   � ����� 0 t   � o      ���� 0 theurl theURL � G A for some reason if URL of t start with startWithUrl doesn't work    � � � � �   f o r   s o m e   r e a s o n   i f   U R L   o f   t   s t a r t   w i t h   s t a r t W i t h U r l   d o e s n ' t   w o r k �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � o   � ����� 0 theurl theURL��   �  ��� � Z   � � � ����� � E   � � � � � o   � ����� 0 theurl theURL � o   � ����� 
0 domain   � k   � � � �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � m   � � � � � � �  f o u n d   t a b��   �  � � � l  � � � � � � O  � � � � � r   � � � � � o   � ����� 0 t   � 1   � ���
�� 
cTab � o   � ����� 0 w   �   focus tab with URL    � � � � &   f o c u s   t a b   w i t h   U R L �  � � � r   � � � � � m   � ���
�� boovtrue � o      ���� 0 foundurl foundUrl �  � � �  S   � � �  ��� � l  � ��� � ���   �   return    � � � �    r e t u r n��  ��  ��  ��  �� 0 t   � n   | � � � � 2  } ���
�� 
bTab � o   | }���� 0 w  ��  �� 0 w   � 2  Z _��
�� 
cwin �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � o   � ����� 0 foundurl foundUrl��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � I C if we didn't find the URL then open a new tab and focus on new tab    � � � � �   i f   w e   d i d n ' t   f i n d   t h e   U R L   t h e n   o p e n   a   n e w   t a b   a n d   f o c u s   o n   n e w   t a b �  � � � Z   � � ����� � =  � � � � � o   � ����� 0 foundurl foundUrl � m   � ���
�� boovfals � k   � � �  � � � r   � � � � � I  � ����� �
�� .corecrel****      � null��   � �� ���
�� 
kocl � n  � � � � � m   � ���
�� 
bTab � 4   � ��� �
�� 
cwin � m   � ����� ��   � o      ���� 0 newtab newTab �  � � � r   � � � � o   � ����� 0 openurl openUrl � l      ����� � n       � � � 1  ��
�� 
pURL � o   ����� 0 newtab newTab��  ��   �  � � � l � � ��   � "  set current tab to last tab    � � � � 8   s e t   c u r r e n t   t a b   t o   l a s t   t a b �  ��~ � O  � � � r   � � � o  �}�} 0 newtab newTab � 1  �|
�| 
cTab � 4  �{ �
�{ 
cwin � m  �z�z �~  ��  ��   �  � � � l �y�x�w�y  �x  �w   �  � � � l �v � ��v   �   activate window 1    � � � � $   a c t i v a t e   w i n d o w   1 �  � � � l �u�t�s�u  �t  �s   �  ��r � l �q�p�o�q  �p  �o  �r   { m   G H � ��                                                                                  sfri  alis    "  Macintosh HD                   BD ����
Safari.app                                                     ����            ����  
 cu             Applications  /:Applications:Safari.app/   
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��   y  � � � l ""�n�m�l�n  �m  �l   �    l  ""�k�k   � �
-- fill out usernameif username is not equal to "" then		delay waitTime		tell application "System Events"		keystroke username	end tellend if
    �, 
 - -   f i l l   o u t   u s e r n a m e  i f   u s e r n a m e   i s   n o t   e q u a l   t o   " "   t h e n  	  	 d e l a y   w a i t T i m e  	  	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 	 k e y s t r o k e   u s e r n a m e  	 e n d   t e l l  e n d   i f 
 �j l ""�i�h�g�i  �h  �g  �j   ! �f l     �e�d�c�e  �d  �c  �f       �b�a�`	
�_�^�]�\�[�Z�Y�X�W�b   �V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G
�V .aevtoappnull  �   � ****�U 0 waittime waitTime�T 0 foundurl foundUrl�S 0 openurl openUrl�R 
0 domain  �Q 0 tabindex tabIndex�P 0 i  �O 0 theurl theURL�N 0 newtab newTab�M  �L  �K  �J  �I  �H  �G   �F #�E�D�C
�F .aevtoappnull  �   � ****�E 0 argv  �D   �B�A�@�B 0 argv  �A 0 w  �@ 0 t   �?�>�=�<�;�:�9�8�7 f�6 m t ��5 ��4�3�2�1�0�/�. ��-�,�+�? �> 0 waittime waitTime�= 0 foundurl foundUrl
�< 
cobj�; 0 openurl openUrl�: 
0 domain  �9 0 tabindex tabIndex
�8 
leng
�7 
nmbr
�6 .ascrcmnt****      � ****
�5 .miscactvnull��� ��� null
�4 
cwin
�3 
kocl
�2 .corecnte****       ****�1 0 i  
�0 
bTab
�/ 
pURL�. 0 theurl theURL
�- 
cTab
�, .corecrel****      � null�+ 0 newtab newTab�C$�E�OfE�O��k/E�O��l/E�OjE�O��,l ��m/�&E�Y hO��%j 
O��%j 
O��%j 
O� �*j O�j 
O �*a -[a �l kh �j 
OkE` O Z�a -[a �l kh �j 
O�a ,E` O_ j 
O_ � !a j 
O� 	�*a ,FUOeE�OOPY h[OY��[OY��O�j 
O�f  9*a *a k/a ,l E` O�_ a ,FO*a k/ _ *a ,FUY hOPUOP�a 
�` boovfals	 � X h t t p s : / / g l o b a l . a m e r i c a n e x p r e s s . c o m / d a s h b o a r d
 � & a m e r i c a n e x p r e s s . c o m�_  �^  �  f a v o r i t e s : / /  �*�)  ��(�'�&
�( 
cwin�'4
�& kfrmID  
�* 
bTab�) �]  �\  �[  �Z  �Y  �X  �W   ascr  ��ޭ