package widgets.ShapeFiles
{
	import com.esri.ags.geometry.Extent;
	import com.esri.ags.symbols.Symbol;
	
	import flash.events.EventDispatcher;
	import flash.utils.ByteArray;
	
	[Bindable] public class ShapeFileResult extends EventDispatcher
	{
		public var title:String;
		
		public var symbol:Symbol = null;
        
        public var lblSymbol:Symbol = null;
		
		public var extent:Extent = null;
		
		public var content:String;
		
		public var removemsg:String;
        
        public var configmsg:String;
		
		public var layerids:Array = [];
        
        public var shapeType:String;
        
        public var labeled:Boolean = false;
        
        public var labelFieldName:String;
        
        public var numFeatures:int;
        
        public var dbfByteArray:ByteArray;
        
        public var fieldNames:Array = [];
	}
}