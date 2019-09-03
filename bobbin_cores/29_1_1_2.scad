

width = 25.4;
depth = 25.4 * 1.5;
height = 1.475 * 25.4;
bolt = 8;

#difference()
{
linear_extrude(height = height )
{
	polygon(points=[[0, 0],[width, 0],[width, depth], [0, depth]]);

}

linear_extrude(height = height)
{
	translate([width/2, depth/2,0])
	{
		circle($fn = 200, r = bolt/2);
	}
}
}