FasdUAS 1.101.10   ��   ��    k             l     ��  ��      references:     � 	 	    r e f e r e n c e s :   
  
 l     ��  ��    o i https://stackoverflow.com/questions/2892622/open-url-in-new-safari-tab-with-applescriptdoesnt-already-ex     �   �   h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 2 8 9 2 6 2 2 / o p e n - u r l - i n - n e w - s a f a r i - t a b - w i t h - a p p l e s c r i p t d o e s n t - a l r e a d y - e x      l     ��  ��    Y S https://stackoverflow.com/questions/7221087/applescript-to-get-the-url-from-safari     �   �   h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 7 2 2 1 0 8 7 / a p p l e s c r i p t - t o - g e t - t h e - u r l - f r o m - s a f a r i      l     ��  ��    i c focus tab: https://stackoverflow.com/questions/39037588/applescript-search-safari-tab-and-open-tab     �   �   f o c u s   t a b :   h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 3 9 0 3 7 5 8 8 / a p p l e s c r i p t - s e a r c h - s a f a r i - t a b - a n d - o p e n - t a b      l     ��������  ��  ��        l     ��������  ��  ��        i          I     �� !��
�� .aevtoappnull  �   � **** ! o      ���� 0 argv  ��     k    # " "  # $ # l     ��������  ��  ��   $  % & % r      ' ( ' m     ����  ( o      ���� 0 waittime waitTime &  ) * ) r     + , + m    ��
�� boovfals , o      ���� 0 foundurl foundUrl *  - . - l   ��������  ��  ��   .  / 0 / l   ��������  ��  ��   0  1 2 1 l   �� 3 4��   3   amex    4 � 5 5 
   a m e x 2  6 7 6 l   �� 8 9��   8 H B property openUrl : "https://global.americanexpress.com/dashboard"    9 � : : �   p r o p e r t y   o p e n U r l   :   " h t t p s : / / g l o b a l . a m e r i c a n e x p r e s s . c o m / d a s h b o a r d " 7  ; < ; l   �� = >��   = . ( property domain : "americanexpress.com"    > � ? ? P   p r o p e r t y   d o m a i n   :   " a m e r i c a n e x p r e s s . c o m " <  @ A @ l   �� B C��   B   property username : ""    C � D D .   p r o p e r t y   u s e r n a m e   :   " " A  E F E l   ��������  ��  ��   F  G H G r     I J I n     K L K 4   	 �� M
�� 
cobj M m   
 ����  L o    	���� 0 argv   J o      ���� 0 openurl openUrl H  N O N r     P Q P n     R S R 4    �� T
�� 
cobj T m    ����  S o    ���� 0 argv   Q o      ���� 
0 domain   O  U V U l   �� W X��   W 4 . default value of tabIndex - 0 mean at the end    X � Y Y \   d e f a u l t   v a l u e   o f   t a b I n d e x   -   0   m e a n   a t   t h e   e n d V  Z [ Z r     \ ] \ m    ����   ] o      ���� 0 tabindex tabIndex [  ^ _ ^ l   �� ` a��   ` !  optional, should be 1 or 2    a � b b 6   o p t i o n a l ,   s h o u l d   b e   1   o r   2 _  c d c Z    . e f���� e ?     g h g n     i j i 1    ��
�� 
leng j o    ���� 0 argv   h m    ����  f r   " * k l k c   " ( m n m n   " & o p o 4   # &�� q
�� 
cobj q m   $ %����  p o   " #���� 0 argv   n m   & '��
�� 
nmbr l o      ���� 0 tabindex tabIndex��  ��   d  r s r l  / /��������  ��  ��   s  t u t I  / 6�� v��
�� .ascrcmnt****      � **** v b   / 2 w x w m   / 0 y y � z z  o p e n U r l :   x o   0 1���� 0 openurl openUrl��   u  { | { I  7 >�� }��
�� .ascrcmnt****      � **** } b   7 : ~  ~ m   7 8 � � � � �  d o m a i n :    o   8 9���� 
0 domain  ��   |  � � � I  ? F�� ���
�� .ascrcmnt****      � **** � b   ? B � � � m   ? @ � � � � �  t a b I n d e x :   � o   @ A���� 0 tabindex tabIndex��   �  � � � l  G G��������  ��  ��   �  � � � O   G! � � � k   K  � �  � � � I  K P������
�� .miscactvnull��� ��� null��  ��   �  � � � l  Q Q��������  ��  ��   �  � � � I  Q V�� ���
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
kocl � n  � � � � � m   � ��
� 
bTab � 4   � ��~ �
�~ 
cwin � m   � ��}�} ��   � o      �|�| 0 newtab newTab �  � � � r   � � � � o   � ��{�{ 0 openurl openUrl � l      ��z�y � n       � � � 1  �x
�x 
pURL � o   ��w�w 0 newtab newTab�z  �y   �  � � � l �v � ��v   � "  set current tab to last tab    � � � � 8   s e t   c u r r e n t   t a b   t o   l a s t   t a b �  �u  O  r   o  �t�t 0 newtab newTab 1  �s
�s 
cTab 4  �r
�r 
cwin m  �q�q �u  ��  ��   �  l �p�o�n�p  �o  �n   	 l �m
�m  
   activate window 1    � $   a c t i v a t e   w i n d o w   1	  l �l�k�j�l  �k  �j   �i l �h�g�f�h  �g  �f  �i   � m   G H�                                                                                  sfri  alis    "  Macintosh HD                   BD ����
Safari.app                                                     ����            ����  
 cu             Applications  /:Applications:Safari.app/   
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��   �  l ""�e�d�c�e  �d  �c    l  ""�b�b   � �
-- fill out usernameif username is not equal to "" then		delay waitTime		tell application "System Events"		keystroke username	end tellend if
    �, 
 - -   f i l l   o u t   u s e r n a m e  i f   u s e r n a m e   i s   n o t   e q u a l   t o   " "   t h e n  	  	 d e l a y   w a i t T i m e  	  	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 	 k e y s t r o k e   u s e r n a m e  	 e n d   t e l l  e n d   i f 
 �a l ""�`�_�^�`  �_  �^  �a    �] l     �\�[�Z�\  �[  �Z  �]       �Y�Y   �X
�X .aevtoappnull  �   � **** �W  �V�U�T
�W .aevtoappnull  �   � ****�V 0 argv  �U   �S�R�Q�S 0 argv  �R 0 w  �Q 0 t   �P�O�N�M�L�K�J�I�H y�G � ��F ��E�D�C�B�A�@�? ��>�=�<�P �O 0 waittime waitTime�N 0 foundurl foundUrl
�M 
cobj�L 0 openurl openUrl�K 
0 domain  �J 0 tabindex tabIndex
�I 
leng
�H 
nmbr
�G .ascrcmnt****      � ****
�F .miscactvnull��� ��� null
�E 
cwin
�D 
kocl
�C .corecnte****       ****�B 0 i  
�A 
bTab
�@ 
pURL�? 0 theurl theURL
�> 
cTab
�= .corecrel****      � null�< 0 newtab newTab�T$�E�OfE�O��k/E�O��l/E�OjE�O��,l ��m/�&E�Y hO��%j 
O��%j 
O��%j 
O� �*j O�j 
O �*a -[a �l kh �j 
OkE` O Z�a -[a �l kh �j 
O�a ,E` O_ j 
O_ � !a j 
O� 	�*a ,FUOeE�OOPY h[OY��[OY��O�j 
O�f  9*a *a k/a ,l E` O�_ a ,FO*a k/ _ *a ,FUY hOPUOP ascr  ��ޭ