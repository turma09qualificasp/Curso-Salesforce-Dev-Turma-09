public with sharing class SendEmailQueueable implements Queueable{
    
    private String[] toAddresses;

    public SendEmailQueueable(String[] toAddresses){
        this.toAddresses = toAddresses;
    }

    public void execute(QueueableContext context) {
        new SendEmailService(this.toAddresses).sendEmail();
    }
}