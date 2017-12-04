/**
 * ...
 * @author Martin Jonasson (m@grapefrukt.com)
 */

typedef Corners = {
	var ul:Int;
	var ur:Int;
	var bl:Int;
	var br:Int;
}
 
class Day03 {
	
	static inline var target:Int = 361527;

	static function main() {
		day03();
	}
	
	static function day03() {
		d(1);
		d(2);
		d(3);
		d(4);
		d(5);
		d(6);
		d(7);
		d(15);
		d(16);
		d(17);
		d(33);
		d(36);
		d(37);
		d(50);
		d(64);
		d(65);
	}
	
	static function d(key:Int) {
		Sys.print('$key:\t${frame(key)}\t${corners(frame(key))}\n');
	}
	
	static function frame(key:Int) {
		return Std.int(Math.sqrt(Std.int((key - 1) / 4)));
	}
	
	static function corners(frame:Int) {
		frame += 1;
		var c = {
			ul : frame * frame * 4,
			ur : frame * frame * 4 - frame * 2 + 1,
			br : frame * frame * 4 - frame * 4 + 2,
			bl : frame * frame * 4 - frame * 6 + 3,
		}
		return c;
	}
    
}