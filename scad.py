import copy
import opsc
import oobb
import oobb_base
import yaml
import os
from scad_help import *

def main(**kwargs):
    make_scad(**kwargs)

def make_scad(**kwargs):
    parts = []

    typ = kwargs.get("typ", "")

    if typ == "":
        #setup    
        #typ = "all"
        typ = "fast"
        #typ = "manual"

    #oomp_mode = "project"
    oomp_mode = "oobb"

    if typ == "all":
        #no overwrite
        filter = ""; save_type = "all"; navigation = True; overwrite = False; modes = ["3dpr"]; oomp_run = True
        #filter = ""; save_type = "all"; navigation = True; overwrite = True; modes = ["3dpr", "laser", "true"]
    elif typ == "fast":
        filter = ""; save_type = "none"; navigation = True; overwrite = True; modes = ["3dpr"]; oomp_run = False
        #filter = ""; save_type = "none"; navigation = False; overwrite = True; modes = ["3dpr"]; oomp_run = False
    elif typ == "manual":
    #filter
        filter = ""
        #filter = "test"

    #save_type
        save_type = "none"
        #save_type = "all"
        
    #navigation        
        #navigation = False
        navigation = True    

    #overwrite
        overwrite = True
                
    #modes
        #modes = ["3dpr", "laser", "true"]
        modes = ["3dpr"]
        #modes = ["laser"]    

    #oomp_run
        oomp_run = True
        #oomp_run = False    

    #adding to kwargs
    kwargs["filter"] = filter
    kwargs["save_type"] = save_type
    kwargs["navigation"] = navigation
    kwargs["overwrite"] = overwrite
    kwargs["modes"] = modes
    kwargs["oomp_mode"] = oomp_mode
    kwargs["oomp_run"] = oomp_run
    
       
    # project_variables
    if True:
        pass
    
    # declare parts
    if True:

        directory_name = os.path.dirname(__file__) 
        directory_name = directory_name.replace("/", "\\")
        project_name = directory_name.split("\\")[-1]

        #defaults
        kwargs["size"] = "oobb"
        kwargs["width"] = 1
        kwargs["height"] = 1
        kwargs["thickness"] = 3
        #oomp_bits
        if oomp_mode == "project":
            kwargs["oomp_classification"] = "project"
            kwargs["oomp_type"] = "github"
            kwargs["oomp_size"] = "oomlout"
            kwargs["oomp_color"] = project_name
            kwargs["oomp_description_main"] = ""
            kwargs["oomp_description_extra"] = ""
            kwargs["oomp_manufacturer"] = ""
            kwargs["oomp_part_number"] = ""
        elif oomp_mode == "oobb":
            kwargs["oomp_classification"] = "oobb"
            kwargs["oomp_type"] = "part"
            kwargs["oomp_size"] = "plate_screw_down"
            kwargs["oomp_color"] = ""
            kwargs["oomp_description_main"] = ""
            kwargs["oomp_description_extra"] = ""
            kwargs["oomp_manufacturer"] = ""
            kwargs["oomp_part_number"] = ""

        part_default = {} 
       
        part_default["project_name"] = project_name
        part_default["full_shift"] = [0, 0, 0]
        part_default["full_rotations"] = [0, 0, 0]
        
        #bolt_extras = ["", "bolt_recess"]
        bolt_extras = [""]
        
        screw_radiuses = ["m3_screw_wood", "m4_screw_wood", "m5_screw_wood","m6_bolt"]
        #screw_radiuses = ["m6_bolt"]
        
        
        join_styles = [""]
        
        sizes = []
        
        

        #add al combinations between 2 and 5
        for i in range(2,6):
            for j in range(2,6):
                if {"width": i, "height": j} not in sizes:
                    sizes.append({"width": i, "height": j})

        thicknesses = [14]

        for bolt_extra in bolt_extras:
            for screw_radius in screw_radiuses:
                for join_style in join_styles:
                    for thickness in thicknesses:
                        for size in sizes:
                            wid = size["width"]
                            hei = size["height"]
                            part = copy.deepcopy(part_default)
                            p3 = copy.deepcopy(kwargs)
                            p3["width"] = wid
                            p3["height"] = hei
                            p3["thickness"] = thickness
                            p3["bolt_extra"] = bolt_extra
                            p3["screw_radius"] = screw_radius
                            p3["extra"] = ""
                            if join_style != "":
                                p3["join_style"] = join_style
                                p3["extra"] = f"{p3["join_style"]}_join_style"
                            if screw_radius != "":
                                p3["extra"] += f"_{p3["screw_radius"]}"
                            part["kwargs"] = p3
                            nam = "plate_screw_down_u"
                            part["name"] = nam
                            if oomp_mode == "oobb":
                                p3["oomp_size"] = nam
                            if "bolt_recess" in bolt_extra:
                                if thickness < 8:
                                    pass
                                else:
                                    parts.append(part)
                            else:
                                parts.append(part)


    kwargs["parts"] = parts

    make_parts(**kwargs)

    #generate navigation
    if navigation:
        sort = []
        #sort.append("extra")
        sort.append("name")
        sort.append("width")
        sort.append("height")
        sort.append("thickness")
        sort.append("join_style")
        sort.append("screw_radius")
        
        
        generate_navigation(sort = sort)


