clc
clear all
close all
 
[ListadoFicheros]=dir;
[NumeroFicheros,q]=size(ListadoFicheros);
Cotizaciones=[];
for k=1:NumeroFicheros
if length(strfind(ListadoFicheros(k).name,'.csv'))>0
    %Lectura del fichero
    filename=ListadoFicheros(k).name;
    ImportarDatos;
    Cotizaciones=[Cotizaciones,Close];
end
end
save Cotizaciones
plot(Cotizaciones)


