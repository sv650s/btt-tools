FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
AQI Index: https://www.airnow.gov/aqi/aqi-basics/#:~:text=Think%20of%20the%20AQI%20as,300%20represents%20hazardous%20air%20quality.
0 to 50 - Good
51 to 100 - Moderate
101 to 150 - Unhealthy for Sensitive Groups
151 to 200 - Unhealthy
201 to 300 - Very Unhealthy
301 and higher - Hazardous


Output Format for BTT:
"{\"text\":\"newTitle\",                                                 
\"icon_data\": \"base64_icon_data\",                                                 
\"icon_path\":\"path_to_new_icon\",                                                 
\"background_color\": \"255,85,100,255\",                                                 
\"font_color\": \"100,200,100,255\",                                                 
\"font_size\": 10}"

     � 	 	� 
 A Q I   I n d e x :   h t t p s : / / w w w . a i r n o w . g o v / a q i / a q i - b a s i c s / # : ~ : t e x t = T h i n k % 2 0 o f % 2 0 t h e % 2 0 A Q I % 2 0 a s , 3 0 0 % 2 0 r e p r e s e n t s % 2 0 h a z a r d o u s % 2 0 a i r % 2 0 q u a l i t y . 
 0   t o   5 0   -   G o o d 
 5 1   t o   1 0 0   -   M o d e r a t e 
 1 0 1   t o   1 5 0   -   U n h e a l t h y   f o r   S e n s i t i v e   G r o u p s 
 1 5 1   t o   2 0 0   -   U n h e a l t h y 
 2 0 1   t o   3 0 0   -   V e r y   U n h e a l t h y 
 3 0 1   a n d   h i g h e r   -   H a z a r d o u s 
 
 
 O u t p u t   F o r m a t   f o r   B T T : 
 " { \ " t e x t \ " : \ " n e w T i t l e \ " ,                                                                                                   
 \ " i c o n _ d a t a \ " :   \ " b a s e 6 4 _ i c o n _ d a t a \ " ,                                                                                                   
 \ " i c o n _ p a t h \ " : \ " p a t h _ t o _ n e w _ i c o n \ " ,                                                                                                   
 \ " b a c k g r o u n d _ c o l o r \ " :   \ " 2 5 5 , 8 5 , 1 0 0 , 2 5 5 \ " ,                                                                                                   
 \ " f o n t _ c o l o r \ " :   \ " 1 0 0 , 2 0 0 , 1 0 0 , 2 5 5 \ " ,                                                                                                   
 \ " f o n t _ s i z e \ " :   1 0 } " 
 
   
  
 l     ��������  ��  ��        l     ����  r         m     ��
�� boovfals  o      ���� 0 debug DEBUG��  ��        l     ��������  ��  ��        l     ��  ��      read global variables     �   ,   r e a d   g l o b a l   v a r i a b l e s      l    ����  r        l   	 ����  I   	�� ��
�� .sysoloadscpt        file  m       �     t / U s e r s / v i n c e l u k / D r o p b o x / p r o j e c t s / b t t / s c p t / g l o b a l - v a r s . s c p t��  ��  ��    o      ���� 0 
globalvars 
globalVars��  ��     ! " ! l     ��������  ��  ��   "  # $ # l   ! %���� % Z    ! & '�� ( & =    ) * ) o    ���� 0 debug DEBUG * m    ��
�� boovtrue ' r     + , + m    ���� } , o      ���� 0 script_output  ��   ( r    ! - . - c     / 0 / l    1���� 1 I   �� 2��
�� .sysoexecTEXT���     TEXT 2 m     3 3 � 4 4 � s o u r c e   ~ / . b a s h _ p r o f i l e   & &   c d   ~ / D r o p b o x / p r o j e c t s / b t t   & &   c o n d a   r u n   - n   b t t   p y t h o n   g e t _ a q i c n _ i n f o . p y��  ��  ��   0 m    ��
�� 
nmbr . o      ���� 0 script_output  ��  ��   $  5 6 5 l     ��������  ��  ��   6  7 8 7 l  " % 9���� 9 r   " % : ; : m   " # < < � = =   ; o      ���� 0 output_description  ��  ��   8  > ? > l  & ) @���� @ r   & ) A B A m   & ' C C � D D   B o      ���� 0 background_color  ��  ��   ?  E F E l     ��������  ��  ��   F  G H G l  * / I���� I r   * / J K J l  * - L���� L l  * - M���� M n   * - N O N o   + -���� 0 color_white COLOR_WHITE O o   * +���� 0 
globalvars 
globalVars��  ��  ��  ��   K o      ���� 0 
font_color  ��  ��   H  P Q P l     ��������  ��  ��   Q  R S R l  0 � T���� T Z   0 � U V W X U l  0 3 Y���� Y A   0 3 Z [ Z o   0 1���� 0 script_output   [ m   1 2���� 3��  ��   V k   6 K \ \  ] ^ ] l  6 6�� _ `��   _   good    ` � a a 
   g o o d ^  b c b r   6 = d e d l  6 ; f���� f l  6 ; g���� g n   6 ; h i h o   7 ;���� 0 color_black COLOR_BLACK i o   6 7���� 0 
