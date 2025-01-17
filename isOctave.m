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

function ret = isOctave()
  persistent x;
  if (isempty (x))
    x = exist('OCTAVE_VERSION', 'builtin');
  end
  ret = x ~= 0;
end
