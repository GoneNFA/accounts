public class AccountsController {
    
       
   @AuraEnabled
   public static List<Account> getAccounts() {
       return [SELECT Id, name, extrail__Score_solvabilite__c 
       FROM Account ORDER BY createdDate ASC LIMIT 1]; 
   }   
    
      @AuraEnabled
     public static List<Contact> getContacts(String accountID) {
	
         
         
	system.debug('ACC : ' + accountID);
         
        List<Contact> contacts =   [SELECT id,  FirstName,LAstName, email
            FROM Contact
            WHERE accountId = :accountID
            LIMIT 10];
         system.debug('contacts ' + contacts);
         return contacts;
			
    }

}