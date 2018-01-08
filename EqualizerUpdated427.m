function varargout = EqualizerUpdated427(varargin)
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EqualizerUpdated427_OpeningFcn, ...
                   'gui_OutputFcn',  @EqualizerUpdated427_OutputFcn, ...
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
% This is the code setup for the GUI. Each slider is labeled with S* where
% * denotes the number of the slider with 1 centered at frequency 31.5 Hz
% and 10 centered at 16000 Hz. var is the actual slider, the val is the
% textbox underneath each slider. 
function EqualizerUpdated427_OpeningFcn(hObject, eventdata, handles, varargin)
global S  file_name;
file_name = ''; 
S=zeros(1,10);
set(handles.S1var,'min',-12);
set(handles.S1var,'max',12);
set(handles.S1var,'value',0);
set(handles.S1var,'SliderStep',[0.025,0.05]);
set(handles.S1val,'string',num2str(0));

set(handles.S2var,'min',-12);
set(handles.S2var,'max',12);
set(handles.S2var,'value',0);
set(handles.S2var,'SliderStep',[0.025,0.05]);
set(handles.S2val,'string',num2str(0));

set(handles.S3var,'min',-12);
set(handles.S3var,'max',12);
set(handles.S3var,'value',0);
set(handles.S3var,'SliderStep',[0.025,0.05]);
set(handles.S3val,'string',num2str(0));

set(handles.S4var,'min',-12);
set(handles.S4var,'max',12);
set(handles.S4var,'value',0);
set(handles.S4var,'SliderStep',[0.025,0.05]);
set(handles.S4val,'string',num2str(0));

set(handles.S5var,'min',-12);
set(handles.S5var,'max',12);
set(handles.S5var,'value',0);
set(handles.S5var,'SliderStep',[0.025,0.05]);
set(handles.S5val,'string',num2str(0));

set(handles.S6var,'min',-12);
set(handles.S6var,'max',12);
set(handles.S6var,'value',0);
set(handles.S6var,'SliderStep',[0.025,0.05]);
set(handles.S6val,'string',num2str(0));

set(handles.S7var,'min',-12);
set(handles.S7var,'max',12);
set(handles.S7var,'value',0);
set(handles.S7var,'SliderStep',[0.025,0.05]);
set(handles.S7val,'string',num2str(0));

set(handles.S8var,'min',-12);
set(handles.S8var,'max',12);
set(handles.S8var,'value',0);
set(handles.S8var,'SliderStep',[0.025,0.05]);
set(handles.S8val,'string',num2str(0));

set(handles.S9var,'min',-12);
set(handles.S9var,'max',12);
set(handles.S9var,'value',0);
set(handles.S9var,'SliderStep',[0.025,0.05]);
set(handles.S9val,'string',num2str(0));

set(handles.S10var,'min',-12);
set(handles.S10var,'max',12);
set(handles.S10var,'value',0);
set(handles.S10var,'SliderStep',[0.025,0.05]);
set(handles.S10val,'string',num2str(0));

handles.output = hObject;

guidata(hObject, handles);

function varargout = EqualizerUpdated427_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

%For all S*var_Callback, this executes whenever the slider moves and gets 
%the value. The value is assigned to S(*) where S is the array of values
%for the sliders.
function S1var_Callback(hObject, eventdata, handles)

global S;
S(1)=get(hObject,'value');
set(handles.S1val,'string',num2str(S(1)));

%For all S*var_CreateFcn, this sets the background color and size of the
%slider for each of the sliders.
function S1var_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function S2var_Callback(hObject, eventdata, handles)
global S;
S(2)=get(hObject,'value');
set(handles.S2val,'string',num2str(S(2)));


function S2var_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function S3var_Callback(hObject, eventdata, handles)
global S;
S(3)=get(hObject,'value');
set(handles.S3val,'string',num2str(S(3)));

function S3var_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function S4var_Callback(hObject, eventdata, handles)
global S;
S(4)=get(hObject,'value');
set(handles.S4val,'string',num2str(S(4)));

