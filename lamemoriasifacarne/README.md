
# La Memoria Si fa Carne

## Legenda

MEDIUM é un mezzo che comunica CONTENUTO e parte della NARRAZIONE. 
I componenti TECH che realizzano un Medium si differenziano per la loro utilità e mancanza di narrazione. 
CONCETTI, idee sono raccontate nella NARRAZIONE. 
STORY semplificata nel titolo del medium. 
LUOGO dove viene rappresentata la narrazione o accessibiltà. 
AUDIENCE.

## Modello

(concept)-[:IS_DEVELOP_IN]->(storytelling),
(storytelling)-[:IS_TOLD_IN]->(medium),
(medium)-[:IS_REPRESENTED_IN]->(place),
(medium)-[:DEVELOPED_WITH]->(component),
(audience)-[:BENEFIT_OF]->(medium),
(audience)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(medium)-[:DETERMINE]->(experience),
(storytelling)-[:IS_CONSUMED_IN]->(tempo),
(experience)-[:TAKE_PLACE_IN]->(tempo);


## domanda

todo -> il contenuto (concept)si sviluppa nella storia(storytelling)che si realizza nel Media(medium)creato da tech(TECH), proposto in PLACE, usufruito da AUDIENCE.


/////////////////////////////

## Queries

// Cosa e' sviluppato in Film Storytelling?
MATCH (a)-[r:IS_DEVELOP_IN]->(s:StoryTelling{name:"Film storytelling"}) RETURN a,r,s
// Cosa e' sviluppato in Film Storytelling che e'raccontato da cosa?
MATCH (a)-[r:IS_DEVELOP_IN]->(s:StoryTelling{name:"Film storytelling"})-[r2:IS_TOLD_IN]->(m) RETURN a,r,s,r2,m
// Quale audience guarda il film(media)

MATCH (audience)-[r:BENEFIT_OF]->(medium) AND (story)-[r:IS_TOLD_IN]->(medium) RETURN audience,r,medium, story

MATCH (s)-[r:IS_TOLD_IN]->(m) RETURN s,m

medium)<-[:IS_TOLD]-



START n=node(*) MATCH (n)-[r]->(m) RETURN n,r,m;
START n=node(*) MATCH (n) RETURN n;



# Reference & Note
## Note

////////////////////////////////////////////////////////////////////////


MATCH p=(a),(b)
WHERE a.name='Passive' AND b.name='Physical'
FOREACH p
a-[:tralalla]->c,
b-[:tralalla]->c;



params = {
CONCEPTS : [["Concept", {name: "Memory"}]]
}



