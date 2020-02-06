void test2( const char *string1[256]= "file")
{
  printf("  ---  Run second .C script --- strcat \n");
  strcat(string1,".txt");
  printf("%s \n", string1);
  printf("End test2. \n");
  return;
}