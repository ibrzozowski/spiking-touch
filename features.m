%   This MATLAB file generates figure 1 in the paper by 
%               Izhikevich E.M. (2004) 
%   Which Model to Use For Cortical Spiking Neurons? 
%   use MATLAB R13 or later. November 2003. San Diego, CA 

function figure1mod
skala=1000;
%{
%%%%%%%%%%%%%%% (A) tonic spiking %%%%%%%%%%%%%%%%%%%%%%
a=0.02; b=0.2;  c=-65;  d=6;
V=-70;  IIo=[];
% original
tau=0.25; tspan=0:tau:100;
T1=tspan(end)/10;
for t=tspan
    if (t>T1) 
        I=14;
    else
        I=0;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:100;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm);
tspanm=tspanm/skala;
i=14;    % input current
% T1=10/skala;
IIm(100:107)=(0:i/7:i);
IIm(108:end)=i;
% -----
VVo=original(a,b,c,d,V,IIo,tau);
% VVm=modified(a,b,c,d,V,IIm,taum);
VVm=modified(a,b-0.002,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(A) Tonic Spiking')

%%%%%%%%%%%%%%%%%% (B) phasic spiking %%%%%%%%%%%%%%%%%%%%%%%%%
a=0.02; b=0.25; c=-65;  d=6;
V=-64;   IIo=[];
% original
tau=0.25; tspan=0:tau:200;
T1=20;
for t=tspan
    if (t>T1) 
        I=0.5;
    else
        I=0;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:200;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm);
tspanm=tspanm/skala;
i=0.5;    % input current
% T1=20/skala;
IIm(200:207)=(0:i/7:i);
IIm(208:end)=i;
% -----
VVo=original(a,b,c,d,V,IIo,tau);
VVm=modified(a,b,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(B) Phasic Spiking')

%%%%%%%%%%%%%% (C) tonic bursting %%%%%%%%%%%%%%%%%%%%%%%%%%%%
a=0.02; b=0.2;  c=-50;  d=2;
V=-70;  IIo=[];
% original
tau=0.25; tspan=0:tau:220;
T1=22;
for t=tspan
    if (t>T1) 
        I=15;
    else
        I=0;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:220;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm);
tspanm=tspanm/skala;
i=15;    % input current
% T1=22/skala;
IIm(220:227)=(0:i/7:i);
IIm(228:end)=i;
% -----
VVo=original(a,b,c,d,V,IIo,tau);
VVm=modified(a,b,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(C) Tonic Bursting')

%%%%%%%%%%%%%%% (D) phasic bursting %%%%%%%%%%%%%%%%%%%%%%%%%%
a=0.02; b=0.25; c=-55;  d=0.05;
V=-64;  IIo=[];
% original
tau=0.2;  tspan=0:tau:200;
T1=20;
for t=tspan
    if (t>T1) 
        I=0.6;
    else
        I=0;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:200;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm);
tspanm=tspanm/skala;
i=0.6;    % input current
% T1=20/skala;
IIm(200:207)=(0:i/7:i);
IIm(208:end)=i;
% -----
VVo=original(a,b,c,d,V,IIo,tau);
VVm=modified(a,b,c,d,V,IIm,taum);
% VVm=modified(a,b+0.0004,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(D) Phasic Bursting')

%%%%%%%%%%%%%%% (E) mixed mode %%%%%%%%%%%%%%%%%%%%%%%%%
a=0.02; b=0.2;  c=-55;  d=4;
V=-70;  IIo=[];
% original
tau=0.25; tspan=0:tau:160;
T1=tspan(end)/10;
for t=tspan
    if (t>T1) 
        I=10;
    else
        I=0;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:160;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm);
