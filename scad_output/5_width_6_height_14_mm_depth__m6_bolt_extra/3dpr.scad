$fn = 50;

difference() {
	union() {
		translate(v = [30.0, 0, 0]) {
			hull() {
				translate(v = [-2.0, 39.5, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [2.0, 39.5, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [-2.0, -39.5, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [2.0, -39.5, 0]) {
					cylinder(h = 14, r = 5);
				}
			}
		}
		translate(v = [-30.0, 0, 0]) {
			hull() {
				translate(v = [-2.0, 54.5, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [2.0, 54.5, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [-2.0, -54.5, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [2.0, -54.5, 0]) {
					cylinder(h = 14, r = 5);
				}
			}
		}
		translate(v = [0, -37.5, 0]) {
			hull() {
				translate(v = [-32.0, 2.0, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [32.0, 2.0, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [-32.0, -2.0, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [32.0, -2.0, 0]) {
					cylinder(h = 14, r = 5);
				}
			}
		}
	}
	union() {
		translate(v = [30.0, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [30.0, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [30.0, -7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [30.0, 7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [30.0, 22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [30.0, 37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [30.0, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [30.0, -30.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [30.0, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [30.0, -15.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [30.0, -7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [30.0, 0.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [30.0, 7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [30.0, 15.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [30.0, 22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [30.0, 30.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [30.0, 37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-30.0, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-30.0, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-30.0, -7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-30.0, 7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-30.0, 22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-30.0, 37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-30.0, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-30.0, -30.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-30.0, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-30.0, -15.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-30.0, -7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-30.0, 0.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-30.0, 7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-30.0, 15.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-30.0, 22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-30.0, 30.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-30.0, 37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-30.0, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-15.0, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [0.0, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [15.0, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [30.0, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-30.0, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-22.5, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-15.0, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-7.5, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [0.0, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [7.5, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [15.0, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [22.5, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [30.0, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		#translate(v = [-37.0, -52.5, 7.0]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 14, r = 3.25);
			}
		}
		#translate(v = [-37.0, 52.5, 7.0]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 14, r = 3.25);
			}
		}
	}
}
