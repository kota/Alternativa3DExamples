package{
  import alternativa.engine3d.primitives.*;

  public class Ball{
    private var _geoSphere:GeoSphere;

    private var _dx:Number;
    private var _dy:Number;
    private var _dz:Number;

    public function Ball(geoSphere:GeoSphere){
      _geoSphere = geoSphere;
      _geoSphere.z = 0//-1000;
      _dx = Math.random() * 100 * (Math.random() > 0.5 ? 1 : -1);
      _dy = Math.random() * 100 * (Math.random() > 0.5 ? 1 : -1);
      _dz = Math.random() * 100;
    }

    public function update():void{
      _geoSphere.z += _dz;
      _geoSphere.x += _dx;
      _geoSphere.y += _dy;
    }

    public function reset():void{
      _geoSphere.z = 0//-1000;
      _geoSphere.x = 0;
      _geoSphere.y = 0;
    }

    public function isOutOfSight():Boolean{
      return _geoSphere.z > 1000;
    }
  }
}