function S4var_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function S5var_Callback(hObject, eventdata, handles)
global S;
S(5)=get(hObject,'value');
set(handles.S5val,'string',num2str(S(5)));

function S5var_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function S6var_Callback(hObject, eventdata, handles)
global S;
S(6)=get(hObject,'value');
set(handles.S6val,'string',num2str(S(6)));

function S6var_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function S7var_Callback(hObject, eventdata, handles)
global S;
S(7)=get(hObject,'value');
set(handles.S7val,'string',num2str(S(7)));

function S7var_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function S8var_Callback(hObject, eventdata, handles)
global S;
S(8)=get(hObject,'value');
set(handles.S8val,'string',num2str(S(8)));

function S8var_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function S9var_Callback(hObject, eventdata, handles)
global S;
S(9)=get(hObject,'value');
set(handles.S9val,'string',num2str(S(9)));

function S9var_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function S10var_Callback(hObject, eventdata, handles)
global S;
S(10)=get(hObject,'value');
set(handles.S10val,'string',num2str(S(10)));

function S10var_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
%Load button. Load the .wav file that is specified by the user.
function Load_Callback(hObject, eventdata, handles)
global file_name;
file_name=uigetfile('*wav','Please Select the file Required');
%Reset button. Reset all values of sliders to 0.
function Reset_Callback(hObject, eventdata, handles)
global Fs S;
S=zeros(1,11);
Fs=48000;
set(handles.S1val,'string',num2str(0));
set(handles.S2val,'string',num2str(0));
set(handles.S3val,'string',num2str(0));
set(handles.S4val,'string',num2str(0));
set(handles.S5val,'string',num2str(0));
set(handles.S6val,'string',num2str(0));
set(handles.S7val,'string',num2str(0));
set(handles.S8val,'string',num2str(0));
set(handles.S9val,'string',num2str(0));
set(handles.S10val,'string',num2str(0));

set(handles.S1var,'value',0);
set(handles.S2var,'value',0);
set(handles.S3var,'value',0);
set(handles.S4var,'value',0);
set(handles.S5var,'value',0);
set(handles.S6var,'value',0);
set(handles.S7var,'value',0);
set(handles.S8var,'value',0);
set(handles.S9var,'value',0);
set(handles.S10var,'value',0);

%For all S*val_Callback, this sets the value of the text box under each
%slider to be the value specified on the slider or allows manually entering
%of the value desired by the user. If manually entering the value, the
%slider will change appropriately.
function S1val_Callback(hObject, eventdata, handles)
global S;
S(1)=str2num(get(hObject,'string'));
mi=get(handles.S1var,'min');
ma=get(handles.S1var,'max');
if(S(1)<mi || S(1)>ma)
    S(1)=get(handles.S1var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.S1var,'value',S(1));
end
%S*val_CreateFcn, this sets the background color of the text box under each
%slider.
function S1val_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function S2val_Callback(hObject, eventdata, handles)
global S;
S(2)=str2num(get(hObject,'string'));
mi=get(handles.S2var,'min');
ma=get(handles.S2var,'max');
if(S(2)<mi || S(2)>ma)
    S(2)=get(handles.S2var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.S2var,'value',S(2));
end

function S2val_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function S3val_Callback(hObject, eventdata, handles)
global S;
S(3)=str2num(get(hObject,'string'));
mi=get(handles.S3var,'min');
ma=get(handles.S3var,'max');
if(S(3)<mi || S(3)>ma)
    S(3)=get(handles.S3var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.S3var,'value',S(3));
end

function S3val_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function S4val_Callback(hObject, eventdata, handles)
global S;
S(4)=str2num(get(hObject,'string'));
mi=get(handles.S4var,'min');
ma=get(handles.S4var,'max');
if(S(4)<mi || S(4)>ma)
    S(4)=get(handles.S4var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.S4var,'value',S(4));
end

