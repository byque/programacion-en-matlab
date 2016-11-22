%% Creacion de la imagen
% clear, clc; % Descomentar para limpiar el entorno de trabajo

% Dimensiones del dibujo 18 x 18 cuadrados
% Escala 1:32 cuadrados/px
I0 = ones(576)*255;

% Comenzar el trazo
% Rojo en escala de grises 0.2126 * 255 = 54

%                           Fila donde pintar los cuadrados
I0(33:64, 193:384) = 0;     % 2da fila

I0(65:96, 129:192) = 0;     % 3ra fila
I0(65:96, 193:320) = 54;
I0(65:96, 385:448) = 0;

I0(97:128, 97:128) = 0;      % 4ta fila
I0(97:128, 193:320) = 54;
I0(97:128, 449:480) = 0;

I0(129:160, 65:96) = 0;      % 5ta fila
I0(129:160, 161:352) = 54;
I0(129:160, 481:512) = 0;

I0(161:192, 65:96) = 0;      % 6ta fila
I0(161:192, 129:192) = 54;
I0(161:192, 321:384) = 54;
I0(161:192, 481:512) = 0;

I0(193:224, 33:64) = 0;      % 7ma fila
I0(193:224, 65:160) = 54;
I0(193:224, 353:512) = 54;
I0(193:224, 513:544) = 0;

I0(225:256, 33:64) = 0;      % 8va fila
I0(225:256, 65:160) = 54;
I0(225:256, 353:416) = 54;
I0(225:256, 481:512) = 54;
I0(225:256, 513:544) = 0;

I0(257:288, 33:64) = 0;      % 9na fila
I0(257:288, 97:160) = 54;
I0(257:288, 353:384) = 54;
I0(257:288, 513:544) = 0;

I0(289:320, 33:64) = 0;      % 10ma fila
I0(289:320, 129:192) = 54;
I0(289:320, 321:384) = 54;
I0(289:320, 513:544) = 0;

I0(321:352, 33:64) = 0;      % 11va fila
I0(321:352, 129:416) = 54;
I0(321:352, 480:512) = 54;
I0(321:352, 513:544) = 0;

I0(353:384, 33:64) = 0;      % 12va fila
I0(353:384, 97:160) = 54;
I0(353:384, 160:416) = 0;
I0(353:384, 417:512) = 54;
I0(353:384, 513:544) = 0;

I0(385:416, 65:160) = 0;      % 13va fila
I0(385:416, 225:256) = 0;
I0(385:416, 321:352) = 0;
I0(385:416, 417:512) = 0;

I0(417:448, 97:128) = 0;      % 14va fila
I0(417:448, 225:256) = 0;
I0(417:448, 321:352) = 0;
I0(417:448, 449:480) = 0;

I0(449:480, 97:128) = 0;      % 15va fila
I0(449:480, 449:480) = 0;

I0(481:512, 129:160) = 0;     % 16va fila
I0(481:512, 417:448) = 0;

I0(512:544, 160:416) = 0;     % 17ma fila

% Transformacion a tipo de datos single
I1 = im2single(uint8(I0));

% Visualizacion y guardado de la imagen
figure(1);
imshow(I1);
%imwrite(I1,'A_original.png');