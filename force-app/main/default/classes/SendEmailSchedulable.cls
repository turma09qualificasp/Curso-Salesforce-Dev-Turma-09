public with sharing class SendEmailSchedulable implements Schedulable{
    
    private String[] toAddresses;

    public SendEmailSchedulable(String[] toAddresses){
        this.toAddresses = toAddresses;
    }

    public void execute(SchedulableContext SC) {
        new SendEmailService(this.toAddresses).sendEmail();
    }
}