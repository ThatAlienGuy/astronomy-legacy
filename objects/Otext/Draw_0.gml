var halfw = w * 0.5;

//Draw The Box
draw_set_color(c_black);
draw_set_alpha(05);
draw_roundrect_ext(x-halfw-border,y-h-(border*2),x+halfw+border,y,15,15,false);
draw_set_alpha(1);

//Draw text
DrawSetText(c_white, Fsign, fa_center, fa_top);
draw_text(x,y-h-border,text_current);