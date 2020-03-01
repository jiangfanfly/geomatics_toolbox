function varargout = untitled(varargin)
% UNTITLED M-file for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 15-Dec-2016 20:20:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles)
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


% --- Executes during object creation, after setting all properties.
function edtXB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtXB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edtXB_Callback(hObject, eventdata, handles)
% hObject    handle to edtXB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtXB as text
%        str2double(get(hObject,'String')) returns contents of edtXB as a double


% --- Executes during object creation, after setting all properties.
function edtYB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtYB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edtYB_Callback(hObject, eventdata, handles)
% hObject    handle to edtYB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtYB as text
%        str2double(get(hObject,'String')) returns contents of edtYB as a double


% --- Executes during object creation, after setting all properties.
function edtXC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtXC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edtXC_Callback(hObject, eventdata, handles)
% hObject    handle to edtXC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtXC as text
%        str2double(get(hObject,'String')) returns contents of edtXC as a double


% --- Executes during object creation, after setting all properties.
function edtYC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtYC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edtYC_Callback(hObject, eventdata, handles)
% hObject    handle to edtYC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtYC as text
%        str2double(get(hObject,'String')) returns contents of edtYC as a double


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function edtazi1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtazi1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edtazi1_Callback(hObject, eventdata, handles)
% hObject    handle to edtazi1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtazi1 as text
%        str2double(get(hObject,'String')) returns contents of edtazi1 as a double


% --- Executes during object creation, after setting all properties.
function edtazi2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtazi2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edtazi2_Callback(hObject, eventdata, handles)
% hObject    handle to edtazi2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtazi2 as text
%        str2double(get(hObject,'String')) returns contents of edtazi2 as a double


% --- Executes on button press in psbReadData.
%%数据文件函数
function psbReadData_Callback(hObject, eventdata, handles)
% hObject    handle to psbReadData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile(...
    {'*.txt;*.xlsx','data Files(*.txt,*.xlsx)'},...
    'Pick a file');
    if (isempty(pathname))
    return;
end
filepath=strcat(pathname,filename);
mode= get(handles.radiobutton1,'value');
[XA,YA,XB,YB,azi1,XC,YC,XD,YD,azi2,Ang,Dis,Raw]=FhDxReadData(filepath,mode);
handles.XA=XA;
handles.YA=YA;
handles.XB=XB;
handles.YB=YB;
handles.XC=XC;
handles.YC=YC;
handles.XD=XD;
handles.YD=YD;
handles.azi1=azi1;
handles.azi2=azi2;
handles.Ang=Ang;
handles.Dis=Dis;
handles.Raw=Raw;
pts=strcat(Raw,'~',num2str(Ang));
set(handles.lsbAngle,'string',pts);
n=length(Dis);
for i=1:n
    dts(i)=strcat(Raw(i),Raw(i+1));
