syms u v w

% Parameterization of Volume:
funx = @(u,v,w) v*u^2*cos(w);
funy = @(u,v,w) v*u^2*sin(w);
funz = @(u,v,w) u;

syms x(u,v,w) y(u,v,w) z(u,v,w)
x(u,v,w) = sym(funx(u,v,w));
y(u,v,w) = sym(funy(u,v,w));
z(u,v,w) = sym(funz(u,v,w));


% Parameter Intervals:
uin = [0 1];
vin = [0 1];
win = [0 pi/2];


%%% Functions for plotting:

%% w1 functions:
% w1 Function x:
w1funx = subs(x,w,win(1));
w1finfunx = matlabFunction(w1funx);
f1wx = @(u,v) w1finfunx(u, v);

% w1 Function y:
w1funy = subs(y,w,win(1));
w1finfuny = matlabFunction(w1funy);
f1wy = @(u,v) w1finfuny(u, v);

% w1 Function z:
w1funz = subs(z,w,win(1));
w1finfunz = matlabFunction(w1funz);
f1wz = @(u,v) w1finfunz(u, v);

%% w2 functions:
% w2 Function x:
w2funx = subs(x,w,win(2));
w2finfunx = matlabFunction(w2funx);
f2wx = @(u,v) w2finfunx(u, v);

% w2 Function y:
w2funy = subs(y,w,win(2));
w2finfuny = matlabFunction(w2funy);
f2wy = @(u,v) w2finfuny(u, v);

% w2 Function z:
w2funz = subs(z,w,win(2));
w2finfunz = matlabFunction(w2funz);
f2wz = @(u,v) w2finfunz(u, v);

%% v1 functions:
% v1 Function x:
v1funx = subs(x,v,vin(1));
v1finfunx = matlabFunction(v1funx);
f1vx = @(u,w) v1finfunx(u, w);

% v1 Function y:
v1funy = subs(y,v,vin(1));
v1finfuny = matlabFunction(v1funy);
f1vy = @(u,w) v1finfuny(u, w);

% v1 Function z:
v1funz = subs(z,v,vin(1));
v1finfunz = matlabFunction(v1funz);
f1vz = @(u,w) v1finfunz(u, w);

%% v2 functions:
% v2 Function x:
v2funx = subs(x,v,vin(2));
v2finfunx = matlabFunction(v2funx);
f2vx = @(u,w) v2finfunx(u, w);

% v2 Function y:
v2funy = subs(y,v,vin(2));
v2finfuny = matlabFunction(v2funy);
f2vy = @(u,w) v2finfuny(u, w);

% v2 Function z:
v2funz = subs(z,v,vin(2));
v2finfunz = matlabFunction(v2funz);
f2vz = @(u,w) v2finfunz(u, w);

%% u1 functions:
% u1 Function x:
u1funx = subs(x,u,uin(1));
u1finfunx = matlabFunction(u1funx);
f1ux = @(v,w) u1finfunx(v, w);

% u1 Function y:
u1funy = subs(y,u,uin(1));
u1finfuny = matlabFunction(u1funy);
f1uy = @(v,w) u1finfuny(v, w);

% u1 Function z:
u1funz = subs(z,u,uin(1));
u1finfunz = matlabFunction(u1funz);
f1uz = @(v,w) u1finfunz(v, w);

%% u2 functions:
% u2 Function x:
u2funx = subs(x,u,uin(2));
u2finfunx = matlabFunction(u2funx);
f2ux = @(v,w) u2finfunx(v, w);

% u2 Function y:
u2funy = subs(y,u,uin(2));
u2finfuny = matlabFunction(u2funy);
f2uy = @(v,w) u2finfuny(v, w);

% u2 Function z:
u2funz = subs(z,u,uin(2));
u2finfunz = matlabFunction(u2funz);
f2uz = @(v,w) u2finfunz(v, w);



%% Plotting of Volume:
hold on

fsurf(f1wx,f1wy,f1wz,[uin(1) uin(2) vin(1) vin(2)])
fsurf(f2wx,f2wy,f2wz,[uin(1) uin(2) vin(1) vin(2)])

fsurf(f1vx,f1vy,f1vz,[uin(1) uin(2) win(1) win(2)])
fsurf(f2vx,f2vy,f2vz,[uin(1) uin(2) win(1) win(2)])

fsurf(f1ux,f1uy,f1uz,[vin(1) vin(2) win(1) win(2)])
fsurf(f2ux,f2uy,f2uz,[vin(1) vin(2) win(1) win(2)])


camlight

hold off