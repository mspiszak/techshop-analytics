# techshop-analytics
Zestaw zapytań analitycznych SQL dla fikcyjnego sklepu e-commerce TechShop. Projekt zawiera analizy CLV, trendów przychodów, koszyków, produktów zagrożonych oraz segmentacji RFM.

---

## Wymagania

- PostgreSQL 13+
- Dowolny klient SQL: [DBeaver](https://dbeaver.io/)

---

### Uruchomienie projektu

### 1. Utwórz bazę danych
W DBeaver kliknij prawym przyciskiem na połączenie → **Create New Database**, nadaj nazwę `techshop_analytics`.

### 2. Utwórz tabele
Otwórz plik `schema/01_ddl.sql` w DBeaver, zaznacz całą zawartość (`Ctrl+A`) i wykonaj (`Alt+X`).

### 3. Załaduj dane testowe
Otwórz plik `schema/02_seed_data.sql`, zaznacz całą zawartość (`Ctrl+A`) i wykonaj (`Alt+X`).

### 4. Uruchom zapytanie
Otwórz dowolny plik z folderu `queries/`, zaznacz całą zawartość (`Ctrl+A`) i wykonaj (`Alt+X`).

---

## Opis zapytań

### 01_customer_clv.sql — Top-10 klientów wg CLV
Ranking 10 najbardziej wartościowych klientów na podstawie łącznej wartości zamówień. Uwzględnia tylko zamówienia ze statusem `completed`. Dla każdego klienta oblicza liczbę zamówień, średnią wartość zamówienia, daty pierwszego i ostatniego zamówienia oraz liczbę dni aktywności. Ranking tworzony przez `RANK()`.

---

### 02_monthly_trend.sql — Trend przychodów MoM
Miesięczny przychód z obliczonym wzrostem procentowym względem poprzedniego miesiąca (Month-over-Month) oraz średnią kroczącą z 3 miesięcy. Pozwala zidentyfikować trendy wzrostowe i spadkowe w przychodach.

---

### 03_basket_analysis.sql — Analiza koszyka per kategoria
Analiza struktury sprzedaży w podziale na kategorie produktów. Pokazuje średnią liczbę produktów per zamówienie, średnią wartość zamówienia, łączny przychód oraz udział procentowy każdej kategorii w całkowitym przychodzie.

---

### 04_at_risk_products.sql — Produkty ze spadkiem sprzedaży >30%
Identyfikuje produkty których sprzedaż spadła o ponad 30% w porównaniu do poprzedniego kwartału. Każdy produkt otrzymuje rekomendację: `URGENT` (spadek >50%) lub `WARNING` (spadek 30–50%).

---

### 05_rfm_segmentation.sql — Segmentacja RFM klientów
Dwuczęściowa analiza RFM (Recency, Frequency, Monetary):
- **Część A** — indywidualna tabela RFM z przypisaniem każdego klienta do segmentu (Champions, Loyal Customers, Potential Loyalists, At Risk, Lost)
- **Część B** — podsumowanie segmentów: liczba klientów, średni CLV, średnia liczba zamówień i łączny przychód per segment

### Zrzut ekranu wyniku 05_rfm_segmentation.sql:
<img width="912" height="210" alt="image" src="https://github.com/user-attachments/assets/a31381ff-12f2-4a0d-8574-0aba0aa9d875" />

---

## Tabele

| Tabela | Opis |
|--------|------|
| `customers` | Klienci — dane osobowe, kraj, segment, data rejestracji |
| `products` | Produkty — nazwa, kategoria, cena, stan magazynowy |
| `orders` | Zamówienia — klient, status, wartość, data |
| `order_items` | Pozycje zamówień — produkt, ilość, cena jednostkowa |