tspanm=tspanm/skala;
i=10;    % input current
% T1=16/skala;
IIm(160:167)=(0:i/7:i);
IIm(168:end)=i;
% -----
VVo=original(a,b,c,d,V,IIo,tau);
% VVm=modified(a,b,c,d,V,IIm,taum);
VVm=modified(a,b-0.005,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(E) Mixed Mode')

%%%%%%%%%%%%%%%% (F) spike freq. adapt %%%%%%%%%%%%%%%%%%%%%%%%
a=0.01; b=0.2;  c=-65;  d=8;
V=-70;  IIo=[];
% original
tau=0.25; tspan=0:tau:85;
T1=tspan(end)/10;
for t=tspan
    if (t>T1) 
        I=30;
    else
        I=0;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:85;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm);
tspanm=tspanm/skala;
i=30;    % input current
% T1=8.5/skala;
IIm(85:92)=(0:i/7:i);
IIm(93:end)=i;
% -----
VVo=original(a,b,c,d,V,IIo,tau);
% VVm=modified(a,b,c,d,V,IIm,taum);
VVm=modified(a,b-0.005,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(F) Spike Freq. Adapt')

%%%%%%%%%%%%%%%%% (I) spike latency %%%%%%%%%%%%%%%%%%%%%%%%%%%%
a=0.02; b=0.2;  c=-65;  d=6;
V=-70;  IIo=[];
% original
tau=0.2; tspan=0:tau:100;
T1=tspan(end)/10;
for t=tspan
    if t>T1 && t<T1+3 
        I=7.04;
    else
        I=0;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:100;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm);
tspanm=tspanm/skala;
i=7.04;    % input current
% T1=10/skala;
IIm(100:107)=(0:7.04/7:7.04);
IIm(108:127)=7.04;
IIm(128:136)=(7.04:-7.04/8:0);
% -----
VVo=original(a,b,c,d,V,IIo,tau);
VVm=modified(a,b,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(I) Spike Latency')

%%%%%%%%%%%%%%%%% (J) subthresh. osc. %%%%%%%%%%%%%%%%%%%%%%%%%%%
a=0.05; b=0.26; c=-60;  d=0;
V=-62;   IIo=[];
% original
tau=0.25; tspan=0:tau:200;
T1=tspan(end)/10;
for t=tspan
    if (t>T1) && (t < T1+5) 
        I=2;
    else
        I=0;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:200;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm);
tspanm=tspanm/skala;
i=2;    % input current
% T1=20/skala;
IIm(200:207)=(0:i/7:i);
IIm(208:250)=i;
IIm(251:259)=(i:-i/8:0);
% -----
VVo=original(a,b,c,d,V,IIo,tau);
VVm=modified(a,b,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(J) Subthreshold Osc.')
% plot(tspan,VV,[0 T1 T1 (T1+5) (T1+5) max(tspan)],-90+[0 0 10 10 0 0],...
%       tspan(220:end),-10+20*(VV(220:end)-mean(VV)));

%%%%%%%%%%%%%%%%%% (K) resonator %%%%%%%%%%%%%%%%%%%%%%%%
a=0.1;  b=0.26; c=-60;  d=-1;
V=-62;  IIo=[];
% original
tau=0.25; tspan=0:tau:400;
T1=tspan(end)/10;
T2=T1+20;
T3 = 0.7*tspan(end);
T4 = T3+40;
for t=tspan
    if ((t>T1) && (t < T1+4)) || ((t>T2) && (t < T2+4)) || ((t>T3) && (t < T3+4)) || ((t>T4) && (t < T4+4)) 
        I=0.65;
    else
        I=0;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:400;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm);
