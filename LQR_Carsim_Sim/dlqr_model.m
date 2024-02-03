cf=-105067.8;
cr=cf;
m=1270+71*2;
a=1.015;
b=2.910-1.015;
Iz=1536.7;
k=zeros(5000,4);
for i=1:5000
    vx=0.01*i;
    A=[
        0,1,0,0;
        0,(cf+cr)/(m*vx),-(cr+cf)/m,(a*cf-b*cr)/(m*vx);
        0,0,0,1;
        0,(a*cf-b*cr)/(Iz*vx),-(a*cf-b*cr)/Iz,(a*a*cf+b*b*cr)/(Iz*vx);
        ];
    B=[0;-cf/m;0;-a*cf/Iz];
    Q=eye(4);
    R=5;
    k(i,:)=lqr(A,B,Q,R);
end
lqr_k1=k(:,1)';
lqr_k2=k(:,2)';
lqr_k3=k(:,3)';
lqr_k4=k(:,4)';


