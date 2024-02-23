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

% Last Modified by GUIDE v2.5 22-Feb-2024 22:16:45

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
