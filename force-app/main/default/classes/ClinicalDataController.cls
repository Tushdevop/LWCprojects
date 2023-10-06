/*
* Parser class
*/
public with sharing class ClinicalDataController {
    
    @AuraEnabled
    public static ClinicalDataParser getFullStudiesData(){
        
        string baseURL= 'https://clinicaltrials.gov/api/query/full_studies?expr=infection&min_rnk=1&max_rnk=&fmt=json';

        HTTP http=new HTTP();
        HTTPRequest request=new HTTPRequest();
        request.setEndpoint(baseURL);
        request.setMethod('GET');
        request.setHeader('Accept', 'application/json');
        HttpResponse response = http.send(request);

        ClinicalDataParser data=ClinicalDataParser.parse(response.getBody());
        return data;
    }

    //System.debug(data.FullStudiesResponse.Expression);

   // System.debug(data.FullStudiesResponse.FullStudies[0].Rank);

    //System.debug(data.FullStudiesResponse.FullStudies[0].Study.ProtocolSection.SponsorCollaboratorsModule.LeadSponsor.LeadSponsorName);
}