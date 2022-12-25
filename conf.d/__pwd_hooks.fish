function __pwd_hooks --on-variable PWD
  set hooks (functions | grep __pwd_hooks_)

  if [ $status -eq 1 ]
    return
  end

  for f_name in $hooks
    $f_name
  end
end
