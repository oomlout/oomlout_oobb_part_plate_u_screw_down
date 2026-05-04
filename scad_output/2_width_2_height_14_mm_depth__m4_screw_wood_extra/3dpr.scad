$fn = 50;

difference() {
	union() {
		translate(v = [7.5, 0, 0]) {
			hull() {
				translate(v = [-2.0, 9.5, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [2.0, 9.5, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [-2.0, -9.5, 0]) {
					cylinder(h = 14, r = 5);
				}
				translate(v = [2.0, -9.5, 0]) {
					cylinder(h = 14, r = 5);
				}
			}
		}
		translate(v = [-7.5, 0, 0]) {
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
		translate(v = [0, -7.5, 0]) {
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
		translate(v = [-0.5, -22.5, 7.0]) {
			rotate(a = [0, 90, 0]) {
				difference() {
					union() {
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.6);
						}
						#translate(v = [0, 0, -3.9]) {
							cylinder(h = 3.9, r1 = 2.875, r2 = 5.4);
						}
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.875);
						}
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.6);
						}
					}
					union();
				}
			}
		}
		translate(v = [-0.5, 22.5, 7.0]) {
			rotate(a = [0, 90, 0]) {
				difference() {
					union() {
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.6);
						}
						#translate(v = [0, 0, -3.9]) {
							cylinder(h = 3.9, r1 = 2.875, r2 = 5.4);
						}
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.875);
						}
						#translate(v = [0, 0, -14.0]) {
							cylinder(h = 14, r = 2.6);
						}
					}
					union();
				}
			}
		}
		translate(v = [7.5, -7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [7.5, 7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
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
		translate(v = [-7.5, -7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-7.5, 7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
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
		translate(v = [-7.5, -7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [7.5, -7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 3.25);
			}
		}
		translate(v = [-7.5, -7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [0.0, -7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
		translate(v = [7.5, -7.5, 0]) {
			translate(v = [0, 0, -100]) {
				cylinder(h = 200, r = 1.8);
			}
		}
	}
}
