$fn = 50;

difference() {
	union() {
		translate(v = [52.5, 0, 0]) {
			hull() {
				translate(v = [-2.0, 24.5, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [2.0, 24.5, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [-2.0, -24.5, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [2.0, -24.5, 0]) {
					cylinder(h = 14, r = 5);
				}
			}
		}
		translate(v = [-52.5, 0, 0]) {
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
		translate(v = [0, -22.5, 0]) {
			hull() {
				translate(v = [-54.5, 2.0, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [54.5, 2.0, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [-54.5, -2.0, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [54.5, -2.0, 0]) {
					cylinder(h = 14, r = 5);
				}
			}
		}
	}
	union() {
		translate(v = [-45.5, -37.5, 7.0]) {
			rotate(a = [0, 90, 0]) {
				difference() {
					union() {
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.25);
						}
						#translate(v = [0, 0, -4.2]) {
							cylinder(h = 4.2, r1 = 2.75, r2 = 5.5);
						}
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.75);
						}
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.25);
						}
					}
					union();
				}
			}
		}
		translate(v = [-45.5, 37.5, 7.0]) {
			rotate(a = [0, 90, 0]) {
				difference() {
					union() {
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.25);
						}
						#translate(v = [0, 0, -4.2]) {
							cylinder(h = 4.2, r1 = 2.75, r2 = 5.5);
						}
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.75);
						}
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.25);
						}
					}
					union();
				}
			}
		}
		translate(v = [52.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [52.5, -7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [52.5, 7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [52.5, 22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [52.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [52.5, -15.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [52.5, -7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [52.5, 0.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [52.5, 7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [52.5, 15.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [52.5, 22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-52.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-52.5, -7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-52.5, 7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-52.5, 22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-52.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-52.5, -15.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-52.5, -7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-52.5, 0.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-52.5, 7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-52.5, 15.0, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-52.5, 22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-52.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-37.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-22.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-7.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [7.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [22.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [37.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [52.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-52.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-45.0, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-37.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-30.0, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-22.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-15.0, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [-7.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [0.0, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [7.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [15.0, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [22.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [30.0, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [37.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [45.0, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [52.5, -22.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
	}
}
