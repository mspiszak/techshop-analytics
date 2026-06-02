-- ============================================================
-- DANE TESTOWE
-- Klienci: ID 6–25 (20 rekordów)
-- Produkty: ID 6–25 (20 rekordów)
-- Zamówienia: ID 6–115 (110 rekordów)
-- Pozycje zamówień: ~190 rekordów
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

-- ============================================================
-- POZYCJE ZAMÓWIEŃ
-- ============================================================
INSERT INTO order_items (order_id, product_id, qty, unit_price) VALUES
    -- Zamówienie 6: iPad Pro 12.9
    ( 6,  6, 1, 5499.00),
    -- Zamówienie 7: Sony WH-1000XM5
    ( 7,  7, 1, 1799.00),
    -- Zamówienie 8: Dell XPS 15
    ( 8,  8, 1, 7299.00),
    -- Zamówienie 9: Apple Watch Series 9
    ( 9,  9, 1, 2199.00),
    -- Zamówienie 10: Kindle Paperwhite (anulowane)
    (10, 10, 1,  699.00),
    -- Zamówienie 11: iPad Pro 12.9 + Logitech MX Keys
    (11,  6, 1, 5499.00),
    (11, 11, 1,  549.00),
    -- Zamówienie 12: Samsung Galaxy Tab S9
    (12, 12, 1, 3499.00),
    -- Zamówienie 13: GoPro Hero 12
    (13, 13, 1, 2199.00),
    -- Zamówienie 14: Lenovo ThinkPad X1
    (14, 16, 1, 8999.00),
    -- Zamówienie 15: Nintendo Switch OLED (zwrot)
    (15, 14, 1, 1599.00),
    -- Zamówienie 16: Sony WH-1000XM5 x2
    (16,  7, 2, 1799.00),
    -- Zamówienie 17: DJI Mini 4 Pro
    (17, 18, 1, 5999.00),
    -- Zamówienie 18: PlayStation 5
    (18, 19, 1, 2799.00),
    -- Zamówienie 19: Bose QuietComfort 45 + Samsung T7 Shield
    (19, 15, 1, 1499.00),
    (19, 25, 1,  699.00),
    -- Zamówienie 20: Xiaomi 14 Pro (anulowane)
    (20, 22, 1, 4299.00),
    -- Zamówienie 21: Huawei MateBook X Pro + Logitech MX Keys
    (21, 21, 1, 6499.00),
    (21, 11, 1,  549.00),
    -- Zamówienie 22: GoPro Hero 12
    (22, 13, 1, 2199.00),
    -- Zamówienie 23: Kindle Paperwhite
    (23, 10, 1,  699.00),
    -- Zamówienie 24: ASUS ROG Phone 8 + Jabra Evolve2 85
    (24, 23, 1, 5299.00),
    (24, 20, 1, 1699.00),
    -- Zamówienie 25: Garmin Fenix 7
    (25, 17, 1, 3299.00),
    -- Zamówienie 26: Lenovo ThinkPad X1
    (26, 16, 1, 8999.00),
    -- Zamówienie 27: Sony WH-1000XM5
    (27,  7, 1, 1799.00),
    -- Zamówienie 28: iPad Pro 12.9
    (28,  6, 1, 5499.00),
    -- Zamówienie 29: GoPro Hero 12 (anulowane)
    (29, 13, 1, 2199.00),
    -- Zamówienie 30: Samsung Galaxy Tab S9 + Logitech MX Keys
    (30, 12, 1, 3499.00),
    (30, 11, 1,  549.00),
    -- Zamówienie 31: PlayStation 5 (zwrot)
    (31, 19, 1, 2799.00),
    -- Zamówienie 32: DJI Mini 4 Pro
    (32, 18, 1, 5999.00),
    -- Zamówienie 33: Logitech MX Keys
    (33, 11, 1,  549.00),
    -- Zamówienie 34: Huawei MateBook X Pro + Jabra Evolve2 85
    (34, 21, 1, 6499.00),
    (34, 20, 1, 1699.00),
    -- Zamówienie 35: Jabra Evolve2 85
    (35, 20, 1, 1699.00),
    -- Zamówienie 36: Xiaomi 14 Pro (anulowane)
    (36, 22, 1, 4299.00),
    -- Zamówienie 37: Apple Watch Series 9 + Logitech MX Keys
    (37,  9, 1, 2199.00),
    (37, 11, 1,  549.00),
    -- Zamówienie 38: Dell XPS 15 + Samsung T7 Shield
    (38,  8, 1, 7299.00),
    (38, 25, 1,  699.00),
    -- Zamówienie 39: Samsung Galaxy Tab S9
    (39, 12, 1, 3499.00),
    -- Zamówienie 40: DJI Mini 4 Pro
    (40, 18, 1, 5999.00),
    -- Zamówienie 41: Bose QuietComfort 45
    (41, 15, 1, 1499.00),
    -- Zamówienie 42: Lenovo ThinkPad X1 (zwrot)
    (42, 16, 1, 8999.00),
    -- Zamówienie 43: PlayStation 5
    (43, 19, 1, 2799.00),
    -- Zamówienie 44: Canon EOS R50 + Samsung T7 Shield
    (44, 24, 1, 4199.00),
    (44, 25, 1,  699.00),
    -- Zamówienie 45: Samsung T7 Shield 2TB
    (45, 25, 1,  699.00),
    -- Zamówienie 46: Xiaomi 14 Pro
    (46, 22, 1, 4299.00),
    -- Zamówienie 47: Apple Watch Series 9
    (47,  9, 1, 2199.00),
    -- Zamówienie 48: Sony WH-1000XM5
    (48,  7, 1, 1799.00),
    -- Zamówienie 49: Samsung Galaxy Tab S9
    (49, 12, 1, 3499.00),
    -- Zamówienie 50: Lenovo ThinkPad X1
    (50, 16, 1, 8999.00),
    -- Zamówienie 51: PlayStation 5 (anulowane)
    (51, 19, 1, 2799.00),
    -- Zamówienie 52: iPad Pro 12.9 (zwrot)
    (52,  6, 1, 5499.00),
    -- Zamówienie 53: Kindle Paperwhite
    (53, 10, 1,  699.00),
    -- Zamówienie 54: Dell XPS 15
    (54,  8, 1, 7299.00),
    -- Zamówienie 55: Bose QuietComfort 45
    (55, 15, 1, 1499.00),
    -- Zamówienie 56: ASUS ROG Phone 8
    (56, 23, 1, 5299.00),
    -- Zamówienie 57: Garmin Fenix 7 (anulowane)
    (57, 17, 1, 3299.00),
    -- Zamówienie 58: PlayStation 5
    (58, 19, 1, 2799.00),
    -- Zamówienie 59: Huawei MateBook X Pro
    (59, 21, 1, 6499.00),
    -- Zamówienie 60: Canon EOS R50
    (60, 24, 1, 4199.00),
    -- Zamówienie 61: Jabra Evolve2 85
    (61, 20, 1, 1699.00),
    -- Zamówienie 62: DJI Mini 4 Pro (zwrot)
    (62, 18, 1, 5999.00),
    -- Zamówienie 63: Logitech MX Keys
    (63, 11, 1,  549.00),
    -- Zamówienie 64: Samsung Galaxy S24
    (64,  4, 1, 3799.00),
    -- Zamówienie 65: Apple Watch Series 9
    (65,  9, 1, 2199.00),
    -- Zamówienie 66: iPhone 15 Pro
    (66,  1, 1, 4999.00),
    -- Zamówienie 67: AirPods Pro
    (67,  3, 1,  999.00),
    -- Zamówienie 68: Lenovo ThinkPad X1 (anulowane)
    (68, 16, 1, 8999.00),
    -- Zamówienie 69: Apple Watch Series 9
    (69,  9, 1, 2199.00),
    -- Zamówienie 70: iPad Pro 12.9
    (70,  6, 1, 5499.00),
    -- Zamówienie 71: Samsung Galaxy S24
    (71,  4, 1, 3799.00),
    -- Zamówienie 72: Kindle Paperwhite
    (72, 10, 1,  699.00),
    -- Zamówienie 73: iPhone 15 Pro (zwrot)
    (73,  1, 1, 4999.00),
    -- Zamówienie 74: Sony WH-1000XM5
    (74,  7, 1, 1799.00),
    -- Zamówienie 75: Dell XPS 15
    (75,  8, 1, 7299.00),
    -- Zamówienie 76: PlayStation 5
    (76, 19, 1, 2799.00),
    -- Zamówienie 77: iPad Pro 12.9
    (77,  6, 1, 5499.00),
    -- Zamówienie 78: Bose QuietComfort 45
    (78, 15, 1, 1499.00),
    -- Zamówienie 79: Garmin Fenix 7 (anulowane)
    (79, 17, 1, 3299.00),
    -- Zamówienie 80: Huawei MateBook X Pro + Samsung T7 Shield
    (80, 21, 1, 6499.00),
    (80, 25, 1,  699.00),
    -- Zamówienie 81: AirPods Pro
    (81,  3, 1,  999.00),
    -- Zamówienie 82: Xiaomi 14 Pro
    (82, 22, 1, 4299.00),
    -- Zamówienie 83: Apple Watch Series 9
    (83,  9, 1, 2199.00),
    -- Zamówienie 84: DJI Mini 4 Pro (zwrot)
    (84, 18, 1, 5999.00),
    -- Zamówienie 85: Lenovo ThinkPad X1 + Samsung T7 Shield
    (85, 16, 1, 8999.00),
    (85, 25, 1,  699.00),
    -- Zamówienie 86: Jabra Evolve2 85
    (86, 20, 1, 1699.00),
    -- Zamówienie 87: Samsung Galaxy Tab S9 (anulowane)
    (87, 12, 1, 3499.00),
    -- Zamówienie 88: Canon EOS R50 + Samsung T7 Shield
    (88, 24, 1, 4199.00),
    (88, 25, 1,  699.00),
    -- Zamówienie 89: PlayStation 5
    (89, 19, 1, 2799.00),
    -- Zamówienie 90: Logitech MX Keys
    (90, 11, 1,  549.00),
    -- Zamówienie 91: DJI Mini 4 Pro
    (91, 18, 1, 5999.00),
    -- Zamówienie 92: Sony WH-1000XM5 (zwrot)
    (92,  7, 1, 1799.00),
    -- Zamówienie 93: Garmin Fenix 7
    (93, 17, 1, 3299.00),
    -- Zamówienie 94: iPhone 15 Pro
    (94,  1, 1, 4999.00),
    -- Zamówienie 95: Apple Watch Series 9
    (95,  9, 1, 2199.00),
    -- Zamówienie 96: Huawei MateBook X Pro
    (96, 21, 1, 6499.00),
    -- Zamówienie 97: Nintendo Switch OLED (anulowane)
    (97, 14, 1, 1599.00),
    -- Zamówienie 98: Canon EOS R50
    (98, 24, 1, 4199.00),
    -- Zamówienie 99: ASUS ROG Phone 8
    (99, 23, 1, 5299.00),
    -- Zamówienie 100: Samsung T7 Shield
    (100, 25, 1,  699.00),
    -- Zamówienie 101: Samsung Galaxy S24
    (101,  4, 1, 3799.00),
    -- Zamówienie 102: Lenovo ThinkPad X1 (zwrot)
    (102, 16, 1, 8999.00),
    -- Zamówienie 103: Apple Watch Series 9 + Logitech MX Keys
    (103,  9, 1, 2199.00),
    (103, 11, 1,  549.00),
    -- Zamówienie 104: iPad Pro 12.9
    (104,  6, 1, 5499.00),
    -- Zamówienie 105: Sony WH-1000XM5
    (105,  7, 1, 1799.00),
    -- Zamówienie 106: iPhone 15 Pro (anulowane)
    (106,  1, 1, 4999.00),
    -- Zamówienie 107: Sony WH-1000XM5 x2
    (107,  7, 2, 1799.00),
    -- Zamówienie 108: Dell XPS 15 + Samsung T7 Shield
    (108,  8, 1, 7299.00),
    (108, 25, 1,  699.00),
    -- Zamówienie 109: PlayStation 5
    (109, 19, 1, 2799.00),
    -- Zamówienie 110: AirPods Pro
    (110,  3, 1,  999.00),
    -- Zamówienie 111: ASUS ROG Phone 8 (zwrot)
    (111, 23, 1, 5299.00),
    -- Zamówienie 112: Canon EOS R50
    (112, 24, 1, 4199.00),
    -- Zamówienie 113: Bose QuietComfort 45
    (113, 15, 1, 1499.00),
    -- Zamówienie 114: Huawei MateBook X Pro (anulowane)
    (114, 21, 1, 6499.00),
    -- Zamówienie 115: Apple Watch Series 9
    (115,  9, 1, 2199.00);
