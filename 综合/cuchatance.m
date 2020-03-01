function varargout = cuchatance(varargin)
% CUCHATANCE MATLAB code for cuchatance.fig
%      CUCHATANCE, by itself, creates a new CUCHATANCE or raises the existing
%      singleton*.
%
%      H = CUCHATANCE returns the handle to a new CUCHATANCE or the handle to
%      the existing singleton*.
%
%      CUCHATANCE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CUCHATANCE.M with the given input arguments.
%
%      CUCHATANCE('Property','Value',...) creates a new CUCHATANCE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cuchatance_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cuchatance_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cuchatance

% Last Modified by GUIDE v2.5 15-Dec-2016 20:16:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cuchatance_OpeningFcn, ...
                   'gui_OutputFcn',  @cuchatance_OutputFcn, ...
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


% --- Executes just before cuchatance is made visible.
function cuchatance_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cuchatance (see VARARGIN)

% Choose default command line output for cuchatance
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes cuchatance wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = cuchatance_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


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


% --- Executes on button press in readdata.
function readdata_Callback(hObject, eventdata, handles)
% hObject    handle to readdata (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%读取数据
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
cdh=h0(:,1);
qdh=h0(:,2);
zdh=h0(:,3);
all_dh=[qdh;zdh];
wzd_dh=[1:1:max(all_dh)];
wzd_dh(:,[yzd_n'])=[];
wzd_count=max(all_dh)-yzd_count;
hh(1:max(all_dh),1)=nan;
hh(1:yzd_count)=yzd_h;
gc=h0(:,4);
d=h0(:,5);
pts1=strcat(num2str(qdh),'-',num2str(zdh),'~~',num2str(gc),'~~',num2str(d));
set(handles.listbox1,'string',pts1);
pts2=strcat(num2str(yzd_n),'-',num2str(yzd_h));
set(handles.edit1,'string',pts2);
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


% --- Executes on button press in firstpc.
function firstpc_Callback(hObject, eventdata, handles)
% hObject    handle to firstpc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%进行初次平差
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
[v1,x1,hx1,X1,N,B,sigma1,r]=pc(qdh,zdh,gc,hh,cd_count,yzd_count,wzd_count,yzd_n,d);
dx1=strcat(num2str(wzd_dh'),'~~',num2str(x1));
set(handles.listbox6,'string',dx1);
dgc1=strcat(num2str(qdh),'-',num2str(zdh),'~~',num2str(v1));
set(handles.listbox2,'string',dgc1);
set(handles.edit3,'string',num2str(sigma1));
handles.v=v1;
handles.x=x1;
handles.sigma=sigma1;
handles.N=N;
handles.r=r;
handles.B=B;
guidata(hObject,handles)


% --- Executes on button press in cuchatance.
function cuchatance_Callback(hObject, eventdata, handles)
% hObject    handle to cuchatance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%进行粗差检验以及计算粗差改正数
qdh=handles.qdh;
zdh=handles.zdh;
v=handles.v;
x=handles.x;
sigma=handles.sigma;
N=handles.N;
d=handles.d;
r=handles.r;
B=handles.B;
gc=handles.gc;
cd_count=handles.cd_count;
[n,deta,rr,t]=cucha(v,r,N,B,d,cd_count);                 %检验粗差，并输出粗差改正数
rr=diag(rr);
pcyz=strcat(num2str(qdh),'-',num2str(zdh),'~~',num2str(t'));
set(handles.listbox3,'string',pcyz);
if isnan(n)                                  %根据是否有粗差激活第二次平差的按钮
    set(handles.zaicipingcha,'Enable','off');
    set(handles.edit4,'string','无');
    set(handles.edit5,'string',num2str(0));
else
    pts=strcat(num2str(n),'---',num2str(gc(n)));
    set(handles.edit4,'string',pts);
    set(handles.edit5,'string',num2str(deta));
    gc(n)=gc(n)+deta./1000;
    pts1=strcat(num2str(n),'---',num2str(gc(n)));
     set(handles.edit9,'string',num2str(pts1));
end  
handles.gc=gc;
guidata(hObject,handles);

% --- Executes on button press in zaicipingcha.
function zaicipingcha_Callback(hObject, eventdata, handles)
% hObject    handle to zaicipingcha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%进行第二次平差
yzd_count=handles.yzd_count;
yzd_n=handles.yzd_n;
yzd_h=handles.yzd_h;
wzd_count=handles.wzd_count;
cd_count=handles.cd_count;
qdh=handles.qdh;
zdh=handles.zdh;
hh=handles.hh;
wzd_dh=handles.wzd_dh;
gc=handles.gc;
d=handles.d;
[v2,x2,hx2,X2,N,B,sigma2,r]=pc(qdh,zdh,gc,hh,cd_count,yzd_count,wzd_count,yzd_n,d);
dx2=strcat(num2str(wzd_dh'),'~~',num2str(x2));
set(handles.listbox5,'string',dx2);
dgc2=strcat(num2str(qdh),'-',num2str(zdh),'~~',num2str(v2));
set(handles.listbox4,'string',dgc2);
set(handles.edit7,'string',num2str(sigma2));
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



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


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


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox6.
function listbox6_Callback(hObject, eventdata, handles)
% hObject    handle to listbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox6


% --- Executes during object creation, after setting all properties.
function listbox6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
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
