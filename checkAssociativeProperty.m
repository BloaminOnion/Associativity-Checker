function checkAssociativeProperty (group_table_file)
  
  # Determines if the group that produces the provided group table
  # is associative, i.e. (a*b)*c = a*(b*c) for all a,b,c in the group.
  
  # group_table should be the name of a CSV file
  group_table = csvread(group_table_file)
  
  group_size = length (group_table(1,:))
  
  # Group table should be a square matrix of dimension n, where n is the
  # number of elements in the group
  if (group_size != length (group_table(:,1)))
    printf("The group table is incomplete. Please review the entries and ensure they are all present and correct.\n")
    return
  endif
  
  # Group table entries should be positive integers
  for i = 1:group_size
    for j = 1:group_size
      if (!isinteger(group_table(i,j)) || !gt(group_table(i,j),0))
        printf("Group table entries should be positive integers, not including 0\n")
        return
      endif
    endfor
  endfor
  
  isAssociative = true
  
  for i = 1:group_size
    for j = 1:group_size
      for k = 1:group_size
        if group_table(group_table(i,j),k) != group_table(i,group_table(j,k))
          isAssociative = false
        endif
      endfor
    endfor
  endfor
  
  if isAssociative
    printf("The group is associative\n")
  else
    printf("The group is not associative\n")
  endif
  
endfunction