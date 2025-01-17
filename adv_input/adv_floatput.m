% This file is part of Chord - scripts to ease MATLAB's dissonance.
% Copyright (C) 2024 ah-OOG-ah
%
% Chord is free software: you can redistribute it and/or modify
% it under the terms of the GNU Lesser General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% Chord is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
% GNU Lesser General Public License for more details.
%
% You should have received a copy of the GNU Lesser General Public License
% along with this program. If not, see <https://www.gnu.org/licenses/>.

% Float input
function ret = adv_floatput(prompt, min, max)

  prompt = cstrcat(...
    'Enter ', ...
    prompt, ...
    ': ' ...
  );

  % Accept and validate input
  num = [];
  while isempty(num)

    tmp = str2double(input(cstrcat(prompt), "s"));
    if (tmp >= min && tmp <= max)
      num = tmp;
    else
      disp(cstrcat( ...
             "Error: input must be an number greater than or equal to ", ...
             num2str(min), ...
             " and less than or equal to ", ...
             num2str(max) ...
           ));
    endif
  endwhile

  ret = num;
endfunction
