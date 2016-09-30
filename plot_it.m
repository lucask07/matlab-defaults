function [ h ] = plot_it( p_cmd, xl, yl, tle, fig_no, disp_flg )
% plot_it: Reduces the number of lines to make a plot with labels, title and
% with a display flag

if nargin < 6,
    disp_flg = 1;
end

    if disp_flg == 1,
        if nargin < 5,
            figure;
        end
        if fig_no == -1;
        else
            figure(fig_no)
        end
        p_cmd
        h = evalin('caller', p_cmd);

        if exist('tle', 'var'),
            title(tle)
        end
        if exist('yl', 'var'),
            ylabel(yl)
        end
        if exist('xl', 'var'),
            xlabel(xl)
        end  
    end

end

