function varargout = XYZBHL(varargin)
% XYZBHL MATLAB code for XYZBHL.fig
%      XYZBHL, by itself, creates a new XYZBHL or raises the existing
%      singleton*.
%
%      H = XYZBHL returns the handle to a new XYZBHL or the handle to
%      the existing singleton*.
%
%      XYZBHL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in XYZBHL.M with the given input arguments.
%
%      XYZBHL('Property','Value',...) creates a new XYZBHL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before XYZBHL_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to XYZBHL_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help XYZBHL

% Last Modified by GUIDE v2.5 16-Dec-2016 21:33:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @XYZBHL_OpeningFcn, ...
                   'gui_OutputFcn',  @XYZBHL_OutputFcn, ...
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


% --- Executes just before XYZBHL is made visible.
function XYZBHL_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to XYZBHL (see VARARGIN)

% Choose default command line output for XYZBHL
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes XYZBHL wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = XYZBHL_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%BLH->XYZ
[filename,pathname]=uigetfile({'*.txt','data file(*.txt)'},'导入数据');
if(isempty(pathname))
    returen;
end
filepath=strcat(pathname,filename);
BLH=dlmread(filepath);
set(handles.listbox1,'string',num2str(BLH));
handles.BLH=BLH;
B=(BLH(:,1))';
L=(BLH(:,2))';
H=(BLH(:,3))';
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
XYZ=dlmread(filepath);
set(handles.listbox2,'string',num2str(XYZ));
handles.XYZ=XYZ;
X=(XYZ(:,1))';
Y=(XYZ(:,2))';
Z=(XYZ(:,3))';
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
BLH=handles.BLH;
B=(BLH(:,1))';
L=(BLH(:,2))';
H=(BLH(:,3))';
n=get(handles.popupmenu1,'value');
[X,Y,Z]=BLH2XYZ(B,L,H,n);
set(handles.listbox2,'string',num2str([X',Y',Z']));
handles.XYZ=[X',Y',Z'];
guidata(hObject,handles);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
XYZ=handles.XYZ;
X=(XYZ(:,1))';
Y=(XYZ(:,2))';
Z=(XYZ(:,3))';
n=get(handles.popupmenu1,'value');
[B,L,H]=XYZ2BLH(X,Y,Z,n);
H=H';
set(handles.listbox1,'string',num2str([B,L,H]));
handles.BLH=[B,L,H];
guidata(hObject,handles);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
BLH=handles.BLH;
fid=fopen('XYZ转BHL结果.txt','wt');
[m,n]=size(BLH);
for i=1:1:m
   for j=1:1:n
      if j==n
      fprintf(fid,'%f\n',BLH(i,j));
      else
      fprintf(fid,'%f\t',BLH(i,j));
      end
   end
end

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
XYZ=handles.XYZ;
fid=fopen('BLH转XYZ结果.txt','wt');
[m,n]=size(XYZ);
for i=1:1:m
   for j=1:1:n
      if j==n
      fprintf(fid,'%f\n',XYZ(i,j));
      else
      fprintf(fid,'%f\t',XYZ(i,j));
      end
   end
end



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


% --- Executes during object creation, after setting all properties.
function pushbutton3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --------------------------------------------------------------------
function cehui_Callback(hObject, eventdata, handles)
% hObject    handle to cehui (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cehui;
close(gcbf);
