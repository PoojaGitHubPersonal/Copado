@RestResource(urlMapping='/createcon')
 
global class createconapi {
     global class DetailResponse {
        public boolean Status;
        public String Message;
  }
@HTTPPOST
    global static List<DetailResponse> createcontact(){
        DetailResponse fullResponse=new DetailResponse();
                List<DetailResponse> fullResponselist=new List<DetailResponse>();
        RestRequest req=RestContext.request;
        String reqbody=req.requestBody.toString();
        System.debug('reqbosu======'+reqbody);
        if(req == null || req.requestBody== null){
            fullResponse.Status             = false;
            fullResponse.Message       = 'Request_Is_Null';
            fullResponselist.add(fullResponse);
        }else{
             fullResponse.Status             = true;
            fullResponse.Message       = 'Success';
            fullResponselist.add(fullResponse);
        }
        return fullResponselist;
}
}