ALTER USER 'root'@'localhost' IDENTIFIED BY '1212';
use progettoTSWAggiornato;
INSERT INTO accessorio (cod_accessorio, nome_accessorio, tipologia, prezzo, descrizione) VALUES 
    ('acc01', 'Dadi Rossi', 'altri brand', 15, 'Set di dadi rossi'),
    ('acc02', 'Dadi Verdi', 'altri brand', 20, 'Set di dadi verdi'),
    ('acc03', 'Dadi blu Drago', 'esclusivi', 30, 'Set di dadi blu con rifiniture ai bordi a forma di drago'),
    ('acc04', 'scacchi', 'altri brand', 10, 'Set di Scacchi Intagliato a Mano King 8.9cm 32 di legno ponderato'),
    ('acc05', 'scacchi colorati', 'altri brand', 7, '20 pz/set pezzi di scacchi in legno accessori per giochi da tavolo pedone da gioco in legno'),
    ('acc06', 'porta carte', 'esclusivi', 14, 'Porta Carte per Giochi da Tavolo, in plexiglass a 2 scomparti.'),
    ('acc07', 'borsa portagiochi', 'esclusivi', 30, 'Borsa a Tracolla per Giochi da Tavolo con Tracolla Imbottita e Tasche per Accessori per Dadi'),
    ('acc08', 'calcio balilla', 'altri brand', 50, 'Calcio Balilla calcetto gioco da tavolo legno accessori 51x31x10cm'),
    ('acc09', 'torre lancia dadi', 'esclusivi', 25, 'Progettato come addon per i giochi in cui si lanciano spesso i dadi.'),
    ('acc10', 'dadi cromatici', 'altri brand', 10, 'Confezione da 10 dadi poliedrici D20 per giochi da tavolo');