globalvars 
globalVars��  ��  ��  ��   e o      ���� 0 background_color   c  j k j r   > E l m l l  > C n���� n l  > C o���� o n   > C p q p o   ? C���� 0 color_green COLOR_GREEN q o   > ?���� 0 
globalvars 
globalVars��  ��  ��  ��   m o      ���� 0 
font_color   k  r�� r r   F K s t s m   F I u u � v v  G o o d t o      ���� 0 output_description  ��   W  w x w A   N S y z y o   N O���� 0 script_output   z m   O R���� e x  { | { k   V k } }  ~  ~ l  V V�� � ���   �  	 moderate    � � � �    m o d e r a t e   � � � r   V ] � � � l  V [ ����� � l  V [ ����� � n   V [ � � � o   W [���� 0 color_black COLOR_BLACK � o   V W���� 0 
globalvars 
globalVars��  ��  ��  ��   � o      ���� 0 background_color   �  � � � r   ^ e � � � l  ^ c ����� � l  ^ c ����� � n   ^ c � � � o   _ c���� 0 color_yellow COLOR_YELLOW � o   ^ _���� 0 
globalvars 
globalVars��  ��  ��  ��   � o      ���� 0 
font_color   �  ��� � r   f k � � � m   f i � � � � �  M o d e r a t e � o      ���� 0 output_description  ��   |  � � � A   n s � � � o   n o���� 0 script_output   � m   o r���� � �  � � � k   v � � �  � � � l  v v�� � ���   � %  unhealthy for sensitive groups    � � � � >   u n h e a l t h y   f o r   s e n s i t i v e   g r o u p s �  � � � r   v } � � � l  v { ����� � l  v { ����� � n   v { � � � o   w {���� 0 color_black COLOR_BLACK � o   v w���� 0 
globalvars 
globalVars��  ��  ��  ��   � o      ���� 0 background_color   �  � � � r   ~ � � � � l  ~ � ����� � l  ~ � ����� � n   ~ � � � � o    ����� 0 color_orange COLOR_ORANGE � o   ~ ���� 0 
globalvars 
globalVars��  ��  ��  ��   � o      ���� 0 
font_color   �  ��� � l  � � � � � � r   � � � � � m   � � � � � � �  U H   f o r   s o m e � o      ���� 0 output_description   � %  unhealthy for sensitive groups    � � � � >   u n h e a l t h y   f o r   s e n s i t i v e   g r o u p s��   �  � � � A   � � � � � o   � ����� 0 script_output   � m   � ����� � �  � � � k   � � � �  � � � l  � ��� � ���   �  
 unhealthy    � � � �    u n h e a l t h y �  � � � r   � � � � � l  � � ����� � l  � � ����� � n   � � � � � o   � ��� 0 color_black COLOR_BLACK � o   � ��~�~ 0 
globalvars 
globalVars��  ��  ��  ��   � o      �}�} 0 background_color   �  � � � r   � � � � � l  � � ��|�{ � l  � � ��z�y � n   � � � � � o   � ��x�x 0 	color_red 	COLOR_RED � o   � ��w�w 0 
globalvars 
globalVars�z  �y  �|  �{   � o      �v�v 0 
font_color   �  ��u � r   � � � � � m   � � � � � � �  U n h e a l t h y � o      �t�t 0 output_description  �u   �  � � � A   � � � � � o   � ��s�s 0 script_output   � m   � ��r�r- �  ��q � k   � � � �  � � � l  � ��p � ��p   �   very unhealthy    � � � �    v e r y   u n h e a l t h y �  � � � r   � � � � � l  � � ��o�n � l  � � ��m�l � n   � � � � � o   � ��k�k 0 color_black COLOR_BLACK � o   � ��j�j 0 
globalvars 
globalVars�m  �l  �o  �n   � o      �i�i 0 background_color   �  � � � r   � � � � � l  � � ��h�g � l  � � ��f�e � n   � � � � � o   � ��d�d 0 color_purple COLOR_PURPLE � o   � ��c�c 0 
globalvars 
globalVars�f  �e  �h  �g   � o      �b�b 0 
font_color   �  ��a � r   � � � � � m   � � � � � � �  V e r y   U n h e a l t h y � o      �`�` 0 output_description  �a  �q   X k   � � � �  �  � l  � ��_�_    
 hazardous    �    h a z a r d o u s   r   � � l  � ��^�] l  � �	�\�[	 n   � �

 o   � ��Z�Z 0 color_white COLOR_WHITE o   � ��Y�Y 0 
globalvars 
globalVars�\  �[  �^  �]   o      �X�X 0 background_color    r   � � l  � ��W�V l  � ��U�T n   � � o   � ��S�S 0 color_maroon COLOR_MAROON o   � ��R�R 0 
globalvars 
globalVars�U  �T  �W  �V   o      �Q�Q 0 
font_color   �P r   � � m   � � �  H a z a r d o u s o      �O�O 0 output_description  �P  ��  ��   S  l     �N�M�L�N  �M  �L    l     �K�J�I�K  �J  �I    l  � ��H�G I  � ��F �E
�F .ascrcmnt****      � ****  b   � �!"! m   � �## �$$ $ b a c k g r o u n d _ c o l o r :  " o   � ��D�D 0 background_color  �E  �H  �G   %&% l  � �'�C�B' I  � ��A(�@
�A .ascrcmnt****      � ****( b   � �)*) m   � �++ �,,  f o n t _ c o l o r :  * o   � ��?�? 0 
font_color  �@  �C  �B  & -.- l  � �/�>�=/ I  � ��<0�;
�< .ascrcmnt****      � ****0 b   � �121 m   � �33 �44 ( o u t p u t _ d e s c r i p t i o n :  2 o   � ��:�: 0 output_description  �;  �>  �=  . 565 l     �9�8�7�9  �8  �7  6 787 l     �69:�6  9 M G if you break output into two lines - JSON doesn't work for some reason   : �;; �   i f   y o u   b r e a k   o u t p u t   i n t o   t w o   l i n e s   -   J S O N   d o e s n ' t   w o r k   f o r   s o m e   r e a s o n8 <=< l  >�5�4> L   ?? b   @A@ b   BCB b   DED b   FGF b   HIH b   JKJ b   	LML b   NON m   PP �QQ  { " t e x t " :   " A Q I :  O o  �3�3 0 script_output  M m  RR �SS  \ nK o  	
�2�2 0 output_description  I m  TT �UU 0 " , 
 " b a c k g r o u n d _ c o l o r " :   "G o  �1�1 0 background_color  E m  VV �WW $ " , 
 " f o n t _ c o l o r " :   "C o  �0�0 0 
font_color  A m  XX �YY  " }�5  �4  = Z[Z l     �/�.�-�/  �.  �-  [ \]\ l     �,�+�*�,  �+  �*  ] ^_^ l     �)�(�'�)  �(  �'  _ `a` l     �&�%�$�&  �%  �$  a bcb l     �#�"�!�#  �"  �!  c d� d l     ����  �  �  �        �ef�  e �
� .aevtoappnull  �   � ****f �g��hi�
� .aevtoappnull  �   � ****g k    jj  kk  ll  #mm  7nn  >oo  Gpp  Rqq rr %ss -tt <��  �  �  h  i *� ���� 3�� <� C����
�	� u�� ��� ��� ���  ���#��+3PRTVX� 0 debug DEBUG
� .sysoloadscpt        file� 0 
globalvars 
globalVars� }� 0 script_output  
� .sysoexecTEXT���     TEXT
� 
nmbr� 0 output_description  � 0 background_color  � 0 color_white COLOR_WHITE� 0 
font_color  �
 3�	 0 color_black COLOR_BLACK� 0 color_green COLOR_GREEN� e� 0 color_yellow COLOR_YELLOW� �� 0 color_orange COLOR_ORANGE� �� 0 	color_red 	COLOR_RED�-�  0 color_purple COLOR_PURPLE�� 0 color_maroon COLOR_MAROON
�� .ascrcmnt****      � ****�fE�O�j E�O�e  �E�Y �j �&E�O�E�O�E�O��,E�O�� �a ,E�O�a ,E�Oa E�Y ��a  �a ,E�O�a ,E�Oa E�Y u�a  �a ,E�O�a ,E�Oa E�Y U�a  �a ,E�O�a ,E�Oa E�Y 5�a  �a ,E�O�a ,E�Oa E�Y ��,E�O�a ,E�Oa  E�Oa !�%j "Oa #�%j "Oa $�%j "Oa %�%a &%�%a '%�%a (%�%a )% ascr  ��ޭ