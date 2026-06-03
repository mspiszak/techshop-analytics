-- ============================================================
-- DANE TESTOWE
-- Klienci: ID 6–25 (20 rekordów)
-- Produkty: ID 6–25 (20 rekordów)
-- Zamówienia: ID 6–145 (140 rekordów)
-- ============================================================

-- ============================================================
-- KLIENCI
-- ============================================================
INSERT INTO customers (email, full_name, country, segment, created_at) VALUES
    ('piotr.wisnewski@gmail.com',     'Piotr Wiśniewski',    'PL', 'regular', NOW() - INTERVAL '54 days'),
    ('sophie.martin@orange.fr',       'Sophie Martin',        'FR', 'vip',     NOW() - INTERVAL '31 days'),
    ('luca.rossi@libero.it',          'Luca Rossi',           'IT', 'new',     NOW() - INTERVAL '47 days'),
    ('ingrid.larsen@hotmail.no',      'Ingrid Larsen',        'NO', 'regular', NOW() - INTERVAL '82 days'),
    ('carlos.fernandez@gmail.com',    'Carlos Fernández',     'ES', 'vip',     NOW() - INTERVAL '215 days'),
    ('agnieszka.dabrowska@wp.pl',     'Agnieszka Dąbrowska',  'PL', 'new',     NOW() - INTERVAL '18 days'),
    ('oliver.brown@yahoo.co.uk',      'Oliver Brown',         'GB', 'regular', NOW() - INTERVAL '73 days'),
    ('franziska.bauer@web.de',        'Franziska Bauer',      'DE', 'vip',     NOW() - INTERVAL '46 days'),
    ('tomasz.kaczmarek@onet.pl',      'Tomasz Kaczmarek',     'PL', 'regular', NOW() - INTERVAL '13 days'),
    ('elena.petrova@mail.ru',         'Elena Petrova',        'RU', 'new',     NOW() - INTERVAL '29 days'),
    ('mikkel.andersen@gmail.com',     'Mikkel Andersen',      'DK', 'regular', NOW() - INTERVAL '90 days'),
    ('isabelle.dubois@sfr.fr',        'Isabelle Dubois',      'FR', 'regular', NOW() - INTERVAL '37 days'),
    ('marco.bianchi@gmail.it',        'Marco Bianchi',        'IT', 'vip',     NOW() - INTERVAL '60 days'),
    ('katarzyna.zielinska@wp.pl',     'Katarzyna Zielińska',  'PL', 'new',     NOW() - INTERVAL '11 days'),
    ('james.wilson@outlook.com',      'James Wilson',         'GB', 'vip',     NOW() - INTERVAL '110 days'),
    ('anna.schmidt@gmx.de',           'Anna Schmidt',         'DE', 'regular', NOW() - INTERVAL '28 days'),
    ('rafael.silva@gmail.com',        'Rafael Silva',         'PT', 'new',     NOW() - INTERVAL '55 days'),
    ('maja.eriksson@gmail.se',        'Maja Eriksson',        'SE', 'regular', NOW() - INTERVAL '49 days'),
    ('dawid.wojcik@poczta.pl',        'Dawid Wójcik',         'PL', 'vip',     NOW() - INTERVAL '76 days'),
    ('chloe.lefevre@gmail.fr',        'Chloé Lefèvre',        'FR', 'new',     NOW() - INTERVAL '33 days');

-- ============================================================
-- PRODUKTY
-- ============================================================
INSERT INTO products (name, category, price, stock_qty) VALUES
    ('iPad Pro 12.9',          'Tablety',      5499.00,  40),
    ('Sony WH-1000XM5',        'Audio',        1799.00, 120),
    ('Dell XPS 15',            'Laptopy',      7299.00,  25),
    ('Apple Watch Series 9',   'Smartwatche',  2199.00,  80),
    ('Kindle Paperwhite',      'Czytniki',      699.00, 300),
    ('Logitech MX Keys',       'Akcesoria',     549.00, 180),
    ('Samsung Galaxy Tab S9',  'Tablety',      3499.00,  55),
    ('GoPro Hero 12',          'Kamery',       2199.00,  60),
    ('Nintendo Switch OLED',   'Gaming',       1599.00, 100),
    ('Bose QuietComfort 45',   'Audio',        1499.00,  90),
    ('Lenovo ThinkPad X1',     'Laptopy',      8999.00,  20),
    ('Garmin Fenix 7',         'Smartwatche',  3299.00,  35),
    ('DJI Mini 4 Pro',         'Drony',        5999.00,  15),
    ('PlayStation 5',          'Gaming',       2799.00,  45),
    ('Jabra Evolve2 85',       'Audio',        1699.00,  70),
    ('Huawei MateBook X Pro',  'Laptopy',      6499.00,  28),
    ('Xiaomi 14 Pro',          'Smartfony',    4299.00,  65),
    ('ASUS ROG Phone 8',       'Smartfony',    5299.00,  30),
    ('Canon EOS R50',          'Aparaty',      4199.00,  22),
    ('Samsung T7 Shield 2TB',  'Dyski',         699.00, 250);