INSERT INTO gioco(cod_gioco, nome_gioco, edizione, tipologia, prezzo, descrizione, n_giocatori_min, n_giocatori_max) VALUES
    ('g001', 'Barrage', '1 edizione', 'tavolo', 80, 'Barrage vi permetterà di viaggiare indietro nel tempo in un 1930 alternativo in cui un estremo utilizzo delle risorse fossili ha portato al completo esaurimento del carbone utilizzato come fonte di energia. La società è ormai sull’orlo di una crisi globale quando un gruppo di lungimiranti imprenditori decide di investire un cospicuo ammontare di fondi per lo sviluppo di una nuova fonte energetica rinnovabile e pulita, l’energia idroelettrica.', 1, 4),
    ('g002', 'AutoBahn', '1 edizione', 'tavolo', 50, 'Sviluppate l’autostrada tedesca (Autobahn), costruendo e potenziando la rete autostradale federale per migliorare la vostra posizione nella società della BundesAutobahn. Espandete la rete, realizzate differenti progetti e competete con gli altri giocatori per esportare merci e costruire stazioni di servizio; promuovete i vostri impiegati per ottimizzare la vostra strategia e migliorate la vostra plancia giocatore per sbloccare nuovi dipartimenti e aprire nuove strade verso la vittoria. Riuscirete a sviluppare al meglio le storiche autostrade della Germania e a dare il maggior contributo all\'Autobahn?', 1, 4),
    ('g003', '7 Rosso', '1 edizione', 'carte', 15, 'Vinci o sei fuori! 7 numeri, 7 colori e 7 regole, questo basta per creare un gioco di cui non vi stancherete mai!', 2, 4),
    ('g004', 'Endeavor abissi marini', '1 edizione', 'tavolo', 60, 'Endeavor - Abissi Marini, seguito di Endeavor - Le Rotte dell\'Impero, si lascia il passato alle spalle, immergendosi nella scoperta e nella meraviglia degli oceani. Il vostro obiettivo sarà quello di esplorare gli oceani del mondo, dalle brulicanti acque basse alle misteriose profondità. Mantenendo intatto il caratteristico sistema di gioco, gli autori hanno creato un nuovo spazio di gioco davvero meraviglioso per condurvi in luoghi che non avreste mai immaginato. Ogni missione, in questo gioco basato su scenari, può essere affrontata in modalità competitiva, cooperativa o in solitario, offrendo infinite opportunità per esplorare il mare e capire come vincere le nuove sfide. In ogni partita rivelerete nuove plance Oceano, formando tabelloni di gioco sempre diversi da esplorare. Dovrete reclutare un\'efficace squadra di Specialisti da promuovere, espandere e migliorare la vostra flotta di navi e coordinare la vostra strategia per realizzare gli obiettivi delle missioni nel rispetto delle meraviglie sottomarine che incontrerete. Ma soprattutto, dovrete sviluppare le vostre qualità per avere massimo impatto positivo sull\'oceano che ricopre il nostro fragile pianeta.', 1, 4),
    ('g005', 'Alchimisti', '1 edizione', 'tavolo', 50, 'In Alchimisti dovrete mettere alla prova le vostre capacità di scoprire i segreti dell\'arte mistica. Dopo averla creata, potrete decidere se bere la vostra pozione per capirne gli effetti oppure andarci cauti e testarla su un prezioso assistente! Lo scopo del gioco è accumulare più punti, i quali possono essere guadagnati in svariati modi, ad esempio pubblicando teorie che siano rigorosamente corrette. Il gioco si svolge nel corso di sei round e si conclude con un\'esibizione finale. Il giocatore piazza dei cubetti sui vari spazi azione che sceglierà di svolgere. Sarà possibile guadagnare monete vendendo le pozioni, di dubbia qualità, agli avventurieri. La grande novità è che sarà uno smartphone a fare da master e garantire longevità al gioco!', 2, 4),
    ('g006', 'Anunnaki', '1 edizione', 'tavolo', 100, 'Anunnaki - L\'Alba degli Dèi è un gioco 4X, ambientato in un passato distopico dove mitologia e fantascienza si uniscono. Ogni giocatore rappresenta una Casata i cui rappresentanti sono visti come divinità dalla popolazione terrestre. Costruite insediamenti, reclutate seguaci, esplorate pianeti per ottenere risorse dai territori che controllate, sviluppate la vostra tecnologia, siglate contratti commerciali, sconfiggete le armate locali e gli eserciti degli avversari, e infine cercate di conquistare Atlantide e i suoi immensi tesori. Il gioco propone un innovativo sistema di selezione delle azioni: una plancia a forma di stella con una diversa azione ad ogni intersezione. Proverete a seguire il cammino sulla stella per mettere velocemente in gioco le vostre divinità oppure selezionerete le azioni nell\'ordine più conveniente per meglio sviluppare la vostra civiltà? Ogni scelta è importante e può condurre a una vittoria memorabile... o ad una terribile disfatta! Con una grande varietà di elementi di gioco, come le fazioni con abilità uniche, il setup casuale delle azioni sulla stella e un bassissimo impatto della fortuna, Anunnaki - L\'Alba degli Dèi rappresenta un\'esperienza incredibilmente immersiva e profonda.', 1, 4),
    ('g007', 'Amelia\'s Secret', '1 edizione', 'carte', 25, 'La prima Escape Room con Realtà Aumentata: vivete un’esperienza immersiva unica! Siete intrappolati nella residenza abbandonata dei Vonleaken. Un mistero circonda questo maniero. Si dice che una bambina sia sparita molto tempo fa e il suo corpo non sia mai stato ritrovato. Sarete capaci di risolvere questo mistero prima che sia troppo tardi?', 1, 4),
    ('g008', 'Amygdala', '1 edizione', 'tavolo', 50, 'La vita è piena di emozioni e la ragione del cervello deputata, in particolare, alla gestione di queste emozioni è l\'amigdala. In questo gioco astratto e strategico dovrete raccogliere sul tabellone le risorse relative alle diverse emozioni da conservare nella vostra banca della memoria, che però è limitata. Queste risorse serviranno a sbloccare le tessere emozione della vostra plancia giocatore da piazzare nelle sette regioni colorate sul tabellone. Dovrete cercare di formare reti di emozioni e di avere la maggioranza nelle diverse regioni per ottenere punti vittoria durante la partita e alla fine del gioco!', 2, 4),
    ('g009', 'Bone Wars', '1 edizione', 'tavolo', 50, 'Ci troviamo nell\'ultima metà del 1800, durante la cosiddetta Guerra delle Ossa. In questo periodo una grande rivalità sorse fra Othniel Marsh e Edward Cope, due paleontologi di fama mondiale. Entrambi cercarono di surclassare l’altro nella scoperta di nuove specie di dinosauri, arrivando al punto di corrompere i lavoratori del rivale, rubare o anche distruggere le rispettive ossa. I giocatori ricopriranno il ruolo di paleontologi che lavorano per una di queste figure leggendarie (o magari segretamente per il loro stesso tornaconto!) cercando di superare la concorrenza. Durante la partita i giocatori devono utilizzare in modo astuto le proprie carte azione, giocandole negli spazi sotto la plancia giocatore. Queste carte azione possono attivare la loro squadra, in modo da portare alla luce fossili e scoprire nuove specie sul campo, oppure il loro paleontologo, per pubblicare articoli, confutare teorie avversarie e ottenere gli ambiti riconoscimenti.', 1, 4),
    ('g010', 'Mercoledì', 'Creature e Reietti', 'tavolo', 13, 'Direttamente dalla serie Netflix, arriva il gioco ufficiale di Mercoledì! Sbaragliate gli avversari liberandovi delle carte in mano il più velocemente possibile. Giocate le carte al momento giusto oppure pagate il prezzo dei vostri errori! Ma state attenti: ogni personaggio potrà cambiare la partita con le sue singolari abilità! Dopo tutto, che gioco sarebbe senza incredibili colpi di scena?', 2, 6),
    ('g011', 'Taboo', '1 edizione', 'carte', 25, 'Hasbro Taboo è uno dei giochi da tavolo più divertenti e coinvolgenti che abbia mai avuto il piacere di giocare. Questo gioco è diventato una scelta irrinunciabile per le serate in compagnia degli amici o per riunioni familiari, e vorrei condividere la mia recensione positiva su di esso. La semplicità delle regole di Taboo è uno dei suoi punti di forza. È facile da imparare e si può iniziare a giocare in pochissimi minuti. Il fatto che non siano necessari lunghi tempi di spiegazione lo rende perfetto per tutti i tipi di giocatori, dai bambini agli adulti.', 4, 10),
    ('g012', 'Exploding Kittens', 'Originale', 'carte', 18, 'Gattini Esplosivi si gioca da 2 a 5 giocatori, in 10-15 minuti di tempo e si basa su una meccanica di “pesca e gioca” e una blandissima gestione mano. È fatto da un mazzo di carte con illustrazioni di gatti e altre robe nelle situazioni più assurde e grottesche. Vengono aggiunte carte Esplosione pari ai giocatori meno uno, poi ciascuno pesca quattro carte iniziali e una defuse (disinnesca). Lo scopo è rimanere l\'ultimo vivo, dato che chi pesca un\'Esplosione viene eliminato dalla partita, a meno di non usare un Defuse: nel qual caso reinserisce dove vuole l\'Esplosione nel mazzo (in cima, in fondo, in mezzo... dove gli pare).', 2, 5),
    ('g013', 'Sunrise Lane', '1 edizione', 'tavolo', 30, 'Dietro l’apparenza di un quartiere residenziale sereno e ameno, si cela una feroce concorrenza tra le imprese di costruzione impegnate nella sua realizzazione! Accaparratevi i terreni più prestigiosi e costruite splendide case, senza dimenticare i requisiti dettati dal piano urbanistico che vi faranno guadagnare punti bonus e ottenere la vittoria! 1) Giocate le carte corrispondenti al colore del terreno per costruire nuove case in città. 2) Collezionate carte dello stesso colore per costruire case a più piani e moltiplicare i vostri punti. 3) Cercate i terreni più prestigiosi e totalizzate i punti indicati. 4) Cercate di ottenere i punti bonus di fine partita assegnati alla casa più alta e al maggior numero di case in un quartiere!', 2, 4),
    ('g014', 'Escape Room - Viaggio nel Tempo', '1 edizione', 'tavolo', 35, 'Se non avete mai provato una Escape Room, preparatevi a un’esperienza di gioco incredibile, e credeteci: saranno i 60 minuti più elettrizzanti della vostra vita!', 1, 4),
    ('g015', 'Concordia', '1 edizione', 'tavolo', 60, '2000 anni fa l\'Impero Romano dominava le terre attorno al Mar Mediterraneo. Con la pace ai confini, l\'armonia nelle province, un impianto legislativo unificato e una valuta comune, l\'economia prosperò e diede la possibilità alle potenti dinastie Romane di espandersi e colonizzare numerose città. Guida una di queste dinastie e invia coloni fino agli angoli più remoti dell\'Impero; sviluppa la tua rete commerciale e placa gli antichi dèi per ottenere il loro favore e avrai la possibilità di conquistare la vittoria! Concordia è un pacifico gioco di strategia e sviluppo economico ai tempi dell\'antica Roma. I giocatori dovranno fare affidamento sulla loro abilità strategia e non sulla fortuna con i dadi o con le carte. Osservate i vostri avversari per capire quali siano i loro obiettivi e trovare il modo di superarli!', 2, 5),
    ('g016', 'MyShelfie', '1 edizione', 'tavolo', 15, 'Puzzle da 1000 pz. raffigurante la cover di My Shelfie.', 1, 4),
    ('g017', 'Carte da gioco regionali', 'limited edition', 'carte', 5, 'Carte da gioco regionali firmate Cranio Creations!', 1, 99);

