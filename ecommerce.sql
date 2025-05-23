PGDMP  0                    }         	   ecommerce    17.2    17.2 4    W           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            X           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            Y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            Z           1262    41643 	   ecommerce    DATABASE     �   CREATE DATABASE ecommerce WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.utf8';
    DROP DATABASE ecommerce;
                     postgres    false            �            1259    41645    cart    TABLE     y   CREATE TABLE public.cart (
    id integer NOT NULL,
    quantity integer,
    product_id integer,
    user_id integer
);
    DROP TABLE public.cart;
       public         heap r       postgres    false            �            1259    41644    cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.cart_id_seq;
       public               postgres    false    218            [           0    0    cart_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.cart_id_seq OWNED BY public.cart.id;
          public               postgres    false    217            �            1259    41652    category    TABLE     �   CREATE TABLE public.category (
    id integer NOT NULL,
    image_name character varying(255),
    is_active boolean,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap r       postgres    false            �            1259    41651    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public               postgres    false    220            \           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public               postgres    false    219            �            1259    41661    order_address    TABLE     _  CREATE TABLE public.order_address (
    id integer NOT NULL,
    address character varying(255),
    city character varying(255),
    email character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    mobile_no character varying(255),
    pincode character varying(255),
    state character varying(255)
);
 !   DROP TABLE public.order_address;
       public         heap r       postgres    false            �            1259    41660    order_address_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.order_address_id_seq;
       public               postgres    false    222            ]           0    0    order_address_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.order_address_id_seq OWNED BY public.order_address.id;
          public               postgres    false    221            �            1259    41670    product    TABLE     ^  CREATE TABLE public.product (
    id integer NOT NULL,
    category character varying(255),
    description character varying(5000),
    discount integer NOT NULL,
    discount_price double precision,
    image character varying(255),
    is_active boolean,
    price double precision,
    stock integer NOT NULL,
    title character varying(500)
);
    DROP TABLE public.product;
       public         heap r       postgres    false            �            1259    41669    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public               postgres    false    224            ^           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public               postgres    false    223            �            1259    41679    product_order    TABLE     B  CREATE TABLE public.product_order (
    id integer NOT NULL,
    order_date date,
    order_id character varying(255),
    payment_type character varying(255),
    price double precision,
    quantity integer,
    status character varying(255),
    order_address_id integer,
    product_id integer,
    user_id integer
);
 !   DROP TABLE public.product_order;
       public         heap r       postgres    false            �            1259    41678    product_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.product_order_id_seq;
       public               postgres    false    226            _           0    0    product_order_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.product_order_id_seq OWNED BY public.product_order.id;
          public               postgres    false    225            �            1259    41688 	   user_dtls    TABLE     L  CREATE TABLE public.user_dtls (
    id integer NOT NULL,
    account_non_locked boolean,
    address character varying(255),
    city character varying(255),
    email character varying(255),
    failed_attempt integer,
    is_enable boolean,
    lock_time timestamp(6) without time zone,
    mobile_number character varying(255),
    name character varying(255),
    password character varying(255),
    pincode character varying(255),
    profile_image character varying(255),
    reset_token character varying(255),
    role character varying(255),
    state character varying(255)
);
    DROP TABLE public.user_dtls;
       public         heap r       postgres    false            �            1259    41687    user_dtls_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_dtls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_dtls_id_seq;
       public               postgres    false    228            `           0    0    user_dtls_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.user_dtls_id_seq OWNED BY public.user_dtls.id;
          public               postgres    false    227            �           2604    41648    cart id    DEFAULT     b   ALTER TABLE ONLY public.cart ALTER COLUMN id SET DEFAULT nextval('public.cart_id_seq'::regclass);
 6   ALTER TABLE public.cart ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            �           2604    41655    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            �           2604    41664    order_address id    DEFAULT     t   ALTER TABLE ONLY public.order_address ALTER COLUMN id SET DEFAULT nextval('public.order_address_id_seq'::regclass);
 ?   ALTER TABLE public.order_address ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    222    222            �           2604    41673 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224            �           2604    41682    product_order id    DEFAULT     t   ALTER TABLE ONLY public.product_order ALTER COLUMN id SET DEFAULT nextval('public.product_order_id_seq'::regclass);
 ?   ALTER TABLE public.product_order ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    226    225    226            �           2604    41691    user_dtls id    DEFAULT     l   ALTER TABLE ONLY public.user_dtls ALTER COLUMN id SET DEFAULT nextval('public.user_dtls_id_seq'::regclass);
 ;   ALTER TABLE public.user_dtls ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    227    228    228            J          0    41645    cart 
   TABLE DATA           A   COPY public.cart (id, quantity, product_id, user_id) FROM stdin;
    public               postgres    false    218   �?       L          0    41652    category 
   TABLE DATA           C   COPY public.category (id, image_name, is_active, name) FROM stdin;
    public               postgres    false    220   �?       N          0    41661    order_address 
   TABLE DATA           s   COPY public.order_address (id, address, city, email, first_name, last_name, mobile_no, pincode, state) FROM stdin;
    public               postgres    false    222   #@       P          0    41670    product 
   TABLE DATA           }   COPY public.product (id, category, description, discount, discount_price, image, is_active, price, stock, title) FROM stdin;
    public               postgres    false    224   �@       R          0    41679    product_order 
   TABLE DATA           �   COPY public.product_order (id, order_date, order_id, payment_type, price, quantity, status, order_address_id, product_id, user_id) FROM stdin;
    public               postgres    false    226   �B       T          0    41688 	   user_dtls 
   TABLE DATA           �   COPY public.user_dtls (id, account_non_locked, address, city, email, failed_attempt, is_enable, lock_time, mobile_number, name, password, pincode, profile_image, reset_token, role, state) FROM stdin;
    public               postgres    false    228   �C       a           0    0    cart_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.cart_id_seq', 4, true);
          public               postgres    false    217            b           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public               postgres    false    219            c           0    0    order_address_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.order_address_id_seq', 9, true);
          public               postgres    false    221            d           0    0    product_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.product_id_seq', 4, true);
          public               postgres    false    223            e           0    0    product_order_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_order_id_seq', 9, true);
          public               postgres    false    225            f           0    0    user_dtls_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_dtls_id_seq', 9, true);
          public               postgres    false    227            �           2606    41650    cart cart_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public                 postgres    false    218            �           2606    41659    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public                 postgres    false    220            �           2606    41668     order_address order_address_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.order_address
    ADD CONSTRAINT order_address_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.order_address DROP CONSTRAINT order_address_pkey;
       public                 postgres    false    222            �           2606    41686     product_order product_order_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.product_order
    ADD CONSTRAINT product_order_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.product_order DROP CONSTRAINT product_order_pkey;
       public                 postgres    false    226            �           2606    41677    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public                 postgres    false    224            �           2606    41697 *   product_order uk_qcdbxaeuc7c5gahwh0dutg04r 
   CONSTRAINT     q   ALTER TABLE ONLY public.product_order
    ADD CONSTRAINT uk_qcdbxaeuc7c5gahwh0dutg04r UNIQUE (order_address_id);
 T   ALTER TABLE ONLY public.product_order DROP CONSTRAINT uk_qcdbxaeuc7c5gahwh0dutg04r;
       public                 postgres    false    226            �           2606    41695    user_dtls user_dtls_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_dtls
    ADD CONSTRAINT user_dtls_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_dtls DROP CONSTRAINT user_dtls_pkey;
       public                 postgres    false    228            �           2606    41698     cart fk3d704slv66tw6x5hmbm6p2x3u    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT fk3d704slv66tw6x5hmbm6p2x3u FOREIGN KEY (product_id) REFERENCES public.product(id);
 J   ALTER TABLE ONLY public.cart DROP CONSTRAINT fk3d704slv66tw6x5hmbm6p2x3u;
       public               postgres    false    224    4780    218            �           2606    41718 )   product_order fk4f2ycr32kigtux5ag3tv0xu5m    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_order
    ADD CONSTRAINT fk4f2ycr32kigtux5ag3tv0xu5m FOREIGN KEY (user_id) REFERENCES public.user_dtls(id);
 S   ALTER TABLE ONLY public.product_order DROP CONSTRAINT fk4f2ycr32kigtux5ag3tv0xu5m;
       public               postgres    false    228    226    4786            �           2606    41708 )   product_order fk8frxalwc79tpxo7hgqp3hsjck    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_order
    ADD CONSTRAINT fk8frxalwc79tpxo7hgqp3hsjck FOREIGN KEY (order_address_id) REFERENCES public.order_address(id);
 S   ALTER TABLE ONLY public.product_order DROP CONSTRAINT fk8frxalwc79tpxo7hgqp3hsjck;
       public               postgres    false    4778    226    222            �           2606    41703     cart fk9x4wn098i53ikun1ynxet2ynj    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT fk9x4wn098i53ikun1ynxet2ynj FOREIGN KEY (user_id) REFERENCES public.user_dtls(id);
 J   ALTER TABLE ONLY public.cart DROP CONSTRAINT fk9x4wn098i53ikun1ynxet2ynj;
       public               postgres    false    4786    228    218            �           2606    41713 )   product_order fkh73acsd9s5wp6l0e55td6jr1m    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_order
    ADD CONSTRAINT fkh73acsd9s5wp6l0e55td6jr1m FOREIGN KEY (product_id) REFERENCES public.product(id);
 S   ALTER TABLE ONLY public.product_order DROP CONSTRAINT fkh73acsd9s5wp6l0e55td6jr1m;
       public               postgres    false    4780    224    226            J      x�3�4B.c i�i�e�[p��qqq 4�|      L   8   x�3���KI���*HM�,��/IUpJL�2�L�IM.)���LJ��\�\1z\\\ <��      N   �   x���=�0���cJ�$&nv,�RpP\%�^A[���ƔHq�p��}<������Ev�|��b�t����wP~7p\V�kc
.ri��pϬH����L����J�mRb:%f�1}���ƒ[a�0���<��d���4�_�������
���\�)�#���K�� f�ڿ      P   �  x�]R�n�0=�_�S{��8�.���m�n�K.���Zѐ��׏��͛ ����H*I�Pc�D��B�'y.�"[�G�:Ef��U/�LE��h���'��o�S'�[��[�
��1e˘:��uP�VlI��m'��{��f�A7h��m���J_��xT5��ܙެ�D��$vT�[K�U�\�i'MS����x#(�HC̶������b�ګ^#�<������=r1��@Yw�5U<i���}wó�h���l��(�N0WZ/K�(ؗ!nL�+����[�'�{0���wp�&K��<�0;��q�N`&檣|9�t�<��c�m�p��+Y/+��rh�����R��ͤDzN����<��N{'@ϲ�uX"p�����f��ŏ?W�aE�o�zڮ      R   W  x�}��j1���S�Td],y�t(I�_�nB��C��C�4Iw�����FH
�@�q-DTČ�D��4��Ug�������������ۯ��?/���&�d�3עk.X��;H�-.uh�-'\�������IS�*��b��W`���EFos{��yw��"�ԧ��16=<�j;)����Hx�F% ��=u���'���u�)f� b|�Ck���sݿX>c:�0�6���0�6���{�'�y}��,z���	̐	�¡\�Y��2�~?��f��L���Bh�WY��WeL�C�F�B�'��涗+���,l��ݻ��	D�Uk���,k����}�� ���      T   �  x���M��0�s�<��ۢ�"����d�X�
�؊���qv7�l�ڐ�����4�� GA�[����R�~DI�c&<&����c�)��C�U�ݲM�->hA�e�:۹��#�i(.�S}��l �
)�8��{�����	d�Ta�4�q'#��.p� ��4�Jq������N���Nz�>����=zt=�+oU�O³NW�ֶ��5����{�Nd�=Y�e D�b�����gϕ��S�ͷ>��8��N�ۅ��\zq�I�:CcZK=����;�f~�uz.��R�<������&�=tEQDA�[����gz�_"K�p�X�y�z��2K���^wj��}!n�m/��2���1���uX[�s�Zlz�
}�8�UP^�i������"�5WZs�|0���B��.tW��2�Re�[#v)ck��~�enNQ���! }���O}�	�N��WeQ�/�o���66j�v?�����U���p��g\M��mAz�z��|S����D1���#
T���-�їN�H��6	N������%A�c����7V�ms���(��ak�b�@����j�Sm�����`~�+~6�=�[uC�F�@p���~�>�̾62�L�����t      