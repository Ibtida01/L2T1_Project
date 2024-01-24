PGDMP                       |         
   codeforces    16.1    16.1 `    <           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            =           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            >           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24613 
   codeforces    DATABASE     �   CREATE DATABASE codeforces WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE codeforces;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            @           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    32818    blogs    TABLE     �   CREATE TABLE public.blogs (
    blog_id integer NOT NULL,
    user_id integer,
    blog_title character varying,
    description character varying
);
    DROP TABLE public.blogs;
       public         heap    postgres    false    4            �            1259    32817    Blog_blog_id_seq    SEQUENCE     �   ALTER TABLE public.blogs ALTER COLUMN blog_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Blog_blog_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    234            �            1259    24644 
   contesttag    TABLE     t   CREATE TABLE public.contesttag (
    contest_tag_id integer NOT NULL,
    contest_id integer,
    tag_id integer
);
    DROP TABLE public.contesttag;
       public         heap    postgres    false    4            �            1259    24666    ContestTag_contest_tag_id_seq    SEQUENCE     �   ALTER TABLE public.contesttag ALTER COLUMN contest_tag_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ContestTag_contest_tag_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221    4            �            1259    24639    contests    TABLE     l   CREATE TABLE public.contests (
    contest_id integer NOT NULL,
    contest_title character varying(255)
);
    DROP TABLE public.contests;
       public         heap    postgres    false    4            �            1259    24665    Contest_contest_id_seq    SEQUENCE     �   ALTER TABLE public.contests ALTER COLUMN contest_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Contest_contest_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    220            �            1259    24649 
   problemtag    TABLE     t   CREATE TABLE public.problemtag (
    problem_tag_id integer NOT NULL,
    problem_id integer,
    tag_id integer
);
    DROP TABLE public.problemtag;
       public         heap    postgres    false    4            �            1259    24668    ProblemTag_problem_tag_id_seq    SEQUENCE     �   ALTER TABLE public.problemtag ALTER COLUMN problem_tag_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ProblemTag_problem_tag_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    222            �            1259    24622    problems    TABLE     �   CREATE TABLE public.problems (
    problem_id integer NOT NULL,
    problem_title character varying(255),
    description text,
    contest_id integer,
    rating integer
);
    DROP TABLE public.problems;
       public         heap    postgres    false    4            �            1259    24667    Problem_problem_id_seq    SEQUENCE     �   ALTER TABLE public.problems ALTER COLUMN problem_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Problem_problem_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    217            �            1259    24634    submissions    TABLE     �   CREATE TABLE public.submissions (
    submission_id integer NOT NULL,
    submission_time time(6) with time zone,
    user_id integer,
    contest_id integer,
    problem_id integer
);
    DROP TABLE public.submissions;
       public         heap    postgres    false    4            �            1259    24669    Submission_submission_id_seq    SEQUENCE     �   ALTER TABLE public.submissions ALTER COLUMN submission_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Submission_submission_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219    4            �            1259    24629    tags    TABLE     _   CREATE TABLE public.tags (
    tag_id integer NOT NULL,
    tag_name character varying(255)
);
    DROP TABLE public.tags;
       public         heap    postgres    false    4            �            1259    24670    Tag_tag_id_seq    SEQUENCE     �   ALTER TABLE public.tags ALTER COLUMN tag_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Tag_tag_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218    4            �            1259    24655    usercontest    TABLE     w   CREATE TABLE public.usercontest (
    user_contest_id integer NOT NULL,
    user_id integer,
    contest_id integer
);
    DROP TABLE public.usercontest;
       public         heap    postgres    false    4            �            1259    24654    UserContest_user_contest_id_seq    SEQUENCE     �   ALTER TABLE public.usercontest ALTER COLUMN user_contest_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."UserContest_user_contest_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224    4            �            1259    24660    userproblem    TABLE     w   CREATE TABLE public.userproblem (
    user_problem_id integer NOT NULL,
    user_id integer,
    problem_id integer
);
    DROP TABLE public.userproblem;
       public         heap    postgres    false    4            �            1259    24671    UserProblem_user_problem_id_seq    SEQUENCE     �   ALTER TABLE public.userproblem ALTER COLUMN user_problem_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."UserProblem_user_problem_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    225            �            1259    24615    users    TABLE     �  CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(255),
    password character varying(255),
    email character varying(255),
    color character varying(50),
    current_rating integer,
    max_rating integer,
    country character varying(255),
    institution character varying(255),
    registration_date date,
    contribution integer,
    problems_solved integer
);
    DROP TABLE public.users;
       public         heap    postgres    false    4            �            1259    24614    User_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN user_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."User_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    216            �            1259    49189    comments    TABLE     �   CREATE TABLE public.comments (
    comment_id integer NOT NULL,
    text text,
    comment_time time without time zone,
    contest_id integer,
    problem_id integer
);
    DROP TABLE public.comments;
       public         heap    postgres    false    4            �            1259    57391    comments_comment_id_seq    SEQUENCE     �   ALTER TABLE public.comments ALTER COLUMN comment_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.comments_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    235            �            1259    49218 
   editorials    TABLE     �   CREATE TABLE public.editorials (
    editorial_id integer NOT NULL,
    hints text,
    solution text,
    problem_id integer,
    user_id integer
);
    DROP TABLE public.editorials;
       public         heap    postgres    false    4            �            1259    57392    editorials_editorial_id_seq    SEQUENCE     �   ALTER TABLE public.editorials ALTER COLUMN editorial_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.editorials_editorial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    237    4            �            1259    49206    gym    TABLE     t   CREATE TABLE public.gym (
    gym_id integer NOT NULL,
    problem_id integer,
    hints text,
    solution text
);
    DROP TABLE public.gym;
       public         heap    postgres    false    4            �            1259    49240 
   gymproblem    TABLE     t   CREATE TABLE public.gymproblem (
    gym_problem_id integer NOT NULL,
    problem_id integer,
    gym_id integer
);
    DROP TABLE public.gymproblem;
       public         heap    postgres    false    4            �            1259    49255    usercomment    TABLE     w   CREATE TABLE public.usercomment (
    user_comment_id integer NOT NULL,
    user_id integer,
    comment_id integer
);
    DROP TABLE public.usercomment;
       public         heap    postgres    false    4            2          0    32818    blogs 
   TABLE DATA           J   COPY public.blogs (blog_id, user_id, blog_title, description) FROM stdin;
    public          postgres    false    234   s       3          0    49189    comments 
   TABLE DATA           Z   COPY public.comments (comment_id, text, comment_time, contest_id, problem_id) FROM stdin;
    public          postgres    false    235   �~       $          0    24639    contests 
   TABLE DATA           =   COPY public.contests (contest_id, contest_title) FROM stdin;
    public          postgres    false    220   ��       %          0    24644 
   contesttag 
   TABLE DATA           H   COPY public.contesttag (contest_tag_id, contest_id, tag_id) FROM stdin;
    public          postgres    false    221   ��       5          0    49218 
   editorials 
   TABLE DATA           X   COPY public.editorials (editorial_id, hints, solution, problem_id, user_id) FROM stdin;
    public          postgres    false    237   ��       4          0    49206    gym 
   TABLE DATA           B   COPY public.gym (gym_id, problem_id, hints, solution) FROM stdin;
    public          postgres    false    236   ��       6          0    49240 
   gymproblem 
   TABLE DATA           H   COPY public.gymproblem (gym_problem_id, problem_id, gym_id) FROM stdin;
    public          postgres    false    238   �       !          0    24622    problems 
   TABLE DATA           ^   COPY public.problems (problem_id, problem_title, description, contest_id, rating) FROM stdin;
    public          postgres    false    217   3�       &          0    24649 
   problemtag 
   TABLE DATA           H   COPY public.problemtag (problem_tag_id, problem_id, tag_id) FROM stdin;
    public          postgres    false    222   ��       #          0    24634    submissions 
   TABLE DATA           f   COPY public.submissions (submission_id, submission_time, user_id, contest_id, problem_id) FROM stdin;
    public          postgres    false    219   ��       "          0    24629    tags 
   TABLE DATA           0   COPY public.tags (tag_id, tag_name) FROM stdin;
    public          postgres    false    218   ��       7          0    49255    usercomment 
   TABLE DATA           K   COPY public.usercomment (user_comment_id, user_id, comment_id) FROM stdin;
    public          postgres    false    239   Ǘ       (          0    24655    usercontest 
   TABLE DATA           K   COPY public.usercontest (user_contest_id, user_id, contest_id) FROM stdin;
    public          postgres    false    224   �       )          0    24660    userproblem 
   TABLE DATA           K   COPY public.userproblem (user_problem_id, user_id, problem_id) FROM stdin;
    public          postgres    false    225   �                  0    24615    users 
   TABLE DATA           �   COPY public.users (user_id, user_name, password, email, color, current_rating, max_rating, country, institution, registration_date, contribution, problems_solved) FROM stdin;
    public          postgres    false    216   �       A           0    0    Blog_blog_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Blog_blog_id_seq"', 68, true);
          public          postgres    false    233            B           0    0    ContestTag_contest_tag_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."ContestTag_contest_tag_id_seq"', 10, true);
          public          postgres    false    227            C           0    0    Contest_contest_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Contest_contest_id_seq"', 29, true);
          public          postgres    false    226            D           0    0    ProblemTag_problem_tag_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."ProblemTag_problem_tag_id_seq"', 10, true);
          public          postgres    false    229            E           0    0    Problem_problem_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Problem_problem_id_seq"', 36, true);
          public          postgres    false    228            F           0    0    Submission_submission_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."Submission_submission_id_seq"', 10, true);
          public          postgres    false    230            G           0    0    Tag_tag_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Tag_tag_id_seq"', 224, true);
          public          postgres    false    231            H           0    0    UserContest_user_contest_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."UserContest_user_contest_id_seq"', 10, true);
          public          postgres    false    223            I           0    0    UserProblem_user_problem_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."UserProblem_user_problem_id_seq"', 10, true);
          public          postgres    false    232            J           0    0    User_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."User_id_seq"', 222, true);
          public          postgres    false    215            K           0    0    comments_comment_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.comments_comment_id_seq', 161, true);
          public          postgres    false    240            L           0    0    editorials_editorial_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.editorials_editorial_id_seq', 31, true);
          public          postgres    false    241            p           2606    32824    blogs Blog_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT "Blog_pkey" PRIMARY KEY (blog_id);
 ;   ALTER TABLE ONLY public.blogs DROP CONSTRAINT "Blog_pkey";
       public            postgres    false    234            h           2606    24648    contesttag ContestTag_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.contesttag
    ADD CONSTRAINT "ContestTag_pkey" PRIMARY KEY (contest_tag_id);
 F   ALTER TABLE ONLY public.contesttag DROP CONSTRAINT "ContestTag_pkey";
       public            postgres    false    221            f           2606    24643    contests Contest_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.contests
    ADD CONSTRAINT "Contest_pkey" PRIMARY KEY (contest_id);
 A   ALTER TABLE ONLY public.contests DROP CONSTRAINT "Contest_pkey";
       public            postgres    false    220            j           2606    24653    problemtag ProblemTag_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.problemtag
    ADD CONSTRAINT "ProblemTag_pkey" PRIMARY KEY (problem_tag_id);
 F   ALTER TABLE ONLY public.problemtag DROP CONSTRAINT "ProblemTag_pkey";
       public            postgres    false    222            `           2606    24628    problems Problem_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.problems
    ADD CONSTRAINT "Problem_pkey" PRIMARY KEY (problem_id);
 A   ALTER TABLE ONLY public.problems DROP CONSTRAINT "Problem_pkey";
       public            postgres    false    217            d           2606    24638    submissions Submission_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT "Submission_pkey" PRIMARY KEY (submission_id);
 G   ALTER TABLE ONLY public.submissions DROP CONSTRAINT "Submission_pkey";
       public            postgres    false    219            b           2606    24633    tags Tag_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT "Tag_pkey" PRIMARY KEY (tag_id);
 9   ALTER TABLE ONLY public.tags DROP CONSTRAINT "Tag_pkey";
       public            postgres    false    218            l           2606    24659    usercontest UserContest_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.usercontest
    ADD CONSTRAINT "UserContest_pkey" PRIMARY KEY (user_contest_id);
 H   ALTER TABLE ONLY public.usercontest DROP CONSTRAINT "UserContest_pkey";
       public            postgres    false    224            n           2606    24664    userproblem UserProblem_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.userproblem
    ADD CONSTRAINT "UserProblem_pkey" PRIMARY KEY (user_problem_id);
 H   ALTER TABLE ONLY public.userproblem DROP CONSTRAINT "UserProblem_pkey";
       public            postgres    false    225            ^           2606    24619    users User_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (user_id);
 ;   ALTER TABLE ONLY public.users DROP CONSTRAINT "User_pkey";
       public            postgres    false    216            r           2606    49195    comments comments_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (comment_id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    235            v           2606    49224    editorials editorials_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.editorials
    ADD CONSTRAINT editorials_pkey PRIMARY KEY (editorial_id);
 D   ALTER TABLE ONLY public.editorials DROP CONSTRAINT editorials_pkey;
       public            postgres    false    237            t           2606    49212    gym gym_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.gym
    ADD CONSTRAINT gym_pkey PRIMARY KEY (gym_id);
 6   ALTER TABLE ONLY public.gym DROP CONSTRAINT gym_pkey;
       public            postgres    false    236            x           2606    49244    gymproblem gymproblem_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.gymproblem
    ADD CONSTRAINT gymproblem_pkey PRIMARY KEY (gym_problem_id);
 D   ALTER TABLE ONLY public.gymproblem DROP CONSTRAINT gymproblem_pkey;
       public            postgres    false    238            z           2606    49259    usercomment usercomment_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.usercomment
    ADD CONSTRAINT usercomment_pkey PRIMARY KEY (user_comment_id);
 F   ALTER TABLE ONLY public.usercomment DROP CONSTRAINT usercomment_pkey;
       public            postgres    false    239            �           2606    49265    usercomment comment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usercomment
    ADD CONSTRAINT comment_id_fkey FOREIGN KEY (comment_id) REFERENCES public.comments(comment_id);
 E   ALTER TABLE ONLY public.usercomment DROP CONSTRAINT comment_id_fkey;
       public          postgres    false    235    4722    239            ~           2606    24672    contesttag contest_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contesttag
    ADD CONSTRAINT contest_id_fkey FOREIGN KEY (contest_id) REFERENCES public.contests(contest_id) NOT VALID;
 D   ALTER TABLE ONLY public.contesttag DROP CONSTRAINT contest_id_fkey;
       public          postgres    false    4710    220    221            {           2606    24702    submissions contest_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT contest_id_fkey FOREIGN KEY (contest_id) REFERENCES public.contests(contest_id) NOT VALID;
 E   ALTER TABLE ONLY public.submissions DROP CONSTRAINT contest_id_fkey;
       public          postgres    false    4710    219    220            �           2606    24712    usercontest contest_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usercontest
    ADD CONSTRAINT contest_id_fkey FOREIGN KEY (contest_id) REFERENCES public.contests(contest_id) NOT VALID;
 E   ALTER TABLE ONLY public.usercontest DROP CONSTRAINT contest_id_fkey;
       public          postgres    false    220    4710    224            �           2606    49196    comments contest_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT contest_id_fkey FOREIGN KEY (contest_id) REFERENCES public.contests(contest_id);
 B   ALTER TABLE ONLY public.comments DROP CONSTRAINT contest_id_fkey;
       public          postgres    false    220    235    4710            �           2606    49250    gymproblem gym_id_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY public.gymproblem
    ADD CONSTRAINT gym_id_fkey FOREIGN KEY (gym_id) REFERENCES public.gym(gym_id);
 @   ALTER TABLE ONLY public.gymproblem DROP CONSTRAINT gym_id_fkey;
       public          postgres    false    4724    238    236            �           2606    24682    problemtag problem_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.problemtag
    ADD CONSTRAINT problem_id_fkey FOREIGN KEY (problem_id) REFERENCES public.problems(problem_id) NOT VALID;
 D   ALTER TABLE ONLY public.problemtag DROP CONSTRAINT problem_id_fkey;
       public          postgres    false    4704    217    222            |           2606    24697    submissions problem_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT problem_id_fkey FOREIGN KEY (problem_id) REFERENCES public.problems(problem_id) NOT VALID;
 E   ALTER TABLE ONLY public.submissions DROP CONSTRAINT problem_id_fkey;
       public          postgres    false    4704    217    219            �           2606    24722    userproblem problem_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.userproblem
    ADD CONSTRAINT problem_id_fkey FOREIGN KEY (problem_id) REFERENCES public.problems(problem_id) NOT VALID;
 E   ALTER TABLE ONLY public.userproblem DROP CONSTRAINT problem_id_fkey;
       public          postgres    false    4704    217    225            �           2606    49201    comments problem_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT problem_id_fkey FOREIGN KEY (problem_id) REFERENCES public.problems(problem_id);
 B   ALTER TABLE ONLY public.comments DROP CONSTRAINT problem_id_fkey;
       public          postgres    false    235    4704    217            �           2606    49213    gym problem_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gym
    ADD CONSTRAINT problem_id_fkey FOREIGN KEY (problem_id) REFERENCES public.problems(problem_id);
 =   ALTER TABLE ONLY public.gym DROP CONSTRAINT problem_id_fkey;
       public          postgres    false    4704    236    217            �           2606    49245    gymproblem problem_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gymproblem
    ADD CONSTRAINT problem_id_fkey FOREIGN KEY (problem_id) REFERENCES public.problems(problem_id);
 D   ALTER TABLE ONLY public.gymproblem DROP CONSTRAINT problem_id_fkey;
       public          postgres    false    238    4704    217            �           2606    57381    editorials problem_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.editorials
    ADD CONSTRAINT problem_id_fkey FOREIGN KEY (problem_id) REFERENCES public.problems(problem_id) NOT VALID;
 D   ALTER TABLE ONLY public.editorials DROP CONSTRAINT problem_id_fkey;
       public          postgres    false    217    4704    237                       2606    24677    contesttag tag_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contesttag
    ADD CONSTRAINT tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tags(tag_id) NOT VALID;
 @   ALTER TABLE ONLY public.contesttag DROP CONSTRAINT tag_id_fkey;
       public          postgres    false    221    4706    218            �           2606    24687    problemtag tag_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.problemtag
    ADD CONSTRAINT tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tags(tag_id) NOT VALID;
 @   ALTER TABLE ONLY public.problemtag DROP CONSTRAINT tag_id_fkey;
       public          postgres    false    222    4706    218            }           2606    24692    submissions user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) NOT VALID;
 B   ALTER TABLE ONLY public.submissions DROP CONSTRAINT user_id_fkey;
       public          postgres    false    216    219    4702            �           2606    24707    usercontest user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usercontest
    ADD CONSTRAINT user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) NOT VALID;
 B   ALTER TABLE ONLY public.usercontest DROP CONSTRAINT user_id_fkey;
       public          postgres    false    224    4702    216            �           2606    24717    userproblem user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.userproblem
    ADD CONSTRAINT user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) NOT VALID;
 B   ALTER TABLE ONLY public.userproblem DROP CONSTRAINT user_id_fkey;
       public          postgres    false    216    225    4702            �           2606    32825    blogs user_id_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 <   ALTER TABLE ONLY public.blogs DROP CONSTRAINT user_id_fkey;
       public          postgres    false    4702    216    234            �           2606    49260    usercomment user_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.usercomment
    ADD CONSTRAINT user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 B   ALTER TABLE ONLY public.usercomment DROP CONSTRAINT user_id_fkey;
       public          postgres    false    4702    216    239            �           2606    57386    editorials user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.editorials
    ADD CONSTRAINT user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) NOT VALID;
 A   ALTER TABLE ONLY public.editorials DROP CONSTRAINT user_id_fkey;
       public          postgres    false    216    4702    237            2   �  x��YMwԸ];�B˙s�� ��:��md[�-ږ�dw����VI�ew�y+B,���֭�ً�������rڬ���][s)t�4�xp��x��Nܪ��l���>ҏ�k��v.^��+'�����*/u��Z{Qغqj���[%V�.ձ�վ�[�,����*�F��?��-�ʢ����Y�TF,�l;�<d��T���F�:B&���d'�β�*����i�wkJr)�~5�e�۵eK�>8eJ�-Z���F�%�w����ҕG몒>=B|9�'�`�6�%l���x��tִG��d� aC��bÿd�meW��X�ʭX?V*X,�~-�^�R�t++Q�/d�`�iv��uvcK%��%��f^�E�`%=�Q���4�u�\�B���,�a�ҵdfA��(�ʬ)t|�)Y�\W��ݣ�bG�9W��h�q���#����!$�*z R���j�K�M�ǽT5�ʗ�y]7Ŋ�Q�.�p�}�[�(�nZ����˭^ɶ��[�����'��Υ�PԤ������j��(�������1I����"IV+j��L{Q��'c�u��W�;������<���>"xcV�C���3��Iv+[)%n����r��q�{��Y��٭����C��$�Gi��4��!�IH��V�NV�_�ךC�g��F���
O����}?���/�T��W��jC�NߴA׊�.t�0�	�)uA��γ���b�Bߪ�[��*�?R�*�A�ᣵ�� �R({)�\��	&�z5T���5�=���f��e��6����u Դz
m�	���.����ɛ7�ۮ�� f�f��_b�ת��N���X$��`	������^F���%��,z�wI�kYUʬ��>J �m�d/�jG���=��l���`cG��®7�=�
�bD�MS!��Lx�jx�}Ci�@8�:[�Z����K�Ŀ�:��a �"N�i%l��"J�m��4�ʏ�;��{昍8\ت��%�l��Ͳ���
i�� $PC'��f8�g>8{���A��F��WO�x+�R\��</n�t�������S-{������h��k��v�B:p���w~��Z��4)����hr[e갶�{����eG�M�LQe�>x|x�]���W�:]���H˪�+���$��O��I>��fE��
�J� �P��ȥl��}p4�3BG_urEmҒ_��RZ��Ŕd��:�=-��0�Tе��W�/P��.G�T�9��Cr���c���m0Xhʉ��DP�쐉����p��5��)�y5f���x[� �}������=��+xE��QqcŨ�CP�Dϳ�Д'���A ����%��7�Zt5�G:�<s��+aý'<��'�G��fm
�<'Wȋr��~ iV=��� �6k�+⋪�i�p��Q���S�=~��r��]��	�5�e�r�g<�?\�)8�ʽ��q���ѱ��Q�gl'զ��� q���DP�1�����Qa2(gZ�Ak$��C�;t�W�߀/^\dW��}�"���࠙A��{�d1A�i��̅�!K���_�Էp�^���n</�^��%S�0 @�|ѯ�����E����gϲ��v��u��)�Lh���K��5�$��(XZ1H�:��F%:>��	_�shO�+�	0"G��G'm��XϚe� ��8A�$ҪR��xL3s �S�*_�f�9�Z=R!�;O�O	���`c{�e��]�$D�_{��l#�M����81\�i)�5��Z�}��Z%3��_1����|D�)����$D	i�$�fvp~y�:�O�{�$зf-q�v�$'�q���
y90	Y�	(D�DhzY�n`� ��ӑ{�������!�p1$x�".y�������%����ґ��}$�hd��	h��)-���!�4���ȵ�S��Zz�����ŷ�F*tc�(/gyC)L[���Mo�2j	�<�k	���G��q���$;��s"�/�O6׸d�4��ጂs��RI�(\���:��?�L��B3���4K��v0
ر$�]�٘MHj���CF�<��f9*���C
 ���%�W����E;���؄-̄���@'��d�3�O%��Tf���d��q�����d�X*U���|��;�T2dHV+y`�?i��� v'�k
�؋ȑ��N������`������oe�1�cf,�/�	�1�g��\A�p��a��G���Y�}&��_y/?'��ޱ� Io�9cQ�^!� }�F�P��5r.��akf�w�xE�@S��?G��?L'7�wb?H������X�)#�2�"��bl�_h���UR��]c�FO��&����I�w���xL<$B1�>�t��G� �Q�y��h�;��t����<.;�Y,Qu
�6ϲ�v�s�;��Yg7�5}ǳ�0`���]*
YG!u8��)g��J��Kl�� y�����6�Rڗ�r�5V�(����Ca2�y0"U�C��?_dW+�մu\�[�C;e�|�ްe\��_'C� f�:���¡����ɥI<CK� :�e�	�&�*�K����|+������E�_b�2b:��TJ�'�w����I��ͤ� �����7�2�<1*Iܓ��Z�㺆7W<M����!?�`ͬn�u=�&z�bm?�����<ɮ+[lPs���n0�⒣4 h2�M�f0;�%���Kg(�r�ԤY�q����I��dK�J�,ziK�,��َm�~Mn�Q꯯����f�?�۶�Q��-��U�-:}��f��C��k9�c^D�U"q�/c�R�M����}T�k0��w��4��&z�W�_V"�@:�9��5�V��ir*���E\M��[��{�����d�Ӈ�������q�4�gpH��4�?���Ҍww>�6j�����o��{|pp�?̱�      3   �  x���K��6������3�HI~ݒ,6Y`�=�B˴�X��$eG�>Ňd{ǋ��G����5�s��ѳ����^�<�eY������u��t��Ot?8�Jat���ݒ�|W�Q�9t�CU�V�h[�kI�����{�\�Q�]3X%���;jnH�k��K#imĹ��Wa��Ni��5E�2�
�V�èE�*/����UE�b��8h�V;D[�K����'L�*tB+��^RgTu��:y��Ooȇ�oTug4��S��ٮ�]�A6����-�EiaFj�V��N$��
�k�_���e�z�`yF>�4�����p��/�E��@����6�)���'���_�p����8�tsxv�b�0�ɦ��C����~D��o/^f:��aӢ�M�mwe�� $/�|��ȋ4�&�c�lq��.�������O�:I���!���y��V�<A�&[J| \����Go�A�X8���㟭��ڟ�	{�q����]  �%� Z�`gD0��̈́S�< ���v�u�'�_oZz�#������i fF�I�=��'O=1�sb����R�M�<���\�k��%� ����'#.����"�I�H��q�{�!�U/;EA�
��
6Pd�M:��0q���$�6�:E���	�}��h����u)V�-'��xT�B*�����.RH�� ��.A	�;�CLFy���G�'l��$>��e�H,[���(U���� ��$�� R����Ǩ������D�:�T�H
5��U���R'�F�����D��C��N��4��jd��s��t��J�ʜ|�Ea�{#���T�ʐ>�� S���Pz|�nH�+T>^!4���^Z6�Rx�D���`��K�Vz��I�m�����KxK#!?	�ul��i�#�]�fӗ!MӺ���|
�Dx3���!LlژϬ�`�x�܀P���p�-p[�?\���:��:�s��Uu�p����J�-�^.�� ���J      $   �   x�mлj�0����)���^.^H��$)��bl��r�o�l?�3�7m1Ƈ��ir���gx�7�+.�Ӓ��Lf�v]]���j�5_9�S>���CvG�P|$�{��]LOs��fX�g��5��d�m	�k�/1~�A*G(J��J�5X+�%�`���܃��pОWBJ��9)�
�IYC4*�feѰ� ��=D�r�h^)���N���      %      x������ � �      5   :	  x��X]o�F}Š�b�$R,ٖd����i�q��ݗ}�#q�!�m�E���{g�!YI[��$��~�s�p:��VB
cm%��+'�>w�����]��V�2�4ic�}%ꦘ�t��x#ʦ����1{-��ګbb?�dLy��ף�t4=?Kf�[��n-So���hz��l��+�e1�_)W�������e�{�L_��u∮��[��G|>~,~H?{#�k��!�;!r|�ϓ���)Js� K~�uH����/�J�W�K��=䔰.Sn2Z�x5���}��=tM�*7>?:��?߈|��L��� L�\�#}���Zy
�a͓�ѻ\�w"����+m�߆�(�їF:%���2Ԃ2��]*��h����
5��5J�B�7t�xר� g�<������G%5K[+���o$���Z�o-M�+���{0�(N�!�Er΍_[�Lf�:�����wJ|itzG7Q%Q(�Q����v*&�K��'t����~�6�ɕs�]$��Ǣ2�PȆ���ht�5��e�	Ks!k�O�]z���Q�y'���LF/_�O��)I��k���O6Cy�Wuk����s��*Y��T���Z;h��t������q�0�`�fv�d��H���h��h��'����J��m[˽6h�\	�*���e���ڧɫ�eEH�mKY�]j�GQPpuͽ��+<[��6���KBͪ��F]7]P���`w�LOF��>p��a�rY�$
H �܆��}��0�}zH�b�?D�Q��/�z-+��/y/G�xp� x��u��k��Z�&Ӏ��B��:m������K-Y}RL�m�*��H��6�����?m�G��Jlm�D��-5�Q)�OFU�2�`h���%��M�|6���D�^��G3��Yt�o���<T�.^�>�m���뭰�A������]Ǟ�u`k��Ʃ��V�տG(�rE��~�@�W9㔩�Z��ڹm
�M��J�l)�T�H��H���h�6� �i~� �?�H�̮Q���Q9�Z7MTf���	�i�J�C=b��0ٓ�o�.�g�,��}̶���!D�/1Tl��<����P;Y���*#��ަ	\j,@��=n��J��6oqKS���7���|'?z�����n����'���ك]�%5_$X�I���T� ���o�����E���0�\�{�3(˚2Cl�uCm߆J�!�T[�t?ҫ�Iq��������RO��c�؋���g��:F`Vs`�_@_�ԴV�6Y���������ć�k/�u(��(�n��)�B�d-d�!b�jz�B��O�W��lQ�r	�k���k��e�6�	��Š����B�����������o�5^I��7�DD<cr#oC�z"��¨4��h��K-Ѳ�!5���i�mNp��.�Ir�{��rh�sr�;} ��kL(��$�n_�.n�4F�ڦR�)���(ߥ3 Á��K�|�#�x"�9ۤ�YyK����
��Ȯ$��n{�뛏ݓ�w>}\Ƭ��,�	��O����G��79�&�JH�A�۔�9 �������������2 |j�p"ȉ�!�
�=���� fh����;q'ր�l���Ǽ,����o_�%a�%*\1=2R��%`F}��q��o�)����Dy@�xà�m����q@�c
@�Nt��sI�q���N;��EZR����"i���XZ��S��h�,C��Q��NA�	�����֤�Y/{$YI#˔n�rszA��t�Z���������XE;l��Y�Cnq��k>���%�sg/����a�(
<�R�8K����`�'"��ӜN�oi~,p�k뜮�7���я�7�{Թ力��+c�g vS-��RUה��	��g.;�Ov}�����4�G.�p��T�u2K�#��b�$������C��{F:�F����|>`bg�x٨1�)�r���!x��!����!9`��yb�s�8�q���N����C�UTL�7h�l�II臽[�QBW>�m�h:?avqrq�v
�	�E~��sH����O	�Z���}S���(�u�Hf�=
E�VS�r���vX	�`t<%��*�FrP|��dyK�Zv�b�hw�:��s�
'uN	N(J�.����r���]�� e]\$����J�5ȸr��r����u����L�K9��tO�თ,� � �vذ���n_������M��{t��� ]�J@�.�Lւ5 \|=�п�^�$�*�D�X'�����%z�z1M���?�DՆ�FL��,�^�,-��X���ˡs/N���ژ�U}hg��aϪvo������$I���,�      4      x������ � �      6      x������ � �      !   B  x��W�n�8}f���-���K�o��)���-�F�m6��R���!%ٹ�����e8�9s�0��'�`�����Vy���ш�^[�����R���a&��V�[kY:ۙU�� ðyc�5O�ʯt�0���g��M�y"t�w0]I���eJ��Lv�"Y~tt��b�ycW��5��!g�U�ֺ�vd����CN��/�o�
��9�����>�Ht����u�U�+Y��We�+���2��{1��� �åU��cBD+�7+cU=������i�\�"+�N�x�;]v|�mYk�7yk<q��ڵ��M�1��-��}\��}r�ƥq��հgE{8%�؀��O�W2(�ZZH�7u��5ܞݍ�� �e�/
������Y��gU#k�52@/'���ӲvgY�ŋ�])*��!��";!�N�'��+��߫:�E$���:f��/���k_���>��}_xa5�JO�����8�)�*>��	��(��y��E���68O9�З;�R/��4�Q���n�p|�����;�D����t(�S���{g��\h�������u�Wю�`����41�4$a+���`�sy3̖��9 9��K$[ֺ�������������J�F�kDZ�����F|��E����;X�Ʃ�P�a{'kLNY�u�)����:����
��)�!r�~hkČG������s�'`Z���u��Fᒢ��Q.�F��3�������0�=1��vt���ʏ��`3�l�=�M�m��������G��P�UxBCL@�G"�țL���[y㵖�|V	��&ʹ4R��|�v�;�q҄'��HS�U(h���͟�aZ �k�׉Z7N:f:��3��,䐅�xp�'�8?L�����<:�3�I\B��P����M5���M9�y^��/_�B�كY�ȯ��hūk���/�
��
ey�J¾�|G�S�U�c���z��Z�9�y�gM:Y��:?��/7�J��O`�]L�Tڂ��5	t�CTC��#�X�Y�}s�,$A���,u�e�R���N���9?�S�BX��v��Ɖ�f	��aʛ��q�]LҢ1@�c���G����(:?��%��VnÚ�S��Y,Wt2l�l��Iˈ��Y��割�50q��-�����j�T�D��٨�W������O��>��v�&��l&�a2�ߝ|��s�W��fdA%���LҚ�YB|_�T�s�% ����/�G��Y�h �n�|�P�Ç+o��S�]ГNɆ�:17W�V�a����ʙ�I�����E(�}���-�_Pn�aN�T�����s�l�V-�-ys�k����9��}劕M�I�I��:E�[����e��~^¿۬�p'��'�[����(PV�J�������pi�֝��,
��"7(M萼�����-��b��ȵ/P��V�Y�*�"�8�W�m��a�ȯ�p1���z��QE��ȸ��(�&�	蜈Y�lvI�?Cj�9�V�h�dєI\��?z0r2L�h��;��E���F�Q��H0H�7/Ҷ�	��e�W=�z��П	��W�5��DA�\��W���je@�q|C�x��R�p��~BP?�0��vA��S����V �'u4���������x�(_%�ؗ�]��ٹܣG�5�
"M9FNLXs��-�-DA�^��ot\��Ƿ�Ԟ��7;��W;�,�\s3��R��uL�Z��|Ϝ��&_^��7�Qt&5ũ�jd��ˀ� }4��ڕ�W�0;��zI$�m�%ލ��H��Px����0F��Ǵ|S�s&Si���5�x����?k�1B�Z�8��G�b�=?88�Ƃ�      &      x������ � �      #      x������ � �      "   �  x�mT�r�8<��G��-z�G[2�*[)m�T���#+`@0��~��I.�LјG���n�W�n��3ڨPs��.���.xm�	m�nX|�g�Ii�|@��Gm�\�G݅�ҽWm��j��I�X��2��ɪF�b�����Y�Qu�h/�3��ﴳ�2�1W'�9ݪ�<~�/�	���(��� �x`��Z�e+�r�[���1��䔞�
c�B�kN��Gɰja,��pAt2��4�Yrn��L��tϮ���n&�7�����!�S�A�wg3$��1�,������5\߅s��պ�}@pI��U�[�vg���c�&u���סn��Tw���(��ʘ�`�>�1��ׅ�ջPJ��ʼ��堉�z�Zg�A�ʈ�
�g��@���I>��ް�ʊ-T$ʡ�&8{F�B��I���6
.Ϡ��Y�e�8�u��� cg�����j�Z}��$�O^�?
t�@�!���h+V} (qQ��C෡�dJ+�y�+��2�wzТLf�q�M��ĶV!��56Fْ/�^aŞjvЎL�4n���~�:paGe��4g�������iB{�r����y��)��6w,>cۡ�wQ9N�O.�Ԣ��XK:�BAo��!Z��v{�qUOhb:�o�ׯ��u�V�s�zلtA�~�Ǘ��`I���O/��2Hͻ(�aYd���f{�"����� ���[�<�s.�:^4�O�)��U�^oT����3���һ}�~P������d2���J      7      x������ � �      (      x������ � �      )      x������ � �          �  x��Y[v7��W���8�ߏ�H��m�Iǉ���l����~Pfv�u�f���E�����BS�(ԭ[� ?��E�6�;^��H]?������=a���Gۊ���3�C�9kh��ih����a�@��5GxA���_��c���~^�5^�Y����k�r�G)=!�1�-��	�O��	�bE�c�J��D��)��B��k
غl)���sx�$|[���;�-�!���qJ+�&��+��qQ���p��z����"d�)���c?m'B�\S�s`������yd5����f�T�B�%R��_��)�1����
��� a"�Y��kF�n��(y,�(9z_�?� ;P�>�U����xĹ"�&�JT�7B������x�7�	���O0)�79e.ߵ�f!�x�9:�L`������#~���N�vr�ANo(��rM�un+�����w���p��hr�G��qw�� t���aM�H�y��:�RHT(C��l�e%�����gX���!v��h��8A˵h+N5Zth�J�%����>ê���2��d�nk�4�|�-�PV���F��B(�V��:m$@�r���L��Zs��:'%��=[��/@%Ṵ;/�L�=#{�������po�7�{:���oH�`kîֻ�Nт�#�gd���\^V�a�ui�_3��%#�2�F��ɥqXu�X&cڣ�h�'���䱍WǩVw*d��:���m��TSP$�.Y9,%jC��6�!� �c��௖j9�&���T��Lc
o�'&wd���թ$2w��_�o9����s�"�R(\��_r�f�ج��R�$*�t��z��,�A��4@��h�oHy�<?GU�l({�eE�f�A�����϶�'�h!Z�}h�V�>�غ[���P*�f�� ��W|Qdf]�Fa���w�K])dK�"���E�ʁ���h�R����hUN�~���8����X����}y�kZk�$P�/;����mCʣ)�6��9��8	��;K��A8�E.�����O��T2#��I	g��D6�j� P�$��O�D��`��R�ϴ����~'�j���(�i������Ш F_�u������<YFk%��]�9�\�圃a�ArA;�Z�P����h|'J�-�G�H��0�)��`i�7h҂~aq҇��\�E[�
��d���f���5"����+�4xu0K�>#٦�j4��,�f���wOzO�?���׀�e�f"�I�("h��4�)W��oD"�K�+��䭳h���ŷ���O���$����`嬠�_��I���AaPޟ���s��Q�/K��AQ����-�[U)�Ƙ��,�g����cvк�0<,A��@���u[mό���l�#�f��$�ɏ���k�Qg���fy7V�5L��B���h1�R�+�=�� �^?Y�e����.Iss��Xp��tT����M��r�F}�}[<�-��۳�`���'�Ƀ���榫7��`=u�R���-4��uvf�8��3ܼe��}>ėb�&G�����D�i�-����	Ӱ�n
ţ�7�%
lw��m��"�'(��)vy2�{�D����Z�%my~D;�P��ޘ_�Ȳ���.S��b_�,A1�4(�Fc��A���!�����t�N���^/�(�m�M��b^��S	��55��+\đ����FYF�i�u������[ϟ<�Y��æ��[ɷ5ytۻ��2zt� ���M��䫶�m���^8Yr���llOn��wɉ+���\�e������%����ms��$�-���80�Β�� 1k`�j�k�ɫ�J��>{t�/�'꤃1W�[�n�5]��K�x���:��(ǆﶔd�7��\SpP�tM������8�\�E�s�VTk�9u���m�$R�k���9�r���I!��w�ۨ�����\>u��`p��{ʛ�#�����:�-�m*�7_�ē����o��`�2�%6j�}x�\]_����A���W\�+�@�zk�f�[��b��ՆUvŝ'7���)7���_@�6`J.X�#�Jzn4�$4M��g��k�yRmh)�N�P'uz�$�<�)7c�e�����ӁQn��i��V3Mj��N�>�k�dD�2�Ibn�}�������f�A���:IMg��໻�����If{k��77��~��,5�?E��4A0Yn]��a�M�9ۇ���X�Sq����/^���ja�     