insert into espansione(cod_espansione,nome_espansione,descrizione,prezzo,cod_gioco) values
("esp001","Barrage 5 giocatore","Arricchisci la tua copia di Barrage con una nuova mappa progettata specificamente per 5 giocatori e scopri le nuove connessioni, studiate per consentire nuove strategie di piazzamento senza alterare il flusso di gioco.",25.5,"g001"),
("esp012","Imploding Kittens","Imploding Kittens è la prima espansione per il divertente gioco di gattini esplosivi più celebre di sempre. Grazie a queste nuove carte potrete aumentare il numero massimo di giocatori fino a 6, oltre ad includere una serie di spassosissime nuove azioni di gioco che cambieranno per sempre le vostre strategie, ma soprattutto il modo in cui farete detonare i vostri gattini!! Non che sia una bella cosa eh...",15,"g012"),
("esp002","recipes of disaster","xploding Kittens Party Pack Card Game by Exploding kittens - Fun Family Games for Adults, Teens & Kids, 2-10 Players, Age 7+",20,"g012"),
("esp003","barking kittens","questo e’ un mazzo espansione che vuole potenziare, rinforzare e canificare le regole del gioco originale: questo vuole dire che avete bisogno di una copia di exploding kittens per poter giocare.contiene: 20 carte con potenti nuove azioni e particolarita spassose illustrazioni dal fumettista vincitore di numerosi premi, the oatmeal una corona gatto indossabile che vi difendera’ dai furti degli altri giocatori",12,"g012"),
("esp004","partypack","Exploding Kittens: Recipes for Disaster, Gioco da Tavolo, Party Game, 2-5 Giocatori, 7+ Anni, Edizione in Italiano",17,"g012"),
("esp005","Taboo 2","Altra versione del celebre gioco Taboo ancora piu' divertente!",16,"g011"),
("esp006","Alchemista2","Dominion: Alchimia - Gioco di Carte, Espansione - Nuovo, Italiano",24,"g005"),
("esp007","Amelia's Secret XL","I bambini meritano il meglio, per questo ti presentiamo Gioco da Tavolo Amelia's Secret: Escape in the Dark, ideale per coloro che cercano prodotti di qualità per i più piccoli! Scopri e altre marche e brevetti ai migliori prezzi!",22,"g007"),
("esp008","Annumaki 2","ANUNNAKI DAWN OF THE GODS Kickstarter edition CON PACK ITALIANO with all expansion",45,"g006"),
("esp009","Bone Wars espansione","Basato sulla saga originale questa serie aggiunge altri oggetti per arricchire il gioco",20,"g009");
insert into img_gioco(cod_img_gioco,copertina,img_name,cod_gioco) values
    ("g001Img1",true,"IMMAGINI/IMMAGINI_GIOCHI/Barrage_BOX-3D.png","g001"),
	("g001Img2",false,"IMMAGINI/IMMAGINI_GIOCHI/Barrage_ESPLOSO.png","g001"),
    ("g002Img1",true,"IMMAGINI/IMMAGINI_GIOCHI/Autobahn_3D.png","g002"),
    ("g002Img2",false,"IMMAGINI/IMMAGINI_GIOCHI/Autobahn_esploso.png","g002"),
	("g003Img1",true,"IMMAGINI/IMMAGINI_GIOCHI/7-Rosso_BOX-3D.png","g003"),
    ("g003Img2",false,"IMMAGINI/IMMAGINI_GIOCHI/7-Rosso_ESPLOSO.png","g003"),
    ("g004Img1",true,"IMMAGINI/IMMAGINI_GIOCHI/Endeavor_abissi-marini.png","g004"),
    ("g004Img2",false,"IMMAGINI/IMMAGINI_GIOCHI/Endeavor_abissi-marini_esploso_SD.png","g004"),
    ("g005Img1",true,"IMMAGINI/IMMAGINI_GIOCHI/Alchimisti_BOX-3D.png","g005"),
    ("g005Img2",false,"IMMAGINI/IMMAGINI_GIOCHI/Alchimisti_ESPLOSO.png","g005"),
    ("g006Img1",true,"IMMAGINI/IMMAGINI_GIOCHI/Anunnaki_box3D_ITA.png","g006"),
    ("g006Img2",false,"IMMAGINI/IMMAGINI_GIOCHI/Anunnaki_esploso.png","g006"),
    ("g007Img1",true,"IMMAGINI/IMMAGINI_GIOCHI/amelia's-secret_sx_SITO.png","g007"),
    ("g007Img2",false,"IMMAGINI/IMMAGINI_GIOCHI/Amelia's-Secret-esploso.png","g007"),
    ("g008Img1",true,"IMMAGINI/IMMAGINI_GIOCHI/amygdala_sx_SITO.png","g008"),
    ("g008Img2",false,"IMMAGINI/IMMAGINI_GIOCHI/amygdala_esploso_HD-1.png","g008"),
    ("g009Img1",true,"IMMAGINI/IMMAGINI_GIOCHI/Bone-Wars_sx_SITO.png","g009"),
    ("g009Img2",false,"IMMAGINI/IMMAGINI_GIOCHI/Bone-Wars_esploso_SD.png","g009"),
    ("g010Img1",true,"IMMAGINI/IMMAGINI_GIOCHI/Mercoledì_sx_SITO.png","g010"),
    ("g010Img2",false,"IMMAGINI/IMMAGINI_GIOCHI/Mercoledì_esploso_SD.png","g010"),
    ("g011Img1",true,"IMMAGINI/IMMAGINI_GIOCHI/Taboo.png","g011"),
    ("g011Img2",false,"IMMAGINI/IMMAGINI_GIOCHI/Taboo_Esploso.png","g011"),
    ("g012Img1",true,"IMMAGINI/IMMAGINI_GIOCHI/ExplodingKittens.png","g012"),
    ("g012Img2",false,"IMMAGINI/IMMAGINI_GIOCHI/ExplodingKittens_Esploso.jpg","g012"),
    ("g013Img1",true,"IMMAGINI/IMMAGINI_GIOCHI/Sunrise-Lane.png","g013"),
    ("g013Img2",false,"IMMAGINI/IMMAGINI_GIOCHI/Sunrise-Lane_esploso.png","g013"),
    ("g014Img1",true,"IMMAGINI/IMMAGINI_GIOCHI/Escape-Room.png","g014"),
    ("g014Img2",false,"IMMAGINI/IMMAGINI_GIOCHI/Escape-Room-esploso.png","g014"),
    ("g015Img1",true,"IMMAGINI/IMMAGINI_GIOCHI/Concordia.png","g015"),
    ("g015Img2",false,"IMMAGINI/IMMAGINI_GIOCHI/Concordia_ESPLOSO.png","g015"),
    ("g016Img1",true,"IMMAGINI/IMMAGINI_GIOCHI/MyShelfiePuzzle.png","g016"),
    ("g016Img2",false,"IMMAGINI/IMMAGINI_GIOCHI/MyShelfiePuzzle-esploso.png","g016"),
    ("g017Img1",true,"IMMAGINI/IMMAGINI_GIOCHI/cartedagioco.png","g017"),
    ("g017Img2",false,"IMMAGINI/IMMAGINI_GIOCHI/cartedagioco-esploso.png","g017");

    