tspanm=tspanm/skala;
i=0.65;    % input current
% T1=40/skala;
IIm(400:407)=(0:i/7:i);
IIm(408:439)=i;
IIm(440:448)=(i:-i/8:0);
IIm(600:607)=(0:i/7:i);
IIm(608:639)=i;
IIm(640:648)=(i:-i/8:0);
%
IIm(2800:2807)=(0:i/7:i);
IIm(2808:2839)=i;
IIm(2840:2848)=(i:-i/8:0);
IIm(3200:3207)=(0:i/7:i);
IIm(3208:3239)=i;
IIm(3240:3248)=(i:-i/8:0);
% -----
VVo=original(a,b,c,d,V,IIo,tau);
VVm=modified(a,b,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(K) Resonator')
%}
%%%%%%%%%%%%%%%%%% (K-hf) resonator %%%%%%%%%%%%%%%%%%%%%%%%
%%% high frequency
a=0.1;  b=0.26; c=-60;  d=-1;
V=-62;  IIo=[];
% original
tau=0.25; tspan=0:tau:400;
T1=tspan(end)/10;
for t=tspan
    if ((t>T1) && (t < T1+4))
        I=0.65;
    else
        I=0;
    end
    if t>T1+4
        T1=T1+20;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:400;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm);
tspanm=tspanm/skala;
i=0.65;    % input current
% T1=40/skala;
ix=0;
while ix < tmaxm
    IIm(ix+400:ix+407)=(0:i/7:i);
    IIm(ix+408:ix+439)=i;
    IIm(ix+440:ix+448)=(i:-i/8:0);
    ix=ix+200;
end
IIm=IIm(1:tmaxm);
% -----
VVo=original(a,b,c,d,V,IIo,tau);
VVm=modified(a,b,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(K-HF) Resonator (high frequency)')

%%%%%%%%%%%%%%%%%% (K-lf) resonator %%%%%%%%%%%%%%%%%%%%%%%%
%%% low frequency
a=0.1;  b=0.26; c=-60;  d=-1;
V=-62;  IIo=[];
% original
tau=0.25; tspan=0:tau:400;
T1=tspan(end)/10;
for t=tspan
    if ((t>T1) && (t < T1+4))
        I=0.65;
    else
        I=0;
    end
    if t>T1+4
        T1=T1+40;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:400;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm);
tspanm=tspanm/skala;
i=0.65;    % input current
% T1=40/skala;
ix=0;
while ix < tmaxm
    IIm(ix+400:ix+407)=(0:i/7:i);
    IIm(ix+408:ix+439)=i;
    IIm(ix+440:ix+448)=(i:-i/8:0);
    ix=ix+400;
end
IIm=IIm(1:tmaxm);
% -----
VVo=original(a,b,c,d,V,IIo,tau);
VVm=modified(a,b,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(K-LF) Resonator (low frequency)')

%%%%%%%%%%%%%%%% (L) integrator %%%%%%%%%%%%%%%%%%%%%%%%
a=0.02; b=-0.1; c=-55; d=6;
V=-60; IIo=[];
% original
VV=[];  uu=[];
tau=0.25; tspan=0:tau:100;
T1=tspan(end)/11;
T2=T1+5;
T3 = 0.7*tspan(end);
T4 = T3+10;
for t=tspan
    if ((t>T1) && (t < T1+2)) || ((t>T2) && (t < T2+2)) || ((t>T3) && (t < T3+2)) || ((t>T4) && (t < T4+2)) 
        I=9;
    else
        I=0;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:100;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm);
tspanm=tspanm/skala;
i=9;    % input current
% T1=9.09/skala;
IIm(90:97)=(0:i/7:i);
IIm(98:109)=i;
IIm(110:118)=(i:-i/8:0);
IIm(140:147)=(0:i/7:i);
IIm(148:159)=i;
IIm(160:168)=(i:-i/8:0);
%
IIm(700:707)=(0:i/7:i);
IIm(708:719)=i;
IIm(720:728)=(i:-i/8:0);
IIm(800:807)=(0:i/7:i);
IIm(808:819)=i;
IIm(820:828)=(i:-i/8:0);
% -----
VVo=original_L(a,b,c,d,V,IIo,tau);
VVm=modified_L(a,b,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(L) Integrator')

%%%%%%%%%%%%%%%% (L-hf) integrator %%%%%%%%%%%%%%%%%%%%%%%%
a=0.02; b=-0.1; c=-55; d=6;
V=-60; IIo=[];
% original
VV=[];  uu=[];
tau=0.25; tspan=0:tau:100;
T1=tspan(end)/11;
for t=tspan
    if ((t>T1) && (t < T1+2)) 
        I=9;
    else
        I=0;
    end
    if t>T1+2
        T1=T1+5;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:100;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm);
