import { LightningElement,api, track, wire} from 'lwc';

import SAVEQUERY from '@salesforce/apex/RetrieveQueryData.saveQueryString';
import QUERYLIST from '@salesforce/apex/RetrieveQueryData.getAllSavedQueries';
import GETDATA from '@salesforce/apex/RetrieveQueryData.getsObjectDataList';

import { refreshApex } from '@salesforce/apex';

export default class QueryBuilderShowcase extends LightningElement {

    @api selectedObjName
    @api selectedFieldValues
    @api limit
    
    queryString = '';

    refrshQueryList = [];
    savedQueryList = [];
    errors= '';
    
  @wire(QUERYLIST)
  queriedlist(result){
        this.refrshQueryList = result;
    if(result.data){
        this.savedQueryList = result.data;
        this.errors = undefined;
        }
    else if (result.error) {
        this.savedQueryList = undefined;
        this.errors = result.error;
        }
   }

    handleSaveClick(){
        if(this.selectedObjName){
            if(this.selectedFieldValues){
                
                this.queryString ='SELECT '+this.selectedFieldValues+' FROM '+this.selectedObjName;
                if(this.limit){
                    this.queryString += ' LIMIT '+this.limit;
                }
            }            
        }
        console.log('Query String in showcase:::'+this.queryString);

        SAVEQUERY({ queryString : this.queryString  });
        refreshApex(this.refrshQueryList);
    }

    //User can click on query string and get data from server
    handleQueryClick(event){
        const queryText= event.target.label;
        console.log('Query string clicked :::: '+queryText);

        GETDATA({ queryString: queryText})
        .then(result=>{
            console.log('Data from showcase:::'+result);
            //this.tableData = result;
        })
        .catch(error=>{
           console.log(error);
        })
    }
        



}