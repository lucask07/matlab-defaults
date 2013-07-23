% function save_figure(fname, width_height)
%
%   Save figure as fname.eps, fname.jpg
%   If specified, width_height(1) = width of figure in inches
%                 width_height2) =  height of figure in inches
%


function save_figure(fname, width_height)

if (nargin<1)
    fname = 'figure';
end

if (nargin < 2)
    width = 6.5;
    height = 4.5;
else
    width = width_height(1); % Width of Figure in Inches
    height = width_height(2); % Height of Figure in Inches
end

% Set up the paper
% First set up the paper to be the right size.
fig = gcf;
set(fig,'PaperUnits','inches');
set(fig,'Units','inches');
papersize=get(fig,'PaperSize')
left = (papersize(1)-width)/2;
bottom= (papersize(2)-height)/2;
set(fig,'PaperPositionMode','manual');
mfs=[left,bottom,width,height];
set(fig,'PaperPosition',mfs);
set(fig,'Position',[0.0,0.0,width,height]);

% Finally save the figure as an epsc with embedded tiff
eval(sprintf('print -depsc -tiff -r150 %s', sprintf('%s.eps',fname)));
eval(sprintf('print -djpeg -r150 %s',sprintf('%s.jpg',fname)));
eval(sprintf('print -dtiffnocompression -r200 %s',sprintf('%s.tiff',fname)));
