public class SendEmailService {

    private String[] toAddresses;

    public SendEmailService(String[] toAddresses){
        this.toAddresses = toAddresses;
    }

    public void sendEmail(){
        Messaging.SingleEmailMessage mymail = new Messaging.SingleEmailMessage();
        String[] ccaddresses = new String[] {'user2@example.com'};
        
        mymail.settoAddresses(toAddresses);
        mymail.setCcAddresses(ccAddresses);
        mymail.setReplyTo('support@fat.com');
        mymail.setSenderDisplayName('FAT Suporte');
        mymail.setSubject('An email from FAT');
        mymail.setHtmlBody('<p> This email has been sent through Apex</p>');
        
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mymail });
    }

    public void addAddress(String address){
        if(String.isBlank(address)){
            this.toAddresses.add(address);
        }
    }
}
