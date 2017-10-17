MATCH
(concept1:Concept{name:"Participative"}),
(concept2:Concept{name:"Identity"}),
(storytelling:StoryTelling{name:"Augmented Reality Game storytelling"})
CREATE UNIQUE
(concept1)-[:IS_DEVELOP_IN]->(storytelling),
(concept2)-[:IS_DEVELOP_IN]->(storytelling);



MATCH
(concept1:Concept{name:"Participative"}),
(concept2:Concept{name:"Identity"}),
(storytelling:StoryTelling{name:"Virtual Reality storytelling"})
CREATE UNIQUE
(concept1)-[:IS_DEVELOP_IN]->(storytelling),
(concept2)-[:IS_DEVELOP_IN]->(storytelling);



MATCH
(concept1:Concept{name:"Participative"}),
(concept2:Concept{name:"Identity"}),
(storytelling:StoryTelling{name:"Film storytelling"})
CREATE UNIQUE
(concept1)-[:IS_DEVELOP_IN]->(storytelling),
(concept2)-[:IS_DEVELOP_IN]->(storytelling);



MATCH
(concept2:Concept{name:"Identity"}),
(storytelling:StoryTelling{name:"Digital Doc storytelling"})
CREATE UNIQUE
(concept1)-[:IS_DEVELOP_IN]->(storytelling);



MATCH
(concept2:Concept{name:"Identity"}),
(storytelling:StoryTelling{name:"Book storytelling"})
CREATE UNIQUE
(concept2)-[:IS_DEVELOP_IN]->(storytelling);


MATCH
(concept2:Concept{name:"Identity"}),
(storytelling:StoryTelling{name:"Website storytelling"})
CREATE UNIQUE
(concept2)-[:IS_DEVELOP_IN]->(storytelling);