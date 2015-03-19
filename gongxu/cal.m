%% [PVal,ObjV,P]=cal(Chrom,T,Jm)
% 功能说明：       根据基因群,计算出个群中每个个体的调度工序时间，
%                 保存最小时间的调度工序和调度工序时间
% 输入参数：
%       Chrom     - 为基因种群
%       T         - 为各工件各工序使用的时间
%       Jm        - 为各工件各工序使用的机器
% 输出参数:
%       PVal      - 为最佳调度工序时间
%       P         - 为最佳输出的调度工序
%       ObjV      - 为群中每个个体的调度工序时间
%%
function [PVal, ObjV, P]=cal(Chrom,T,Jm)

% 初始化
PNumber=size(T,1);
NIND=size(Chrom,1);
ObjV=zeros(NIND,1);

for i=1:NIND
    
    % 取一个个体
    S=Chrom(i,:);
    
    % 根据基因，计算调度工序
    P= calp(S,PNumber);
    
    % 根据调度工序，计算出调度工序时间
    PVal=caltime(P,T,Jm);
    
    % 取完成时间
    MT=max(PVal);
    TVal=max(MT);
    
    % 保存时间
    ObjV(i,1)=TVal;
    
    % 初始化
    if i==1
        Val1=PVal;
        Val2=P;
        MinVal=ObjV(i,1);
    end
    
    % 记录最小的调度工序时间、最佳调度工序时间、最佳输出的调度工序
    if MinVal> ObjV(i,1)
        Val1=PVal;
        Val2=P;
        MinVal=ObjV(i,1);
    end
end

% 最佳调度工序时间 最佳输出的调度工序
PVal=Val1;
P=Val2;