function S4val_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function S5val_Callback(hObject, eventdata, handles)
global S;
S(5)=str2num(get(hObject,'string'));
mi=get(handles.S5var,'min');
ma=get(handles.S5var,'max');
if(S(5)<mi || S(5)>ma)
    S(5)=get(handles.S5var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.S5var,'value',S(5));
end

function S5val_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function S6val_Callback(hObject, eventdata, handles)
global S;
S(6)=str2num(get(hObject,'string'));
mi=get(handles.S5var,'min');
ma=get(handles.S5var,'max');
if(S(6)<mi || S(6)>ma)
    S(6)=get(handles.S6var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.S6var,'value',S(6));
end

function S6val_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function S7val_Callback(hObject, eventdata, handles)
global S;
S(7)=str2num(get(hObject,'string'));
mi=get(handles.S7var,'min');
ma=get(handles.S7var,'max');
if(S(7)<mi || S(7)>ma)
    S(7)=get(handles.S7var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.S7var,'value',S(7));
end

function S7val_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function S8val_Callback(hObject, eventdata, handles)
global S;
S(8)=str2num(get(hObject,'string'));
mi=get(handles.S8var,'min');
ma=get(handles.S8var,'max');
if(S(8)<mi || S(8)>ma)
    S(8)=get(handles.S8var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.S8var,'value',S(8));
end

function S8val_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function S9val_Callback(hObject, eventdata, handles)
global S;
S(9)=str2num(get(hObject,'string'));
mi=get(handles.S9var,'min');
ma=get(handles.S9var,'max');
if(S(9)<mi || S(9)>ma)
    S(9)=get(handles.S5var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.S9var,'value',S(9));
end

function S9val_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function S10val_Callback(hObject, eventdata, handles)
global S;
S(10)=str2num(get(hObject,'string'));
mi=get(handles.S10var,'min');
ma=get(handles.S10var,'max');
if(S(10)<mi || S(10)>ma)
    S(10)=get(handles.S10var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.S10var,'value',S(10));
end

function S10val_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%Play button. Calls the play_song function to change the song as necessary
%and play the output song file after the original is passed through the 10
%filters.
function Play_Callback(hObject, eventdata, handles)
global player file_name;
player = play_song(file_name);
if player == 1
    return;
end
play(player);

%play_song function. This takes in the inputted song and filters the song
%with the gains specified by the user on the GUI. 
function player = play_song(myFile)
global  S;
%If user has not loaded a song wavread throws an error, and if that error
%is hit the program will just display the magnitude response of the current
%filter.
try 
    close figure 1;
    close figure 2;
catch
end
try
[X,Fs] = wavread(myFile);
catch 
    magnitude;
    player = 1;
    return;