-- ============================================================
-- ZAMÓWIENIA
-- ============================================================
INSERT INTO orders (customer_id, status, total_amount, ordered_at) VALUES
    ( 6, 'completed',  5499.00, NOW() - INTERVAL '90 days'),    -- 6
    ( 6, 'completed',  1799.00, NOW() - INTERVAL '20 days'),    -- 7
    ( 7, 'pending',    7299.00, NOW() - INTERVAL '1 day'),      -- 8
    ( 7, 'completed',  2199.00, NOW() - INTERVAL '55 days'),    -- 9
    ( 8, 'cancelled',   699.00, NOW() - INTERVAL '75 days'),    -- 10
    ( 8, 'completed',  5498.00, NOW() - INTERVAL '10 days'),    -- 11
    ( 9, 'pending',    3499.00, NOW() - INTERVAL '3 days'),     -- 12
    ( 9, 'completed',  2199.00, NOW() - INTERVAL '40 days'),    -- 13
    (10, 'completed',  8999.00, NOW() - INTERVAL '25 days'),    -- 14
    (10, 'refunded',   1599.00, NOW() - INTERVAL '80 days'),    -- 15
    (11, 'completed',  3298.00, NOW() - INTERVAL '50 days'),    -- 16
    (11, 'pending',    5999.00, NOW() - INTERVAL '2 days'),     -- 17
    (12, 'completed',  2799.00, NOW() - INTERVAL '35 days'),    -- 18
    (12, 'completed',  1498.00, NOW() - INTERVAL '15 days'),    -- 19
    (13, 'cancelled',  4299.00, NOW() - INTERVAL '70 days'),    -- 20
    (13, 'completed',  6498.00, NOW() - INTERVAL '28 days'),    -- 21
    (14, 'completed',  2199.00, NOW() - INTERVAL '45 days'),    -- 22
    (14, 'pending',     699.00, NOW() - INTERVAL '1 day'),      -- 23
    (15, 'completed',  5298.00, NOW() - INTERVAL '60 days'),    -- 24
    (15, 'completed',  3299.00, NOW() - INTERVAL '18 days'),    -- 25
    (16, 'pending',    8999.00, NOW() - INTERVAL '4 days'),     -- 26
    (16, 'completed',  1799.00, NOW() - INTERVAL '32 days'),    -- 27
    (17, 'completed',  5499.00, NOW() - INTERVAL '22 days'),    -- 28
    (17, 'cancelled',  2199.00, NOW() - INTERVAL '90 days'),    -- 29
    (18, 'completed',  3948.00, NOW() - INTERVAL '12 days'),    -- 30
    (18, 'refunded',   2799.00, NOW() - INTERVAL '65 days'),    -- 31
    (19, 'pending',    5999.00, NOW() - INTERVAL '1 day'),      -- 32
    (19, 'completed',   549.00, NOW() - INTERVAL '38 days'),    -- 33
    (20, 'completed',  6498.00, NOW() - INTERVAL '48 days'),    -- 34
    (20, 'completed',  1699.00, NOW() - INTERVAL '9 days'),     -- 35
    (21, 'cancelled',  4299.00, NOW() - INTERVAL '55 days'),    -- 36
    (21, 'completed',  2248.00, NOW() - INTERVAL '17 days'),    -- 37
    (22, 'completed',  7298.00, NOW() - INTERVAL '42 days'),    -- 38
    (22, 'pending',    3499.00, NOW() - INTERVAL '2 days'),     -- 39
    (23, 'completed',  5999.00, NOW() - INTERVAL '30 days'),    -- 40
    (23, 'completed',  1499.00, NOW() - INTERVAL '7 days'),     -- 41
    (24, 'refunded',   8999.00, NOW() - INTERVAL '85 days'),    -- 42
    (24, 'completed',  2799.00, NOW() - INTERVAL '23 days'),    -- 43
    (25, 'pending',    4198.00, NOW() - INTERVAL '3 days'),     -- 44
    (25, 'completed',   699.00, NOW() - INTERVAL '14 days'),    -- 45
    ( 1, 'completed',  4299.00, NOW() - INTERVAL '5 days'),     -- 46
    ( 2, 'completed',  2199.00, NOW() - INTERVAL '110 days'),   -- 47
    ( 3, 'pending',    1799.00, NOW() - INTERVAL '1 day'),      -- 48
    ( 4, 'completed',  3499.00, NOW() - INTERVAL '33 days'),    -- 49
    ( 5, 'completed',  8999.00, NOW() - INTERVAL '19 days'),    -- 50
    ( 5, 'cancelled',  2799.00, NOW() - INTERVAL '95 days'),    -- 51
    ( 1, 'refunded',   5499.00, NOW() - INTERVAL '120 days'),   -- 52
    ( 2, 'pending',     699.00, NOW() - INTERVAL '2 days'),     -- 53
    ( 3, 'completed',  7299.00, NOW() - INTERVAL '44 days'),    -- 54
    ( 4, 'completed',  1499.00, NOW() - INTERVAL '58 days'),    -- 55
    ( 6, 'completed',  5299.00, NOW() - INTERVAL '6 days'),     -- 56
    ( 7, 'cancelled',  3299.00, NOW() - INTERVAL '100 days'),   -- 57
    ( 8, 'completed',  2799.00, NOW() - INTERVAL '27 days'),    -- 58
    ( 9, 'completed',  6499.00, NOW() - INTERVAL '16 days'),    -- 59
    (10, 'pending',    4199.00, NOW() - INTERVAL '3 days'),     -- 60
    (11, 'completed',  1699.00, NOW() - INTERVAL '52 days'),    -- 61
    (12, 'refunded',   5999.00, NOW() - INTERVAL '88 days'),    -- 62
    (13, 'completed',   549.00, NOW() - INTERVAL '11 days'),    -- 63
    (14, 'completed',  3799.00, NOW() - INTERVAL '36 days'),    -- 64
    (15, 'pending',    2199.00, NOW() - INTERVAL '1 day'),      -- 65
    (16, 'completed',  4999.00, NOW() - INTERVAL '24 days'),    -- 66
    (17, 'completed',   999.00, NOW() - INTERVAL '47 days'),    -- 67
    (18, 'cancelled',  8999.00, NOW() - INTERVAL '105 days'),   -- 68
    (19, 'completed',  2199.00, NOW() - INTERVAL '13 days'),    -- 69
    (20, 'completed',  5499.00, NOW() - INTERVAL '29 days'),    -- 70
    (21, 'pending',    3799.00, NOW() - INTERVAL '2 days'),     -- 71
    (22, 'completed',   699.00, NOW() - INTERVAL '62 days'),    -- 72
    (23, 'refunded',   4999.00, NOW() - INTERVAL '77 days'),    -- 73
    (24, 'completed',  1799.00, NOW() - INTERVAL '8 days'),     -- 74
    (25, 'completed',  7299.00, NOW() - INTERVAL '41 days'),    -- 75
    ( 6, 'completed',  2799.00, NOW() - INTERVAL '53 days'),    -- 76
    ( 7, 'pending',    5499.00, NOW() - INTERVAL '1 day'),      -- 77
    ( 8, 'completed',  1499.00, NOW() - INTERVAL '37 days'),    -- 78
    ( 9, 'cancelled',  3299.00, NOW() - INTERVAL '92 days'),    -- 79
    (10, 'completed',  6498.00, NOW() - INTERVAL '21 days'),    -- 80
    (11, 'completed',   999.00, NOW() - INTERVAL '69 days'),    -- 81
    (12, 'pending',    4299.00, NOW() - INTERVAL '4 days'),     -- 82
    (13, 'completed',  2199.00, NOW() - INTERVAL '15 days'),    -- 83
    (14, 'refunded',   5999.00, NOW() - INTERVAL '83 days'),    -- 84
    (15, 'completed',  8998.00, NOW() - INTERVAL '31 days'),    -- 85
    (16, 'completed',  1699.00, NOW() - INTERVAL '56 days'),    -- 86
    (17, 'cancelled',  3499.00, NOW() - INTERVAL '98 days'),    -- 87
    (18, 'completed',  4198.00, NOW() - INTERVAL '18 days'),    -- 88
    (19, 'pending',    2799.00, NOW() - INTERVAL '2 days'),     -- 89
    (20, 'completed',   549.00, NOW() - INTERVAL '43 days'),    -- 90
    (21, 'completed',  5999.00, NOW() - INTERVAL '26 days'),    -- 91
    (22, 'refunded',   1799.00, NOW() - INTERVAL '74 days'),    -- 92
    (23, 'completed',  3299.00, NOW() - INTERVAL '10 days'),    -- 93
    (24, 'pending',    4999.00, NOW() - INTERVAL '1 day'),      -- 94
    (25, 'completed',  2199.00, NOW() - INTERVAL '49 days'),    -- 95
    ( 1, 'completed',  6499.00, NOW() - INTERVAL '34 days'),    -- 96
    ( 2, 'cancelled',  1599.00, NOW() - INTERVAL '115 days'),   -- 97
    ( 3, 'completed',  4199.00, NOW() - INTERVAL '22 days'),    -- 98
    ( 4, 'pending',    5299.00, NOW() - INTERVAL '3 days'),     -- 99
    ( 5, 'completed',   699.00, NOW() - INTERVAL '57 days'),    -- 100
    ( 6, 'completed',  3799.00, NOW() - INTERVAL '14 days'),    -- 101
    ( 7, 'refunded',   8999.00, NOW() - INTERVAL '108 days'),   -- 102
    ( 8, 'completed',  2248.00, NOW() - INTERVAL '39 days'),    -- 103
    ( 9, 'pending',    5499.00, NOW() - INTERVAL '2 days'),     -- 104
    (10, 'completed',  1799.00, NOW() - INTERVAL '66 days'),    -- 105
    (11, 'cancelled',  4999.00, NOW() - INTERVAL '87 days'),    -- 106
    (12, 'completed',  3298.00, NOW() - INTERVAL '17 days'),    -- 107
    (13, 'completed',  7298.00, NOW() - INTERVAL '46 days'),    -- 108
    (14, 'pending',    2799.00, NOW() - INTERVAL '1 day'),      -- 109
    (15, 'completed',   999.00, NOW() - INTERVAL '72 days'),    -- 110
    (16, 'refunded',   5299.00, NOW() - INTERVAL '91 days'),    -- 111
    (17, 'completed',  4199.00, NOW() - INTERVAL '28 days'),    -- 112
    (18, 'completed',  1499.00, NOW() - INTERVAL '11 days'),    -- 113
    (19, 'cancelled',  6499.00, NOW() - INTERVAL '103 days'),   -- 114
    (20, 'completed',  2199.00, NOW() - INTERVAL '20 days');    -- 115
    ( 1, 'completed', 5499.00, NOW() - INTERVAL '180 days'),   -- 116
    ( 2, 'completed', 7299.00, NOW() - INTERVAL '185 days'),   -- 117
    ( 3, 'completed', 2199.00, NOW() - INTERVAL '170 days'),   -- 118
    ( 4, 'completed', 8999.00, NOW() - INTERVAL '175 days'),   -- 119
    ( 5, 'completed', 1799.00, NOW() - INTERVAL '160 days'),   -- 120
    ( 6, 'completed', 3499.00, NOW() - INTERVAL '190 days'),   -- 121
    ( 7, 'completed', 5999.00, NOW() - INTERVAL '165 days'),   -- 122
    ( 8, 'completed', 2799.00, NOW() - INTERVAL '178 days'),   -- 123
    ( 9, 'completed', 1499.00, NOW() - INTERVAL '172 days'),   -- 124
    (10, 'completed', 4199.00, NOW() - INTERVAL '168 days'),   -- 125
    (11, 'completed', 6499.00, NOW() - INTERVAL '183 days'),   -- 126
    (12, 'completed',  699.00, NOW() - INTERVAL '162 days'),   -- 127
    (13, 'completed', 3299.00, NOW() - INTERVAL '176 days'),   -- 128
    (14, 'completed', 5299.00, NOW() - INTERVAL '188 days'),   -- 129
    (15, 'completed', 1699.00, NOW() - INTERVAL '158 days'),   -- 130
    ( 1, 'completed', 8999.00, NOW() - INTERVAL '95 days'),    -- 131
    ( 2, 'completed', 2199.00, NOW() - INTERVAL '100 days'),   -- 132
    ( 3, 'completed', 5499.00, NOW() - INTERVAL '88 days'),    -- 133
    ( 4, 'completed', 1799.00, NOW() - INTERVAL '92 days'),    -- 134
    ( 5, 'completed', 4299.00, NOW() - INTERVAL '85 days'),    -- 135
    ( 6, 'completed', 7299.00, NOW() - INTERVAL '97 days'),    -- 136
    ( 7, 'completed', 3299.00, NOW() - INTERVAL '91 days'),    -- 137
    ( 8, 'completed', 5999.00, NOW() - INTERVAL '86 days'),    -- 138
    ( 9, 'completed', 2799.00, NOW() - INTERVAL '93 days'),    -- 139
    (10, 'completed', 1499.00, NOW() - INTERVAL '89 days'),    -- 140
    (11, 'completed', 4199.00, NOW() - INTERVAL '96 days'),    -- 141
    (12, 'completed', 6499.00, NOW() - INTERVAL '84 days'),    -- 142
    (13, 'completed',  549.00, NOW() - INTERVAL '98 days'),    -- 143
    (14, 'completed', 3799.00, NOW() - INTERVAL '87 days'),    -- 144
    (15, 'completed', 8998.00, NOW() - INTERVAL '94 days');    -- 145

