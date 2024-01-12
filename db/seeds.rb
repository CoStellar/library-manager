# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(
  email: 'admin@biblioteka.com',
  password: 'Admin123',
  username: 'Admin',
  first_name: 'Użytkownik',
  last_name: 'Admin',
  approved: true,
  role: 2  # Admin
)

User.create(
  email: 'bibliotekarz@biblioteka.com',
  password: 'Bibliotekarz123',
  username: 'Bibliotekarz',
  first_name: 'Użytkownik',
  last_name: 'Bibliotekarz',
  approved: true,
  role: 1  # Bibliotekarz
)

User.create(
  email: 'uzytkownik@biblioteka.com',
  password: 'Użytkownik123',
  username: 'Użytkownik',
  first_name: 'Użytkownik',
  last_name: 'Zwyczajny',
  approved: true,
  role: 0  # Zwykły użytkownik
)


Book.create(
  title: 'Pan Lodowego Ogrodu - księga I',
  author: 'Jarosław Grzędowicz',
  genre: 'fantasy',
  isbn: '9788379644964',
  description: 'Władza uzależnia, szczególnie w połączeniu z magią. Wyobraź sobie, że stałeś się bogiem – ktoś miałby cię tego stanu pozbawić?
  Nie liczą się sentymenty, dobro wspólne, misja i przyjaźń.
  Vuko Drakkainen samotnie rusza na ratunek ekspedycji naukowej badającej człekopodobną cywilizację planety Midgaard. Pod żadnym pozorem nie może ingerować w rozwój nieznanej kultury. Trafia na zły czas. Planeta powitała go mgłą i śmiercią. Dalej jest tylko gorzej. Trwa wojna bogów. Giną śmiertelnicy. Odwieczne reguły zostały złamane.
  Księga pierwsza kultowego cyklu, która w jednym roku zgarnęła Zajdla, Nautilusa, Sfinksa i Śląkfę.'
)
Book.create(
  title: 'Gra Endera',
  author: 'Orson Scott Card',
  genre: 'science fiction',
  isbn: '9788378396321',
  description: 'Wobec śmiertelnego zagrożenia nadciągającego z kosmosu Ziemia przygotowuje swoją broń ostatniej nadziei. Jest nią chłopiec, w którym odkryto zalążki niezwykłego geniuszu wojskowego. Czas nagli, a przyszłość dwóch cywilizacji spoczywa w rękach dziecka....'
)
Book.create(
  title: 'Opowieści z Narnii: Lew, czarownica i stara szafa',
  author: ' Clive Staples Lewis',
  genre: 'fantasy',
  isbn: '8372781753',
  description: 'Nieznany świat czeka za drzwiami trzeba je tylko otworzyć. Narnia skuta wiecznym mrozem kraina, która czeka na wyzwolenie. Czworo śmiałków wchodzi przez drzwi szafy do Narnii, świata zniewolonego mocą Białej Czarownicy. I gdy prawie nie ma już nadziei, powrót Wielkiego Lwa Aslana staje się zwiastunem zmian- ale nie za darmo'
)
Book.create(
  title: 'Cmentarz zapomnianych książek: Cień wiatru',
  author: 'Carlos Ruiz Zafón',
  genre: 'literatura piękna',
  isbn: '9788328720848',
  description: 'W letni świt 1945 roku dziesięcioletni Daniel Sempere zostaje zaprowadzony przez ojca, księgarza i antykwariusza, do niezwykłego miejsca w sercu starej Barcelony, które wtajemniczonym znane jest jako Cmentarz Zapomnianych Książek. Zgodnie ze zwyczajem Daniel ma wybrać, kierując się właściwie jedynie intuicją, książkę swego życia. Spośród setek tysięcy tomów wybiera nieznaną sobie powieść "Cień wiatru" niejakiego Juliana Caraxa.
    W letni świt 1945 roku dziesięcioletni Daniel Sempere zostaje zaprowadzony przez ojca, księgarza i antykwariusza, do niezwykłego miejsca w sercu starej Barcelony, które wtajemniczonym znane jest jako Cmentarz Zapomnianych Książek. Zgodnie ze zwyczajem Daniel ma wybrać, kierując się właściwie jedynie intuicją, książkę swego życia. Spośród setek tysięcy tomów wybiera nieznaną sobie powieść "Cień wiatru" niejakiego Juliana Caraxa.
    Zauroczony powieścią i zafascynowany jej autorem Daniel usiłuje odnaleźć inne jego książki i odkryć tajemnicę pisarza, nie podejrzewając nawet, iż zaczyna się największa i najbardziej niebezpieczna przygoda jego życia, która da również początek niezwykłym opowieściom, wielkim namiętnościom, przeklętym i tragicznym miłościom rozgrywającym się w cudownej scenerii Barcelony gotyckiej i renesansowej, secesyjnej i powojennej.'
)
Book.create(
  title: 'Kingsbridge: Niech stanie się światłość',
  author: 'Ken Follett',
  genre: 'powieść historyczna',
  isbn: '9788367759465',
  description: 'Historia poprzedzająca wydarzenia opisane w Filarach Ziemi, osadzona w Anglii u zarania nowej epoki: średniowiecza.
  Jest rok 997 naszej ery, koniec wieków barbarzyństwa. Anglia na zachodzie mierzy się z atakami Walijczyków, a na wschodzie – wikingów. Lokalni przywódcy naginają królewskie zarządzenia do swoich celów, sprzeciwiając się władzy i nie dbając o los prostych ludzi. Ponieważ w kraju nie ma ściśle wytyczonego prawa, króluje chaos.
  W tych burzliwych czasach splatają się losy trójki bohaterów. Życie młodego szkutnika zmienia się w chwili, gdy jego dom zostaje zniszczony przez wikingów, a jego rodzina musi uciekać do miejsca, w którym traktowani są jak intruzi… Pewna kobieta wychodzi za mąż z miłości i płynie z Normandii do Anglii, kraju swojego małżonka. Szybko jednak przekonuje się, że wśród zupełnie innych obyczajów i ludzi stale zaangażowanych w walkę o wpływy musi uważać na każdy swój krok… Mnich marzy o przekształceniu opactwa w centrum nauki, które będzie podziwiane w całej Europie.
  Każde z nich wejdzie w niebezpieczny konflikt z przebiegłym i bezwzględnym biskupem, który złamie każde przykazanie, aby zwiększyć swoją władzę i bogactwo.'
)
Book.create(
  title: 'Silos: Silos',
  author: 'Hugh Howey',
  genre: 'science fiction',
  isbn: '9788365830265',
  description: 'W przyszłości, gdy Ziemia stała się toksycznym pustkowiem, przetrwać zdołała ledwie garstka ludzi, zamieszkujących gigantyczny podziemny silos. Odcięci od świata zewnętrznego, wiodą życie pełne nakazów i zakazów, sekretów i kłamstw. By przeżyć, muszą ściśle przestrzegać pewnych zasad.
  Niektórzy jednak się na to nie godzą. Ci stanowią największe zagrożenie – mają czelność marzyć i śnić, zarażać innych swoim optymizmem. Czeka ich prosta i zabójcza kara: zostaną wypuszczeni na zewnątrz.
  Jules jest jedną z takich osób. Być może już ostatnią.
  „Silos” to niezwykły sukces wydawniczy, który zamienił nieznanego autora, publikującego na własny rachunek w światową gwiazdę literatury science-fiction ze szczytów list bestsellerów New York Timesa. Po wielkim sukcesie wydawniczym „Silosu” prawa do sfilmowania tej niezwykłej powieści zakupił sam Ridley Scott, reżyser takich klasyków jak „Obcy” czy „Łowca androidów”.'
)
Book.create(
  title: 'Blade Runner:  Czy androidy marzą o elektrycznych owcach?',
  author: 'Philip K. Dick',
  genre: 'science fiction',
  isbn: '9788375101317',
  description: '„Co to jest człowiek? To pytanie jest tematem »Blade Runnera« i żeby na nie odpowiedzieć, stworzył Dick człowieka sztucznego... W powieści »Blade Runner« sztuczni ludzie to nie poczciwe roboty Asimova z wmontowanymi bezpiecznikami moralności zwanymi trzema prawami robotyki. Androidy Dicka są groźne, bo są kłamstwem, wyglądają jak ludzie, ale brakuje im człowieczeństwa – poczucia winy, współczucia, sumienia... Łowca zbiegłych androidów Rick Deckard poddaje je testowi na współczucie. Istoty niezdolne do współczucia likwiduje. Tylko co dzieje się z jego współczuciem?”
    – z przedmowy Lecha Jęczmyka
    Książka, na podstawie której Ridley Scott w 1982 nakręcił „Łowcę androidów”. Obejrzawszy ten film, Dick uznał ponoć, że grający tytułowego eksterminatora Harrison Ford dostał zlecenie i na niego...'
)
Book.create(
  title: 'Władca pierścieni: Bractwo pierścienia',
  author: 'John Ronald Reuel Tolkien',
  genre: 'fantasy',
  isbn: '9788382027761',
  description: 'Fabuła książki opisuje przebudzenie się sił zła, które w kolejnych tomach trylogii zagrożą Śródziemiu, oraz przedstawia sielskie życie głównego bohatera, hobbita Frodo, który odziedziczywszy pierścień, staje się częścią wielkiego planu. Wyprawa zainicjowana przez elfy poprowadzi go, wraz z utworzonym Bractwem Pierścienia, w świat pełen niebezpieczeństw. Mały hobbit będzie miał za zadanie przedostać się na Górę Przeznaczenia, by tam, w ogniu wulkanu, zniszczyć groźny artefakt.'
)
Book.create(
  title: 'Hobbit, czyli tam i z powrotem',
  author: 'John Ronald Reuel Tolkien',
  genre: 'fantasy',
  isbn: '9788382027679',
  description: 'Pełne magii i przygód wspaniałe wprowadzenie do "Władcy Pierścieni"
    Bilbo Baggins to hobbit, który lubi wygodne, pozbawione niespodzianek życie, rzadko podróżując dalej niż do swojej piwnicy. Jego błogi spokój zostaje jednak zakłócony, gdy pewnego na jego progu pojawia się czarodziej Gandalf z gromadą krasnoludów, by porwać go na prawdziwą przygodę. Wszyscy wyruszają po wielkie skarby strzeżone przez Smauga Wspaniałego, wielkiego i bardzo niebezpiecznego smoka. Bilbo niechętnie dołącza do ich misji, nie zdając sobie sprawy, że w drodze do Samotnej Góry spotka zarówno magiczny pierścień, jak i przerażające stworzenie zwane Gollumem.'
)
Book.create(
  title: 'Cieplarnia',
  author: 'Brian W. Aldiss',
  genre: 'science fiction',
  isbn: '9788380625990',
  description: 'Ponura, lecz hipnotyzująca wizja przyszłości naszej planety – jedna z najlepszych w całej fantastyce!
  Ziemię, tkwiącą nieruchomo pod palącym światłem umierającego powoli Słońca, pokrywa nieprzebyta dżungla rozrośniętego do planetarnych rozmiarów figowca. Bezlitosną walkę z bogactwem agresywnych, zmutowanych roślinnych form życia przeżyły tylko nieliczne zwierzęta i zdegenerowany, coraz rzadziej występujący człowiek. Czy związek z myślącym grzybem pozwoli mu przetrwać?'
)
Book.create(
  title: 'Helikonia: Wiosna Helikonii',
  author: 'Brian W. Aldiss',
  genre: 'science fiction',
  isbn: '9788389951953',
  description: 'Helikonia to planeta należąca do układu z dwoma gwiazdami, które obiega po długiej, karkołomnej orbicie. Planetą raz rządzi sroga zima, innym razem upalne lato. Niby nic nadzwyczajnego, tylko że te pory roku trwają setki lat, przez wiele pokoleń. Pory roku determinują też życie na Helikonii. Zimą włada nią cywilizacja ancipitów, a latem humanoidów. Obie rasy są do siebie nastawione wrogo i dążą do wyniszczenia przeciwników. Budowanie i upadek cywilizacji śledzą zaś ze stacji Avernus, umieszczonej na orbicie Helikonii, wysłannicy Ziemi.
    Powieść jest laureatką John Campbell Award, British Science Fiction Award, była nominowana do Nebuli i Locusa.'
)
Book.create(
  title: 'Trylogia mgły: Książę Mgły',
  author: 'Carlos Ruiz Zafón',
  genre: 'realizm magiczny',
  isbn: '9788328723177',
  description: '"Rodzina Carverów (trójka dzieci, Max, Alicja, Irina, i ich rodzice) przeprowadza się w roku 1943 do małej osady rybackiej, na wybrzeżu Atlantyku, by zamieszkać w domu, który niegdyś należał do rodziny Fleishmanów. Ich dziewięcioletni syn Jacob utonął w morzu. Od pierwszych dni dzieją się tutaj dziwne rzeczy (Max widzi nocą w ogrodzie clowna i dziwne posągi artystów cyrkowych),ale ważniejsze, że dzieci poznają kilkunastoletniego Rolanda, dzięki któremu mogą to i owo dowiedzieć się o miasteczku (np. historię zatopionego w wodach przybrzeżnych, pod koniec pierwszej wojny, okrętu ""Orfeusz"") i poznać dziadka Rolanda, latarnika Victora Kraya, który opowie im o złym czarowniku znanym jako Cain lub Książę Mgły, chętnie wyświadczającym usługi, ale nigdy za darmo. Coś, co dzieciom wydaje się jeszcze jedną miejscową legendą, szybko okazuje się zatrważającą prawdą.
    ""Musiało upłynąć wiele lat, by Max zdołał wreszcie zapomnieć owe letnie dni, podczas których odkrył, niemal przypadkiem, istnienie magii""."'
)
Book.create(
  title: 'Balladyna',
  author: 'Juliusz Słowacki',
  genre: 'dramat',
  isbn: '9788328076273',
  description: 'Balladyna to dramatu w pięciu aktach, napisany przez Juliusza Słowackiego w epoce romantyzmu. To opowieść o żądzy władzy i rywalizacji. Imię głównej bohaterki – Balladyna – nawiązuje do gatunku literackiego, jakim jest ballada, w której pojawiają się motywy fantastyczne i elementy wierzeń ludowych.
    Balladyna od lat znajduje się w kanonie lektur szkolnych omawianych na lekcjach języka polskiego.'
)
Book.create(
  title: 'I nie było już nikogo',
  author: 'Agatha Cristie',
  genre: 'kryminał',
  isbn: '9788327150363',
  description: 'Tajemniczy gospodarz zaprasza do domu na wyspie dziesięć osób. Gdy dwie z nich giną, goście zdają sobie sprawę, że to, co początkowo uważali za nieszczęśliwy wypadek, jest dziełem zabójcy. Postanawiają odkryć jego tożsamość, ale okazuje się, że… nikt nie ma alibi.
    Odizolowani od społeczeństwa, niezdolni do opuszczenia miejsca pobytu, umierają jeden po drugim w sposób opisany w dziecięcej rymowance, którą wywieszono w ich pokojach.'
)
Book.create(
  title: 'Ania z Zielonego Wzgórza',
  author: 'Lucy Maud Montgomery',
  genre: 'literatura dziecięca',
  isbn: '9788308041314',
  description: 'Gdy Maryla i Mateusz Cuthbertowie decydują się przygarnąć chłopca z sierocińca, nie mają pojęcia, że od tej pory ich życie wypełnią niespodzianki. Zaczyna się od tego, że na Zielone Wzgórze w Avonlea przybywa nie chłopiec, lecz jedenastoletnia rudowłosa dziewczynka. Ania to osóbka o nieprzeciętnym temperamencie i wybujałej fantazji. Jej obecność wywróci życie mieszkańców Avonlea do góry nogami, a Zielone Wzgórze nigdy nie będzie takie jak dawniej.'
)
Book.create(
  title: 'Karolcia',
  author: 'Maria Krüger',
  genre: 'literatura dziecięca',
  isbn: '9788371624575',
  description: 'Najpopularniejszą polską powieścią przygodową dla dzieci 7-9 letnich jest urocza książka Marii Kruger zatytułowana Karolcia. Powieść jest wpisana do podstawy programowej Ministerstwa Edukacji Narodowej jako lektura obowiązkowa dla uczniów klasy drugiej szkoły podstawowej.
    Książka opowiada o przygodach ośmioletniej Karolcia i jej rówieśnika i przyjaciela Piotrusia. Karolcia znajduje cudowny koralik, który ma tę czarodziejską właściwość, że spełnia każde życzenie dziewczynki. Kiedy Karolcia i Piotr odkrywają magiczne działanie zaczarowanego koralika, decydują, że wykorzystają ją by pomagać innym, uczynić świat lepszym, a także… żeby spełnić swoje najśmielsze marzenia. Ale rzeczywistość szybko ich zaskoczy. Pochopnie wypowiadając nieprzemyślane do końca życzenia, Karolcia prowokuje liczne kłopotliwe sytuacje – a to komiczne, a to niebezpieczne, takie, z których bardzo trudno wybrnąć. Na dodatek, czarowny koralik przyciąga niebezpiecznego intruza – podstępną i pomysłową czarownicę Filomenę. Dzieciom nie będzie łatwo poradzić sobie z jej zasadzkami.
    Emocjonujące, często zabawne przygody Karolci i Piotra dostarczą dzieciom nie tylko rozrywki. Dla bohaterów powieści - a także dla czytelników, perypetie z czarodziejskim koralikiem stają się prawdziwą lekcją życia; uczą ich odpowiedzialności za decyzje i czyny, a także sztuki planowania i przewidywania skutków własnych działań.
    Pełna humoru i mądrości powieść Marii Kruger cieszy się od pierwszego wydania – czyli już od ponad pięćdziesięciu lat, niemalejącą popularnością. Dla pokoleń młodych czytelników Karolcia jest jedną z najlepiej rozpoznawalnych postaci literackich. Stałą się ikoną polskiej kultury dziecięcej, do tego stopnia, że niejedna młoda mama nazwała swoją córeczkę Karolcią. Na prośbę tysięcy wielbicieli Karolci, Maria Kruger napisała w 1970 roku drugą część przygód swojej bohaterki, Witaj Karolciu! Ta nowa książka dla dzieci szybko stała się bestsellerem i do dzisiaj gości w każdej księgarni dla dzieci. Zarówno Karolcia, jak Witaj Karolciu! są doskonałymi prezentami na Dzień dziecka, na urodziny, na Mikołajki czy na Boże narodzenie.'
     
)
Book.create(
  title: 'Mikołajek',
  author: 'René Goscinny',
  genre: 'literatura dziecięca',
  isbn: '9788310126993',
  description: 'Mikołajek, Joachim, Euzebiusz, Maksencjusz, Alcest, Ananiasz… To imiona najpopularniejszych łobuziaków w historii literatury dziecięcej. Ich przygody bawią polskich czytelników już od pół wieku!
  Przez lata książki ukazywały się w niezmienionej szacie graficznej – ten charakterystyczny kwadratowy format rozpoznawał każdy fan serii.
  Na pięćdziesiątą rocznicę pierwszego polskiego wydania przygotowaliśmy zupełnie nową edycję cyklu. Nieco większy format i nowe okładki kryją jednak te same przezabawne historie, które ciągle zdobywają nowych czytelników w różnym wieku, zachwycając kolejne pokolenia.'
)
Book.create(
  title: 'Kingsbridge: Filary Ziemi',
  author: 'Ken Follett',
  genre: 'powieść historyczna',
  isbn: '9788367759434',
  description: 'Walka o władzę, konflikty między monarchią, klerem i narodem, intrygi, seks, miłość, zdrada, mroczne tajemnice, krwawe zbrodnie, akty nienawiści i desperacji.
  Najsłynniejsza powieść historyczna autorstwa Kena Folletta!
  Na tle wojny domowej, klęski głodu, konfliktów religijnych i sporów o sukcesję na angielskim tronie na pierwszy plan wysuwa się trwająca blisko czterdzieści lat budowa katedry w Kingsbridge. Pierwsza część historyczno-przygodowej sagi Folletta przedstawia splatające się ze sobą losy pięciorga bohaterów: budowniczego Toma, arystokratki Alieny, przeora katedry Filipa, rzeźbiarza Jacka oraz Ellen, mieszkającej w lesie pustelniczki, która para się czarną magią.
  Filary Ziemi to także zmysłowa i ponadczasowa opowieść o miłości, która ukazuje mistrzostwo Folletta w oddawaniu klimatu prezentowanej epoki. Nikt do tej pory nie ukazał pełnej napięć dwunastowiecznej Anglii z takim realizmem i dokładnością.
  Na podstawie powieści w 2010 roku powstał serial telewizyjny wyprodukowany przez słynnego reżysera Ridleya Scotta. Główne role zagrali: Ian McShane, Matthew Macfadyen, Eddie Redmayne, Hayley Atwell, Rufus Sewell i Donald Sutherland.'
)
Book.create(
  title: 'Czarna Madonna',
  author: 'Remigiusz Mróz',
  genre: 'horror',
  isbn: '9788379767106',
  description: 'Boeing 747 irlandzkich linii lotniczych miał wylądować w Tel Awiwie o trzeciej w nocy. Nigdy nie dotarł na miejsce, a kontakt z maszyną utracono gdzieś nad Morzem Śródziemnym. Na pokładzie znajdowało się 520 osób, w tym narzeczona Filipa, która miała odbyć pielgrzymkę do Bazyliki Grobu Świętego.
  Przez pierwsze godziny Filip wierzy, że samolot się odnajdzie. Nic nie wskazuje na zamach, straż przybrzeżna nie odnajduje wraku, a co jakiś czas do kontroli lotów dociera sygnał z transpondera.
  Co stało się z boeingiem? Jaki związek ma jego zniknięcie z podobnymi zdarzeniami?
  I jakie znaczenie ma obraz Matki Bożej, nazywany Czarną Madonną?
  Pierwsze odpowiedzi każą Filipowi sądzić, że niewiedza naprawdę jest błogosławieństwem.'
)
Book.create(
  title: 'Miasteczko Salem',
  author: 'Stephen King',
  genre: 'horror',
  isbn: '9788381233804',
  description: 'W prowincjonalnym amerykańskim miasteczku zaczynają dziać się rzeczy niepojęte i przerażające. Znikają bądź umierają w dziwnych okolicznościach dzieci i dorośli, jedna śmierć pociąga za sobą drugą. Czyżby Salem było nawiedzone przez złe moce? Kilku śmiałków, którym przewodzi mały chłopiec, wydaje im pełną determinacji walkę.
  "Miasteczko Salem", klasyczny horror Stephena Kinga, ukazało się po raz pierwszy w roku 1975. Demoniczna opowieść natychmiast przeraziła i oczarowała czytelników i stała się światowym bestsellerem. Doczekała się też dwóch ekranizacji.'
)
Book.create(
  title: 'Pan Lodowego Ogrodu - księga II',
  author: 'Jarosław Grzędowicz',
  genre: 'Fantasy',
  isbn: '9788379644971',
  description: 'Mówią, że zimna mgła żyje. Inni uważają, że to oddech bogów albo brama zaświatów.
  Midgaard. Planeta, gdzie nas, ludzi, postrzega się jako istoty o rybich oczach. Gdzie trwa wojna bogów, a samozwańczy demiurgowie hodują okrucieństwo kwitnące w mroku zła. Gdzie więdną najnowsze ziemskie technologie, a człowiek stawić musi czoła swoim koszmarom. I zostaje zupełnie sam…
  Kto czytał tom pierwszy wie, że nie spocznie, póki nie skończy. Kto nie czytał, powiększy grono ogrodników.'
)
Book.create(
  title: 'Pan Lodowego Ogrodu - księga III',
  author: 'Jarosław Grzędowicz',
  genre: 'Fantasy',
  isbn: '9788379646661',
  description: 'Pan z Wami! Jako i ogród jego! Wstąpiwszy, porzućcie nadzieję. Oślepną monitory, ogłuchną komunikatory, zamilknie broń. Tu włada magia.

  Wystarczyło ledwie czworo Ziemian, by z planety Midgaard uczynić prawdziwe piekło. Ich tropem, znaczonym niewyobrażalnymi okrucieństwami podąża Vuko Drakkainen. Kierowany nieujarzmioną determinacją, krok za krokiem przedziera się przez koszmar niczym z chorej wyobraźni Hieronima Boscha. To jeszcze misja czy już przeznaczenie? Lecz, czy zdoła powstrzymać tych, których moc uczyniła równych Bogom? Czy zdoła ich zabić?'
)
Book.create(
  title: 'Władca pierścieni: Dwie wieże',
  author: 'John Ronald Reuel Tolkien',
  genre: 'fantasy',
  isbn: '9788382027778',
  description: 'Można nawet zaryzykować tezę, że stanowi dzieło wręcz legendarne. W trzech tomach opisane są epickie losy bohaterów Śródziemia, którzy mimo wszelkich przeciwności powstrzymują zło, jakie zagraża światu. Wśród nich istotną rolę odgrywa tom 2 pt. "Dwie Wieże".

  Akcja "Dwóch wieży" toczy się w przełomowym i trudnym dla bohaterów momencie - Drużyna Pierścienia ulega rozdzieleniu. Frodo i Sam kierują się do Mordoru, by zniszczyć Jedyny Pierścień i pokonać złowrogiego Saurona. Aragorn, Legolas i Gimli wyruszają ocalić Merryego i Pippina oraz wspomóc królestwo Rohanu, nękane przez czarownika Sarumana i oddziały jego Uruk-Hai. Nie wiadomo, co stało się z Gandalfem - czy przeżył starcie z Balrogiem w otchłaniach Morii? Ponadto wszyscy uczestnicy Drużyny Pierścienia opłakują bohaterską śmierć jednego z nich, Boromira z Gondoru. Ostatecznie jednak muszą - każdy na swojej drodze - zmierzyć się z siłami zła i kontynuować rozpoczętą misję.'
)
Book.create(
  title: 'Władca pierścieni: Powrót Króla',
  author: 'John Ronald Reuel Tolkien',
  genre: 'fantasy',
  isbn: '9788377856826',
  description: 'Trzecia część Władcy Pierścieni, porywającej przygody, stworzonej z epickim rozmachem przez J.R.R. Tolkiena.
  Zebrały się armie Władcy Ciemności, a jego przerażający cień sięga coraz dalej. Połączone siły ludzi, krasnoludów, elfów i entów stają naprzeciw nawałnicy mroku. Tymczasem Frodo i Sam uparcie wędrują w głąb Mordoru, zamierzając zrealizować cel ich heroicznej misji i zniszczyć Pierścień Jedyny.'
)
Book.create(
  title: 'Pan Lodowego Ogrodu - księga IV',
  author: 'Jarosław Grzędowicz',
  genre: 'Fantasy',
  isbn: '9788379646784',
  description: 'Pan Lodowego Ogrodu – finałowy, czwarty tom cyklu, ozdobionego kompletem nagród przyznawanych w polskiej fantastyce. Sztandarowe dzieło pisarza z legendarnego „Klubu tfurcuff”, grupy której prace złożyły fundament pod współczesną polską fantastykę. Kontynuacja historii uznanej przez portal Onet za „fantastyczną powieścią dziesięciolecia 2000-2010”.
  Ten cykl to właściwie jeden wielki, literacki popis możliwości kreacji współczesnego pisarza popkulturowego. Faszerowany efektami blockbuster z przesłaniem sprowadzony do postaci książki. Perspektywa opisu zmieniająca się w zależności od tempa akcji, wielotorowa fabuła, słowa kreślące dziwaczny, szalony wręcz obraz rodem z sennych widziadeł Hieronima Boscha. Supertechnologia w bezpardonowym pojedynku z magią. Akcja gna przez świat, który nie jest jedynie płaską dekoracją służącą za tło zmagań herosów. Odkrywamy skomplikowany mechanizm z barierami kulturowymi, obsesjami i pragnieniami, który zachowuje prawo do istnienia i funkcjonowania nawet bez galerii pierwszoplanowych postaci.
  To już nie jest tylko forma rozrywki. Jarosław Grzędowicz błyskotliwie udowadnia, że uniwersalnym popowym kodem pisarz może mówić o rzeczach fundamentalnych i prowokować do wyciągania wniosków.
  Taki jest Pan Lodowego Ogrodu. Porywająca opowieść o konsekwencjach popełnionych czynów.'
)
Book.create(
  title: 'Helikonia: Lato Helikonii',
  author: 'Brian W. Aldiss',
  genre: 'science fiction',
  isbn: '9788389951960',
  description: 'Kiedy Helikonia zbliża się do wielkiego olbrzyma Freyra, cała planeta aż skwierczy od upałów, a przyroda tryska energią, kiedy zaś nadchodzi zima, czyli zbliżenie się do zimnego słońca Bataliksy - życie prawie zamiera, wszystko skuwa lód.
  Zima to żywioł inteligentnej rasy ancipitów - fagorów, która żyła na Helikonii krążącej wokół Bataliksy, zanim ten system dostał się we władanie Freyra i na planecie zaszły daleko idące mutacje. Lato to czas ludzi, którzy opanowują całą planetę i próbują zniszczyć fagory.
  A na orbicie Helikonii od tysięcy lat porusza się olbrzymia stacja badawcza z Ziemi - "Avernus", na której również powoli zachodzą zmiany.'
)
Book.create(
  title: 'Helikonia: Zima Helikonii',
  author: 'Brian W. Aldiss',
  genre: 'science fiction',
  isbn: '9788389951975',
  description: 'Trzeci tom trylogii o planecie Helikonii.
  Powieść jest laureatką British Science Fiction Award, nominowana do Nebuli i Locusa.
  Pasjonująca trylogia Aldissa o świecie Helikonii, poruszającym się w systemie podwójnej gwiazdy, przez co Wielki Rok liczy na tej planecie liczy 1800 krótkich lat, a każda pora roku trwa przez stulecia.
  Jesień przyszła na Helikonię bardzo szybko. Planeta oddala się od gorącego Freyra. Coraz bardziej widoczne są oznaki nadchodzącej zimy – pory roku należącej do rasy ancipitów. Ludzie popadają w przygnębienie, mnożą się ruchy religijne. Są i tacy, którzy dążą do całkowitej eksterminacji fagorów, wszystko po to, żeby ludzie przetrwali Wielką Zimę.
  Ale nieuchronności losu nie można się przeciwstawić. Ekologia planety sama włącza mechanizmy pozwalające rasie ludzkiej przetrwać – wirus helikoidalny, jesienią zwany tłustą śmiercią, zbiera krwawe żniwo. Kto przeżyje ten jest przygotowany na przyjście mrozów. Wirus zabija, ale i daje życie.
  Zmiany widać także na krążącej na orbicie ziemskiej stacji „Avernus”.'
)
Book.create(
  title: 'Cmentarz zapomnianych książek: Gra Anioła',
  author: 'Carlos Ruiz Zafón',
  genre: 'literatura piękna',
  isbn: '9788328708884',
  description: 'W mrocznej, niebezpiecznej i niespokojnej Barcelonie lat dwudziestych młody pisarz, żyjący obsesyjną i niemożliwą miłością, otrzymuje od tajemniczego wydawcy ofertę napisania książki, jakiej jeszcze nie było, w zamian za fortunę i, być może, coś więcej.
  Z niezwykłą precyzją powieściopisarską i w charakterystycznym dlań, oszałamiającym stylu, autor "Cienia wiatru" ponownie przenosi nas do Barcelony Cmentarza Zapomnianych Książek, by obdarować niezwykłą intrygą, romansem i tragedią poprzez labirynt tajemnic, gdzie czar książek, namiętności i przyjaźni splatają się w mistrzowskiej opowieści.'
)
Book.create(
  title: 'Silos: Zmiana',
  author: 'Hugh Howey',
  genre: 'science fiction',
  isbn: '97883655683975',
  description: '„Zmiana” to drugi tom trylogii „Silos”, która stała się jednym z największych bestsellerów w gatunku literatury fantastycznej i postapokaliptycznej ostatnich lat.
  „Zmiana” to fascynujące zaproszenie do czytelniczej podróży, które przenosi czytelnika do rzeczywistości, w jakiej powstały silosy. Po raz kolejny powieść odkryje przed tobą prawdziwy labirynt tajemnic, sekretów i kłamstw i sprawi, że będziesz pochłaniał ją w napięciu do ostatniej strony.
  Przyszłość, mniej niż pięćdziesiąt lat od dnia dzisiejszego. Świat nadal jest taki, jakim go znamy, a czas wciąż biegnie swoim dawnym rytmem. Prawda jest jednak taka, że nasz czas się kończy. Garstka wpływowych ludzi wie, co nas czeka. Przygotowują się. Próbują nas ochronić. Wyznaczają dla nas ścieżkę, z której już nigdy nie zdołamy zawrócić. Ścieżkę, która poprowadzi do zniszczenia; ścieżkę, która zawiedzie nas głęboko pod ziemię. Karty historii silosu czekają, by je zapisać. Nasza przyszłość wkrótce się zacznie.'
)
Book.create(
  title: 'Cmentarz zapomnianych książek: Więzień nieba',
  author: 'Carlos Ruiz Zafón',
  genre: 'literatura piękna',
  isbn: '9788328708907',
  description: 'Rok 1957. Interesy rodzinnej księgarni Sempere i Synowie idą tak marnie jak nigdy dotąd. Daniel Sempere, bohater Cienia wiatru, wiedzie stateczny żywot jako mąż pięknej Bei i ojciec małego Juliana. Następny w kolejce do porzucenia stanu kawalerskiego jest przyjaciel Daniela, Fermín Romero de Torres, osobnik tyleż barwny, co zagadkowy: jego dawne losy wciąż pozostają owiane mgłą tajemnicy. Ni stąd, ni zowąd przeszłość Fermina puka do drzwi księgarni pod postacią pewnego odrażającego starucha. Daniel od dawna podejrzewał, że skoro przyjaciel nie chce mu opowiedzieć swej historii, to musi mieć ważny powód. Ale gdy Fermín wreszcie zdecyduje się wyjawić mroczne fakty, Daniel dowie się "rzeczy, o których Barcelona wolałaby zapomnieć".
    Jednak niepogrzebane upiory przeszłości nie dadzą się tak łatwo wymazać z pamięci. Daniel coraz lepiej rozumie, że będzie musiał się z nimi zmierzyć. I choć zakończenie powieści wydaje się ze wszech miar pomyślne, to Ruiz Zafón mówi nam wprost, że "prawdziwa Historia jeszcze się nie skończyła. Dopiero się zaczęła".'
)
Book.create(
  title: 'Cmentarz zapomnianych książek: Labirynt duchów',
  author: 'Carlos Ruiz Zafón',
  genre: 'literatura piękna',
  isbn: '9788328707757',
  description: 'Barcelona, lata pięćdziesiąte ubiegłego stulecia, mroczne dni reżimu generała Franco. Alicja Gris jest piękną, inteligentną i pozbawioną skrupułów agentką. Pewnego dnia otrzymuje zlecenie z najwyższych sfer władzy. Sprawa jest ściśle tajna i dotyczy tajemniczego zniknięcia ministra kultury Mauricia Vallsa. Wydaje się, że może mieć to związek z przeszłością, kiedy Valls był dyrektorem budzącego grozę więzienia Montjuic. Alicja, wraz z przydzielonym do tego dochodzenia, kapitanem policji ma kilka dni na odnalezienie ministra. W trakcie poszukiwań w jej ręce trafia należący do Vallsa siódmy tom serii „Labirynt duchów”. Książka ta doprowadzi Alicję do ukrytej w samym sercu Barcelony księgarni Sempere & Synowie. Czar tego miejsca sprawia, że jak przez mgłę powracają do niej obrazy z dzieciństwa. To, co odkryje, będzie śmiertelnym zagrożeniem dla niej i dla wszystkich, których kocha.
    Zafón ostatecznie zamyka swoją tetralogię o „Cmentarzu Zapomnianych Książek”. Po mistrzowsku rozsupłuje wszystkie splątane wątki wielopiętrowej intrygi i prowadzi czytelnika do emocjonującego finału.
    „Labirynt duchów” to jednocześnie hołd dla świata książek, sztuki snucia opowieści i magicznych powiązań między literaturą a życiem.'
)
Book.create(
  title: 'Silos: Pył',
  author: 'Hugh Howey',
  genre: 'science fiction',
  isbn: '9788365830272',
  description: '„Pył” to fascynujące zakończenie opowieści o świecie silosów i walce ludzkości i o swoją przyszłość.
  Powstanie dobiegło końca. Mieszkańcy silosu 18 uczą się żyć w nowej rzeczywistości. Niektórzy akceptują zmiany, inni obawiają się nieznanego. Nikt z nich nie ma kontroli nad własnym losem. Silosowi wciąż zagrażają ludzie dążący do jego zniszczenia, a Jules wie, że musi ich powstrzymać. Bitwa o silos została wygrana. Wojna o ludzkość dopiero się rozpoczyna.'
)
Book.create(
  title: 'Trylogia mgły: Pałac Północy',
  author: 'Carlos Ruiz Zafón',
  genre: 'realizm magiczny',
  isbn: '9788328723184',
  description: 'Następna, po debiutanckim Księciu Mgły, powieść Zafóna dla młodzieży. Jakie złowrogie zagadki kryje Kalkuta lat trzydziestych?
  Kalkuta, 1932. Ben, wychowanek sierocińca St. Patrick, skończył już 16 lat - podobnie jak jego przyjaciele, będzie musiał opuścić dom dziecka i się usamodzielnić. W dniu pożegnalnej imprezy poznaje swoją rówieśniczkę Sheere i zabiera ją do Pałacu Północy na spotkanie tajnego stowarzyszenia, które założył wraz z przyjaciółmi. Gdy dziewczyna opowiada im tragiczną historię swojej rodziny, członkowie stowarzyszenia postanawiają jej pomóc w odnalezieniu legendarnego domu, który pojawia się w opowieści. Nie wiedzą, że właśnie natrafili na trop jednej z najpotworniejszych tajemnic Kalkuty. Płonący pociąg, dworzec widmo, ognista zjawa - to tylko niektóre elementy makabrycznej łamigłówki, którą przyjdzie im rozwiązać… Misja, która miała być niecodzienną przygodą, niebawem okazuje się śmiertelnie niebezpiecznym wyzwaniem.'
)
Book.create(
  title: 'Trylogia mgły: Światła Września',
  author: 'Carlos Ruiz Zafón',
  genre: 'realizm magiczny',
  isbn: '9788328723191',
  description: 'Okrutna tajemnica wspaniałej nadmorskiej rezydencji pełnej wielu ponurych wspomnień.
  Tajemniczy i groźny stwór zamieszkujący normandzki las Cavenmore.
  Francja, rok 1936. Pani Sauvelle, wdowa z dwójką dzieci, Irene i Dorianem, ma zacząć pracę u ekscentrycznego wynalazcy i fabrykanta zabawek. Na pierwszy rzut oka jego nadmorska rezydencja wywiera na nich jak najgorsze wrażenie. I mimo że gospodarz okazuje się miłym człowiekiem, to rodzina cały czas czuje się nieswojo w nowym miejscu.
  Być może intuicja nie zawodzi pani Sauvelle i jej dzieci? Czy budząca grozę, wypełniona armią mechanicznych zabawek rezydencja jest siedliskiem uśpionych mrocznych sił z przeszłości?
  Kiedy dochodzi do niewyjaśnionego morderstwa, okazuje się, że jedyne osoby, które mają odwagę zmierzyć się ze złowrogą tajemnicą, to dwójka nastolatków: Irene i Ismael.'
)
Book.create(
  title: 'Mroczne materie: Zorza polarna',
  author: 'Philip Pullman',
  genre: 'fantasy',
  isbn: '9788374805643',
  description: '„Bez tego dziecka wszyscy zginiemy”.
  W „Zorzy Polarnej” poznajemy Lyrę Belacquę, sierotę z równoległego świata, w którym nauka, teologia i magia splatają się ze sobą. Lyra i jej dajmon w zwierzęcej postaci mieszkają – na wpół dzicy i beztroscy – wśród akademików oksfordzkiego Kolegium Jordana. Kiedy Lyra wyruszy na poszukiwanie uprowadzonego przyjaciela, odkryje złowieszczą intrygę, w której główną rolę odkrywają porwane dzieci, a jej wyprawa przeobrazi się w pogoń za zrozumieniem tajemniczego zjawiska zwanego „Prochem”. Los zawiedzie ją na skute lodem ziemie Arktyki, gdzie władzę sprawują klany wiedźm, a niedźwiedzie polarne toczą wojny. Niezwykła podróż Lyry będzie miała poważne konsekwencje wykraczające daleko poza granice świata, który zamieszkuje.'
)
Book.create(
  title: 'Mroczne materie: Bursztynowa luneta',
  author: 'Philip Pullman',
  genre: 'fantasy',
  isbn: '9788366409361',
  description: 'Trzeci tom przełomowej trylogii Philipa Pullmana "Mroczne materie", której niedawna ekranizacja - porywający serial telewizyjny zrealizowany przez BBC we współpracy z HBO - została entuzjastycznie przyjęta przez krytykę.
  "Wyprawiamy się do krainy umarłych i zamierzamy z niej wrócić. "
  Will i Lyra, których losy splotły sie nierozerwalnie za sprawą sił drzemiących w innych światach, zostali gwałtownie rozdzieleni. Muszą sie teraz odnaleźć, bo czeka ich nie tylko najstraszniejsza ze wszystkich wojen, lecz także podróż do mrocznej krainy, z której nikt nigdy nie wrócił.'
)
Book.create(
  title: 'Mroczne materie: Delikatny nóż',
  author: 'Philip Pullman',
  genre: 'fantasy',
  isbn: '9788366409057',
  description: 'Lyra trafia do innego świata, świetlistego, nawiedzonego Cittàgazze, gdzie karmiące się ludzkimi duszami Widma chodzą po ulicach, a pod niebem niesie się odległy trzepot anielskich skrzydeł. Na szczęście znajduje w nim sprzymierzeńca: dwunastoletni Will Parry, zabójca i zbieg, zrządzeniem losu również trafił do niezwykłego nowego świata. Podczas niebezpiecznej podróży pomiędzy światami Lyra i Will wpadają na trop śmiertelnie groźnej tajemnicy, a w ich ręce trafia przedmiot o ogromnej niszczycielskiej mocy. Na dodatek z każdym krokiem są coraz bliżej innego, jeszcze gorszego zagrożenia i wstrząsającej prawdy o swoim przeznaczeniu.'
)
Book.create(
  title: 'Harry Potter i Kamień Filozoficzny',
  author: 'J.K. Rowling',
  genre: 'fantasy',
  isbn: '9788380082113',
  description: 'Harry Potter, sierota i podrzutek, od niemowlęcia wychowywany był przez ciotkę i wuja, którzy traktowali go jak piąte koło u wozu. Pochodzenie chłopca owiane jest tajemnicą; jedyną pamiątką Harry`ego z przeszłości jest zagadkowa blizna na czole. Skąd jednak biorą się niesamowite zjawiska, które towarzyszą nieświadomemu niczego Potterowi? Wszystko zmienia się w dniu jedenastych urodzin chłopca, kiedy dowiaduje się o istnieniu świata, o którym nie miał dotąd pojęcia.
  Nowe wydanie książki o najsłynniejszym czarodzieju świata różni się od poprzednich nie tylko okładką, ale i wnętrzem – po raz pierwszy na początku każdego tomu pojawi się mapka Hogwartu i okolic, początki rozdziałów ozdobione będą specjalnymi gwiazdkami, a na końcu pierwszego tomu na Czytelników czeka coś zupełnie wyjątkowego – akt personalny J.K. Rowling, z którego można dowiedzieć się, jakie jest ulubione zwierzę czy bohater literacki autorki.'
)
Book.create(
  title: 'Freddie Mercury. Biografia',
  author: 'Alfonso Casas',
  genre: 'biografia',
  isbn: '9788380573338',
  description: 'Ilustrowana biografia lidera zespołu Queen, jednej z największych ikon popkultury.
  Któż z nas nie śpiewał na cały głos I Want To Break Free? Albo nie odgrywał z całym zaangażowaniem Bohemian Rapsody?
  Za tymi piosenkami, które stały się częścią historii muzyki i wielu historii osobistych, stoi jeden człowiek: Freddie Mercury. Ze swymi wąsami, żółtą marynarką i charakterystycznym głosem, lider Queenu jest ikoną dla pokolenia, które tańczyło przy jego wpadających w ucho melodiach, a potem opłakiwało jego śmierć w 1991 roku.
  Ale kim był Freddie? Jaka jest jego historia? W tej ilustrowanej biografii Alfonso Casas podąża śladami Freddiego od Tanzanii, w której się urodził, po Wielką Brytanię, gdzie zmarł i stał się nieśmiertelny. To przecież on śpiewał Show Must Go On.
  „Żył pełnią życia, chłonął je i świętował każdą jego minutę. I, jak wspaniała kometa, zostawił lśniący ślad, który będzie świecił dla wielu przyszłych pokoleń” – Brian May, 2011'
)
Book.create(
  title: 'Duma i uprzedzenie',
  author: 'Jane Austen',
  genre: 'romans',
  isbn: '9788377799383',
  description: 'Najsłynniejsza powieść Jane Austen.
  „Jest prawdą powszechnie znaną, że samotnemu a bogatemu mężczyźnie brak do szczęścia tylko żony”.
  Opowieść o codziennym życiu angielskiego ziemiaństwa na przełomie XVIII i XIX wieku. Niezbyt zamożni państwo Bennetowie mają nie lada kłopot – nadeszła pora, by wydać za mąż ich pięć dorosłych córek. Sęk w tym, że niełatwo jest znaleźć na prowincji odpowiedniego kandydata. Pojawia się jednak iskierka nadziei, bo oto do położonej w sąsiedztwie posiadłości Netherfield Park wprowadza się młody i bogaty kawaler. Wiadomość ta elektryzuje panią Bennet. Okazja do nawiązania stosunków towarzyskich nadarza się niebawem podczas publicznego balu, na który nowy sąsiad przybywa w towarzystwie dwóch sióstr, szwagra oraz swego przyjaciela, jeszcze bardziej majętnego kawalera.
  Czy pierwsze wrażenie bywa mylące, a bliższa znajomość potrafi diametralnie zmienić opinię o drugiej osobie?
  Siłą tej historii są znakomicie nakreślone postacie, niezwykle trafne obserwacje natury ludzkiej, humor i – oczywiście – miłość.'
)
Book.create(
  title: 'Wichrowe wzgórza',
  author: 'Emily Jane Brontë',
  genre: 'romans',
  isbn: '9788382226874',
  description: 'Przełom XVIII i XIX wieku. W posępnej scenerii rozległych wrzosowisk pośród dzikich wzgórz północnej Anglii snuje się mroczna historia przekraczającej wszelkie bariery miłości. Catherine i Heathcliffa łączy szczególne pokrewieństwo dusz, lecz choć są dla siebie stworzeni, ich drogi się rozchodzą. W cieniu wiodącego do zatracenia uczucia rozgrywają się prawdziwe dramaty ich rodzeństwa i dzieci. Wichrowe wzgórza to powieść o wielkich namiętnościach, o budującej i niszczącej sile miłości, o nienawiści, zemście i rozpaczy prowadzącej do szaleństwa.'
)





