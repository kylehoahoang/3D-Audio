function varargout = keypad(varargin)
% KEYPAD MATLAB code for keypad.fig
%      KEYPAD, by itself, creates a new KEYPAD or raises the existing
%      singleton*.
%
%      H = KEYPAD returns the handle to a new KEYPAD or the handle to
%      the existing singleton*.
%
%      KEYPAD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KEYPAD.M with the given input arguments.
%
%      KEYPAD('Property','Value',...) creates a new KEYPAD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before keypad_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to keypad_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help keypad

% Last Modified by GUIDE v2.5 27-Feb-2024 00:41:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @keypad_OpeningFcn, ...
                   'gui_OutputFcn',  @keypad_OutputFcn, ...
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


% --- Executes just before keypad is made visible.
function keypad_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to keypad (see VARARGIN)

% Choose default command line output for keypad
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes keypad wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = keypad_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function getTone(rowIndex, colIndex)
    rowFrequencies = [697, 770, 852, 941]; %low freqeuncy component (in Hz)
    colFrequencies = [1209, 1336, 1477]; %high frequency component (in Hz)

    duration = 0.5; % duration in seconds
    sampling_rate = 44100;

    t = 0:(1/sampling_rate):duration;

    rowWave = sin(2 * pi * rowFrequencies(rowIndex) * t);
    colWave = sin(2 * pi * colFrequencies(colIndex) * t);

    resultWave = rowWave + colWave;
    sound(resultWave, sampling_rate);

    figure;
    spectrogram(resultWave, 256, 250, 256, sampling_rate, 'yaxis');
    title('Spectrogram for Key');
    xlabel('Time (s)');
    ylabel('Frequency (Hz)');



% --- Executes on button press in no1.
function no1_Callback(hObject, eventdata, handles)
% hObject    handle to no1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
getTone(1,1);


% --- Executes on button press in no2.
function no2_Callback(hObject, eventdata, handles)
% hObject    handle to no2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
getTone(1,2);

% --- Executes on button press in no3.
function no3_Callback(hObject, eventdata, handles)
% hObject    handle to no3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
getTone(1,3);

% --- Executes on button press in no4.
function no4_Callback(hObject, eventdata, handles)
% hObject    handle to no4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
getTone(2,1);

% --- Executes on button press in no5.
function no5_Callback(hObject, eventdata, handles)
% hObject    handle to no5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
getTone(2,2);

% --- Executes on button press in no6.
function no6_Callback(hObject, eventdata, handles)
% hObject    handle to no6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
getTone(2,3);

% --- Executes on button press in no7.
function no7_Callback(hObject, eventdata, handles)
% hObject    handle to no7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
getTone(3,1);

% --- Executes on button press in no8.
function no8_Callback(hObject, eventdata, handles)
% hObject    handle to no8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
getTone(3,2);

% --- Executes on button press in no9.
function no9_Callback(hObject, eventdata, handles)
% hObject    handle to no9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
getTone(3,3);

% --- Executes on button press in asterisk.
function asterisk_Callback(hObject, eventdata, handles)
% hObject    handle to asterisk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
getTone(4,1);

% --- Executes on button press in no0.
function no0_Callback(hObject, eventdata, handles)
% hObject    handle to no0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
getTone(4,2);

% --- Executes on button press in pound.
function pound_Callback(hObject, eventdata, handles)
% hObject    handle to pound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
getTone(4,3);