end
dits=strcat(dts','~',num2str(Dis));
set(handles.lsbDis,'string',dits);
fwj1=rad_mds(azi1);
fwj2=rad_mds(azi2);
set(handles.edtazi1,'string',num2str(fwj1));
set(handles.edtXB,'string',num2str(XB));
set(handles.edtYB,'string',num2str(YB));
set(handles.edtXC,'string',num2str(XC));
set(handles.edtYC,'string',num2str(YC));
set(handles.edtazi2,'string',num2str(fwj2));
guidata(hObject,handles)
% --- Executes on button press in psbcomputer.
%%平差函数
function psbcomputer_Callback(hObject, eventdata, handles)
% hObject    handle to psbcomputer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
XA=handles.XA;
YA=handles.YA;
XB=handles.XB;
YB=handles.YB;
XC=handles.XC;
YC=handles.YC;
XD=handles.XD;
YD=handles.YD;
azi1=handles.azi1;
azi2=handles.azi2;
Ang=handles.Ang;
Dis=handles.Dis;
Raw=handles.Raw;
n=length(Ang);
[x,y,k,fbx,fx,fy,fwj]=TranverseFH(XB,YB,azi1,XC,YC,azi2,Ang,Dis);
set(handles.listbox4,'string',num2str(fwj'));
set(handles.edtfb,'string',num2str(fbx));
set(handles.edtfk,'string',strcat('1/',num2str(k)));
index1=get(handles.popupmenu1,'value');
switch index1
    case 1
        set(handles.edtfkxc,'string','1/60000');
        xc=3*sqrt(n);
        sxc=num2str(xc);
        set(handles.edtxc,'string',sxc);
    case 2
        set(handles.edtfkxc,'string','1/40000');
        xc=5*sqrt(n);
        sxc=num2str(xc);
        set(handles.edtxc,'string',sxc);
   case 3
        set(handles.edtfkxc,'string','1/14000');
        xc=10*sqrt(n);
        sxc=num2str(xc);
        set(handles.edtxc,'string',sxc);
    case 4
        set(handles.edtfkxc,'string','1/10000');
        xc=16*sqrt(n);
        sxc=num2str(xc);
        set(handles.edtxc,'string',sxc);
    case 5
        set(handles.edtfkxc,'string','1/6000');
        xc=24*sqrt(n);
        sxc=num2str(xc);
        set(handles.edtxc,'string',sxc);
    case 6
        set(handles.edtfkxc,'string','1/2000');
        xc=40*sqrt(n);
        sxc=num2str(xc);
        set(handles.edtxc,'string',sxc);
end
subplot(handles.axes1);
yy1=[YA,YB];
xx1=[XA,XB];
yy2=[YC,YD];
xx2=[XC,XD];
plot(yy1,xx1,':k+');
text(yy1+10,xx1+10,['A';'B']);
legend('未知点');
hold on;
plot(yy2,xx2,':k+');
text(yy2+10,xx2+10,['C';'D']);
hold on;
yy=[YB y];
xx=[XB x];
xy=strcat(Raw,';',num2str(xx'),'~',num2str(yy'));
set(handles.lstxy,'string',xy);
plot(yy,xx,'-mo');
legend('已知点','已知点','中间节点');
text(yy+10,xx+10,Raw);
xlabel('Y坐标m');
ylabel('X坐标m');
title('导线略图');
handles.yy=yy;
handles.xx=xx;
handles.fx=fx;
handles.fy=fy;
handles.fwj=fwj;
guidata(hObject,handles);
% --- Executes on button press in psbSavedata.
function psbSavedata_Callback(hObject, eventdata, handles)
% hObject    handle to psbSavedata (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Jiao=handles.Ang;
n=length(Jiao);
excel=actxserver('Excel.Application');
set(excel,'Visible',1);
wkbs=excel.Workbooks;
Wbk=invoke(wkbs,'Add');
Actsh=excel.Activesheet;
A=['导线平差成果报表'];
actshrng=get(Actsh,'Range','A1','F1');
set(actshrng,'MergeCells',4);
set(actshrng,'HorizontalAlignment',3);
set(actshrng,'Value',A);
actshrng=get(Actsh,'Range','A2','A2');
set(actshrng,'Value','点名');
ptname=handles.Raw;
for i=1:n+2
    if i==1
        actshrng=get(Actsh,'Range','A3','A3');
        set(actshrng,'Value','后视定向点');
    elseif i<n+2
        R1=strcat('A',num2str(i+2));
        actshrng=get(Actsh,'Range',R1,R1);
        set(actshrng,'Value',ptname(i-1));
    else
        R2=strcat('A',num2str(i+2));
        actshrng=get(Actsh,'Range',R2,R2);
        set(actshrng,'Value','前视定向点');
    end
end
R=strcat('F',num2str(n+5));
actshrng=get(Actsh,'Range','A2',R);
set(actshrng,'HorizontalAlignment',2);
actshrng=get(Actsh,'Range','B2','B2');
set(actshrng,'Value','角度');
for i=1:n
    R1=strcat('B',num2str(i+3));
    actshrng=get(Actsh,'Range',R1,R1);
    set(actshrng,'Value',num2str(Jiao(i)));
end
actshrng=get(Actsh,'Range','C2','C2');
set(actshrng,'Value','距离');
dts=handles.Dis;
m=length(dts);
for i=1:m
    R1=strcat('C',num2str(i+4));
    actshrng=get(Actsh,'Range',R1,R1);
    set(actshrng,'Value',num2str(dts(i)));
end
actshrng=get(Actsh,'Range','D2','D2');
set(actshrng,'Value','方位角');
fwj=handles.fwj;
fwj=rad_mds(fwj);
m=length(fwj);
azi1=rad_mds(handles.azi1);
azi2=rad_mds(handles.azi2);
for i=1:m+1
    if i==1
    actshrng=get(Actsh,'Range','D4','D4'); 
    set(actshrng,'Value',num2str(azi1));
elseif i<m+1
    R1=strcat('D',num2str(i+3));
    actshrng=get(Actsh,'Range',R1,R1);
    set(actshrng,'Value',num2str(fwj(i)));
else
    R1=strcat('D',num2str(i+3));
    actshrng=get(Actsh,'Range',R1,R1);
    jh=strcat(num2str(azi2),'检核');
    set(actshrng,'Value',jh);
end
end
actshrng=get(Actsh,'Range','E2','E2');
set(actshrng,'Value','坐标X');
actshrng=get(Actsh,'Range','F2','F2');
set(actshrng,'Value','坐标Y');
x=handles.xx;
y=handles.yy;
m=length(x);
for i=1:m
    R1=strcat('E',num2str(i+3));
    actshrng=get(Actsh,'Range',R1,R1);
    set(actshrng,'Value',num2str(x(i)));
    R1=strcat('F',num2str(i+3));
    actshrng=get(Actsh,'Range',R1,R1);
    set(actshrng,'Value',num2str(y(i)));
end
Actsh.Range('A1:F1').ColumnWidth=[16,16,16,16,16,16];%设置单元格宽度
R=strcat('A2:','F',num2str(m+7));
Actsh.Range(R).Borders.Item(3).Linestyle=1;%设置单元格竖的线形
Actsh.Range(R).Borders.Item(2).Linestyle=1;
R1=strcat('A',num2str(m+5),':','F',num2str(m+5));
Actsh.Range(R1).MergeCells=1; %合并R1区域的单元格
Actsh.Range(R1).Value='精度指标';
Actsh.Range(R1).HorizontalAlignment=3;%设置居中对齐
R1=strcat('A',num2str(m+6));
xc=get(handles.edtfb,'string');
xcb=get(handles.edtfk,'string');
actshrng=get(Actsh,'Range',R1,R1);
set(actshrng,'Value','角度闭合差（秒):');
R1=strcat('B',num2str(m+6));
actshrng=get(Actsh,'Range',R1,R1);
set(actshrng,'Value',xc);
R1=strcat('A',num2str(m+7));
actshrng=get(Actsh,'Range',R1,R1);
set(actshrng,'Value','限差（秒):');
xcc=get(handles.edtxc,'string');
R1=strcat('B',num2str(m+7));
actshrng=get(Actsh,'Range',R1,R1);
set(actshrng,'Value',xcc);
R1=strcat('C',num2str(m+6));
actshrng=get(Actsh,'Range',R1,R1);
set(actshrng,'Value','全长相对闭合差:');
R1=strcat('D',num2str(m+6));
actshrng=get(Actsh,'Range',R1,R1);
set(actshrng,'Value',xcb);
R1=strcat('E',num2str(m+6));
actshrng=get(Actsh,'Range',R1,R1);
set(actshrng,'Value','坐标增量fx(mm)');
R1=strcat('F',num2str(m+6));
actshrng=get(Actsh,'Range',R1,R1);
set(actshrng,'Value',num2str(handles.fx*1000));
R1=strcat('E',num2str(m+7));
actshrng=get(Actsh,'Range',R1,R1);
set(actshrng,'Value','坐标增量fy(mm)');
R1=strcat('F',num2str(m+7));
actshrng=get(Actsh,'Range',R1,R1);
set(actshrng,'Value',num2str(handles.fy*1000));
R1=strcat('C',num2str(m+7));
actshrng=get(Actsh,'Range',R1,R1);
set(actshrng,'Value','限差（秒):');
xxcc=get(handles.edtfkxc,'string');
R1=strcat('D',num2str(m+7));
actshrng=get(Actsh,'Range',R1,R1);
set(actshrng,'Value',xxcc);
R=strcat('A',num2str(m+8),':','F',num2str(m+8));
Actsh.Range(R).Borders.Item(3).Linestyle=1;%设置单元格竖的线形
% --- Executes during object creation, after setting all properties.
function lsbAngle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lsbAngle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end
% --- Executes on selection change in lsbAngle.
function lsbAngle_Callback(hObject, eventdata, handles)
% hObject    handle to lsbAngle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns lsbAngle contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lsbAngle


% --- Executes during object creation, after setting all properties.
function lsbDis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lsbDis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in lsbDis.
function lsbDis_Callback(hObject, eventdata, handles)
% hObject    handle to lsbDis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns lsbDis contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lsbDis


% --- Executes during object creation, after setting all properties.
function edtfb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtfb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edtfb_Callback(hObject, eventdata, handles)
% hObject    handle to edtfb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtfb as text
%        str2double(get(hObject,'String')) returns contents of edtfb as a double


% --- Executes during object creation, after setting all properties.
function edtxc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtxc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edtxc_Callback(hObject, eventdata, handles)
% hObject    handle to edtxc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtxc as text
%        str2double(get(hObject,'String')) returns contents of edtxc as a double


% --- Executes during object creation, after setting all properties.
function edtfk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtfk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edtfk_Callback(hObject, eventdata, handles)
% hObject    handle to edtfk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtfk as text
%        str2double(get(hObject,'String')) returns contents of edtfk as a double


% --- Executes during object creation, after setting all properties.
function edtfkxc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtfkxc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edtfkxc_Callback(hObject, eventdata, handles)
% hObject    handle to edtfkxc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtfkxc as text
%        str2double(get(hObject,'String')) returns contents of edtfkxc as a double


% --- Executes during object creation, after setting all properties.
function lstxy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lstxy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in lstxy.
function lstxy_Callback(hObject, eventdata, handles)
% hObject    handle to lstxy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns lstxy contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lstxy
function[XA,YA,XB,YB,azi1,XC,YC,XD,YD,azi2, Ang,dis,Raw]=FhDxReadData(filepath,mode,sheet)
%%读附合导线已知数据和观测数据
%XB,YB,XC,YC返回已知点坐标
%zai1,zai2返回起始边方位角和终边方位角
%Ang,Dis返回观测角度和边长
%filepath输入文件路径
%mode=1已知四个点的坐标，mode=其他表示已知两点坐标和起始边方位角和终边方位角
if nargin<3
    sheet='sheet1'; %没有输入sheet附默认值
end
if mode==1
    xy=xlsread(filepath,sheet,'A1:D2'); %读已知坐标
    n=xlsread(filepath,sheet,'A3:A3');      %读角度观测数
    XA=xy(1,3); %起点后视X坐标
    YA=xy(1,4); %起点后视Y坐标
    XB=xy(1,1); %起点X坐标
    YB=xy(1,2); %起点Y坐标
    XC=xy(2,1); %终点X坐标
    YC=xy(2,2); %终点Y坐标
    XD=xy(2,3); %起点后视X坐标
    YD=xy(2,4); %起点后视Y坐标
    [dis,azi1]=xy_inv(XA,YA,XB,YB); %坐标反算得到方位角
    [dis,azi2]=xy_inv(XC,YC,XD,YD);
else
    n=xlsread(filepath,sheet,'A3:A3'); %读角度观测数
    xy=xlsread(filepath,sheet,'A1:B2'); %读已知坐标
    azi=xlsread(filepath,sheet,'C1:C2'); %读已知方位角
    XB=xy(1,1); %起点X坐标
    YB=xy(1,2); %起点Y坐标
    XC=xy(2,1); %终点X坐标
    YC=xy(2,2); %终点Y坐标
    azi1=dms_rad(azi(1,1));
    azi2=dms_rad(azi(2,1));
    sb=strcat('C4:','C',num2str(n+2));
    dis=xlsread(filepath,sheet,sb); %读边长
    disz=sum(dis);
    si=size(dis)
    disz=disz/si(:,1);
    [XA,YA]=azi2xy(XB,YB,disz,azi1);
    [XD,YD]=azi2xy(XC,YC,disz,azi2);
end
sa=strcat('B4:','B',num2str(n+3));
sb=strcat('C4:','C',num2str(n+2));
sc=strcat('A4:','A',num2str(n+3));
Ang=xlsread(filepath,sheet,sa); %读角度
dis=xlsread(filepath,sheet,sb); %读边长
[data PtName  Raw]=xlsread(filepath,sheet,sc); %读点名
function[x,y,k,fbx,fx,fy,fwj]=TranverseFH(XB,YB,azi1,XC,YC,azi2,Ang,Dis)
%%解算附合导线
%x，y返回待定点坐标，fwj平差后各边的方位角
%k，fx，fy返回全长相对闭合差和坐标增量闭合差
%fbx返回角度闭合差
%XB,YB,XC,YC已知点坐标
%azi1和azi2已知起始边和终边方位角
%Ang,Dis是观测角度（弧度）和边长（m）
n=length(Ang);
[radangle]=dms_rad(Ang);%换算成弧度
zb=sum(radangle);
fb=zb-n*pi-azi2+azi1;
fb=rem(fb,2*pi); %角度闭合差
fbx=fb*206264.80;%将闭合差换成秒
radangle=radangle-fb./n;
for i=1:n
    if i==1
        fwj(i)=azi1+pi+radangle(i);
    else
        fwj(i)=fwj(i-1)+pi+radangle(i);
    end
end
fwj=rem(fwj,2*pi);
dx=cos(fwj(1:n-1)).*Dis'; %坐标增量计算
dy=sin(fwj(1:n-1)).*Dis';
fx=sum(dx)+XB-XC; %坐标增量闭合差
fy=sum(dy)+YB-YC; %坐标增量闭合差
fs=sqrt(fx^2+fy^2);
Zd=sum(Dis);
k=fix(Zd/fs); %导线全长相对闭合差分母
dx=dx-(fx/Zd).*Dis'; %闭合差分配
dy=dy-(fy/Zd).*Dis'; %闭合差分配   
for i=1:n-1
    if i==1
        x(i)=XB+dx(i);
        y(i)=YB+dy(i);
    else
        x(i)=x(i-1)+dx(i);
        y(i)=y(i-1)+dy(i);
    end
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


% --------------------------------------------------------------------
function cehui_Callback(hObject, eventdata, handles)
% hObject    handle to cehui (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cehui;
close(gcbf);