tspanm=tspanm/skala;
i=9;    % input current
% T1=9.09/skala;
ix=0;
while ix < tmaxm
    IIm(ix+90:ix+97)=(0:i/7:i);
    IIm(ix+98:ix+109)=i;
    IIm(ix+110:ix+118)=(i:-i/8:0);
    ix=ix+50;
end
IIm=IIm(1:tmaxm);
% -----
VVo=original_L(a,b,c,d,V,IIo,tau);
VVm=modified_L(a,b,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(L-HF) Integrator (high frequency)')

%%%%%%%%%%%%%%%% (L-lf) integrator %%%%%%%%%%%%%%%%%%%%%%%%
a=0.02; b=-0.1; c=-55; d=6;
V=-60; IIo=[];
% original
VV=[];  uu=[];
tau=0.25; tspan=0:tau:100;
% T1=tspan(end)/11;
T1=9;
for t=tspan
    if ((t>T1) && (t < T1+2))
        I=9;
    else
        I=0;
    end
    if t>T1+2
        T1=T1+10;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:100;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm);
tspanm=tspanm/skala;
i=9;    % input current
% T1=9.09/skala;
ix=0;
while ix < tmaxm
    IIm(ix+90:ix+97)=(0:i/7:i);
    IIm(ix+98:ix+109)=i;
    IIm(ix+110:ix+118)=(i:-i/8:0);
    ix=ix+100;
end
IIm=IIm(1:tmaxm);
% -----
VVo=original_L(a,b,c,d,V,IIo,tau);
VVm=modified_L(a,b,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(L-LF) Integrator (low frequency)')
return
%%%%%%%%%%%%%%%%% (M) rebound spike %%%%%%%%%%%%%%%%%%%%%%%%%%%%
a=0.03; b=0.25; c=-60;  d=4;
V=-64;   IIo=[];
% original
tau=0.2;  tspan=0:tau:200;
T1=20;
for t=tspan
    if (t>T1) && (t < T1+5) 
        I=-15;
    else
        I=0;
    end
        IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:200;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm);
tspanm=tspanm/skala;
i=-15;    % input current
% T1=20/skala;
IIm(200:207)=(0:i/7:i);
IIm(208:246)=i;
IIm(247:255)=(i:-i/8:0);
% -----
VVo=original(a,b,c,d,V,IIo,tau);
VVm=modified(a,b,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(M) Rebound Spike')

%%%%%%%%%%%%%%%%% (N) rebound burst %%%%%%%%%%%%%%%%%%%%%%%%%%%%
a=0.03; b=0.25; c=-52;  d=0;
V=-64;  IIo=[];
% original
tau=0.2;  tspan=0:tau:200;
T1=20;
for t=tspan
    if (t>T1) && (t < T1+5) 
        I=-15;
    else
        I=0;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:200;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm);
tspanm=tspanm/skala;
i=-15;    % input current
% T1=40/skala;
IIm(200:207)=(0:i/7:i);
IIm(208:246)=i;
IIm(247:255)=(i:-i/8:0);
% -----
VVo=original(a,b,c,d,V,IIo,tau);
VVm=modified(a,b,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(N) Rebound Burst')

%%%%%%%%%%%%%% (P) bistability %%%%%%%%%%%%%%%%%%%%%%%%%%
a=0.1;  b=0.26; c=-60;  d=0;
V=-61;  IIo=[];
% original
tau=0.25; tspan=0:tau:300;
% T1=tspan(end)/8;
T1 = 37.5;
T2 = 216;
for t=tspan
    if ((t>T1) && (t < T1+5)) || ((t>T2) && (t < T2+5)) 
        I=1.24;
    else
        I=0.24;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:300;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm)+0.24;
