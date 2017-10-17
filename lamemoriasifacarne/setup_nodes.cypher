

///// Preparazione

MATCH (n) DETACH DELETE n;

// CREATE CONSTRAINS
CREATE CONSTRAINT ON (concept:Concept) ASSERT concept.name IS UNIQUE;
CREATE CONSTRAINT ON (storytelling:StoryTelling) ASSERT storytelling.name IS UNIQUE;
CREATE CONSTRAINT ON (medium:Medium) ASSERT medium.name IS UNIQUE;
CREATE CONSTRAINT ON (place:Place) ASSERT place.name IS UNIQUE;
CREATE CONSTRAINT ON (component:Component) ASSERT component.name IS UNIQUE;
CREATE CONSTRAINT ON (audience:Audience) ASSERT audience.name IS UNIQUE;
CREATE CONSTRAINT ON (characters:Characters) ASSERT characters.name IS UNIQUE;
CREATE CONSTRAINT ON (transmedia:Transmedia) ASSERT transmedia.name IS UNIQUE;
CREATE CONSTRAINT ON (tempo:Tempo) ASSERT tempo.name IS UNIQUE;
CREATE CONSTRAINT ON (experience:Experience) ASSERT experience.name IS UNIQUE;

CREATE
(:Audience{name:"Interactive"}),
(:Audience{name:"Transmedia"}),
(:Audience{name:"Visual"}),
(:Audience{name:"Gamers"}),
(:Audience{name:"Partecipative"}),
(:Audience{name:"Personal"}),
(:Audience{name:"Active"}),
(:Audience{name:"Online"}),
(:Audience{name:"Physical"}),
(:Audience{name:"Reader"});

CREATE
(:Concept{name:"Memory"}),
(:Concept{name:"Archive"}),
(:Concept{name:"Citizenship"}),
(:Concept{name:"Network"}),
(:Concept{name:"WorldBuilding"}),
(:Concept{name:"Immigration"}),
(:Concept{name:"Route/Journey"}),
(:Concept{name:"Identity"}),
(:Concept{name:"Participative"});

//// storytellings
CREATE
(:StoryTelling{name:"Transmedia storytelling"}),
(:StoryTelling{name:"Film storytelling"}),
(:StoryTelling{name:"Augmented Reality Game storytelling"}),
(:StoryTelling{name:"Digital Doc storytelling"}),
(:StoryTelling{name:"Virtual Reality storytelling"}),
(:StoryTelling{name:"Website storytelling"}),
(:StoryTelling{name:"Book storytelling"}),
(:StoryTelling{name:"Live Events storytelling"});

//// places
CREATE
(:Place{name:"Cinema"}),
(:Place{name:"Internet Achive"}),
(:Place{name:"Internet"}),
(:Place{name:"Gallery/Museum"}),
(:Place{name:"Belgium"}),
(:Place{name:"Italy"}),
(:Place{name:"Public Space"}),
(:Place{name:"Data Ingress"}),
(:Place{name:"Book Store"});

//// medium
CREATE
(:Medium{name:"Film"}),
(:Medium{name:"Book"}),
(:Medium{name:"Augmented Reality Game"}),
(:Medium{name:"Digital Doc"}),
(:Medium{name:"Virtual Reality"}),
(:Medium{name:"Website"}),
(:Medium{name:"Live Event"}),
(:Medium{name:"Artefact"}),
(:Medium{name:"Social Media"}),
(:Medium{name:"Data Reporting Dashboard"});


//// component
CREATE
(:Component{name:"Field-interviews"}),
(:Component{name:"Film-making"}),
(:Component{name:"Photo"}),
(:Component{name:"GSM"}),
(:Component{name:"Javascript"}),
(:Component{name:"HTML5"}),
(:Component{name:"VR-Device"}),
(:Component{name:"VR-Software"}),
(:Component{name:"Audio"}),
(:Component{name:"Development"}),
(:Component{name:"Writing"}),
(:Component{name:"Performance"}),
(:Component{name:"Artefact building"}),
(:Component{name:"Twitter"}),
(:Component{name:"Instagram"}),
(:Component{name:"Facebook"}),
(:Component{name:"G+"}),
(:Component{name:"Data Stream"}),
(:Component{name:"Data Process & Store"});


//// characters
CREATE
(:Character{name:"Marta"}),
(:Character{name:"MiSa"});


// EXPERIENCE
CREATE
(experience_use:Experience{name:"use"}),
(experience_holistic:Experience{name:"holistic"});


//TEMPO
CREATE
(tempo_daily:Tempo{name:"daily"}),
(tempo_realtime:Tempo{name:"realtime"}),
(tempo_cinematographic:Tempo{name:"cinematographic"}),
(tempo_narrative:Tempo{name:"narrative"});






