




//FILM


MATCH
(concept1:Concept{name:"Memory"}),
(concept2:Concept{name:"Archive"}),
(storytelling:StoryTelling{name:"Film storytelling"})
CREATE UNIQUE
(concept1)-[:IS_DEVELOP_IN]->(storytelling),
(concept2)-[:IS_DEVELOP_IN]->(storytelling);


MATCH
(storytelling:StoryTelling{name:"Film storytelling"}),
(place1:Place{name:"Cinema"}),
(place2:Place{name:"Internet"}),
(place3:Place{name:"Belgium"}),
(medium:Medium{name:"Film"}),
(component1:Component{name:"Film-making"}),
(component2:Component{name:"Photo"})
CREATE UNIQUE
(storytelling)-[:IS_TOLD_IN]->(medium),
(medium)-[:IS_REPRESENTED_IN]->(place1),
(medium)-[:IS_REPRESENTED_IN]->(place2),
(medium)-[:DEVELOPED_WITH]->(component1),
(medium)-[:DEVELOPED_WITH]->(component2);

MATCH
(storytelling:StoryTelling{name:"Film storytelling"}),
(medium:Medium{name:"Film"}),
(audience1:Audience{name:"Personal"}),
(audience2:Audience{name:"Visual"}),
(experience:Experience{name:"use"}),
(tempo1:Tempo{name:"narrative"}),
(tempo2:Tempo{name:"cinematographic"}),
(place1:Place{name:"Cinema"}),
(place2:Place{name:"Internet"}),
(place3:Place{name:"Belgium"})
CREATE UNIQUE
(audience1)-[:BENEFIT_OF]->(medium),
(audience1)-[:ACCESS]->(place1),
(audience1)-[:ACCESS]->(place2),
(audience1)-[:ACCESS]->(place3),
(audience1)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(medium)-[:DETERMINE]->(experience),
(storytelling)-[:IS_CONSUMED_IN]->(tempo1),
(experience)-[:TAKE_PLACE_IN]->(tempo2);


//VR



MATCH
(storytelling:StoryTelling{name:"Virtual Reality storytelling"}),
(concept1:Concept{name:"Network"}),
(concept2:Concept{name:"Immigration"}),
(concept3:Concept{name:"Memory"})
CREATE UNIQUE
(concept1)-[:IS_DEVELOP_IN]->(storytelling),
(concept2)-[:IS_DEVELOP_IN]->(storytelling),
(concept3)-[:IS_DEVELOP_IN]->(storytelling);

MATCH
(storytelling:StoryTelling{name:"Virtual Reality storytelling"}),
(place1:Place{name:"Internet"}),
(place2:Place{name:"Gallery/Museum"}),
(place3:Place{name:"Belgium"}),
(medium:Medium{name:"Virtual Reality"}),
(component1:Component{name:"VR-Device"}),
(component2:Component{name:"VR-Software"})
CREATE UNIQUE
(storytelling)-[:IS_TOLD_IN]->(medium),
(medium)-[:DEVELOPED_WITH]->(component1),
(medium)-[:DEVELOPED_WITH]->(component2);


MATCH
(place1:Place{name:"Internet"}),
(place2:Place{name:"Gallery/Museum"}),
(place3:Place{name:"Belgium"}),
(medium:Medium{name:"Virtual Reality"}),
(audience1:Audience{name:"Active"}),
(audience2:Audience{name:"Physical"}),
(audience3:Audience{name:"Interactive"})
CREATE UNIQUE
(medium)-[:IS_REPRESENTED_IN]->(place1),
(medium)-[:IS_REPRESENTED_IN]->(place2),
(medium)-[:IS_REPRESENTED_IN]->(place3),
(audience1)-[:ACCESS]->(place1),
(audience1)-[:ACCESS]->(place2),
(audience2)-[:ACCESS]->(place1),
(audience2)-[:ACCESS]->(place2),
(audience3)-[:ACCESS]->(place1),
(audience3)-[:ACCESS]->(place2);

MATCH
(storytelling:StoryTelling{name:"Virtual Reality storytelling"}),
(medium:Medium{name:"Virtual Reality"}),
(audience1:Audience{name:"Active"}),
(audience2:Audience{name:"Physical"}),
(audience3:Audience{name:"Interactive"}),
(experience:Experience{name:"use"}),
(tempo1:Tempo{name:"realtime"}),
(tempo2:Tempo{name:"realtime"})
CREATE UNIQUE
(audience1)-[:BENEFIT_OF]->(medium),
(audience1)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(audience2)-[:BENEFIT_OF]->(medium),
(audience2)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(audience3)-[:BENEFIT_OF]->(medium),
(audience3)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(medium)-[:DETERMINE]->(experience),
(storytelling)-[:IS_CONSUMED_IN]->(tempo1),
(experience)-[:TAKE_PLACE_IN]->(tempo2);

