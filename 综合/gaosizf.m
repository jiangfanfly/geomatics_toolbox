function varargout = gaosizf(varargin)
% GAOSIZF MATLAB code for gaosizf.fig
%      GAOSIZF, by itself, creates a new GAOSIZF or raises the existing
%      singleton*.
%
%      H = GAOSIZF returns the handle to a new GAOSIZF or the handle to
%      the existing singleton*.
%
%      GAOSIZF('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GAOSIZF.M with the given input arguments.
%
%      GAOSIZF('Property','Value',...) creates a new GAOSIZF or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gaosizf_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gaosizf_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gaosizf

% Last Modified by GUIDE v2.5 16-Dec-2016 22:16:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gaosizf_OpeningFcn, ...
                   'gui_OutputFcn',  @gaosizf_OutputFcn, ...
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


% --- Executes just before gaosizf is made visible.
function gaosizf_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gaosizf (see VARARGIN)

% Choose default command line output for gaosizf
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gaosizf wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gaosizf_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


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


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
set(handles.pushbutton2,'Enable','off');  
set(handles.pushbutton4,'Enable','off'); 
set(handles.pushbutton5,'Enable','off'); 
set(handles.pushbutton1,'Enable','on'); 
set(handles.pushbutton3,'Enable','on'); 
set(handles.pushbutton6,'Enable','on'); 
set(handles.listbox1,'string','');
set(handles.listbox2,'string','');
set(handles.radiobutton2,'Value',0);

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
set(handles.pushbutton1,'Enable','off');  
set(handles.pushbutton3,'Enable','off'); 
set(handles.pushbutton6,'Enable','off'); 
set(handles.pushbutton2,'Enable','on'); 
set(handles.pushbutton4,'Enable','on'); 
set(handles.pushbutton5,'Enable','on'); 
set(handles.listbox1,'string','');
set(handles.listbox2,'string','');
set(handles.radiobutton1,'Value',0); 


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile({'*.txt','data file(*.txt)'},'导入数据');
if(isempty(pathname))
    returen;
end
filepath=strcat(pathname,filename);
BL=dlmread(filepath);
set(handles.listbox1,'string',num2str(BL));
handles.BL=BL;
guidata(hObject,handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile({'*.txt','data file(*.txt)'},'导入数据');
if(isempty(pathname))
    returen;
end
filepath=strcat(pathname,filename);
xy=dlmread(filepath);
set(handles.listbox2,'string',num2str(xy));
handles.xy=xy;
x=(xy(:,1))';
y=(xy(:,2))';
guidata(hObject,handles);

% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
BL=handles.BL;
B=(BL(:,1))';
L=(BL(:,2))';
n=get(handles.popupmenu1,'value');
L0=str2num(get(handles.edit1,'string'));
[x,y]=BL2xy(B,L,L0,n)
set(handles.listbox2,'string',num2str([x',y']));
handles.xy=[x',y'];
guidata(hObject,handles);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xy=handles.xy;
x=(xy(:,1))';
y=(xy(:,2))';
n=get(handles.popupmenu1,'value');
L0=str2num(get(handles.edit1,'string'));
[B,L]=xy2BL(X,Y,L0,n)
set(handles.listbox1,'string',num2str([B,L]));
handles.BL=[B,L];
guidata(hObject,handles);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
BL=handles.BL;
fid=fopen('xy转BH结果.txt','wt');
[m,n]=size(BL);
for i=1:1:m
   for j=1:1:n
      if j==n
      fprintf(fid,'%f\n',BL(i,j));
      else
      fprintf(fid,'%f\t',BL(i,j));
      end
   end
end

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xy=handles.xy;
fid=fopen('BL转xy结果.txt','wt');
[m,n]=size(xy);
for i=1:1:m
   for j=1:1:n
      if j==n
      fprintf(fid,'%f\n',xy(i,j));
      else
      fprintf(fid,'%f\t',xy(i,j));
      end
   end
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function cehui_Callback(hObject, eventdata, handles)
% hObject    handle to cehui (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cehui;
close(gcbf);
