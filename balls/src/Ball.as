package{
  import flash.geom.Vector3D;
  import alternativa.engine3d.primitives.*;

  public class Ball{
    private var _geoSphere:GeoSphere;

    private var _dx:Number;
    private var _dy:Number;
    private var _dz:Number;
    private var _speed:Vector3D;
    
    public function get position():Vector3D{ return new Vector3D(_geoSphere.x,_geoSphere.y,_geoSphere.z)}
    public function get speed():Vector3D{ return _speed; }

    public function Ball(geoSphere:GeoSphere){
      _geoSphere = geoSphere;
      _geoSphere.z = 0
      _geoSphere.x = Math.random() * 200 * (Math.random() > 0.5 ? 1 : -1);
      _geoSphere.y = Math.random() * 200 * (Math.random() > 0.5 ? 1 : -1);
      _dx = 0;
      _dy = 0;
      _dz = Math.random() * 50;
      _speed = new Vector3D(_dx,_dy,_dz);
    }

    public function update():void{
      _geoSphere.z += _dz;
      _geoSphere.x += _dx;
      _geoSphere.y += _dy;
    }

    public function reset():void{
      _geoSphere.z = 0;
      _geoSphere.x = Math.random() * 100 * (Math.random() > 0.5 ? 1 : -1);
      _geoSphere.y = Math.random() * 100 * (Math.random() > 0.5 ? 1 : -1);
    }

    public function isOutOfSight():Boolean{
      return _geoSphere.z > 2100;
    }
  }
}
