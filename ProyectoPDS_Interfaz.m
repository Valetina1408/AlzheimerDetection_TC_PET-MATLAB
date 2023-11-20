function varargout = ProyectoPDS_Interfaz(varargin)
% PROYECTOPDS_INTERFAZ MATLAB code for ProyectoPDS_Interfaz.fig
%      PROYECTOPDS_INTERFAZ, by itself, creates a new PROYECTOPDS_INTERFAZ or raises the existing
%      singleton*.
%
%      H = PROYECTOPDS_INTERFAZ returns the handle to a new PROYECTOPDS_INTERFAZ or the handle to
%      the existing singleton*.
%
%      PROYECTOPDS_INTERFAZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROYECTOPDS_INTERFAZ.M with the given input arguments.
%
%      PROYECTOPDS_INTERFAZ('Property','Value',...) creates a new PROYECTOPDS_INTERFAZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ProyectoPDS_Interfaz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ProyectoPDS_Interfaz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ProyectoPDS_Interfaz

% Last Modified by GUIDE v2.5 25-Nov-2021 23:48:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ProyectoPDS_Interfaz_OpeningFcn, ...
                   'gui_OutputFcn',  @ProyectoPDS_Interfaz_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before ProyectoPDS_Interfaz is made visible.
function ProyectoPDS_Interfaz_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ProyectoPDS_Interfaz (see VARARGIN)

% Choose default command line output for ProyectoPDS_Interfaz
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ProyectoPDS_Interfaz wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ProyectoPDS_Interfaz_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in TC.
function TC_Callback(hObject, eventdata, handles)
% hObject    handle to TC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of TC
global band comp
band=0;
       comp=imread('PA5_TC.jpg');
       axes(handles.Comparacion)
       imshow(comp)
       


