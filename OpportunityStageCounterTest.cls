@isTest
public class OpportunityStageCounterTest {
    @isTest static void testAllSameStageOpportunities() {

        // Create a list of Opportunities all with the same StageName
        List<Opportunity> opportunities = new List<Opportunity>();
        for (int i = 0; i < 5; i++) {
            opportunities.add(new Opportunity(StageName = 'Prospecting'));
        }

        // Call the countOpportunitiesByStage method
        Map<String, Integer> counts = OpportunityStageCounter.countOpportunitiesByStage(opportunities);

        // Check if the map has a single entry with the count equal to the number of opportunities
        System.assertEquals(1, counts.size());
        System.assertEquals(5, counts.get('Prospecting'));
    }
}