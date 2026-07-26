void G4_mul(_Bool m4_x0, _Bool m4_x1, _Bool m4_y0, _Bool m4_y1, _Bool *m4_p0, _Bool *m4_p1)
{
  _Bool m4_ab;
  _Bool m4_cd;
  _Bool m4_e;
  m4_ab = m4_x1 ^ m4_x0;
  m4_cd = m4_y1 ^ m4_y0;
  m4_e = m4_ab & m4_cd;
  _Bool temp_var_0;
  temp_var_0 = m4_x1 & m4_y1;
  *m4_p1 = temp_var_0 ^ m4_e;
  _Bool temp_var_1;
  temp_var_1 = m4_x0 & m4_y0;
  *m4_p0 = temp_var_1 ^ m4_e;
}

void G4_scl_N(_Bool sn4_x0, _Bool sn4_x1, _Bool *sn4_p0, _Bool *sn4_p1)
{
  *sn4_p1 = sn4_x0;
  *sn4_p0 = sn4_x1 ^ sn4_x0;
}

void G4_scl_N2(_Bool sn24_x0, _Bool sn24_x1, _Bool *sn24_p0, _Bool *sn24_p1)
{
  *sn24_p1 = sn24_x1 ^ sn24_x0;
  *sn24_p0 = sn24_x1;
}

void G4_sq(_Bool sq4_x0, _Bool sq4_x1, _Bool *sq4_p0, _Bool *sq4_p1)
{
  *sq4_p1 = sq4_x0;
  *sq4_p0 = sq4_x1;
}

void G16_mul(_Bool m16_x0, _Bool m16_x1, _Bool m16_x2, _Bool m16_x3, _Bool m16_y0, _Bool m16_y1, _Bool m16_y2, _Bool m16_y3, _Bool *m16_p0, _Bool *m16_p1, _Bool *m16_p2, _Bool *m16_p3)
{
  _Bool m16_tx0;
  _Bool m16_tx1;
  _Bool m16_ty0;
  _Bool m16_ty1;
  _Bool m16_e0_s1;
  _Bool m16_e1_s1;
  _Bool m16_e0_s2;
  _Bool m16_e1_s2;
  _Bool m16_ph0;
  _Bool m16_ph1;
  _Bool m16_ql0;
  _Bool m16_ql1;
  m16_tx0 = m16_x2 ^ m16_x0;
  m16_tx1 = m16_x3 ^ m16_x1;
  m16_ty0 = m16_y2 ^ m16_y0;
  m16_ty1 = m16_y3 ^ m16_y1;
  G4_mul(m16_tx0, m16_tx1, m16_ty0, m16_ty1, &m16_e0_s1, &m16_e1_s1);
  G4_scl_N(m16_e0_s1, m16_e1_s1, &m16_e0_s2, &m16_e1_s2);
  G4_mul(m16_x2, m16_x3, m16_y2, m16_y3, &m16_ph0, &m16_ph1);
  G4_mul(m16_x0, m16_x1, m16_y0, m16_y1, &m16_ql0, &m16_ql1);
  *m16_p3 = m16_ph1 ^ m16_e1_s2;
  *m16_p2 = m16_ph0 ^ m16_e0_s2;
  *m16_p1 = m16_ql1 ^ m16_e1_s2;
  *m16_p0 = m16_ql0 ^ m16_e0_s2;
}

void G16_sq_scl(_Bool ss16_x0, _Bool ss16_x1, _Bool ss16_x2, _Bool ss16_x3, _Bool *ss16_p0, _Bool *ss16_p1, _Bool *ss16_p2, _Bool *ss16_p3)
{
  _Bool ss16_tx0;
  _Bool ss16_tx1;
  _Bool ss16_ph0;
  _Bool ss16_ph1;
  _Bool ss16_ql0_s1;
  _Bool ss16_ql1_s1;
  _Bool ss16_ql0_s2;
  _Bool ss16_ql1_s2;
  ss16_tx0 = ss16_x2 ^ ss16_x0;
  ss16_tx1 = ss16_x3 ^ ss16_x1;
  G4_sq(ss16_tx0, ss16_tx1, &ss16_ph0, &ss16_ph1);
  G4_sq(ss16_x0, ss16_x1, &ss16_ql0_s1, &ss16_ql1_s1);
  G4_scl_N2(ss16_ql0_s1, ss16_ql1_s1, &ss16_ql0_s2, &ss16_ql1_s2);
  *ss16_p3 = ss16_ph1;
  *ss16_p2 = ss16_ph0;
  *ss16_p1 = ss16_ql1_s2;
  *ss16_p0 = ss16_ql0_s2;
}