//ARG

// concept-story
MATCH
(concept1:Concept{name:"Route/Journey"}),
(concept2:Concept{name:"Immigration"}),
(concept3:Concept{name:"Network"}),
(storytelling:StoryTelling{name:"Augmented Reality Game storytelling"})
CREATE UNIQUE
(concept1)-[:IS_DEVELOP_IN]->(storytelling),
(concept2)-[:IS_DEVELOP_IN]->(storytelling);

// medium - component
MATCH
(storytelling:StoryTelling{name:"Augmented Reality Game storytelling"}),
(medium:Medium{name:"Augmented Reality Game"}),
(component1:Component{name:"Development"}),
(component2:Component{name:"GSM"})
CREATE UNIQUE
(storytelling)-[:IS_TOLD_IN]->(medium),
(medium)-[:DEVELOPED_WITH]->(component1),
(medium)-[:DEVELOPED_WITH]->(component2);

// audience - tempo - experience
MATCH
(storytelling:StoryTelling{name:"Augmented Reality Game storytelling"}),
(medium:Medium{name:"Augmented Reality Game"}),
(audience1:Audience{name:"Active"}),
(audience2:Audience{name:"Interactive"}),
(audience3:Audience{name:"Gamers"}),
(audience4:Audience{name:"Physical"}),
(audience5:Audience{name:"Partecipative"}),
(experience:Experience{name:"use"}),
(tempo1:Tempo{name:"narrative"}),
(tempo2:Tempo{name:"daily"})
CREATE UNIQUE
(audience1)-[:BENEFIT_OF]->(medium),
(audience1)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(audience2)-[:BENEFIT_OF]->(medium),
(audience2)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(audience3)-[:BENEFIT_OF]->(medium),
(audience3)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(audience4)-[:BENEFIT_OF]->(medium),
(audience4)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(audience5)-[:BENEFIT_OF]->(medium),
(audience5)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(medium)-[:DETERMINE]->(experience),
(storytelling)-[:IS_CONSUMED_IN]->(tempo1),
(experience)-[:TAKE_PLACE_IN]->(tempo2);

// places todo - error -
MATCH
(place1:Place{name:"Public Space"}),
(place2:Place{name:"Internet"}),
(place3:Place{name:"Belgium"}),
(medium:Medium{name:"Augmented Reality Game"}),
(audience1:Audience{name:"Active"}),
(audience2:Audience{name:"Interactive"}),
(audience3:Audience{name:"Gamers"}),
(audience4:Audience{name:"Physical"}),
(audience5:Audience{name:"Partecipative"})
CREATE UNIQUE
(medium)-[:IS_REPRESENTED_IN]->(place1),
(medium)-[:IS_REPRESENTED_IN]->(place2),
(medium)-[:IS_REPRESENTED_IN]->(place3),
(audience1)-[:ACCESS]->(place1),
(audience1)-[:ACCESS]->(place2),
(audience1)-[:ACCESS]->(place3),
(audience2)-[:ACCESS]->(place1),
(audience2)-[:ACCESS]->(place2),
(audience2)-[:ACCESS]->(place3),
(audience3)-[:ACCESS]->(place1),
(audience3)-[:ACCESS]->(place2),
(audience3)-[:ACCESS]->(place3),
(audience4)-[:ACCESS]->(place1),
(audience4)-[:ACCESS]->(place2),
(audience4)-[:ACCESS]->(place3),
(audience5)-[:ACCESS]->(place1),
(audience5)-[:ACCESS]->(place2),
(audience5)-[:ACCESS]->(place3);



//DIGITALDOC


// concept-story

MATCH
(storytelling:StoryTelling{name:"Digital Doc storytelling"}),
(concept1:Concept{name:"Route/Journey"}),
(concept2:Concept{name:"Immigration"}),
(concept3:Concept{name:"Network"}),
(concept4:Concept{name:"Immigration"}),
(concept5:Concept{name:"Memory"})
CREATE UNIQUE
(concept1)-[:IS_DEVELOP_IN]->(storytelling),
(concept2)-[:IS_DEVELOP_IN]->(storytelling),
(concept3)-[:IS_DEVELOP_IN]->(storytelling),
(concept4)-[:IS_DEVELOP_IN]->(storytelling),
(concept5)-[:IS_DEVELOP_IN]->(storytelling);

// medium - component

MATCH
(storytelling:StoryTelling{name:"Digital Doc storytelling"}),
(medium:Medium{name:"Digital Doc"}),
(component1:Component{name:"Development"}),
(component2:Component{name:"Javascript"}),
(component3:Component{name:"HTML5"})
CREATE UNIQUE
(storytelling)-[:IS_TOLD_IN]->(medium),
(medium)-[:DEVELOPED_WITH]->(component1),
(medium)-[:DEVELOPED_WITH]->(component2),
(medium)-[:DEVELOPED_WITH]->(component3);

