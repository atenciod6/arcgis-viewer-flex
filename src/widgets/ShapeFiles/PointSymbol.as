package widgets.ShapeFiles
{
    import com.esri.ags.Map;
    import com.esri.ags.geometry.Geometry;
    import com.esri.ags.symbols.Symbol;
    
    import flash.display.Sprite;

    public final class PointSymbol extends Symbol
    {
    	private var m_style:String = "circle";
        private var m_size:Number = 3;
        private var m_Color:Number = 0xFF0000;
        private var m_Alpha:Number = 0.9;

        public function PointSymbol()
        {
        }

        override public function clear(sprite:Sprite):void
        {
            sprite.graphics.clear();
        }

        override public function draw(sprite:Sprite, geometry:Geometry, attributes:Object, map:Map):void
        {
            const shpPoint:ShpPoint = ShpPoint(geometry);
            if (map.extent.containsXY(shpPoint.toPoint().x,shpPoint.toPoint().y)) {
            	var xcoor:int = toScreenX(map, shpPoint.toPoint().x);
           		var ycoor:int = toScreenY(map, shpPoint.toPoint().y);
            	sprite.graphics.clear();
            	sprite.graphics.lineStyle(m_size,m_Color,m_Alpha);
            	sprite.graphics.beginFill(m_Color,m_Alpha);
            	sprite.graphics.drawCircle(xcoor,ycoor,m_size);
            	sprite.graphics.endFill();
            }
        }
    }
}