void G16_inv(_Bool i16_x0, _Bool i16_x1, _Bool i16_x2, _Bool i16_x3, _Bool *i16_p0, _Bool *i16_p1, _Bool *i16_p2, _Bool *i16_p3)
{
  _Bool i16_tx0;
  _Bool i16_tx1;
  _Bool i16_c0_s1;
  _Bool i16_c1_s1;
  _Bool i16_c0_s2;
  _Bool i16_c1_s2;
  _Bool i16_d0;
  _Bool i16_d1;
  _Bool i16_te0;
  _Bool i16_te1;
  _Bool i16_e0;
  _Bool i16_e1;
  _Bool i16_ph0;
  _Bool i16_ph1;
  _Bool i16_ql0;
  _Bool i16_ql1;
  i16_tx0 = i16_x2 ^ i16_x0;
  i16_tx1 = i16_x3 ^ i16_x1;
  G4_sq(i16_tx0, i16_tx1, &i16_c0_s1, &i16_c1_s1);
  G4_scl_N(i16_c0_s1, i16_c1_s1, &i16_c0_s2, &i16_c1_s2);
  G4_mul(i16_x2, i16_x3, i16_x0, i16_x1, &i16_d0, &i16_d1);
  i16_te0 = i16_c0_s2 ^ i16_d0;
  i16_te1 = i16_c1_s2 ^ i16_d1;
  G4_sq(i16_te0, i16_te1, &i16_e0, &i16_e1);
  G4_mul(i16_e0, i16_e1, i16_x0, i16_x1, &i16_ph0, &i16_ph1);
  G4_mul(i16_e0, i16_e1, i16_x2, i16_x3, &i16_ql0, &i16_ql1);
  *i16_p3 = i16_ph1;
  *i16_p2 = i16_ph0;
  *i16_p1 = i16_ql1;
  *i16_p0 = i16_ql0;
}

void G256_inv(_Bool i256_x0, _Bool i256_x1, _Bool i256_x2, _Bool i256_x3, _Bool i256_x4, _Bool i256_x5, _Bool i256_x6, _Bool i256_x7, _Bool *i256_p0, _Bool *i256_p1, _Bool *i256_p2, _Bool *i256_p3, _Bool *i256_p4, _Bool *i256_p5, _Bool *i256_p6, _Bool *i256_p7)
{
  _Bool i256_tx0;
  _Bool i256_tx1;
  _Bool i256_tx2;
  _Bool i256_tx3;
  _Bool i256_c0;
  _Bool i256_c1;
  _Bool i256_c2;
  _Bool i256_c3;
  _Bool i256_d0;
  _Bool i256_d1;
  _Bool i256_d2;
  _Bool i256_d3;
  _Bool i256_te0;
  _Bool i256_te1;
  _Bool i256_te2;
  _Bool i256_te3;
  _Bool i256_e0;
  _Bool i256_e1;
  _Bool i256_e2;
  _Bool i256_e3;
  _Bool i256_ph0;
  _Bool i256_ph1;
  _Bool i256_ph2;
  _Bool i256_ph3;
  _Bool i256_ql0;
  _Bool i256_ql1;
  _Bool i256_ql2;
  _Bool i256_ql3;
  i256_tx0 = i256_x4 ^ i256_x0;
  i256_tx1 = i256_x5 ^ i256_x1;
  i256_tx2 = i256_x6 ^ i256_x2;
  i256_tx3 = i256_x7 ^ i256_x3;
  G16_sq_scl(i256_tx0, i256_tx1, i256_tx2, i256_tx3, &i256_c0, &i256_c1, &i256_c2, &i256_c3);
  G16_mul(i256_x4, i256_x5, i256_x6, i256_x7, i256_x0, i256_x1, i256_x2, i256_x3, &i256_d0, &i256_d1, &i256_d2, &i256_d3);
  i256_te0 = i256_c0 ^ i256_d0;
  i256_te1 = i256_c1 ^ i256_d1;
  i256_te2 = i256_c2 ^ i256_d2;
  i256_te3 = i256_c3 ^ i256_d3;
  G16_inv(i256_te0, i256_te1, i256_te2, i256_te3, &i256_e0, &i256_e1, &i256_e2, &i256_e3);
  G16_mul(i256_e0, i256_e1, i256_e2, i256_e3, i256_x0, i256_x1, i256_x2, i256_x3, &i256_ph0, &i256_ph1, &i256_ph2, &i256_ph3);
  G16_mul(i256_e0, i256_e1, i256_e2, i256_e3, i256_x4, i256_x5, i256_x6, i256_x7, &i256_ql0, &i256_ql1, &i256_ql2, &i256_ql3);
  *i256_p7 = i256_ph3;
  *i256_p6 = i256_ph2;
  *i256_p5 = i256_ph1;
  *i256_p4 = i256_ph0;
  *i256_p3 = i256_ql3;
  *i256_p2 = i256_ql2;
  *i256_p1 = i256_ql1;
  *i256_p0 = i256_ql0;
}

