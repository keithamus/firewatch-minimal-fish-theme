function fish_prompt
  set -l s $status
  if [ (jobs -l | wc -l) -gt 0 ]
    set_color blue
    echo -n \uf1da' '
    set_color normal
  end
  if [ $s -ne 0 ]
    set_color magenta
  else
    set_color blue
  end
  echo -n \uf054
  if [ $s -ne 0 ]
    set_color red
  else
    set_color cyan
  end
  echo -n \uf054
  if [ $s -ne 0 ]
    set_color yellow
  else
    set_color green
  end
  echo -n \uf054' '
  set_color normal
end