tspanm=tspanm/skala;
i=1.24;    % input current
% T1=37.5/skala;
IIm(375:382)=(0.24:(i-0.24)/7:i);
IIm(383:421)=i;
IIm(422:430)=(i:(-i+0.24)/8:0.24);
IIm(2160:2167)=(0.24:(i-0.24)/7:i);
IIm(2168:2206)=i;
IIm(2207:2215)=(i:(-i+0.24)/8:0.24);
% -----
VVo=original(a,b,c,d,V,IIo,tau);
VVm=modified(a,b,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(P) Bistability')

%%%%%%%%%%%%%% (Q) DAP %%%%%%%%%%%%%%%%%%%%%%%%%%
a=1;  b=0.2; c=-60;  d=-21;
V=-70;  IIo=[];
% original
tau=0.1; tspan=0:tau:50;
T1 = 10;
for t=tspan
    if abs(t-T1)<1 
        I=20;
    else
        I=0;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:50;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm);
tspanm=tspanm/skala;
i=20;    % input current
% T1=10/skala;
IIm(90:97)=(0:i/7:i);
IIm(98:107)=i;
IIm(108:116)=(i:-i/8:0);
% -----
VVo=original(a,b,c,d,V,IIo,tau);
VVm=modified(a,b,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(Q) DAP ')

%%%%%%%%%%%%%% (S) inhibition induced spiking %%%%%%%%%%%%%%%%%%%%%%%%%%
a=-0.02;  b=-1; c=-60;  d=8;
V=-63.8;  IIo=[];
% original
tau=0.5; tspan=0:tau:350;
for t=tspan
    if (t < 50) || (t>250)
        I=80;
    else
        I=75;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:350;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm)+80;
