*! -texgfx-: wrapper to insert \includegraphics
*! texgfx `texfile' `gfxfid' `caption'
*! Version 1.0.0 - 26 October 2018                                           
*! Author: Nick Frazier                                              
*! FDIC, DCP  


capture program drop texgfx
prog texgfx, nclass

	#delimit ;
	file write `1' _n(2);
	file write `1' "\begin{figure}[htb]  " _n(1);
	file write `1' "\centering  " _n(1);
	file write `1' "\resizebox*{.7\textwidth}{!}{  " _n(1);
	file write `1' "\includegraphics{`2'}}" _n(1);
	if "`3'" != "" { ;
		file write `1' "\caption{ `3'}  " _n(1);
		};
	file write `1' "\end{figure}  " _n(3);
	#delimit cr
end
