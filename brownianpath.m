%Brownian motion path created for 2020 Dissertation by Ns327.

randn('state',100)           
T = 1; N = 500; dt = T/N;
dB = zeros(1,N);             
B = zeros(1,N);              
dB(1) = sqrt(dt)*randn;      
B(1) = dB(1);                
for j = 2:N
   dB(j) = sqrt(dt)*randn;  
   B(j) = B(j-1) + dB(j); 
end
plot([0:dt:T],[0,B],'r-')   
xlabel('t','FontSize',16) 
ylabel('B(t)','FontSize',16,'Rotation',0)
