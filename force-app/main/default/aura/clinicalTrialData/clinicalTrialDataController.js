({
    doInit : function(component, event, helper) {

        var action = component.get('c.getData');

        action.setCallback(this,function(response){
            var state = response.getState();
            
            if(state === 'SUCCESS' || state === 'DRAFT'){
                 alert('SUCCESS');
            var result = response.getReturnValue();

            component.set('v.Condition',result.studyfieldsresponse.Expression);

            component.set('v.NcID', result.studyfieldsresponse.FieldList[0]);

            component.set('v.Rank', result.studyfieldsresponse.studyFields[0].Rank);  

            component.set('v.BriefTitle', result.studyfieldsresponse.studyFields[0].BriefTitle[0]);

            }else if(state === 'ERROR'){
                alert('ERROR');
            }else if(state === 'INCOMPLETE'){
                alert('INCOMPLETE');
            }
            },'ALL');
            $A.enqueueAction(action);
        }
    
})
