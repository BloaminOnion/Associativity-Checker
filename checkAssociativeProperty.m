function checkAssociativeProperty (group_table_file)
  
  # Determines if the group that produces the provided group table
  # is associative, i.e. (a*b)*c = a*(b*c) for all a,b,c in the group.
  
  # group_table should be the name of a CSV file
  group_table = csvread(group_table_file)
  
  group_size = length (group_table(1,:))
  
  if (group_size != length (group_table(:,1)))
    printf("The group table is incomplete. Please review the entries and ensure they are all present and correct.\n")
    return
  endif
  
  # TODO : Build in a test case here to ensure that the provided group table is 
  # a square matrix
  
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