void sbox(_Bool sb_n0, _Bool sb_n1, _Bool sb_n2, _Bool sb_n3, _Bool sb_n4, _Bool sb_n5, _Bool sb_n6, _Bool sb_n7, _Bool *sb_o0, _Bool *sb_o1, _Bool *sb_o2, _Bool *sb_o3, _Bool *sb_o4, _Bool *sb_o5, _Bool *sb_o6, _Bool *sb_o7)
{
  _Bool sb_y0;
  _Bool sb_y1;
  _Bool sb_y2;
  _Bool sb_y3;
  _Bool sb_y4;
  _Bool sb_y5;
  _Bool sb_y6;
  _Bool sb_y7;
  _Bool sb_i0;
  _Bool sb_i1;
  _Bool sb_i2;
  _Bool sb_i3;
  _Bool sb_i4;
  _Bool sb_i5;
  _Bool sb_i6;
  _Bool sb_i7;
  _Bool fy0;
  _Bool fy1;
  _Bool fy2;
  _Bool fy3;
  _Bool fy4;
  _Bool fy5;
  _Bool fy6;
  _Bool fy7;
  _Bool temp_var_0;
  temp_var_0 = sb_n0 ^ sb_n1;
  _Bool temp_var_1;
  temp_var_1 = temp_var_0 ^ sb_n2;
  _Bool temp_var_2;
  temp_var_2 = temp_var_1 ^ sb_n3;
  sb_y0 = temp_var_2 ^ sb_n6;
  _Bool temp_var_3;
  temp_var_3 = sb_n0 ^ sb_n5;
  sb_y1 = temp_var_3 ^ sb_n6;
  sb_y2 = sb_n0;
  _Bool temp_var_4;
  temp_var_4 = sb_n0 ^ sb_n1;
  _Bool temp_var_5;
  temp_var_5 = temp_var_4 ^ sb_n3;
  _Bool temp_var_6;
  temp_var_6 = temp_var_5 ^ sb_n4;
  sb_y3 = temp_var_6 ^ sb_n7;
  _Bool temp_var_7;
  temp_var_7 = sb_n0 ^ sb_n5;
  _Bool temp_var_8;
  temp_var_8 = temp_var_7 ^ sb_n6;
  sb_y4 = temp_var_8 ^ sb_n7;
  _Bool temp_var_9;
  temp_var_9 = sb_n0 ^ sb_n1;
  _Bool temp_var_10;
  temp_var_10 = temp_var_9 ^ sb_n5;
  sb_y5 = temp_var_10 ^ sb_n6;
  _Bool temp_var_11;
  temp_var_11 = sb_n0 ^ sb_n4;
  _Bool temp_var_12;
  temp_var_12 = temp_var_11 ^ sb_n5;
  sb_y6 = temp_var_12 ^ sb_n6;
  _Bool temp_var_13;
  temp_var_13 = sb_n0 ^ sb_n1;
  _Bool temp_var_14;
  temp_var_14 = temp_var_13 ^ sb_n2;
  _Bool temp_var_15;
  temp_var_15 = temp_var_14 ^ sb_n5;
  _Bool temp_var_16;
  temp_var_16 = temp_var_15 ^ sb_n6;
  sb_y7 = temp_var_16 ^ sb_n7;
  G256_inv(sb_y0, sb_y1, sb_y2, sb_y3, sb_y4, sb_y5, sb_y6, sb_y7, &sb_i0, &sb_i1, &sb_i2, &sb_i3, &sb_i4, &sb_i5, &sb_i6, &sb_i7);
  _Bool temp_var_17;
  temp_var_17 = sb_i1 ^ sb_i4;
  fy0 = temp_var_17 ^ sb_i6;
  _Bool temp_var_18;
  temp_var_18 = sb_i1 ^ sb_i4;
  fy1 = temp_var_18 ^ sb_i5;
  _Bool temp_var_19;
  temp_var_19 = sb_i0 ^ sb_i2;
  _Bool temp_var_20;
  temp_var_20 = temp_var_19 ^ sb_i3;
  _Bool temp_var_21;
  temp_var_21 = temp_var_20 ^ sb_i5;
  fy2 = temp_var_21 ^ sb_i6;
  _Bool temp_var_22;
  temp_var_22 = sb_i3 ^ sb_i4;
  _Bool temp_var_23;
  temp_var_23 = temp_var_22 ^ sb_i5;
  _Bool temp_var_24;
  temp_var_24 = temp_var_23 ^ sb_i6;
  fy3 = temp_var_24 ^ sb_i7;
  _Bool temp_var_25;
  temp_var_25 = sb_i3 ^ sb_i5;
  fy4 = temp_var_25 ^ sb_i7;
  fy5 = sb_i0 ^ sb_i6;
  fy6 = sb_i3 ^ sb_i7;
  fy7 = sb_i3 ^ sb_i5;
  *sb_o0 = fy0 ^ 1;
  *sb_o1 = fy1 ^ 1;
  *sb_o2 = fy2;
  *sb_o3 = fy3;
  *sb_o4 = fy4;
  *sb_o5 = fy5 ^ 1;
  *sb_o6 = fy6 ^ 1;
  *sb_o7 = fy7;
}

