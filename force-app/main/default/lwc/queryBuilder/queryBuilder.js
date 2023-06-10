import { LightningElement, wire, track } from 'lwc';

import getAllObject from '@salesforce/apex/RetrieveQueryData.getAllObject';
import getAllfields from '@salesforce/apex/RetrieveQueryData.getAllfields';
import getsObjectDataList from '@salesforce/apex/RetrieveQueryData.getsObjectDataList';


export default class QueryBuilder extends LightningElement {

    objsList = [];
    fieldsList = [];
    optionList = [];
    selectedObjName = ''
    objselected = false;
    selectedFieldName = ''
    selectedLimit = ''

    connectedCallback(){
        this.getallobjectlist();
        this.getAllFiledsList();
    }

    getallobjectlist(){

        getAllObject()
        .then(result=>{
            //console.log(result);
            var returnedlist=[];
            for(var key in result){
                    returnedlist.push({key: key, value: result[key]});
                }
            this.objsList = returnedlist;
        })
        .catch(error=>{
           // console.log(error);
        })   
    }

   getAllFiledsList(){
        
        getAllfields({objectName: this.selectedObjName})
        .then(result=>{
            //alert('inside the field result');
           // console.log(result);
            this.fieldsList = result;
        })
        .catch(error=>{
           // console.log(error);
        })

    }

    handleGetSelectedObjValue(event){
        this.selectedObjName = event.target.value;
        console.log('Selected object value is--'+selectedObjName);
        this.objselected = true;
        console.log('ObjectSelected -True??--'+objselected);
    }

    

     
    retrievedQueryList = [];

    handleQueryClick(){
        //alert('Query Fired');
        getsObjectDataList()
        .then(result=>{
            this.retrievedQueryList = result;
        })
        .catch(error=>{
           console.log(error);
        })
    }

    handleClick(){
        alert('Add Button Clicked');
    }

    nullParam = '';
    sortParam = '';
    orderParam = '';
    limitParam = '';
    handleNullChange(event){
        this.nullParam = event.target.value;
    }

    handleSortChange(event){
        this.sortParam = event.target.value;
    }

    handleOrderChange(event){
        this.orderParam = event.target.value;
    }
    handleLimitChange(event){
        this.limitParam = event.target.value;
    }



    ///
    @track value;
    @track allfieldValues=[];
  
    @track options= [
        { label: 'Id', value: 'Id' },
        { label: 'Name', value: 'Name' },
        { label: 'Rating', value: 'Rating' },
    ];

    

 
  handlefieldChange(event)
  {
    this.value=event.target.value;
    if(!this.allfieldValues.includes(this.value))
      this.allfieldValues.push(this.value);
    //this.modifyOptions();
  }

  handleRemove(event)
  {
    this.value='';
    const valueRemoved=event.target.name;
    this.allfieldValues.splice(this.allfieldValues.indexOf(valueRemoved),1);
    //this.modifyOptions();
  }

  
  //////////////////////////////////////////////////////////

}