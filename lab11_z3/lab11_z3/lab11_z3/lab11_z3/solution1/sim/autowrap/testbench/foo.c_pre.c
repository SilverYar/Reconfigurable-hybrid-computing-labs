# 1 "C:/Users/boris/OneDrive/WorkingDirectory/2018-2019/VivadoHLSLabs/spring/lab11_z2/source/lab11_z2/foo.c"
# 1 "C:/Users/boris/OneDrive/WorkingDirectory/2018-2019/VivadoHLSLabs/spring/lab11_z2/source/lab11_z2/foo.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 147 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Users/boris/OneDrive/WorkingDirectory/2018-2019/VivadoHLSLabs/spring/lab11_z2/source/lab11_z2/foo.c" 2
void foo(int d_in[3], int d_out[3])
{
 int i;
 int t_in,t_r;
 Loop: for(i = 0; i < 3; i++)
 {
  t_in = d_in[i];
  t_r = t_in * t_in;
  d_out[i] = t_r;
 }
}
