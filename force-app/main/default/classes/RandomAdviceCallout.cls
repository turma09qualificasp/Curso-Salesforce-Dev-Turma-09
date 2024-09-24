public with sharing class RandomAdviceCallout {

    private String endpoint;
    private Integer idAdvice;

    public RandomAdviceCallout(String endpoint, Integer idAdvice){
        this.endpoint = endpoint;
        this.idAdvice = idAdvice;
    }

    public String doCallout(){
        HttpRequest req = new HttpRequest();

        if(this.idAdvice != null) this.endpoint = this.endpoint + '/' + idAdvice;
        
        req.setEndpoint(this.endpoint);
        req.setMethod('GET');
     
        Http http = new Http();
        HTTPResponse res = http.send(req);
        return res.getBody();
    }
}