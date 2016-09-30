function [signed] = twos_comp(unsigned, bits)
    % calculate signed decimal value of a twos complement value
    % bits is the number of total number of bits in the register
    if unsigned >= 2^(bits - 1) 
        signed = unsigned - 2^bits;
    else
        signed = unsigned;
    end
end