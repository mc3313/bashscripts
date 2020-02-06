void test1( const char *string1[256]= "file1.txt")
{
  printf("  ---  Run first .C script --- \n");
  printf("%s \n", string1);
  printf("End test1. \n");
  
  //gROOT->ProcessLine(".x test2.C");
  return;
}