end
%filter 1
tic;
Avec = [1];
Bvec = [1];
Avec = double(Avec);
Bvec = double(Bvec);
[B1,A1] = peakequalizer(S(1),31.5,(31.5/22),Fs);
O = filter(B1,A1,X);
Avec = conv(Avec,double(A1));
Bvec = conv(Bvec,double(B1));
[B2,A2] = peakequalizer(S(2),63,(63/44),Fs);
O = filter(B2,A2,O);
Avec = conv(Avec,double(A2));
Bvec = conv(Bvec,double(B2));
[B3,A3] = peakequalizer(S(3),125,(125/89),Fs);
O = filter(B3,A3,O);
Avec = conv(Avec,double(A3));
Bvec = conv(Bvec,double(B3));
[B4,A4] = peakequalizer(S(4),250,(250/178),Fs);
O = filter(B4,A4,O);
Avec = conv(Avec,double(A4));
Bvec = conv(Bvec,double(B4));
[B5,A5] = peakequalizer(S(5),500,(500/355),Fs);
O = filter(B5,A5,O);
Avec = conv(Avec,double(A5));
Bvec = conv(Bvec,double(B5));
[B6,A6] = peakequalizer(S(6),1000,(1000/710),Fs);
O = filter(B6,A6,O);
Avec = conv(Avec,double(A6));
Bvec = conv(Bvec,double(B6));
[B7,A7] = peakequalizer(S(7),2000,(2000/1420),Fs);
O = filter(B7,A7,O);
Avec = conv(Avec,double(A7));
Bvec = conv(Bvec,double(B7));
[B8,A8] = peakequalizer(S(8),4000,(4000/2840),Fs);
O = filter(B8,A8,O);
Avec = conv(Avec,double(A8));
Bvec = conv(Bvec,double(B8));
[B9,A9] = peakequalizer(S(9),8000,(8000/5680),Fs);
O = filter(B9,A9,O);
Avec = conv(Avec,double(A9));
Bvec = conv(Bvec,double(B9));
[B,A] = peakequalizer(S(10),16000,(16000/11360),Fs);
O = filter(B,A,O);
Avec = conv(Avec,double(A));
Bvec = conv(Bvec,double(B));
fvtool((Bvec),(Avec));
fvtool(B1,A1,B2,A2,B3,A3,B4,A4,B5,A5,B6,A6,B7,A7,B8,A8,B9,A9,B,A);
%zeros with greater magnitude than pole pair means 
%attenuating and zeros with lesser magnitude than corresponding pole pair
%means boosting
player = audioplayer(O,Fs,24);

%Magnitude simply displays magnitude of the filter assuming the sampling 
%frequency is 48KHz
function magnitude()
global S
Fs = 48000;
Avec = [1];
Bvec = [1];
Avec = double(Avec);
Bvec = double(Bvec);
[B1,A1] = peakequalizer(S(1),31.5,(31.5/22),Fs);
Avec = conv(Avec,double(A1));
Bvec = conv(Bvec,double(B1));
[B2,A2] = peakequalizer(S(2),63,(63/44),Fs);
Avec = conv(Avec,double(A2));
Bvec = conv(Bvec,double(B2));
[B3,A3] = peakequalizer(S(3),125,(125/89),Fs);
Avec = conv(Avec,double(A3));
Bvec = conv(Bvec,double(B3));
[B4,A4] = peakequalizer(S(4),250,(250/178),Fs);
Avec = conv(Avec,double(A4));
Bvec = conv(Bvec,double(B4));
[B5,A5] = peakequalizer(S(5),500,(500/355),Fs);
Avec = conv(Avec,double(A5));
Bvec = conv(Bvec,double(B5));
[B6,A6] = peakequalizer(S(6),1000,(1000/710),Fs);
Avec = conv(Avec,double(A6));
Bvec = conv(Bvec,double(B6));
[B7,A7] = peakequalizer(S(7),2000,(2000/1420),Fs);
Avec = conv(Avec,double(A7));
Bvec = conv(Bvec,double(B7));
[B8,A8] = peakequalizer(S(8),4000,(4000/2840),Fs);
Avec = conv(Avec,double(A8));
Bvec = conv(Bvec,double(B8));
[B9,A9] = peakequalizer(S(9),8000,(8000/5680),Fs);
Avec = conv(Avec,double(A9));
Bvec = conv(Bvec,double(B9));
[B,A] = peakequalizer(S(10),16000,(16000/11360),Fs);
Avec = conv(Avec,double(A));
Bvec = conv(Bvec,double(B));
fvtool((Bvec),(Avec));
fvtool(B1,A1,B2,A2,B3,A3,B4,A4,B5,A5,B6,A6,B7,A7,B8,A8,B9,A9,B,A);
%Stop button. This will stop the song while it is playing.
function Stop1_Callback(hObject, eventdata, handles)
global player
stop(player);

%This code creates the background image presented in the GUI
function figure1_CreateFcn(hObject, eventdata, handles)
ha = axes('units','normalized', ...
            'position',[0 0 1 1]);
uistack(ha,'bottom');
I=imread('img.tiff');
hi = imagesc(I);
set(ha,'handlevisibility','off', ...
            'visible','off');