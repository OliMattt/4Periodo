int temp=-1;
int newTemp() {
  return temp--;
}

void getName(int num, char *name) {
  if (num >= 0) {
      sprintf(name, "$s%d", num);
  }
  else 
    sprintf (name, "$t%d")
}

char nome[30];
char * ObtemNome(int pos) {
int i;
  if (pos >= 0 ) {
    sprintf(nome,"$s%d",pos);
  }
  else 
    sprintf(nome,"$t%d",-(pos+1));
  return nome;
}

