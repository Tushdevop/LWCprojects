public with sharing class ClinicalTrialDataController {
    

    @AuraEnabled
    public static ClinicalTrialDataParser getClinicalData(){
        
        string baseURL= 'https://clinicaltrials.gov/api/query/study_fields?expr=heart+attack&fields=NCTId,BriefTitle,Condition,StartDate&min_rnk=1&max_rnk=&fmt=json';

        HTTP http=new HTTP();
        HTTPRequest request=new HTTPRequest();
        request.setEndpoint(baseURL);
        request.setMethod('GET');
        request.setHeader('Accept', 'application/json');
        HttpResponse response = http.send(request);

        ClinicalTrialDataParser data=ClinicalTrialDataParser.parse(response.getBody());
        return data;
    }
}