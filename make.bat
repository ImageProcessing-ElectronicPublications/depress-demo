echo off > nul

echo Photo
depress.exe data\voynich\voynich.txt voynich.djvu

echo Photo (Low quality)
depress.exe -quality 70 data\voynich\voynich.txt voynich_q70.djvu

echo Black And White (with simple threshold)
depress.exe -bw data\voynich\voynich.txt voynich_bw.djvu

echo Black And White (with simple threshold and lossy mode)
depress.exe -bw -quality 99 data\voynich\voynich.txt voynich_bw_q99.djvu

echo Black And White (with adaptive binarization)
depress.exe -bw -adaptive data\voynich\voynich.txt voynich_bw_adaptive.djvu

echo Black And White (with error diffusion)
depress.exe -bw -errdiff data\voynich\voynich.txt voynich_bw_errdiff.djvu

echo Layered (Default quality)
depress.exe -layered data\voynich\voynich.txt voynich_layered_3_2.djvu

echo Layered (Low quality)
depress.exe -layered -quality 70 data\voynich\voynich.txt voynich_layered_3_2_q70.djvu

echo Layered (High quality)
depress.exe -layered -laydownall 1 -laydownfg 2 data\voynich\voynich.txt voynich_layered_1_2.djvu

echo Quantization
depress.exe -palettized -quant -palcolors 16 data\voynich\voynich.txt voynich_palettized_quant_16.djvu

echo Noteshrink
depress.exe -palettized -noteshrink -palcolors 16 data\voynich\voynich.txt voynich_palettized_noteshrink_16.djvu