@isTest
public class OpportunityStageCounterTest {
    @testSetup
    static void setupTestData() {
    }

    @isTest
    static void testCountOpportunitiesByStageWithNoOpportunities() {
        // Given
        OpportunityStageCounter counter = new OpportunityStageCounter();

        // When
        Map<String, Integer> result = counter.countOpportunitiesByStage();

        // Then
        System.assertEquals(true, result.isEmpty(), 'Expected an empty map when no Opportunities in database');
    }
}