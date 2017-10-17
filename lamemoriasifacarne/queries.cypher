//  Audience & Media
MATCH (audience)-[r:IS_DEVELOP_IN]->(medium) RETURN audience,medium
// Story Told in medium
MATCH (storytelling)-[r:IS_TOLD_IN]->(medium) RETURN storytelling,medium
// audience and experience
MATCH (audience)-[r:BENEFIT_OF]->(experience) RETURN audience,experience
// concept(s) develop in story
MATCH (c:Concept{name:"Network"})-[:IS_DEVELOP_IN]->(story:StoryTelling) RETURN c,story
// all nodes
MATCH (n) RETURN n;