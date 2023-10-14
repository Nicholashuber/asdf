@isTest
public class OpportunityStageCounterTest {
    @isTest static void testNoOpportunities() {

        // Create an empty list of Opportunities
        List<Opportunity> opportunities = new List<Opportunity>();

        // Call the countOpportunitiesByStage method
        Map<String, Integer> counts = OpportunityStageCounter.countOpportunitiesByStage(opportunities);

        // Assert that the map is empty
        System.assertEquals(0, counts.size());

    }
}