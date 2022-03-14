A=[ .7 .3 0 0 0 0; 0 0 .5 .5 0 0; 0 0 0 1 0 0; .2 0 0 .8 0 0; 0 0 0 0 .25 .75; 0 0 0 0 1 0];
B=[ 1 0 0 0 0 0];
Seceptible =[ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Exposed=[ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Infected=[ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Rrecovered=[ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Vaccinated=[ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Immune=[ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
for i= 1:31
    B= B*A;
    Seceptible(1,i)= B(1,1);
    Exposed(1,i)= B(1,2);
    Infected(1,i)= B(1,3);
    Rrecovered(1,i)= B(1,4);
    Vaccinated(1,i)= B(1,5);
    Immune(1,i)= B(1,6);
    if(i==31)
        disp(B)
    end
end
r= 1:1:31;
s= 1:1:31;
y=.5453;
figure(1)
plot(r,Seceptible(1,s),'m','linewidth',2)
hold on 
plot(r,Exposed(1,s),'b','linewidth',2)
plot(r,Infected(1,s),'g','linewidth',2)
plot(r,Rrecovered(1,s),'y','linewidth',2)
plot(r,Vaccinated(1,s),'r','linewidth',2)
plot(r,Immune(1,s),'c','linewidth',2)


