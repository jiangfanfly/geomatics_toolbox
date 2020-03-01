function varargout = szpc(varargin)
% SZPC MATLAB code for szpc.fig
%      SZPC, by itself, creates a new SZPC or raises the existing
%      singleton*.
%
%      H = SZPC returns the handle to a new SZPC or the handle to
%      the existing singleton*.
%
%      SZPC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SZPC.M with the given input arguments.
%
%      SZPC('Property','Value',...) creates a new SZPC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before szpc_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to szpc_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help szpc

% Last Modified by GUIDE v2.5 08-Dec-2016 10:16:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @szpc_OpeningFcn, ...
                   'gui_OutputFcn',  @szpc_OutputFcn, ...
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


% --- Executes just before szpc is made visible.
function szpc_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to szpc (see VARARGIN)

% Choose default command line output for szpc
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes szpc wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = szpc_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
yzd_count=handles.yzd_count;
yzd_n=handles.yzd_n;
yzd_h=handles.yzd_h;
wzd_count=handles.wzd_count;
cd_count=handles.cd_count;
qdh=handles.qdh;
zdh=handles.zdh;
wzd_dh=handles.wzd_dh;
hh=handles.hh;
gc=handles.gc;
d=handles.d;
[v,x,hx,X,N,B,sigma,r]=pc(qdh,zdh,gc,hh,cd_count,yzd_count,wzd_count,yzd_n,d);
dx1=strcat(num2str(wzd_dh'),'~',num2str(X));
set(handles.listbox4,'string',dx1);                  %显示高程改正数
dgc1=strcat(num2str(qdh),':',num2str(zdh),'~',num2str(v));
set(handles.listbox3,'string',dgc1);                 %显示高差改正数
set(handles.edit1,'string',num2str(sigma));          %显示单位权中误差
dx=sigma*sqrt(diag(N));
dx2=strcat(num2str(wzd_dh'),'~',num2str(dx));         %参数中误差
set(handles.listbox5,'string',dx2);                    %显示参数中误差
handles.v=v;
handles.x=x;
handles.sigma=sigma;
handles.N=N;
handles.r=r;
handles.B=B;
guidata(hObject,handles)

% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3


% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox4.
function listbox4_Callback(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox4


% --- Executes during object creation, after setting all properties.
function listbox4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox5.
function listbox5_Callback(hObject, eventdata, handles)
% hObject    handle to listbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox5


% --- Executes during object creation, after setting all properties.
function listbox5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile({'*.txt','data file(*.txt)'},'导入数据');
if(isempty(pathname))
    returen;
end
i=find('.'==filename);
netname=filename(1:i-1);
yzd_filepath=strcat(pathname,netname,'.yzd');
hc_filepath=strcat(pathname,netname,'.txt');
yzd=dlmread(yzd_filepath);
yzd_n=yzd(:,1);
yzd_count=length(yzd_n);
yzd_h=yzd(:,2);
h0=dlmread(hc_filepath);
cd_count=size(h0,1);
qdh=h0(:,1);
zdh=h0(:,2);
all_dh=[qdh;zdh];
wzd_dh=[1:1:max(all_dh)];
wzd_dh(:,[yzd_n'])=[];
wzd_count=max(all_dh)-yzd_count;
hh(1:max(all_dh),1)=nan;
hh(1:yzd_count)=yzd_h;
gc=h0(:,3);
d=h0(:,4);
pts1=strcat(num2str(qdh),'-',num2str(zdh),'~~',num2str(gc),'~~',num2str(d));
set(handles.listbox1,'string',pts1);
pts2=strcat(num2str(yzd_n),'-',num2str(yzd_h));
set(handles.listbox2,'string',pts2);
handles.yzd_count=yzd_count;
handles.yzd_n=yzd_n;
handles.yzd_h=yzd_h;
handles.cd_count=cd_count;
handles.wzd_count=wzd_count;
handles.qdh=qdh;
handles.zdh=zdh;
handles.hh=hh;
handles.gc=gc;
handles.d=d;
handles.all_dh=all_dh;
handles.wzd_dh=wzd_dh;
guidata(hObject,handles)

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
