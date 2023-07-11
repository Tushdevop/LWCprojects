/*
*   
*
*
*/
public with sharing class RetrieveQueryData {

    //Method to pull all Objects Names from Salesforce Org
    @AuraEnabled(cacheable=true)
    public static Map<String, String> getAllObject(){

        Map<String,String> returnObjectMap = new Map<String,String>();
                
        //Schema.getGlobalDescribe() => return a Map of type Map<String, Schema.SObjectType>
        Map<String, Schema.SObjectType> objectMap = Schema.getGlobalDescribe();
                
        //get List of all sObject
        List<Schema.SObjectType> objectMapValues = objectMap.Values();
        //System.debug('All Objects '+ objectMapValues);
                
        //prepare a Map to send Data from Server to Client Side
         for(Schema.SObjectType objType : objectMapValues){
                String key = objType.getDescribe().getName();
                String value = objType.getDescribe().getLabel();
                returnObjectMap.put(key,value);
        }
        //System.debug(returnObjectMap);
        
        if(returnObjectMap != null && returnObjectMap.size() > 0){
                return returnObjectMap;
        }else{
                return null;
        }
    }

    //Method to get all fileds from Selected Object     
    @AuraEnabled(cacheable=true)
    public static Map<String, String> getAllfields(String objName){

        //String objName = 'Account';
        Map<String, String> allFieldsMap = new Map<String, String>();

        Map<String, Schema.SObjectType> objectMap = Schema.getGlobalDescribe();
        SObjectType objType = objectMap.get(objName);

        // Map of fields with api name and Api name as value
        Map<String,Schema.SObjectField> objTypeFields = objType.getDescribe().fields.getMap();
        if(!objTypeFields.isEmpty()){
                for (String fieldName: objTypeFields.keySet()) {
                        //getting api and labels of the fields
                        String fieldAPIName = fieldName;
                        String fieldLabel = objTypeFields.get(fieldName).getDescribe().getLabel();
                        allFieldsMap.put(fieldLabel, fieldAPIName);
                        }
                }
        //System.debug(allFieldsMap);
                if(allFieldsMap != null && allFieldsMap.size() > 0){
                        return allFieldsMap;
                }else{
                        return null;
                }
        }


        @AuraEnabled(cacheable=true)
        public static List<sObject> getsObjectDataList(String queryString){
              //  String queryString='SELECT Id, Name FROM Account LIMIT 5';
                List<sObject> sobjList = Database.query(QueryString);
                return sobjList;
        }

        @AuraEnabled
        public static void saveQueryString(String queryString){
                SavedQuery__c query=new SavedQuery__c();
                query.Query_String__c = queryString;

                insert query;
        }

        @AuraEnabled(cacheable=true)
        public static List<SavedQuery__c> getAllSavedQueries(){
                return [ SELECT Query_String__c
                        FROM SavedQuery__c];
        }
}   
