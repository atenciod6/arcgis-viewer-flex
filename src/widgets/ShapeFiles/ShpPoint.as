package widgets.ShapeFiles
{
    import com.esri.ags.SpatialReference;
    import com.esri.ags.geometry.Geometry;
    import com.esri.ags.geometry.MapPoint;

    public class ShpPoint extends Geometry
    {
        private var xcoor:Number;

        private var ycoor:Number;

        public function ShpPoint(xco:Number, yco:Number)
        {
            xcoor = xco;
            ycoor = yco;
        }

        public function toPoint(shpSpatialRef:SpatialReference):MapPoint
        {
            return new MapPoint(xcoor, ycoor, shpSpatialRef);
        }
    }
}