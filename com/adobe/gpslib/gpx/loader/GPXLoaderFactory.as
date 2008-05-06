package com.adobe.gpslib.gpx.loader
{
	import com.adobe.gpslib.GPX;
	import com.adobe.gpslib.gpx.loader.gpx.GPXLoader1_0;
	import com.adobe.gpslib.gpx.loader.gpx.GPXLoader1_1;
	
	public class GPXLoaderFactory
	{
		
			public static function loadGPX(gpx_xml:XML):GPX
			{
				var name:String = gpx_xml.name();
				if( name == 'http://www.topografix.com/GPX/1/1::gpx' )
				{
					trace('load gpx 1.1');
					return GPXLoader1_1.load(gpx_xml);
				}else if ( name == 'http://www.topografix.com/GPX/1/0::gpx' )
				{
					trace('load gpx 1.0');
					return GPXLoader1_0.load(gpx_xml);
				}else
				{
					trace('bugger off this is not gpx data');
					return null;
				}
			}
		

	}
}