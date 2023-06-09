public with sharing class ClinicalTrialDataParser {
    
     @AuraEnabled public StudyFieldsResponse studyfieldsresponse;
    
	public class StudyFields {
		@AuraEnabled public Integer Rank;
		@AuraEnabled public List<String> BriefTitle;
		@AuraEnabled public List<String> Condition;
		@AuraEnabled public List<String> StartDate;
	}


	public class StudyFieldsResponse {
		@AuraEnabled public String APIVrs;
		@AuraEnabled public String DataVrs;
		@AuraEnabled public String Expression;
		@AuraEnabled public Integer NStudiesAvail;
		@AuraEnabled public Integer NStudiesFound;
		@AuraEnabled public Integer MinRank;
		@AuraEnabled public Integer MaxRank;
		@AuraEnabled public Integer NStudiesReturned;
		@AuraEnabled public List<String> FieldList;
		@AuraEnabled public List<StudyFields> studyFields;
	}

	
	public static ClinicalTrialDataParser parse(String json) {
		return (ClinicalTrialDataParser) System.JSON.deserialize(json, ClinicalTrialDataParser.class);
	}
}