insert into img_acc(cod_img_acc,copertina,img_name,cod_acc) values

	("acc01Img1",true,"IMMAGINI/IMMAGINI_ACCESSORI/DADI_ROSSI1.png","acc01"),
	("acc02Img1",true,"IMMAGINI/IMMAGINI_ACCESSORI/DADI_VERDI1.png","acc02"),
    ("acc03Img1",true,"IMMAGINI/IMMAGINI_ACCESSORI/DADI_BLU_DRAGO.png","acc03"),
    ("acc04Img1",true,"IMMAGINI/IMMAGINI_ACCESSORI/scacchi1.png","acc04"),
    ("acc05Img1",true,"IMMAGINI/IMMAGINI_ACCESSORI/scacchicolorati.png","acc05"),
    ("acc06Img1",true,"IMMAGINI/IMMAGINI_ACCESSORI/portacarte.png","acc06"),
    ("acc07Img1",true,"IMMAGINI/IMMAGINI_ACCESSORI/borsa.png","acc07"),
    ("acc08Img1",true,"IMMAGINI/IMMAGINI_ACCESSORI/calcio1.png","acc08"),
    ("acc09Img1",true,"IMMAGINI/IMMAGINI_ACCESSORI/torrelanciadadi.png","acc09"),
    ("acc10Img1",true,"IMMAGINI/IMMAGINI_ACCESSORI/dadicromatici.png","acc10");
