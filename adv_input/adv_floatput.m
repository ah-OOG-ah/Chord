% This file is part of Chord - scripts to ease MATLAB's dissonance.
% Copyright (C) 2025 ah-OOG-ah
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

  prompt = sprintf("Enter %s: ", prompt);

  % Accept and validate input
  num = [];
  while isempty(num)

    tmp = str2double(input(prompt, "s"));
    if (tmp >= min && tmp <= max)
      num = tmp;
    else
      fprintf("Error: input must be a number greater than or equal to %.2f and less than or equal to %.2f\n", ...
        min, max);
    end
  end

  ret = num;
end
