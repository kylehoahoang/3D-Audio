function varargout = virtualpiano(varargin)
% VIRTUALPIANO MATLAB code for virtualpiano.fig
%      VIRTUALPIANO, by itself, creates a new VIRTUALPIANO or raises the existing
%      singleton*.
%
%      H = VIRTUALPIANO returns the handle to a new VIRTUALPIANO or the handle to
%      the existing singleton*.
%
%      VIRTUALPIANO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VIRTUALPIANO.M with the given input arguments.
%
%      VIRTUALPIANO('Property','Value',...) creates a new VIRTUALPIANO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before virtualpiano_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to virtualpiano_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help virtualpiano

% Last Modified by GUIDE v2.5 22-Feb-2024 23:53:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @virtualpiano_OpeningFcn, ...
                   'gui_OutputFcn',  @virtualpiano_OutputFcn, ...
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


% --- Executes just before virtualpiano is made visible.
function virtualpiano_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to virtualpiano (see VARARGIN)

% Choose default command line output for virtualpiano
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes virtualpiano wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = virtualpiano_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in C3.
function C3_Callback(hObject, eventdata, handles)
% hObject    handle to C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c3 = 130.81;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*c3*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in D3.
function D3_Callback(hObject, eventdata, handles)
% hObject    handle to D3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d3 = 146.83;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*d3*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in E3.
function E3_Callback(hObject, eventdata, handles)
% hObject    handle to E3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
e3 = 164.81;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*e3*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in C3Sharp.
function C3Sharp_Callback(hObject, eventdata, handles)
% hObject    handle to C3Sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
csharp3 = 138.59;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*csharp3*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in D3Sharp.
function D3Sharp_Callback(hObject, eventdata, handles)
% hObject    handle to D3Sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dsharp3 = 146.83;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*dsharp3*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in F3.
function F3_Callback(hObject, eventdata, handles)
% hObject    handle to F3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f3 = 174.61;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*f3*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in G3.
function G3_Callback(hObject, eventdata, handles)
% hObject    handle to G3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g3 = 196.00;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*g3*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in A3.
function A3_Callback(hObject, eventdata, handles)
% hObject    handle to A3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a3 = 220.00;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*a3*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in F3Sharp.
function F3Sharp_Callback(hObject, eventdata, handles)
% hObject    handle to F3Sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fsharp3 = 185.00;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*fsharp3*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in G3Sharp.
function G3Sharp_Callback(hObject, eventdata, handles)
% hObject    handle to G3Sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gsharp3 = 207.65;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*gsharp3*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in B3.
function B3_Callback(hObject, eventdata, handles)
% hObject    handle to B3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b3 = 246.94;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*b3*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in A3Sharp.
function A3Sharp_Callback(hObject, eventdata, handles)
% hObject    handle to A3Sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
asharp3 = 233.08;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*asharp3*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in C4.
function C4_Callback(hObject, eventdata, handles)
% hObject    handle to C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c4 = 261.63;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*c4*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in D4.
function D4_Callback(hObject, eventdata, handles)
% hObject    handle to D4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d4 = 293.67;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*d4*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in E4.
function E4_Callback(hObject, eventdata, handles)
% hObject    handle to E4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
e4 = 329.63;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*e4*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in C4Sharp.
function C4Sharp_Callback(hObject, eventdata, handles)
% hObject    handle to C4Sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
csharp4 = 277.18;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*csharp4*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in D4Sharp.
function D4Sharp_Callback(hObject, eventdata, handles)
% hObject    handle to D4Sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dsharp4 = 311.13;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*dsharp4*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in F4.
function F4_Callback(hObject, eventdata, handles)
% hObject    handle to F4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f4 = 349.23;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*f4*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in G4.
function G4_Callback(hObject, eventdata, handles)
% hObject    handle to G4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g4 = 392.00;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*g4*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in A4.
function A4_Callback(hObject, eventdata, handles)
% hObject    handle to A4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a4 = 440.00;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*a4*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in F4Sharp.
function F4Sharp_Callback(hObject, eventdata, handles)
% hObject    handle to F4Sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fsharp4 = 369.99;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*fsharp4*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in G4Sharp.
function G4Sharp_Callback(hObject, eventdata, handles)
% hObject    handle to G4Sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gsharp4 = 415.50;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*gsharp4*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in B4.
function B4_Callback(hObject, eventdata, handles)
% hObject    handle to B4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b4 = 493.88;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*b4*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in A4Sharp.
function A4Sharp_Callback(hObject, eventdata, handles)
% hObject    handle to A4Sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
asharp4 = 466.16;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*asharp4*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in C5.
function C5_Callback(hObject, eventdata, handles)
% hObject    handle to C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c5 = 523.25;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*c5*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in D5.
function D5_Callback(hObject, eventdata, handles)
% hObject    handle to D5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d5 = 587.33;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*d5*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in E5.
function E5_Callback(hObject, eventdata, handles)
% hObject    handle to E5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
e5 = 659.26;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*e5*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in C5Sharp.
function C5Sharp_Callback(hObject, eventdata, handles)
% hObject    handle to C5Sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
csharp5 = 554.37;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*csharp5*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in D5Sharp.
function D5Sharp_Callback(hObject, eventdata, handles)
% hObject    handle to D5Sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dsharp5 = 622.25;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*dsharp5*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in F5.
function F5_Callback(hObject, eventdata, handles)
% hObject    handle to F5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f5 = 698.46;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*f5*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in G5.
function G5_Callback(hObject, eventdata, handles)
% hObject    handle to G5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g5 = 783.99;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*g5*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in A5.
function A5_Callback(hObject, eventdata, handles)
% hObject    handle to A5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a5 = 880.00;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*a5*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in B5.
function B5_Callback(hObject, eventdata, handles)
% hObject    handle to B5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b5 = 987.77;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*b5*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in C6.
function C6_Callback(hObject, eventdata, handles)
% hObject    handle to C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c6 = 1046.5;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*c6*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in F5Sharp.
function F5Sharp_Callback(hObject, eventdata, handles)
% hObject    handle to F5Sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fsharp5 = 739.99;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*fsharp5*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in G5Sharp.
function G5Sharp_Callback(hObject, eventdata, handles)
% hObject    handle to G5Sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gsharp5 = 830.61;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*gsharp5*t);
% play sound
sound(sinwave, sampling_rate);


% --- Executes on button press in A5Sharp.
function A5Sharp_Callback(hObject, eventdata, handles)
% hObject    handle to A5Sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
asharp5 = 932.33;
% Sine Wave Properties
duration = 1; % duration in seconds
sampling_rate = 44100;
% make time vector
t = 0:(1/sampling_rate):duration;
% make sine wave
sinwave = sin(2*pi*asharp5*t);
% play sound
sound(sinwave, sampling_rate);
