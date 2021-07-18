// the point of this file is to be a sort of DSL for constructing keycaps.
// when you create a method chain you are just changing the parameters
// key.scad uses, it doesn't generate anything itself until the end. This
// lets it remain easy to use key.scad like before (except without key profiles)
// without having to rely on this file. Unfortunately that means setting tons of
// special variables, but that's a limitation of SCAD we have to work around

include <./includes.scad>


module choc2(row=3, column = 0) {
  $key_shape_type = "sculpted_square";
  $bottom_key_width = 18.24; // 18.4;
  $bottom_key_height = 18.24; // 18.4;
  $width_difference = 6; // 5.7;
  $height_difference = 6; // 5.7;
  $top_tilt = row == 5 ? -21 : (row-3) * 7;
  $top_skew = 0;
  $dish_type = "spherical";
  $dish_depth = 0.5;
  // $dish_depth = 1.2;
  $dish_skew_x = 0;
  $dish_skew_y = 0;
  $height_slices = 10;
  $enable_side_sculpting = true;
  $corner_radius = 0.25;

  $top_tilt_y = side_tilt(column);
  $total_depth = 5;
  children();
}

// $font="DejaVu Sans Mono:style=Book"; Monserrat Medium
$inset_legend_depth = 0.1;

// example key
// choc() legend("⇪", size=9) key();

$primary_color = [.2667,.5882,1,0.1];

// rounded_cherry() choc2() legend("⇪", size=9) key();
rounded_cherry() choc2() legend("A", size=9) key();

// example row
/* for (x = [0:1:4]) {
  translate_u(0,-x) dcs_row(x) key();
} */

// example layout
/* preonic_default("dcs"); */