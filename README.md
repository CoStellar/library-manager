# System Zarządzania Biblioteką

## Opis ogólny
Aplikacja została stworzona w celu zarządzania systemem wypożyczania książek poprzez usługę online. Biblioteka specjalizuje się w wypożyczaniu fizycznych egzemplarzy książek. Użytkownicy mają możliwość wypożyczania lub rezerwowania książek online. Po złożeniu zamówienia, książka automatycznie trafia do wypożyczenia użytkownika z najdłuższym możliwym terminem zwrotu. Ponadto użytkownicy otrzymują powiadomienia e-mail dotyczące zrealizowanych rezerwacji. Użytkownicy muszą osobiście odebrać wypożyczone książki, a jeśli tego nie zrobią w ciągu 24 godzin, bibliotekarz ma prawo anulować wypożyczenie. Użytkownicy otrzymują także powiadomienia e-mail dotyczące terminu zwrotu książki. Istnieje opcja przedłużenia terminu zwrotu książki poprzez aplikację. Po upływie terminu zwrotu naliczana jest kara finansowa do momentu zwrotu książki.

## Wymagania Funkcjonalne

### Autentykacja Użytkownika
- Użytkownicy mogą zalogować się do swoich kont za pomocą unikalnych identyfikatorów i haseł.

### Lista Książek
- Użytkownicy mogą przeglądać i wyszukiwać książki dostępne w bibliotece.

### Wypożyczenia i Rezerwacje
- Użytkownicy mogą wypożyczać książki z biblioteki i składać rezerwacje na książki, które obecnie są wypożyczone.
- System monitoruje terminy zwrotu i generuje przypomnienia.
- Terminy wypożyczeń są dostosowywalne przez użytkowników.
- Użytkownicy mogą przedłużyć termin zwrotu książki.

### Rejestracja Użytkowników
- Nowi czytelnicy mogą rejestrować się w bibliotece, podając swoje dane osobowe.
- Bibliotekarze mogą potwierdzać rejestracje użytkowników.

### Opinie i Oceny
- Użytkownicy mogą oceniać książki w skali od 1 do 5 i przeglądać oceny książek.

### Zarządzanie Użytkownikami
- Bibliotekarze mają dostęp do bazy danych użytkowników i mogą aktualizować dane oraz resetować hasła.
- System nakłada rosnące kary finansowe na użytkowników, którzy nie oddają książek na czas.

### Administratorzy i Uprawnienia
- Administratorzy biblioteki mogą zarządzać kontami pracowników i konfigurować aplikację.

## Szczegółowy Opis Działania Aplikacji

### Użytkownik
Po uruchomieniu aplikacji, niezalogowany użytkownik ma dostęp tylko do strony głównej, logowania i rejestracji.
Podczas rejestracji użytkownicy muszą podać e-mail, imię, nazwisko i hasło. Mogą również wybrać rolę: użytkownika, administratora lub bibliotekarza (domyślnie użytkownik). Po rejestracji użytkownicy oczekują na zatwierdzenie konta przez bibliotekarza. Jeśli nie zostaną zatwierdzeni, konto zostanie usunięte, aby zapobiec nieautoryzowanym przydzieleniom ról.
Po udanej weryfikacji użytkownicy mogą zalogować się, uzyskać dostęp do panelu użytkownika, listy książek i zobaczyć swoje wypożyczenia i rezerwacje.
W widoku Panel Użytkownika użytkownicy mogą aktualizować informacje dotyczące swojego konta.
W widoku Moje Wypożyczenia są wyświetlane wszystkie aktualne wypożyczenia wraz z informacjami dotyczącymi terminu zwrotu, naliczonych opłat i opcji przedłużenia. Dodatkowo wyświetlana jest historia wcześniej wypożyczonych i już zwróconych książek.
W widoku Lista Książek użytkownicy widzą tytuły, autorów, gatunki i średnie oceny książek. Pasek wyszukiwania umożliwia znalezienie książek po tytule, autorze lub gatunku.
Kliknięcie wybranej książki przenosi użytkownika do nowego widoku, gdzie podane są szczegółowe informacje dotyczące książki. Użytkownik ma również możliwość oceny książki, ale tylko wtedy, gdy co najmniej raz wypożyczył i zwrócił daną książkę. W przypadku zmiany oceny użytkownik może usunąć swoją ocenę i dodać nową. W drugiej części strony są wszystkie dostępne kopie danej książki. Jeśli kopia jest dostępna, użytkownik może ją wypożyczyć, klikając przycisk "Wypożycz". Następnie przenosi się do nowego widoku, w którym może wybrać datę zwrotu książki. Jeśli żadna z kopii danej książki nie jest dostępna, a użytkownik nie ma aktualnie wypożyczonej żadnej kopii, może zarezerwować książkę, klikając przycisk "Zarezerwuj książkę". Po kliknięciu przycisku użytkownik przechodzi do widoku Moje Rezerwacje.
W widoku Moje Rezerwacje są wyświetlane wszystkie aktualne rezerwacje wraz z podstawowymi informacjami dotyczącymi danej rezerwacji. Użytkownik może anulować niezrealizowaną rezerwację. Wyświetlane są również zrealizowane wcześniej rezerwacje.
W prawym górnym rogu strony użytkownik może się wylogować z dowolnego widoku.

### Bibliotekarz
Użytkownik posiadający rolę bibliotekarza ma dodatkowe funkcje i widoki w porównaniu do zwykłego użytkownika.
Może m.in. przejść do widoku "Użytkownicy Wypożyczający", gdzie są wyświetleni wszyscy użytkownicy z dwoma kolumnami: wypożyczone książki każdego użytkownika i oddane książki. Bibliotekarz może oznaczać książki jako zwrócone po fizycznym oddaniu przez użytkownika. Może także anulować wypożyczenie dowolnego użytkownika. To ostatnie może być używane, na przykład, gdy użytkownik wypożyczy książkę, ale nie odegra jej w ciągu 24 godzin, lub gdy wypożyczalna kopia nie nadaje się do ponownego wypożyczenia. W takim przypadku całe wypożyczenie jest usuwane z bazy danych aplikacji, aby zapobiec ocenianiu książki przez użytkowników, którzy jej nie przeczytali.
W widoku Panel Użytkownika bibliotekarz może zatwierdzać lub usuwać konta użytkowników. Wszyscy zatwierdzeni użytkownicy są wyświetlani w tym samym widoku.
W widoku Lista Książek bibliotekarz ma możliwość dodawania książek i wszystkich związanych z nimi atrybutów.
Po przejściu do widoku wybranej książki bibliotekarz może dodatkowo usunąć książkę (tylko jeśli żadna z kopii nie jest aktualnie wypożyczona), usunąć kopię książki (jeśli kopia nie jest aktualnie wypożyczona), edytować dane książki i dodać kopię książki.

### Administrator
Administrator ma dodatkowe funkcje w porównaniu do zwykłego użytkownika, ale różnią się one od funkcji bibliotekarza.
Administratorzy mogą przede wszystkim edytować dane konta dowolnego użytkownika.

Ten kompleksowy System Zarządzania Biblioteką ma na celu zapewnienie płynnego doświadczenia dla użytkowników, bibliotekarzy i administratorów.