-- ============================================================
-- POZYCJE ZAMÓWIEŃ
-- ============================================================
INSERT INTO order_items (order_id, product_id, qty, unit_price) VALUES
    ( 6,  6, 1, 5499.00),
    ( 7,  7, 1, 1799.00),
    ( 8,  8, 1, 7299.00),
    ( 9,  9, 1, 2199.00),
    (10, 10, 1,  699.00),
    (11,  6, 1, 5499.00),
    (11, 11, 1,  549.00),
    (12, 12, 1, 3499.00),
    (13, 13, 1, 2199.00),
    (14, 16, 1, 8999.00),
    (15, 14, 1, 1599.00),
    (16,  7, 2, 1799.00),
    (17, 18, 1, 5999.00),
    (18, 19, 1, 2799.00),
    (19, 15, 1, 1499.00),
    (19, 25, 1,  699.00),
    (20, 22, 1, 4299.00),
    (21, 21, 1, 6499.00),
    (21, 11, 1,  549.00),
    (22, 13, 1, 2199.00),
    (23, 10, 1,  699.00),
    (24, 23, 1, 5299.00),
    (24, 20, 1, 1699.00),
    (25, 17, 1, 3299.00),
    (26, 16, 1, 8999.00),
    (27,  7, 1, 1799.00),
    (28,  6, 1, 5499.00),
    (29, 13, 1, 2199.00),
    (30, 12, 1, 3499.00),
    (30, 11, 1,  549.00),
    (31, 19, 1, 2799.00),
    (32, 18, 1, 5999.00),
    (33, 11, 1,  549.00),
    (34, 21, 1, 6499.00),
    (34, 20, 1, 1699.00),
    (35, 20, 1, 1699.00),
    (36, 22, 1, 4299.00),
    (37,  9, 1, 2199.00),
    (37, 11, 1,  549.00),
    (38,  8, 1, 7299.00),
    (38, 25, 1,  699.00),
    (39, 12, 1, 3499.00),
    (40, 18, 1, 5999.00),
    (41, 15, 1, 1499.00),
    (42, 16, 1, 8999.00),
    (43, 19, 1, 2799.00),
    (44, 24, 1, 4199.00),
    (44, 25, 1,  699.00),
    (45, 25, 1,  699.00),
    (46, 22, 1, 4299.00),
    (47,  9, 1, 2199.00),
    (48,  7, 1, 1799.00),
    (49, 12, 1, 3499.00),
    (50, 16, 1, 8999.00),
    (51, 19, 1, 2799.00),
    (52,  6, 1, 5499.00),
    (53, 10, 1,  699.00),
    (54,  8, 1, 7299.00),
    (55, 15, 1, 1499.00),
    (56, 23, 1, 5299.00),
    (57, 17, 1, 3299.00),
    (58, 19, 1, 2799.00),
    (59, 21, 1, 6499.00),
    (60, 24, 1, 4199.00),
    (61, 20, 1, 1699.00),
    (62, 18, 1, 5999.00),
    (63, 11, 1,  549.00),
    (64,  4, 1, 3799.00),
    (65,  9, 1, 2199.00),
    (66,  1, 1, 4999.00),
    (67,  3, 1,  999.00),
    (68, 16, 1, 8999.00),
    (69,  9, 1, 2199.00),
    (70,  6, 1, 5499.00),
    (71,  4, 1, 3799.00),
    (72, 10, 1,  699.00),
    (73,  1, 1, 4999.00),
    (74,  7, 1, 1799.00),
    (75,  8, 1, 7299.00),
    (76, 19, 1, 2799.00),
    (77,  6, 1, 5499.00),
    (78, 15, 1, 1499.00),
    (79, 17, 1, 3299.00),
    (80, 21, 1, 6499.00),
    (80, 25, 1,  699.00),
    (81,  3, 1,  999.00),
    (82, 22, 1, 4299.00),
    (83,  9, 1, 2199.00),
    (84, 18, 1, 5999.00),
    (85, 16, 1, 8999.00),
    (85, 25, 1,  699.00),
    (86, 20, 1, 1699.00),
    (87, 12, 1, 3499.00),
    (88, 24, 1, 4199.00),
    (88, 25, 1,  699.00),
    (89, 19, 1, 2799.00),
    (90, 11, 1,  549.00),
    (91, 18, 1, 5999.00),
    (92,  7, 1, 1799.00),
    (93, 17, 1, 3299.00),
    (94,  1, 1, 4999.00),
    (95,  9, 1, 2199.00),
    (96, 21, 1, 6499.00),
    (97, 14, 1, 1599.00),
    (98, 24, 1, 4199.00),
    (99, 23, 1, 5299.00),
    (100, 25, 1,  699.00),
    (101,  4, 1, 3799.00),
    (102, 16, 1, 8999.00),
    (103,  9, 1, 2199.00),
    (103, 11, 1,  549.00),
    (104,  6, 1, 5499.00),
    (105,  7, 1, 1799.00),
    (106,  1, 1, 4999.00),
    (107,  7, 2, 1799.00),
    (108,  8, 1, 7299.00),
    (108, 25, 1,  699.00),
    (109, 19, 1, 2799.00),
    (110,  3, 1,  999.00),
    (111, 23, 1, 5299.00),
    (112, 24, 1, 4199.00),
    (113, 15, 1, 1499.00),
    (114, 21, 1, 6499.00),
    (115,  9, 1, 2199.00);
    (116,  6, 1, 5499.00),
    (117,  8, 1, 7299.00),
    (118,  9, 1, 2199.00),
    (119, 16, 1, 8999.00),
    (120,  7, 1, 1799.00),
    (121, 12, 1, 3499.00),
    (122, 18, 1, 5999.00),
    (123, 19, 1, 2799.00),
    (124, 15, 1, 1499.00),
    (125, 24, 1, 4199.00),
    (126, 21, 1, 6499.00),
    (127, 10, 1,  699.00),
    (128, 17, 1, 3299.00),
    (129, 23, 1, 5299.00),
    (130, 20, 1, 1699.00),
    (131, 16, 1, 8999.00),
    (132,  9, 1, 2199.00),
    (133,  6, 1, 5499.00),
    (134,  7, 1, 1799.00),
    (135, 22, 1, 4299.00),
    (136,  8, 1, 7299.00),
    (137, 17, 1, 3299.00),
    (138, 18, 1, 5999.00),
    (139, 19, 1, 2799.00),
    (140, 15, 1, 1499.00),
    (141, 24, 1, 4199.00),
    (142, 21, 1, 6499.00),
    (143, 11, 1,  549.00),
    (144,  4, 1, 3799.00),
    (145, 16, 1, 8998.00);
