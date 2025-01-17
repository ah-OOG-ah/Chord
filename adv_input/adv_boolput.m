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

% Boolean input
function ret = adv_boolput(prompt)

  prompt = cstrcat( ...
    prompt, ...
    " (y/n): " ...
  );

  % Accept and validate input
  while true

    ret = input(cstrcat(prompt), "s");
    if (ret == "y")

      ret = true;
      break
    elseif (ret == "n")

      ret = false;
      break
    else

      disp("Error: must be y or n");
    end
  end
 end
