function ret = isOctave()
  persistent x;
  if (isempty (x))
    x = exist('OCTAVE_VERSION', 'builtin');
  end
  ret = x ~= 0;
end
