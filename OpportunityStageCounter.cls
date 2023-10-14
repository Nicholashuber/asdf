public class OpportunityStageCounter {
    
    // Method to count the number of Opportunities by Stage
    public static Map<String, Integer> countOpportunitiesByStage() {
        // Initialize a map to hold stage names as keys and counts as values
        Map<String, Integer> stageCounts = new Map<String, Integer>();
        
        // Query Opportunities and iterate through them
        for(Opportunity opp : [SELECT StageName FROM Opportunity]) {
            if(stageCounts.containsKey(opp.StageName)) {
                stageCounts.put(opp.StageName, stageCounts.get(opp.StageName) + 1);
            } else {
                stageCounts.put(opp.StageName, 1);
            }
        }
        
        return stageCounts;
    }
}