// audience - tempo - experience

MATCH
(storytelling:StoryTelling{name:"Digital Doc storytelling"}),
(medium:Medium{name:"Digital Doc"}),
(audience1:Audience{name:"Interactive"}),
(audience2:Audience{name:"Online"}),
(experience:Experience{name:"use"}),
(tempo1:Tempo{name:"narrative"}),
(tempo2:Tempo{name:"daily"})
CREATE UNIQUE
(audience1)-[:BENEFIT_OF]->(medium),
(audience1)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(audience2)-[:BENEFIT_OF]->(medium),
(audience2)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(medium)-[:DETERMINE]->(experience),
(storytelling)-[:IS_CONSUMED_IN]->(tempo1),
(experience)-[:TAKE_PLACE_IN]->(tempo2);

// places

MATCH
(audience1:Audience{name:"Interactive"}),
(audience2:Audience{name:"Online"}),
(place1:Place{name:"Internet"}),
(medium:Medium{name:"Digital Doc"})
CREATE UNIQUE
(medium)-[:IS_REPRESENTED_IN]->(place1),
(audience1)-[:ACCESS]->(place1),
(audience2)-[:ACCESS]->(place1);


// Book

// concept-story

MATCH
(storytelling:StoryTelling{name:"Book storytelling"}),
(concept1:Concept{name:"Route/Journey"}),
(concept2:Concept{name:"Immigration"}),
(concept3:Concept{name:"Network"}),
(concept4:Concept{name:"Memory"}),
(concept5:Concept{name:"Citizenship"})
CREATE UNIQUE
(concept1)-[:IS_DEVELOP_IN]->(storytelling),
(concept2)-[:IS_DEVELOP_IN]->(storytelling),
(concept3)-[:IS_DEVELOP_IN]->(storytelling),
(concept4)-[:IS_DEVELOP_IN]->(storytelling),
(concept5)-[:IS_DEVELOP_IN]->(storytelling);

// medium - component

MATCH
(storytelling:StoryTelling{name:"Book storytelling"}),
(medium:Medium{name:"Book"}),
(component1:Component{name:"Writing"}),
(component2:Component{name:"Photo"})
CREATE UNIQUE
(storytelling)-[:IS_TOLD_IN]->(medium),
(medium)-[:DEVELOPED_WITH]->(component1),
(medium)-[:DEVELOPED_WITH]->(component2);

// audience - tempo - experience

MATCH
(storytelling:StoryTelling{name:"Book storytelling"}),
(medium:Medium{name:"Book"}),
(audience1:Audience{name:"Reader"}),
(audience2:Audience{name:"Personal"}),
(experience:Experience{name:"use"}),
(tempo1:Tempo{name:"narrative"}),
(tempo2:Tempo{name:"daily"})
CREATE UNIQUE
(audience1)-[:BENEFIT_OF]->(medium),
(audience1)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(audience2)-[:BENEFIT_OF]->(medium),
(audience2)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(medium)-[:DETERMINE]->(experience),
(storytelling)-[:IS_CONSUMED_IN]->(tempo1),
(experience)-[:TAKE_PLACE_IN]->(tempo2);

// places

MATCH
(audience1:Audience{name:"Reader"}),
(audience2:Audience{name:"Personal"}),
(place1:Place{name:"Book Store"}),
(medium:Medium{name:"Book"})
CREATE UNIQUE
(medium)-[:IS_REPRESENTED_IN]->(place1),
(audience1)-[:ACCESS]->(place1),
(audience2)-[:ACCESS]->(place1);

// WebSite & Artifacts & Social Media

// concept-story

MATCH
(storytelling:StoryTelling{name:"Website storytelling"}),
(concept1:Concept{name:"Route/Journey"}),
(concept2:Concept{name:"Immigration"}),
(concept3:Concept{name:"Network"}),
(concept4:Concept{name:"Immigration"}),
(concept5:Concept{name:"Memory"})
CREATE UNIQUE
(concept1)-[:IS_DEVELOP_IN]->(storytelling),
(concept2)-[:IS_DEVELOP_IN]->(storytelling),
(concept3)-[:IS_DEVELOP_IN]->(storytelling),
(concept4)-[:IS_DEVELOP_IN]->(storytelling),
(concept5)-[:IS_DEVELOP_IN]->(storytelling);

// medium - component

