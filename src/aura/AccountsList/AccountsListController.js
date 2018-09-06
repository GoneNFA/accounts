({
   doInit : function(component, event, helper) {      
      //Fetch the expense list from the Apex controller   
      helper.getAccountList(component);
   },
   showDetails: function(component, event, helper) {
       var test = "test ";
       var record = component.get("v.recordId");
       //Get data via "data-data" attribute from button (button itself or icon's parentNode)
        var id = event.target.getAttribute("data-data") || event.target.parentNode.getAttribute("data-data")
        alert(id + " was passed and from " + record );
   }
})