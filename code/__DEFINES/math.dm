#define PI 3.1415
#define SPEED_OF_LIGHT 3e8 //not exact but hey!
#define SPEED_OF_LIGHT_SQ 9e+16
#define INFINITY 1e31 //closer then enough

//atmos
#define R_IDEAL_GAS_EQUATION	8.31 //kPa*L/(K*mol)
#define ONE_ATMOSPHERE		101.325	//kPa
#define T0C  273.15					// 0degC
#define T20C 293.15					// 20degC
#define TCMB 2.7					// -270.3degC

#define Clamp(x, y, z)			 	((x) <= (y) ? (y) : ((x) >= (z) ? (z) : (x)))
#define CLAMP01(x) 					(Clamp((x), 0, 1))
#define SIMPLE_SIGN(X)				((X) < 0 ? -1 : 1)
#define SIGN(X)						((X) ? SIMPLE_SIGN(X) : 0)
#define hypotenuse(Ax, Ay, Bx, By)	(sqrt(((Ax) - (Bx))**2 + ((Ay) - (By))**2))
#define Ceiling(x)					(-round(-(x)))
#define Tan(x)						(sin(x) / cos(x))
#define Cot(x)						(1 / Tan(x))
#define Csc(x)						(1 / sin(x))
#define Sec(x)						(1 / cos(x))
#define Floor(x)					(round(x))
#define Inverse(x)					(1 / (x))
#define IsEven(x)					((x) % 2 == 0)
#define IsOdd(x)					((x) % 2 == 1)
#define IsInRange(val, min, max)	((min) <= (val) && (val) <= (max))
#define IsInteger(x)				(Floor(x) == (x))
#define IsMultiple(x, y)			((x) % (y) == 0)
#define Lcm(a, b)					(abs(a) / Gcd((a), (b)) * abs(b))
#define Root(n, x)					((x) ** (1 / (n)))
#define ToDegrees(radians)			((radians) * 57.2957795)			// 180 / Pi
#define ToRadians(degrees)			((degrees) * 0.0174532925)			// Pi / 180

#define SHORT_REAL_LIMIT 16777216

//"fancy" math for calculating time in ms from tick_usage percentage and the length of ticks
//percent_of_tick_used * (ticklag * 100(to convert to ms)) / 100(percent ratio)
//collapsed to percent_of_tick_used * tick_lag
#define TICK_DELTA_TO_MS(percent_of_tick_used) ((percent_of_tick_used) * world.tick_lag)
#define TICK_USAGE_TO_MS(starting_tickusage) (TICK_DELTA_TO_MS(TICK_USAGE_REAL - starting_tickusage))

//time of day but automatically adjusts to the server going into the next day within the same round.
//for when you need a reliable time number that doesn't depend on byond time.
#define REALTIMEOFDAY (world.timeofday + (MIDNIGHT_ROLLOVER * MIDNIGHT_ROLLOVER_CHECK))
#define MIDNIGHT_ROLLOVER_CHECK ( GLOB.rollovercheck_last_timeofday != world.timeofday ? update_midnight_rollover() : GLOB.midnight_rollovers )

#define CEILING(x, y) ( -round(-(x) / (y)) * (y) )

// round() acts like floor(x, 1) by default but can't handle other values
#define FLOOR(x, y) ( round((x) / (y)) * (y) )
