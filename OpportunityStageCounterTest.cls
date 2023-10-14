@isTest
public class OpportunityStageCounterTest {
    // Test method for countOpportunitiesByStage
    @isTest static void testCountOpportunitiesByStage() {

        // Create an Opportunity object with a variety of StageName values
        List<Opportunity> opportunities = new List<Opportunity>();
        String[] stages = new String[] {'Prospecting', 'Qualification', 'Needs Analysis', 'Value Proposition', 'Closed Won'};
        for(String stage : stages) {
            opportunities.add(new Opportunity(StageName = stage));
        }

        // Call the countOpportunitiesByStage method
        Map<String, Integer> counts = OpportunityStageCounter.countOpportunitiesByStage(opportunities);

        // Assert that each stage is counted correctly
        for(String stage : stages) {
            System.assertEquals(1, counts.get(stage));
        }

    }
}