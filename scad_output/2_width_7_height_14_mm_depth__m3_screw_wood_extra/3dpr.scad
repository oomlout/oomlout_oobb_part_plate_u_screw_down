$fn = 50;

difference() {
	union() {
		translate(v = [7.5, 0, 0]) {
			hull() {
				translate(v = [-2.0, 47.0, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [2.0, 47.0, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [-2.0, -47.0, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [2.0, -47.0, 0]) {
					cylinder(h = 14, r = 5);
				}
			}
		}
		translate(v = [-7.5, 0, 0]) {
			hull() {
				translate(v = [-2.0, 62.0, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [2.0, 62.0, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [-2.0, -62.0, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [2.0, -62.0, 0]) {
					cylinder(h = 14, r = 5);
				}
			}
		}
		translate(v = [0, -45.0, 0]) {
			hull() {
				translate(v = [-9.5, 2.0, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [9.5, 2.0, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [-9.5, -2.0, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [9.5, -2.0, 0]) {
					cylinder(h = 14, r = 5);
				}
			}
		}
	}
	union() {
		translate(v = [-0.5, -60.0, 7.0]) {
			rotate(a = [0, 90, 0]) {
				difference() {
					union() {
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.0);
						}
						#translate(v = [0, 0, -3]) {
							cylinder(h = 3, r1 = 2.125, r2 = 3.75);
						}
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.125);
						}
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.0);
						}
					}
					union();
				}
			}
		}
		translate(v = [-0.5, 60.0, 7.0]) {
			rotate(a = [0, 90, 0]) {
				difference() {
					union() {
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.0);
						}
						#translate(v = [0, 0, -3]) {
							cylinder(h = 3, r1 = 2.125, r2 = 3.75);
						}
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.125);
						}
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.0);
						}
					}
					union();
				}
			}
		}
		translate(v = [7.5, -45.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [7.5, -30.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [7.5, -15.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [7.5, 0.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [7.5, 15.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [7.5, 30.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [7.5, 45.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [7.5, -45.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [7.5, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [7.5, -30.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [7.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [7.5, -15.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [7.5, -7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [7.5, 0.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [7.5, 7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [7.5, 15.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [7.5, 22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [7.5, 30.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [7.5, 37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [7.5, 45.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-7.5, -45.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-7.5, -30.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-7.5, -15.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-7.5, 0.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-7.5, 15.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-7.5, 30.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-7.5, 45.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-7.5, -45.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-7.5, -37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-7.5, -30.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-7.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-7.5, -15.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-7.5, -7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-7.5, 0.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-7.5, 7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-7.5, 15.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-7.5, 22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-7.5, 30.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-7.5, 37.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-7.5, 45.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-7.5, -45.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [7.5, -45.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-7.5, -45.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [0.0, -45.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [7.5, -45.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
	}
}
