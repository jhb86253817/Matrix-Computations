% This routine is for demonstrating the action of 2x2 matrices.
%
% Arguments:
% A     2x2 nonzero matrix with real entries
%
% Samuli Siltanen February 2006

function kissa(A)

% Check argument matrix
[row,col] = size(A);
if ~(row==2) | ~(col==2)
    error('kissa.m: A should be a 2x2 matrix')
end

% Create plot window
figure(1)
clf

% Plot parameters
linew = 1;

% Construct picture of cat
fii     = linspace(0,2*pi,200);
outline = [cos(fii); sin(fii)];
eye_l   = repmat([-.5;.1],1,length(fii)) + .05*[cos(fii); sin(fii)];
eye_r   = repmat([+.5;.1],1,2) + .05*[[-1,1];[0,0]];
ear_r   = [[cos(pi/4);sin(pi/4)],1.3*[cos(pi/4+.2);sin(pi/4+.2)],[cos(pi/4+.4);sin(pi/4+.4)]];
ear_l   = [[cos(pi/2) -sin(pi/2)];[sin(pi/2) cos(pi/2)]]*ear_r;
nR      = .08;
nose    = repmat([0;-.2],1,length(fii)) + nR*[cos(fii); sin(fii)];
mouth1  = repmat([0;-.2-nR],1,2) + [[0,0];[0,-.3]];
mouth2  = repmat([0;-.2-nR-.3],1,2) + [[-.2,.2];[0,0]];
whisk1  = [[0;-.2]+nR*[cos(0.1);sin(0.1)],[0;-.2]+7*nR*[cos(0.1);sin(0.1)]];
whisk2  = [[0;-.2]+nR*[cos(-0.1);sin(-0.1)],[0;-.2]+7*nR*[cos(-0.1);sin(-0.1)]];
whisk3  = [[0;-.2]+nR*[cos(pi-0.1);sin(pi-0.1)],[0;-.2]+7*nR*[cos(pi-0.1);sin(pi-0.1)]];
whisk4  = [[0;-.2]+nR*[cos(pi+0.1);sin(pi+0.1)],[0;-.2]+7*nR*[cos(pi+0.1);sin(pi+0.1)]];
whisk5  = [[0;-.2]+nR*[cos(pi);sin(pi)],[0;-.2]+7*nR*[cos(pi);sin(pi)]];

% Draw picture of cat in standard coordinates
subplot(1,2,1)
plot(outline(1,:),outline(2,:),'k','linewidth',linew)
hold on 
plot(eye_l(1,:),eye_l(2,:),'k','linewidth',linew)
plot(eye_r(1,:),eye_r(2,:),'k','linewidth',linew)
plot(ear_l(1,:),ear_l(2,:),'k','linewidth',linew)
plot(ear_r(1,:),ear_r(2,:),'k','linewidth',linew)
plot(nose(1,:),nose(2,:),'k','linewidth',linew)
plot(mouth1(1,:),mouth1(2,:),'k','linewidth',linew)
plot(mouth2(1,:),mouth2(2,:),'k','linewidth',linew)
plot(whisk1(1,:),whisk1(2,:),'k','linewidth',linew)
plot(whisk2(1,:),whisk2(2,:),'k','linewidth',linew)
plot(whisk3(1,:),whisk3(2,:),'k','linewidth',linew)
plot(whisk4(1,:),whisk4(2,:),'k','linewidth',linew)
plot(whisk5(1,:),whisk5(2,:),'k','linewidth',linew)
MAX = max([1.1,1.35*norm(A)]);
axis([-MAX MAX -MAX MAX])
axis equal
axis off

% Draw image of cat under matrix A
outline = A*outline;
eye_l   = A*eye_l;
eye_r   = A*eye_r;
ear_l   = A*ear_l;
ear_r   = A*ear_r;
nose    = A*nose;
mouth1  = A*mouth1;
mouth2  = A*mouth2;
whisk1  = A*whisk1;
whisk2  = A*whisk2;
whisk3  = A*whisk3;
whisk4  = A*whisk4;
whisk5  = A*whisk5;
subplot(1,2,2)
plot(outline(1,:),outline(2,:),'k','linewidth',linew)
hold on 
plot(eye_l(1,:),eye_l(2,:),'k','linewidth',linew)
plot(eye_r(1,:),eye_r(2,:),'k','linewidth',linew)
plot(ear_l(1,:),ear_l(2,:),'k','linewidth',linew)
plot(ear_r(1,:),ear_r(2,:),'k','linewidth',linew)
plot(nose(1,:),nose(2,:),'k','linewidth',linew)
plot(mouth1(1,:),mouth1(2,:),'k','linewidth',linew)
plot(mouth2(1,:),mouth2(2,:),'k','linewidth',linew)
plot(whisk1(1,:),whisk1(2,:),'k','linewidth',linew)
plot(whisk2(1,:),whisk2(2,:),'k','linewidth',linew)
plot(whisk3(1,:),whisk3(2,:),'k','linewidth',linew)
plot(whisk4(1,:),whisk4(2,:),'k','linewidth',linew)
plot(whisk5(1,:),whisk5(2,:),'k','linewidth',linew)
axis([-MAX MAX -MAX MAX])
axis equal
axis off

