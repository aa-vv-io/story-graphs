
// characters

MATCH
(character1:Character{name:"Marta"}),
(character2:Character{name:"MiSa"}),
(place1:Place{name:"Belgium"}),
(place2:Place{name:"Italy"})
CREATE UNIQUE
(character1)-[:ACCESS]->(place1),
(character1)-[:ACCESS]->(place2),
(character2)-[:ACCESS]->(place1),
(character1)-[:ACCESS]->(place2);


// storytelling

MATCH
(s0:StoryTelling{name:"Transmedia storytelling"}),
(s1:StoryTelling{name:"Film storytelling"}),
(s2:StoryTelling{name:"Augmented Reality Game storytelling"}),
(s3:StoryTelling{name:"Digital Doc storytelling"}),
(s4:StoryTelling{name:"Virtual Reality storytelling"}),
(s5:StoryTelling{name:"Book storytelling"}),
(s6:StoryTelling{name:"Live Events storytelling"}),
(s7:StoryTelling{name:"Website storytelling"}),
(e1:Experience{name:"holistic"})
CREATE UNIQUE
(s0)-[:ORCHESTRATE]->(s1),
(s0)-[:ORCHESTRATE]->(s2),
(s0)-[:ORCHESTRATE]->(s3),
(s0)-[:ORCHESTRATE]->(s4),
(s0)-[:ORCHESTRATE]->(s5),
(s0)-[:ORCHESTRATE]->(s6),
(s7)-[:START]->(s0),
(s1)-[:HAS_SEQUEL]->(s5),
(s2)-[:EXPAND]->(s3),
(s4)-[:DIVE_DEEP_IN]->(s1),
(s6)-[:EXPAND]->(s4),
(s0)-[:BENEFIT_OF]-(e1);


// websites (todo muovere in nodes)

MATCH
(s1:StoryTelling{name:"Film storytelling"}),
(s2:StoryTelling{name:"Augmented Reality Game storytelling"}),
(s3:StoryTelling{name:"Digital Doc storytelling"}),
(s4:StoryTelling{name:"Virtual Reality storytelling"}),
(s5:StoryTelling{name:"Book storytelling"}),
(s6:StoryTelling{name:"Live Events storytelling"}),
(m1:Medium{name:"Website"})
CREATE UNIQUE
(s1)-[:HAS]->(p1:Place{name:"Film Story website"}),
(s2)-[:HAS]->(p2:Place{name:"ARG Story website"}),
(s3)-[:HAS]->(p3:Place{name:"DigitalDoc Story website"}),
(s4)-[:HAS]->(p4:Place{name:"VR Story website"}),
(s5)-[:HAS]->(p5:Place{name:"Book Story website"}),
(s6)-[:HAS]->(p6:Place{name:"Live Events website"}),
(p1)-[:DERIVED_FROM]->(m),
(p2)-[:DERIVED_FROM]->(m),
(p3)-[:DERIVED_FROM]->(m),
(p4)-[:DERIVED_FROM]->(m),
(p5)-[:DERIVED_FROM]->(m),
(p6)-[:DERIVED_FROM]->(m);



// Data Interaction

MATCH
(a1:Audience{name:"Interactive"}),
(a2:Audience{name:"Transmedia"}),
(a3:Audience{name:"Visual"}),
(a4:Audience{name:"Gamers"}),
(a5:Audience{name:"Partecipative"}),
(a6:Audience{name:"Personal"}),
(a7:Audience{name:"Active"}),
(a8:Audience{name:"Online"}),
(a9:Audience{name:"Physical"}),
(a10:Audience{name:"Reader"}),
(p1:Place{name:"Film Story website"}),
(p2:Place{name:"ARG Story website"}),
(p3:Place{name:"DigitalDoc Story website"}),
(p4:Place{name:"VR Story website"}),
(p5:Place{name:"Book Story website"}),
(p6:Place{name:"Live Events website"}),
(p7:Place{name:"Data Ingress"}),
(s1:StoryTelling{name:"Transmedia storytelling"}),
(m1:Medium{name:"Data Reporting Dashboard"}),
(c1:Component{name:"Data Stream"}),
(c2:Component{name:"Data Process & Store"})


