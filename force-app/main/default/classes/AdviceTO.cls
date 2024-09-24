public class AdviceTO{
	
    public cls_slip slip;
	
    class cls_slip {
		public Integer id;
		public String advice;
	}
	
    public static AdviceTO parse(String json){
		return (AdviceTO) System.JSON.deserialize(json, AdviceTO.class);
	}
}