close all
clc

info=imfinfo('pr.jpg');
IFN=info.Filename; %Image File Name

IFS=info.FileSize; %Image File Size
IF=info.Format; %Image Format
IW=info.Width; %Image Width
IH=info.Height; %Iamge Height
IBD=info.BitDepth;%Image BitDepth
IC=info.ColorType;%Image Color
IS=info.NumberOfSamples;%Number of Samples of Image
ICM=info.CodingMethod; %Coding Method
ICP=info.CodingProcess; %Coding Process

imageinfo(info); %Store all the information of image in a seperate window