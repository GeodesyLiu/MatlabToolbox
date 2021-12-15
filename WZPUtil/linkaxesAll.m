% =========================================================================
% Copyright:    Zhipeng Wu
% Filename:     linkaxesAll.m
% Description:
% 
% @author:      Zhipeng Wu
% @email:       763008300@qq.com
% @website:     https://wuzhipeng.cn/
% @create on:   12-Mar-2020 21:35:45
% @version:     Matlab 9.4.0.813654 (R2018a)
% =========================================================================
% linkaxesAll Synchronize limits of all drawn 2-D axes.
%  Use linkaxesAll to synchronize the individual axis limits
%  on different subplots in all figures. This is useful
%  when you want to zoom or pan in one subplot and display
%  the same range of data in another subplot.

% allh=findobj('Units', 'pixels'); % Root and figures
% allh=findobj('Units', 'normalized'); % axes
allh=findobj('Type', 'axes'); % axes
linkaxes(allh);
