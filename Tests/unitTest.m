# Tests cases for checkAssociativeProperty function.

testfiles = { ...
    "nonintegerGroupTable.csv", ...
    "nonpositiveGroupTable.csv", ...
    "nonsquareGroupTable.csv", ...
    "tooLargeEntriesGroupTable.csv", ...
    "nonassociativeGroup1.csv", ...
    "associativeGroup1.csv", ...
    "associativeGroup2.csv", ...
    "associativeGroup3.csv", ...
};

addpath("../")

printf("Non-integer entries: \n")
checkAssociativeProperty (testfiles{1})
printf("\n\nNon-positive entries: \n")
checkAssociativeProperty (testfiles{2})
printf("\n\nNon-square group table: \n")
checkAssociativeProperty (testfiles{3})
printf("\n\nGroup entries too large: \n")
checkAssociativeProperty (testfiles{4})
printf("\n\nNon-associative group: \n")
checkAssociativeProperty (testfiles{5})
printf("\n\nAssociative group: \n")
checkAssociativeProperty (testfiles{6})
printf("\n\nAssociative group: \n")
checkAssociativeProperty (testfiles{7})
printf("\n\nAssociative group: \n")
checkAssociativeProperty (testfiles{8})