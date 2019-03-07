cd %~dp0

ebHevcEncApp.exe -c enc.cfg

ffmpeg.exe -i test.hevc -pix_fmt yuv420p10 dec.yuv

ffmpeg.exe -pix_fmt yuv420p10 -s 4096x2160 -framerate 60 -i H:\Seq\Netflix_FoodMarket2_4096x2160_60_10bit_420.yuv  -pix_fmt yuv420p10 -s 4096x2160 -framerate 60 -i dec.yuv -lavfi "ssim;[0:v][1:v]psnr" -f null -