% --- Executes on button press in PET.
function PET_Callback(hObject, eventdata, handles)
% hObject    handle to PET (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of PET
global band1 comp1 
band1=0;
       comp1=imread('PET_COMP.jpeg');
       axes(handles.Comparacion)
       imshow(comp1)


function Nombre_Callback(hObject, eventdata, ~)
% hObject    handle to Nombre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Nombre as text
%        str2double(get(hObject,'String')) returns contents of Nombre as a double


% --- Executes during object creation, after setting all properties.
function Nombre_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Nombre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NIdet_Callback(hObject, eventdata, handles)
% hObject    handle to NIdet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NIdet as text
%        str2double(get(hObject,'String')) returns contents of NIdet as a double


% --- Executes during object creation, after setting all properties.
function NIdet_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NIdet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Nacimiento_Callback(hObject, eventdata, handles)
% hObject    handle to Nacimiento (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Nacimiento as text
%        str2double(get(hObject,'String')) returns contents of Nacimiento as a double


% --- Executes during object creation, after setting all properties.
function Nacimiento_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Nacimiento (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FRealizacion_Callback(hObject, eventdata, handles)
% hObject    handle to FRealizacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FRealizacion as text
%        str2double(get(hObject,'String')) returns contents of FRealizacion as a double


% --- Executes during object creation, after setting all properties.
function FRealizacion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FRealizacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function uipanel4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% --- Executes during object creation, after setting all properties.
function logo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to logo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
       %axes(handles.logo)
       imshow('LOGO_UMNG.png')
% Hint: place code in OpeningFcn to populate logo


% --- Executes on button press in Guardar.
function Guardar_Callback(hObject, eventdata, handles)
global examen  alz
 if examen==1
     exam='TC';
 else
     exam='PET';
 end
 if alz==0
     res='El paciente presenta signos de alzheimer';
 else
     res='El paciente NO presenta signos de alzheimer';
 end
% hObject    handle to Guardar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fid = fopen('RESULTADOS.txt','a+');
  fprintf(fid,'Nombre:                %s\n',get(handles.Nombre,'String'))
  fprintf(fid,'N° Identificación:     %s\n',get(handles.NIdet,'String'))
  fprintf(fid,'Fecha Nacimiento:      %s\n',get(handles.Nacimiento,'String'))
  fprintf(fid,'\nFecha Realización:    %s\n',get(handles.FRealizacion,'String'))
  fprintf(fid,'Tipo Imagen:           %s\n',exam)
  fprintf(fid,'Resultados:           %s\n',res)
  fprintf(fid,'-------------------------------------------------------------------\n')
  
fclose(fid);


% --- Executes on button press in Cargar.
function Cargar_Callback(hObject, eventdata, handles)
% hObject    handle to Cargar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global band A Pasos examen
examen=1;
if band == 0
    A=imread('PA2_TC.jpg');
elseif band == 1
    A=imread('PA1_TC.jpg');
elseif band == 2
    A=imread('PA4_TC.jpg');
elseif band == 3
    A=imread('PA3_TAC.jpg');
    band = 0;
end
    axes(handles.ImagIn);
    imshow(A);
    set(handles.ImagIn);
    handles.A=A;
    guidata(hObject,handles)
    band = band + 1;
    
Pasos = 0;

% --- Executes on button press in Analizar_tc.
function Analizar_tc_Callback(hObject, eventdata, handles)
% hObject    handle to Analizar_tc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A  Pasos Imagen_gray comp Imagen_gray1 Im_bin11 Im_bin21 Im_bin1 Im_bin2 alz r

if Pasos == 0
    Imagen_gray1=rgb2gray(comp);
    Imagen_gray=rgb2gray(A);
    axes(handles.Comparacion)
    imshow(Imagen_gray1)
    set(handles.Comparacion);
    axes(handles.ImagIn)
    imshow(Imagen_gray)
    
    r=[' '];
    set(handles.text11, 'string', r);
    
elseif Pasos == 1
    Im_bin11 = Imagen_gray1 > 70; 
    axes(handles.Comparacion)
    imshow(Im_bin11)
    
    Im_bin1 = Imagen_gray > 70; 
    axes(handles.ImagIn)
    imshow(Im_bin1)
elseif Pasos == 2
    Im_bin21 = imclearborder(Im_bin11);
    axes(handles.Comparacion)
    imshow(Im_bin21)
    
    Im_bin2 = imclearborder(Im_bin1);
    axes(handles.ImagIn)
    imshow(Im_bin2)
elseif Pasos == 3
    Pixeles_Comp = nnz(Im_bin21);
    Pixeles_Imag = nnz(Im_bin2);
    
    if Pixeles_Comp > Pixeles_Imag
        alz=0;
        r=['El paciente presenta signos de alzheimer'];
    else
        alz=1;
        r=['El paciente NO presenta signos de alzheimer'];
    end
set(handles.text11, 'string', r);

end
Pasos = Pasos + 1;


% --- Executes on button press in Resultados.
function Resultados_Callback(hObject, eventdata, handles)
% hObject    handle to Resultados (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Cargar_pet.
function Cargar_pet_Callback(hObject, eventdata, handles)
% hObject    handle to Cargar_pet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global band1 A Pasos1 examen
examen=2;
if band1 == 0
    A=imread('PET_ALZ.jpg');
elseif band1 == 1
    A=imread('PET_SA.jpg');
%     band1 = 0;
end
    axes(handles.ImagIn);
    imshow(A);
    set(handles.ImagIn);
    handles.A=A;
    guidata(hObject,handles)
    band1 = band1 + 1;
    
Pasos1 = 0;


% --- Executes on button press in Analizar_pet.
function Analizar_pet_Callback(hObject, eventdata, handles)
% hObject    handle to Analizar_pet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Pasos1 A Imagengray Imbin1 erodedBW NumPixelRojo band1 Imbin2 ...
    Imagengray1 Imbin11 NumPixelRojo1 comp1 alz r1

if band1 == 1
    if Pasos1 == 0
        Imagengray1=rgb2gray(comp1);
        axes(handles.Comparacion)
        imshow(Imagengray1)
        
        Imagengray=rgb2gray(A);
        axes(handles.ImagIn)
        imshow(Imagengray)

        r1=[' '];
        set(handles.text11, 'string', r1);

    elseif Pasos1 == 1
        
        Imbin11 = Imagengray1  > 80; 
        axes(handles.Comparacion)
        imshow(Imbin11)
        
        
        Imbin1 = Imagengray < 110;  
        axes(handles.ImagIn)
        imshow(Imbin1)
    elseif Pasos1 == 2
        Imbin2 = imclearborder(Imbin1);
        se = strel('line',2,1);
        erodedBW = imerode(Imbin2,se);
        axes(handles.ImagIn)
        imshow(erodedBW)
    elseif Pasos1 == 3

        [B1,L1] = bwboundaries(Imbin11,'noholes');

        axes(handles.Comparacion)
        imshow(label2rgb(L1, @jet, [.5 .5 .5]));
        set(handles.Comparacion);
        guidata(hObject,handles);
        imagen2=getframe(handles.Comparacion);
        imagen12=frame2im(imagen2);
        imwrite(imagen12,'RxProcesada1.jpg')

        rgbImage1=imread('RxProcesada1.jpg');

        GrayPixels1 = rgbImage1(:,:,1) >=112 & rgbImage1(:,:,2) >=105 & rgbImage1(:,:,3) >=105; %%Contar Pixeles grises
        NumPixelesGris = sum(GrayPixels1(:))
        grayImage1=rgb2gray(rgbImage1);
        NumTotalPixel1=numel(grayImage1)
        NumPixelRojo1=NumTotalPixel1-NumPixelesGris
        
        
        [B,L] = bwboundaries(erodedBW,'noholes');

        axes(handles.ImagIn)
        imshow(label2rgb(L, @jet, [.5 .5 .5]));
        set(handles.ImagIn);
        guidata(hObject,handles);
        imagen=getframe(handles.ImagIn);
        imagen1=frame2im(imagen);
        imwrite(imagen1,'RxProcesada.jpg')

        rgbImage=imread('RxProcesada.jpg');

        GrayPixels = rgbImage(:,:,1) >=112 & rgbImage(:,:,2) >=105 & rgbImage(:,:,3) >=105; %%Contar Pixeles grises
        NumPixelesGris = sum(GrayPixels(:))
        grayImage=rgb2gray(rgbImage);
        NumTotalPixel=numel(grayImage)
        NumPixelRojo=NumTotalPixel-NumPixelesGris
        
        if NumPixelRojo1 > NumPixelRojo
            alz=0;
            r1=['El paciente presenta signos de alzheimer'];
        else
            alz=1;
            r1=['El paciente NO presenta signos de alzheimer'];
        end
         set(handles.text11, 'string', r1);
    end
elseif band1==2
    if Pasos1 == 0
        Imagengray1=rgb2gray(comp1);
        axes(handles.Comparacion)
        imshow(Imagengray1)
        
        Imagengray=rgb2gray(A);
        axes(handles.ImagIn)
        imshow(Imagengray)

        r1=[' '];
        set(handles.text11, 'string', r1);

    elseif Pasos1 == 1
        Imbin11 = Imagengray1  > 80; 
        axes(handles.Comparacion)
        imshow(Imbin11)

        Imbin1 = Imagengray > 60;  
        axes(handles.ImagIn)
        imshow(Imbin1)
    elseif Pasos1 == 2
    
        se = strel('line',15,200);
        erodedBW = imerode(Imbin1,se);
        axes(handles.ImagIn)
        imshow(erodedBW)
    elseif Pasos1 == 3
        [B1,L1] = bwboundaries(Imbin11,'noholes');

        axes(handles.Comparacion)
        imshow(label2rgb(L1, @jet, [.5 .5 .5]));
        set(handles.Comparacion);
        guidata(hObject,handles);
        imagen2=getframe(handles.Comparacion);
        imagen12=frame2im(imagen2);
        imwrite(imagen12,'RxProcesada1.jpg')

        rgbImage1=imread('RxProcesada1.jpg');

        GrayPixels1 = rgbImage1(:,:,1) >=112 & rgbImage1(:,:,2) >=105 & rgbImage1(:,:,3) >=105; %%Contar Pixeles grises
        NumPixelesGris = sum(GrayPixels1(:))
        grayImage1=rgb2gray(rgbImage1);
        NumTotalPixel1=numel(grayImage1)
        NumPixelRojo1=NumTotalPixel1-NumPixelesGris
        
        
        [B,L] = bwboundaries(erodedBW,'noholes');

        axes(handles.ImagIn)
        imshow(label2rgb(L, @jet, [.5 .5 .5]));
        set(handles.ImagIn);
        guidata(hObject,handles);
        imagen=getframe(handles.ImagIn);
        imagen1=frame2im(imagen);
        imwrite(imagen1,'RxProcesada.jpg')

        rgbImage=imread('RxProcesada.jpg');

        GrayPixels = rgbImage(:,:,1) >=112 & rgbImage(:,:,2) >=105 & rgbImage(:,:,3) >=105; %%Contar Pixeles grises
        NumPixelesGris = sum(GrayPixels(:))
        grayImage=rgb2gray(rgbImage);
        NumTotalPixel=numel(grayImage)
        NumPixelRojo=NumTotalPixel-NumPixelesGris
        
        if NumPixelRojo1 < NumPixelRojo
            alz=0;
            r1=['El paciente presenta signos de alzheimer'];
        else
            alz=1;
            r1=['El paciente NO presenta signos de alzheimer'];
        end
         set(handles.text11, 'string', r1);
    end
end
     

Pasos1 = Pasos1 + 1;