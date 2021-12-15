% =========================================================================
% Copyright:    WZP
% Filename:     imwritebin.m
% Description:
% 
% @author:      wuzhipeng
% @email:       763008300@qq.com
% @website:     https://wuzhipeng.cn/
% @create on:   04-Jul-2019 17:09:26
% @version:     Matlab 9.9.0.1467703 (R2020b)
% =========================================================================
%imwritebin Save image (img) to real-valued *.wzp binary file (path).
% 
% imwritebin(img, path);

function imwritebin(matrix, path)
% ��������ݿ���ʹ��python numpyֱ�Ӷ�ȡ������Ҫʹ��reshape�ı��С
% b = np.fromfile("a.bin")  #���ļ��м������飬�����dtype�ᵼ�´���Ľ��
% b.reshape(3,4)

if nargin<1
    help imwritebin;
    return;
end

fileID = fopen(path,'wb');
machineformat = 'native';
fwrite(fileID, squeeze(matrix'), 'single', 0, machineformat);
fclose(fileID);