WITH ["Active","Physical","Interactive"] AS names
FOREACH (r IN names | CREATE




match (u:User),(p:Product)
with u,p
limit 5000000
where rand() < 0.1
create (u)-[:OWN]->(p);


## todo

//// todo sviluppi
// users,email,audience tracking
// linkage with story/places
// todo audience transmedia come selezione di utenti che hanno visto tutti (o molti) media -> experienza holistic

todo --- utenti con stessa mail usufruiscono di medium e dunque fanno parte di audience
todo --- utenti che usufruiscono di tutti i media sono audience transmedia

(subscription_mail)-[IDENTIFY]>(user)->(part_of)->[audience]
(user)-[BENEFITS]->(storia)

//// todo general
//
// (transmedia_story)-[e_composta_da]->(storie)
// (personaggi)-[compongono]->(transmedia_story)
// (luoghi-BE)-[]->(contenuti{archivio,memoria}
// (luoghi-BE)-[]->(marta)
// TODO (storia)-[segue]->(storia)


//// todo items da aggiungere
// Data Ingress
// Live Event
// Artefatti





// todo  StoryTelling new story review/creation
MATCH (storytelling:StoryTelling{name:"Film storytelling"}),(transmedia:Transmedia{name:"StoryTelling"}) CREATE (storytelling)-[:EXPAND]->(transmedia);

MATCH (a:StoryTelling{name:"Suivi histoire film"}),(b:StoryTelling{name:"Film storytelling"}) CREATE (a)-[:IS_SEQUEL_OF]->(b);
MATCH (a:StoryTelling{name:"Digital Doc Title"}),(b:StoryTelling{name:"Film storytelling"}) CREATE (a)-[:WORLDBUILDING_OF]->(b);
MATCH (a:StoryTelling{name:"Digital Doc Title"}),(b:StoryTelling{name:"Suivi histoire film"}) CREATE (a)-[:WORLDBUILDING_OF]->(b);
MATCH (a:StoryTelling{name:"Virtual Reality Experience"}),(b:StoryTelling{name:"Suivi histoire film"}) CREATE (a)-[:PROVIDE_CONTEXT_FOR]->(b);





SEGUE
COMPLETA
INIZIA
CONTESTUALIZZA

MATCH (a)
WHERE a.name='Memory'
RETURN labels(a)


parameters =  {(:Audience{name:"Interactive"}),(:Audience{name:"Active"}),(:Audience{name:"Physycal"}),}

FOREACH parameters
MATCH (medium:Medium{name:"Film"}),
CREATE (parameters)-[:BENEFIT_OF]->(medium)


MATCH p=(:Audience{name:"Interactive"}),(:Audience{name:"Active"}),(:Audience{name:"Physycal"};
WHERE a.name='Alice' AND c.name='Eskil'
RETURN nodes(p)



## Note




(contenuto)-[:si_sviluppa_nella]->(Storia)-[:e_raccontata_nel]->(medium)<-[:creato_da]-(tech)
(medium)-[REPRESENTED]->(luogo)
(audience)-[usufruisce]->(medium)
(audience)-[si_reca]->(in_luogo)

(audience)-[GAIN]->(esperienza{tipo usufruizione})<-[GUIDE]-(storia)
(audience)-[GAIN]->(esperienza{})<-[DETERMINE]-(media)
(transmedia_story)-[GUIDE]->(experience{type:"holistic"})<-GAIN-(audience{type:"transmedia")}



todo --- utenti con stessa mail usufruiscono di medium e dunque fanno parte di audience
todo --- utenti che usufruiscono di tutti i media sono audience transmedia

(subscription_mail)-[IDENTIFY]>(user)->(part_of)->[audience]
(user)-[BENEFITS]->(storia)

(transmedia_story)-[e_composta_da]->(storie)
(personaggi)-[compongono]->(transmedia_story)
(luoghi-BE)-[]->(contenuti{archivio,memoria}
(luoghi-BE)-[]->(marta)

TODO (storia)-[segue]->(storia)


tempo

la storia si consume in un tempo(tipo:narrativo) determinato dal media
esperienza si_svolge_in tempo(tipo:quotidiano)
esperienza si_svolge_in tempo(tipo:realtime)


# General Neo4J usage

## Using Curl 

curl -u neo4j:stracan -i -H accept:application/json -H content-type:application/json -XPOST http://graph.levm.eu/db/data/transaction/commit   -d '{"statements":[{"statement":"CREATE (p:Person {name:{name},born:{born}}) RETURN p","parameters":{"name":"Keanu Reeves","born":1964}}]}'



# La memoria si fa carne

| Contenuto                             | Storia                 | Media      | Technologia                          | Luogo                              | Audience | Esperienza                             |
|---------------------------------------|------------------------|------------|--------------------------------------|------------------------------------|----------|----------------------------------------|
| memoria, archivio, cittadinanza, rete | storia                 | Film       | technologie filmique, photo, digital | internet archive, cinema, internet |          |                                        |
| archivio project                      | suivi histoire film    | libro      |                                      |                                    |          |                                        |
| network                               |                        | ARG        | GSM app, QR codes, iOS, android      | luoghi pubblici (geolocation)      |          | interaction, community,  participative |
|                                       | worldbuilding          | artefatti  |                                      | case                               |          | interazione                            |
|                                       | histoire dans le temps | website    | javascript, html5                    | internet                           |          | esperienza solitaria                   |
| memoire                               | event                  | VR         | VR-device                            | museum/gallery                     |          | immersive inviduale event based        |
|                                       | event                  | live-event |                                      | public                             |          | interaction environmental interaction  |
| timeline                              | stop time! pause       | photo      | layered images split screens         | gallery                            |          |                                        |


## Nodes identifycation
// CONTENUTO (memoria,cittadinanza, emigrazione, network) pro: in italia, in belgio, globale
// MEDIA(digital-book,artefacts,VR,photo,movie,live-events)
// TECH ( datavisual, nosql,vr-device, website,) prop: html5, javascript,
// LUOGHI(internet,socialmedia,musei,teatri,casa,spazi-pubblici)
// ESPERIENCE(immersive,participative,ad-hoc,personale)
// AUDIENCE(online-audience,book-audience,film-audience,art-audience,socialmedia-audience) prop: mainstream, niche
// NARRAZIONE(worldbuilding,trama,contesto)


##  Design for Queryability: 


contenuto si realizza in storia
storia si realizza in media
media e' generata da technologia
media e' localizzato in luogo
audience ottiene esperienza accedendo a media







Alternativa:

(:contenuto{tipo:"memoria"})-[:SI_REALIZZA]-(:audience{tipo:"mainstream"})-[:ATTRAVERSO]->(:elementi{tipo:"web-book"})
(:contenuto{tipo:"memoria"})-[:SI_REALIZZA]-(:audience{tipo:"mainstream"})-[:ATTRAVERSO]->(:elementi{tipo:"sito interattivo"})




Domanda: quale audience ha una esperienza interattiva attraverso la lettura di una parte della trama realizzata in un web-book

Possibili Risposte

(:persona{tipo:"online"})-[:OTTIENE]-(esperienza{tipo:"interattiva"})-[:USUFRUENDO]->(:elemento{tipo:"web-doc"})<-[:SI_REALIZZA]-(:narrazione{tipo:"worlbuilding"})
(:persona{tipo:"online"})-[:OTTIENE]->(esperienza{tipo:"interattiva"})<-[:GENERA]-(:elemento{tipo:"web-doc"})<-[:SI_REALIZZA_IN]-(:narrazione{tipo:"worlbuilding"})


# Transmedia Project

## Nodes identifycation
// FASI (concetto, sviluppo, produzione)
// ARTEFATTI (dossier, budget, 

da categorizzare:
crownfunding, team building, prototyping, storywriting, social