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

    @isTest
    static void testCountOpportunitiesByStageWithDifferentStages() {
        // Given
        OpportunityStageCounter counter = new OpportunityStageCounter();

        // Prepare data
        Opportunity opp1 = new Opportunity(StageName='Stage1');
        Opportunity opp2 = new Opportunity(StageName='Stage2');
        insert new List<Opportunity>{opp1,opp2};

        // When
        Map<String, Integer> result = counter.countOpportunitiesByStage();

        // Then
        System.assertEquals(2, result.size(), 'Expected 2 stages in result');
        System.assertEquals(1, result.get('Stage1'), 'Expected 1 opportunity in Stage1');
        System.assertEquals(1, result.get('Stage2'), 'Expected 1 opportunity in Stage2');
    }

    @isTest
    static void testCountOpportunitiesByStageWithSameStages() {
        // Given
        OpportunityStageCounter counter = new OpportunityStageCounter();

        // Prepare data
        Opportunity opp1 = new Opportunity(StageName='Stage1');
        Opportunity opp2 = new Opportunity(StageName='Stage1');
        insert new List<Opportunity>{opp1,opp2};

        // When
        Map<String, Integer> result = counter.countOpportunitiesByStage();

        // Then
        System.assertEquals(1, result.size(), 'Expected 1 stage in result');
        System.assertEquals(2, result.get('Stage1'), 'Expected 2 opportunities in Stage1');
    }
}