INSERT INTO img_esp (cod_img_esp, copertina, img_name, cod_esp) VALUES
    ('esp001Img1', true, 'IMMAGINI/IMMAGINI_ESPANSIONI/Barrage_5Th-Giocatore_scatola.png', 'esp001'),
    ('esp012Img1', true, 'IMMAGINI/IMMAGINI_ESPANSIONI/implodingkittens.png', 'esp012'),
    ('esp002Img1', true, 'IMMAGINI/IMMAGINI_ESPANSIONI/recipesofdisaster.png', 'esp002'),
    ('esp003Img1', true, 'IMMAGINI/IMMAGINI_ESPANSIONI/barkingkittens.png', 'esp003'),
    ('esp004Img1', true, 'IMMAGINI/IMMAGINI_ESPANSIONI/partypack.png', 'esp004'),
    ('esp005Img1', true, 'IMMAGINI/IMMAGINI_ESPANSIONI/taboo2.png', 'esp005'),
    ('esp006Img1', true, 'IMMAGINI/IMMAGINI_ESPANSIONI/alchemista2.png', 'esp006'),
    ('esp007Img1', true, 'IMMAGINI/IMMAGINI_ESPANSIONI/ameliaXL.png', 'esp007'),
    ('esp008Img1', true, 'IMMAGINI/IMMAGINI_ESPANSIONI/anunnaki2.png', 'esp008'),
    ('esp009Img1', true, 'IMMAGINI/IMMAGINI_ESPANSIONI/bonewars2.png', 'esp009');

insert into sconto(nome_sconto,cod_sconto,perc_sconto) values
	("UNISA",25);
insert into utente(Username,nome,cognome, pw,saltPW, email, ruolo,indirizzo,ncivico,sesso) values
 ("Scippo","Luigi","Nasta","1212",23,"luigi@gmail.com","amministratore","Via canneto est",3,'uomo');
 insert into carta(numero,scadenza,cvv,Username,nome) values
 ("0000111122223333",1024,999,"Scippo","Luigi");
select g.cod_gioco,g.nome_gioco,g.prezzo,ig.img_name,ig.cod_img_gioco
from gioco as g 
join img_gioco as ig on ig.cod_gioco = g.cod_gioco
where ig.copertina = true ;