MATCH
(storytelling:StoryTelling{name:"Website storytelling"}),
(medium:Medium{name:"Website"}),
(medium2:Medium{name:"Artefact"}),
(component1:Component{name:"Development"}),
(component2:Component{name:"Javascript"}),
(component3:Component{name:"HTML5"}),
(component4:Component{name:"Artefact building"}),
(component5:Component{name:"Twitter"}),
(component6:Component{name:"Instagram"}),
(component7:Component{name:"Facebook"}),
(component8:Component{name:"G+"})
CREATE UNIQUE
(storytelling)-[:IS_TOLD_IN]->(medium),
(storytelling)-[:IS_TOLD_IN]->(medium2),
(medium)-[:DEVELOPED_WITH]->(component1),
(medium)-[:DEVELOPED_WITH]->(component2),
(medium)-[:DEVELOPED_WITH]->(component3),
(medium)-[:DEVELOPED_WITH]->(component5),
(medium)-[:DEVELOPED_WITH]->(component6),
(medium)-[:DEVELOPED_WITH]->(component7),
(medium)-[:DEVELOPED_WITH]->(component8),
(medium2)-[:DEVELOPED_WITH]->(component4);


// audience - tempo - experience

MATCH
(storytelling:StoryTelling{name:"Website storytelling"}),
(medium:Medium{name:"Website"}),
(audience1:Audience{name:"Interactive"}),
(audience2:Audience{name:"Online"}),
(experience:Experience{name:"use"}),
(tempo1:Tempo{name:"narrative"}),
(tempo2:Tempo{name:"daily"}),
(tempo3:Tempo{name:"realtime"})
CREATE UNIQUE
(audience1)-[:BENEFIT_OF]->(medium),
(audience1)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(audience2)-[:BENEFIT_OF]->(medium),
(audience2)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(medium)-[:DETERMINE]->(experience),
//(medium2)-[:DETERMINE]->(experience),
(storytelling)-[:IS_CONSUMED_IN]->(tempo1),
(experience)-[:TAKE_PLACE_IN]->(tempo2),
(experience)-[:TAKE_PLACE_IN]->(tempo3);

// places

MATCH
(audience1:Audience{name:"Interactive"}),
(audience2:Audience{name:"Online"}),
(place1:Place{name:"Internet"}),
(medium:Medium{name:"Website"})
CREATE UNIQUE
(medium)-[:IS_REPRESENTED_IN]->(place1),
(audience1)-[:ACCESS]->(place1),
(audience2)-[:ACCESS]->(place1);


// Live Events


MATCH
(storytelling:StoryTelling{name:"Live Events storytelling"}),
(concept1:Concept{name:"Network"}),
(concept2:Concept{name:"Immigration"})
CREATE UNIQUE
(concept1)-[:IS_DEVELOP_IN]->(storytelling),
(concept2)-[:IS_DEVELOP_IN]->(storytelling);
MATCH
(storytelling:StoryTelling{name:"Live Events storytelling"}),
(place1:Place{name:"Internet"}),
(place2:Place{name:"Gallery/Museum"}),
(place3:Place{name:"Belgium"}),
(medium:Medium{name:"Live Event"}),
(component1:Component{name:"Performance"}),
(component2:Component{name:"Writing"})
CREATE UNIQUE
(storytelling)-[:IS_TOLD_IN]->(medium),
(medium)-[:DEVELOPED_WITH]->(component1),
(medium)-[:DEVELOPED_WITH]->(component2);


MATCH
(place1:Place{name:"Internet"}),
(place2:Place{name:"Gallery/Museum"}),
(place3:Place{name:"Belgium"}),
(medium:Medium{name:"Live Event"}),
(audience1:Audience{name:"Personal"}),
(audience2:Audience{name:"Physical"})
CREATE UNIQUE
(medium)-[:IS_REPRESENTED_IN]->(place1),
(medium)-[:IS_REPRESENTED_IN]->(place2),
(medium)-[:IS_REPRESENTED_IN]->(place3),
(audience1)-[:ACCESS]->(place1),
(audience1)-[:ACCESS]->(place2),
(audience2)-[:ACCESS]->(place1),
(audience2)-[:ACCESS]->(place2);

MATCH
(storytelling:StoryTelling{name:"Live Events storytelling"}),
(medium:Medium{name:"Live Event"}),
(audience1:Audience{name:"Personal"}),
(audience2:Audience{name:"Physical"}),
(experience:Experience{name:"use"}),
(tempo1:Tempo{name:"realtime"}),
(tempo2:Tempo{name:"realtime"})
CREATE UNIQUE
(audience1)-[:BENEFIT_OF]->(medium),
(audience1)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(audience2)-[:BENEFIT_OF]->(medium),
(audience2)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
//(audience3)-[:BENEFIT_OF]->(medium),
//(audience3)-[:GAIN]->(experience)<-[:GUIDE]-(storytelling),
(medium)-[:DETERMINE]->(experience),
(storytelling)-[:IS_CONSUMED_IN]->(tempo1),
(experience)-[:TAKE_PLACE_IN]->(tempo2);