def get_base(thing, **kwargs):

    prepare_print = kwargs.get("prepare_print", False)
    width = kwargs.get("width", 1)
    height = kwargs.get("height", 1)
    depth = kwargs.get("thickness", 3)                    
    rot = kwargs.get("rot", [0, 0, 0])
    pos = kwargs.get("pos", [0, 0, 0])
    extra = kwargs.get("extra", "")    
    bolt_extra = kwargs.get("bolt_extra", "")
    screw_radius = kwargs.get("screw_radius", "")
    mode = "oobb_screw_countersunk"
    if "bolt" in screw_radius:
        mode = "oobb_hole"
        screw_radius = "m6"

    join_style = kwargs.get("join_style", "")

    #add u
    if True:
        #little side
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = f"oobb_plate"    
        p3["width"] = 1
        p3["height"] = height
        p3["depth"] = depth
        #p3["holes"] = True         uncomment to include default holes
        #p3["m"] = "#"
        pos1 = copy.deepcopy(pos)         
        pos1[0] += (width-1)/2 * 15
        p3["pos"] = pos1
        oobb_base.append_full(thing,**p3)
    
        #add holes seperate
        p3 = copy.deepcopy(p3)
        p3["type"] = "p"
        p3["shape"] = f"oobb_holes"
        p3["both_holes"] = True  
        p3["depth"] = depth
        #p3["holes"] = "perimeter"
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)

        #big side
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = f"oobb_plate"    
        p3["width"] = 1 
        p3["height"] = height + 2
        p3["depth"] = depth
        #p3["holes"] = True         uncomment to include default holes
        #p3["m"] = "#"
        pos1 = copy.deepcopy(pos)         
        pos1[0] += -(width-1)/2 * 15
        p3["pos"] = pos1
        oobb_base.append_full(thing,**p3)
    
        #add holes seperate
        p3 = copy.deepcopy(p3)
        p3["type"] = "p"
        p3["shape"] = f"oobb_holes"
        p3["both_holes"] = True  
        p3["height"] += -2
        p3["depth"] = depth
        oobb_base.append_full(thing,**p3)

        #bottom piece
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = f"oobb_plate"    
        p3["width"] = width
        p3["height"] = 1
        p3["depth"] = depth
        #p3["holes"] = True         uncomment to include default holes
        #p3["m"] = "#"
        pos1 = copy.deepcopy(pos)    
        pos1[1] += -(height-1)/2 * 15     
        p3["pos"] = pos1
        oobb_base.append_full(thing,**p3)
    
        #add holes seperate
        p3 = copy.deepcopy(p3)
        p3["type"] = "p"
        p3["shape"] = f"oobb_holes"
        p3["both_holes"] = True  
        p3["depth"] = depth
        #p3["holes"] = "perimeter"
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)



    shift_x = (width-1)/2 * 15
    shift_y = (height-1)/2 * 15
    #add extra beam and srew downs
    if True:
        if "top" in join_style:
            #add piece for the screwdown
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "positive"
            p3["shape"] = f"oobb_plate"
            p3["width"] = 1
            p3["height"] = 2
            p3["depth"] = depth

            pos1 = copy.deepcopy(pos)
            pos1[1] += (height-1) * 15 / 2 + 7.5
            poss = []
            pos11 = copy.deepcopy(pos1)
            pos11[0] += (width-1)/2 * 15    
            pos12 = copy.deepcopy(pos11)
            pos12[0] += -(width-1) * 15
            poss.append(pos11)
            poss.append(pos12)
            p3["pos"] = poss
            oobb_base.append_full(thing,**p3)
            #add screws
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = f"oobb_screw_countersunk"
            p3["radius_name"] = screw_radius
            p3["depth"] = depth
            p3["holes"] = "perimeter"
            p3["m"] = "#"
            pos1 = copy.deepcopy(pos)
            pos1[1] += (height-1) * 15 / 2 + 15
            pos1[2] += depth
            poss = []
            pos11 = copy.deepcopy(pos1)
            pos11[0] += shift_x
            pos12 = copy.deepcopy(pos1)
            pos12[0] += -shift_x
            poss.append(pos11)
            poss.append(pos12)
            p3["pos"] = poss
            oobb_base.append_full(thing,**p3)
        if "bottom" in join_style:
            #add piece for the screwdown
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "positive"
            p3["shape"] = f"oobb_plate"
            p3["width"] = 1
            p3["height"] = 2
            p3["depth"] = depth

            pos1 = copy.deepcopy(pos)
            pos1[1] += -(height-1) * 15 / 2 - 7.5
            poss = []
            pos11 = copy.deepcopy(pos1)
            pos11[0] += (width-1)/2 * 15    
            pos12 = copy.deepcopy(pos11)
            pos12[0] += -(width-1) * 15
            poss.append(pos11)
            poss.append(pos12)
            p3["pos"] = poss
            oobb_base.append_full(thing,**p3)
            #add screws
            if True:                
                p3 = copy.deepcopy(kwargs)
                p3["type"] = "negative"
                #p3["shape"] = f"oobb_screw_countersunk"
                p3["shape"] = mode
                p3["radius_name"] = screw_radius
                p3["depth"] = depth
                p3["holes"] = "perimeter"
                p3["m"] = "#"
                pos1 = copy.deepcopy(pos)
                pos1[1] += -(height-1) * 15 / 2 - 15    
                pos1[2] += depth
                poss = []
                
                pos11 = copy.deepcopy(pos1)
                pos11[0] += shift_x
                pos12 = copy.deepcopy(pos1)
                pos12[0] += -shift_x
                poss.append(pos11)
                poss.append(pos12)
                p3["pos"] = poss
                oobb_base.append_full(thing,**p3)
        if "left" in join_style:
            #add piece for the screwdown
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "positive"
            p3["shape"] = f"oobb_plate"
            p3["width"] = 2
            p3["height"] = 1
            p3["depth"] = depth

            pos1 = copy.deepcopy(pos)
            pos1[0] += -(width-1) * 15 / 2 - 7.5
            poss = []
            pos11 = copy.deepcopy(pos1)
            pos11[1] += (height-1)/2 * 15    
            pos12 = copy.deepcopy(pos11)
            pos12[1] += -(height-1) * 15
            poss.append(pos11)
            poss.append(pos12)
            p3["pos"] = poss
            oobb_base.append_full(thing,**p3)
            #add screws
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            #p3["shape"] = f"oobb_screw_countersunk"
            p3["shape"] = mode
            p3["radius_name"] = screw_radius
            p3["depth"] = depth
            p3["holes"] = "perimeter"
            p3["m"] = "#"
            pos1 = copy.deepcopy(pos)
            pos1[1] += -(width-1) * 15 / 2 - 15    
            pos1[2] += depth
            poss = []
            pos11 = copy.deepcopy(pos1)
            pos11[1] += shift_y
            pos12 = copy.deepcopy(pos1)
            pos12[1] += -shift_y
            poss.append(pos11)
            poss.append(pos12)
            p3["pos"] = poss
            oobb_base.append_full(thing,**p3)
        if "right" in join_style:
            #add piece for the screwdown
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "positive"
            p3["shape"] = f"oobb_plate"
            p3["width"] = 2
            p3["height"] = 1
            p3["depth"] = depth

            pos1 = copy.deepcopy(pos)
            pos1[0] += (width-1) * 15 / 2 + 7.5
            poss = []
            pos11 = copy.deepcopy(pos1)
            pos11[1] += (height-1)/2 * 15    
            pos12 = copy.deepcopy(pos11)
            pos12[1] += -(height-1) * 15
            poss.append(pos11)
            poss.append(pos12)
            p3["pos"] = poss
            oobb_base.append_full(thing,**p3)
            #add screws
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            #p3["shape"] = f"oobb_screw_countersunk"
            p3["shape"] = mode
            p3["radius_name"] = screw_radius
            p3["depth"] = depth
            p3["holes"] = "perimeter"
            p3["m"] = "#"
            pos1 = copy.deepcopy(pos)
            pos1[0] += (width-1) * 15 / 2 + 15    
            pos1[2] += depth
            poss = []
            pos11 = copy.deepcopy(pos1)
            pos11[1] += shift_y
            pos12 = copy.deepcopy(pos1)
            pos12[1] += -shift_y
            poss.append(pos11)
            poss.append(pos12)
            p3["pos"] = poss
            oobb_base.append_full(thing,**p3)
        #if "ninety_degree" in join_style:
        if join_style == "":
            
            if True:
                p3 = copy.deepcopy(kwargs)
                p3["type"] = "negative"
                #p3["shape"] = f"oobb_screw_countersunk"
                p3["shape"] = mode
                p3["radius_name"] = screw_radius
                p3["depth"] = 14
                p3["holes"] = "perimeter"
                p3["m"] = "#"
                pos1 = copy.deepcopy(pos)
                if mode == "oobb_hole":
                    pos1[0] += -depth  
                pos1[1] += 0
                
                pos1[2] += depth/2
                poss = []
                pos11 = copy.deepcopy(pos1)
                pos11[0] += -shift_x + depth / 2
                pos11[1] += -(height-1) * 15 / 2 - 15  
                pos12 = copy.deepcopy(pos1)
                pos12[0] += -shift_x + depth / 2
                pos12[1] += (height-1) * 15 / 2 + 15  
                poss.append(pos11)
                poss.append(pos12)
                p3["pos"] = poss
                rot1 = copy.deepcopy(rot)
                rot1[1] += 90
                p3["rot"] = rot1
                oobb_base.append_full(thing,**p3)


    

    if bolt_extra == "bolt_recess":
        #add bolt head clearance
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = f"oobb_nut"
        p3["radius_name"] = "m6"   
        p3["overhang"] = True   
        p3["hole"] = True        
        p3["m"] = "#"
        pos1 = copy.deepcopy(pos)        
        pos1[2] += 0
        poss = []
        #add a position for every odd row in an odd column, and every even row in an even column
        for i in range(0, width):
            for j in range(0, height):
                if (i % 2 == 0 and j % 2 == 0) or (i % 2 == 1 and j % 2 == 1):
                    pos11 = copy.deepcopy(pos1)
                    pos11[0] += (i - (width-1)/2) * 15
                    pos11[1] += (j - (height-1)/2) * 15
                    poss.append(pos11)
        p3["pos"] = poss
        oobb_base.append_full(thing,**p3)
        


    if prepare_print:
        #put into a rotation object
        components_second = copy.deepcopy(thing["components"])
        return_value_2 = {}
        return_value_2["type"]  = "rotation"
        return_value_2["typetype"]  = "p"
        pos1 = copy.deepcopy(pos)
        pos1[0] += 50
        return_value_2["pos"] = pos1
        return_value_2["rot"] = [180,0,0]
        return_value_2["objects"] = components_second
        
        thing["components"].append(return_value_2)

    
        #add slice # top
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_slice"
        pos1 = copy.deepcopy(pos)
        pos1[0] += -500/2
        pos1[1] += 0
        pos1[2] += -500/2        
        p3["pos"] = pos1
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)
    
if __name__ == '__main__':
    kwargs = {}
    main(**kwargs)