tspanm=tspanm/skala;
i=-5;    % input current
% T1=50/skala;
IIm(500:507)=(0:i/7:i)+80;
IIm(508:2499)=i+80;
IIm(2500:2508)=(i:-i/8:0)+80;
% -----
VVo=original(a,b,c,d,V,IIo,tau);
VVm=modified(a,b,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(S) Inhibition Induced Spiking')

%%%%%%%%%%%%%% (T) inhibition induced bursting %%%%%%%%%%%%%%%%%%%%%%%%%%
a=-0.026;  b=-1; c=-45;  d=-2;
V=-63.8;  IIo=[];
% original
tau=0.5; tspan=0:tau:350;
for t=tspan
    if (t < 50) || (t>250)
        I=80;
    else
        I=75;
    end
    IIo(end+1)=I;
end
%modified
taum=0.1; tspanm=0:taum:350;
tmaxm=size(tspanm,2);
IIm=zeros(1,tmaxm)+80;
tspanm=tspanm/skala;
i=-5;    % input current
% T1=50/skala;
IIm(500:507)=(0:i/7:i)+80;
IIm(508:2499)=i+80;
IIm(2500:2508)=(i:-i/8:0)+80;
% -----
VVo=original(a,b,c,d,V,IIo,tau);
VVm=modified(a,b,c,d,V,IIm,taum);
drawing(VVo,IIo,tspan,VVm,IIm,tspanm,'(T) Inhibition Induced Bursting')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%   SUBFUNCTIONS   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% original
function VV=original(a,b,c,d,V,II,tau)
u=b*V;
VV=[];  uu=[];
for t=1:size(II,2)
    V = V + tau*(0.04*V^2+5*V+140-u+II(t));
    u = u + tau*a*(b*V-u);
    if V > 30
        VV(end+1)=30;
        V = c;
        u = u + d;
    else
        VV(end+1)=V;
    end
    uu(end+1)=u;
end
function VV=original_L(a,b,c,d,V,II,tau)
u=b*V;
VV=[];  uu=[];
for t=1:size(II,2)
    V = V + tau*(0.04*V^2+4.1*V+108-u+II(t));
    u = u + tau*a*(b*V-u);
    if V > 30
        VV(end+1)=30;
        V = c;
        u = u + d;
    else
        VV(end+1)=V;
    end
    uu(end+1)=u;
end
%%   modified
function [VVm,IIm]=modified(a,b,c,d,V,IIm,taum)
u=b*V;
tmaxm=size(IIm,2);
VVm=zeros(1,tmaxm);  uum=zeros(1,tmaxm);
for t=1:tmaxm
    V = V + taum*(0.04*V^2+5*V+140-u+IIm(t));
    u = u + taum*a*(b*V-u);
    if V > 30
        VVm(t)=30;
        V = c;
        u = u + d;
    else
        VVm(t)=V;
    end
    uum(t)=u;
end

function [VVm,IIm]=modified_L(a,b,c,d,V,IIm,taum)
u=b*V;
tmaxm=size(IIm,2);
VVm=zeros(1,tmaxm);  uum=zeros(1,tmaxm);
for t=1:tmaxm
    V = V + taum*(0.04*V^2+4.1*V+108-u+IIm(t));
    u = u + taum*a*(b*V-u);
    if V > 30
        VVm(t)=30;
        V = c;
        u = u + d;
    else
        VVm(t)=V;
    end
    uum(t)=u;
end

% figures creation
function drawing(VV,II,tspan,VVm,IIm,tspanm,desc)
ax1=subplot(2,1,1);
ax1.Position=ax1.Position.*[1 0.9 1 1];
plot(ax1,tspanm,VVm,'-r');
ax1.XLim=[0,tspanm(end)];
ax2=axes('Position',ax1.Position,'Box','on');
plot(ax2,tspan,VV,':k');
ax2.XLim=[0,tspan(end)];
ax1.XAxisLocation='top';
ax1.XColor='r';
ax2.Box = 'off';
ax2.Color='none';
ax2.YAxis.Visible='off';
ax1.YLim=[-90,40];
ax2.YLim=[-90,40];
grid on
ax1.YLabel.String='Membrane potential [mV]';
tt=title({desc;},'FontSize',11,'HorizontalAlignment','center');
tt.Position(2)=58;
% the second graph
ax3=subplot(2,1,2);
ax3.Position=ax3.Position.*[1 0.95 1 1];
ax3.Position=ax3.Position-[0 0 0 0.18];
plot(ax3,tspanm,IIm,'-r');
ax3.XLim=[0,tspanm(end)];
ax4=axes('Position',ax3.Position,'Box','on');
plot(ax4,tspan,II,':k');
ax4.XLim=[0,tspan(end)];
ax3.XAxisLocation='top';
ax3.XColor='r';
ax4.Box = 'off';
ax4.Color='none';
ax4.YAxis.Visible='off';
ax3.YLabel.String='Stimulus';
ax4.XLabel.String='Time [ms]';
dy=0.1*max(abs(IIm));
ax3.YLim=[min(IIm)-dy,max(IIm)+dy];
ax4.YLim=[min(IIm)-dy,max(IIm)+dy];
grid on
ax1.Position=ax1.Position+[0 -0.15 0 0.15];
ax2.Position=ax2.Position+[0 -0.15 0 0.15];
ax3.FontSize=10;
ax4.FontSize=10;
% save to files
% pause
f=gcf;
f.PaperPosition=[0 0 13 11];
f.PaperSize=[13,11.6];
filename=['obrazki\fig_',desc(2:find(desc==')')-1)];
saveas(f,[filename,'.pdf'])
saveas(f,[filename,'.png'])
savefig(filename)