MATCH
(a1:Audience{name:"Interactive"}),
(a2:Audience{name:"Transmedia"}),
(a3:Audience{name:"Visual"}),
(a4:Audience{name:"Gamers"}),
(a5:Audience{name:"Partecipative"}),
(a6:Audience{name:"Personal"}),
(a7:Audience{name:"Active"}),
(a8:Audience{name:"Online"}),
(a9:Audience{name:"Physical"}),
(a10:Audience{name:"Reader"}),
(p1:Place{name:"Film Story website"}),
(p2:Place{name:"ARG Story website"}),
(p3:Place{name:"DigitalDoc Story website"}),
(p4:Place{name:"VR Story website"}),
(p5:Place{name:"Book Story website"}),
(p6:Place{name:"Live Events website"}),
(p7:Place{name:"Data Ingress"})
CREATE UNIQUE
(a1)-[:INPUT_TO]->(p7),
(a2)-[:INPUT_TO]->(p7),
(a3)-[:INPUT_TO]->(p7),
(a4)-[:INPUT_TO]->(p7),
(a5)-[:INPUT_TO]->(p7),
(a6)-[:INPUT_TO]->(p7),
(a7)-[:INPUT_TO]->(p7),
(a8)-[:INPUT_TO]->(p7),
(a9)-[:INPUT_TO]->(p7),
(a10)-[:INPUT_TO]->(p7);



MATCH
(p1:Place{name:"Film Story website"}),
(p2:Place{name:"ARG Story website"}),
(p3:Place{name:"DigitalDoc Story website"}),
(p4:Place{name:"VR Story website"}),
(p5:Place{name:"Book Story website"}),
(p6:Place{name:"Live Events website"}),
(p7:Place{name:"Data Ingress"})
CREATE UNIQUE
(p1)-[:INPUT_TO]->(p7),
(p2)-[:INPUT_TO]->(p7),
(p3)-[:INPUT_TO]->(p7),
(p4)-[:INPUT_TO]->(p7),
(p5)-[:INPUT_TO]->(p7),
(p6)-[:INPUT_TO]->(p7);


MATCH
(p7:Place{name:"Data Ingress"}),
(s1:StoryTelling{name:"Transmedia storytelling"}),
(m1:Medium{name:"Data Reporting Dashboard"}),
(c1:Component{name:"Data Stream"}),
(c2:Component{name:"Data Process & Store"})
CREATE UNIQUE
(p7)-[:STREAM_TO]->(c1);


MATCH
(p7:Place{name:"Data Ingress"}),
(s1:StoryTelling{name:"Transmedia storytelling"}),
(m1:Medium{name:"Data Reporting Dashboard"}),
(c1:Component{name:"Data Stream"}),
(c2:Component{name:"Data Process & Store"})
CREATE UNIQUE
(c2)-[:PROCESS]->(c1);

MATCH
(p7:Place{name:"Data Ingress"}),
(s1:StoryTelling{name:"Transmedia storytelling"}),
(m1:Medium{name:"Data Reporting Dashboard"}),
(c1:Component{name:"Data Stream"}),
(c2:Component{name:"Data Process & Store"})
CREATE UNIQUE
(m1)-[:REPORTS]->(c2);

MATCH
(p7:Place{name:"Data Ingress"}),
(s1:StoryTelling{name:"Transmedia storytelling"}),
(m1:Medium{name:"Data Reporting Dashboard"}),
(c1:Component{name:"Data Stream"}),
(c2:Component{name:"Data Process & Store"})
CREATE UNIQUE
(m1)-[:PROVIDE_INSIGHTS_TO]->(s1);

