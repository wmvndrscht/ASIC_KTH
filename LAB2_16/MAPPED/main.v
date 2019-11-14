
module SRAM ( rst_n, rws, addrs, inp, outp );
  input [2:0] addrs;
  input [15:0] inp;
  output [15:0] outp;
  input rst_n, rws;
  wire   \mem2[0][15] , \mem2[0][14] , \mem2[0][13] , \mem2[0][12] ,
         \mem2[0][11] , \mem2[0][10] , \mem2[0][9] , \mem2[0][8] ,
         \mem2[0][7] , \mem2[0][6] , \mem2[0][5] , \mem2[0][4] , \mem2[0][3] ,
         \mem2[0][2] , \mem2[0][1] , \mem2[0][0] , \mem2[2][15] ,
         \mem2[2][14] , \mem2[2][13] , \mem2[2][12] , \mem2[2][11] ,
         \mem2[2][10] , \mem2[2][9] , \mem2[2][8] , \mem2[2][7] , \mem2[2][6] ,
         \mem2[2][5] , \mem2[2][4] , \mem2[2][3] , \mem2[2][2] , \mem2[2][1] ,
         \mem2[2][0] , \mem2[3][15] , \mem2[3][14] , \mem2[3][13] ,
         \mem2[3][12] , \mem2[3][11] , \mem2[3][10] , \mem2[3][9] ,
         \mem2[3][8] , \mem2[3][7] , \mem2[3][6] , \mem2[3][5] , \mem2[3][4] ,
         \mem2[3][3] , \mem2[3][2] , \mem2[3][1] , \mem2[3][0] , N47, N48, N49,
         N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63,
         N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77,
         N78, N79, N80, N81, N82, N83, n48, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n65, n66, n67, n68, n69, n70;

  LHD1 \mem2_reg[0][15]  ( .E(N66), .D(N62), .Q(\mem2[0][15] ) );
  LHD1 \mem2_reg[0][14]  ( .E(N66), .D(N61), .Q(\mem2[0][14] ) );
  LHD1 \mem2_reg[0][13]  ( .E(N66), .D(N60), .Q(\mem2[0][13] ) );
  LHD1 \mem2_reg[0][12]  ( .E(N66), .D(N59), .Q(\mem2[0][12] ) );
  LHD1 \mem2_reg[0][11]  ( .E(N66), .D(N58), .Q(\mem2[0][11] ) );
  LHD1 \mem2_reg[0][10]  ( .E(N66), .D(N57), .Q(\mem2[0][10] ) );
  LHD1 \mem2_reg[0][9]  ( .E(N66), .D(N56), .Q(\mem2[0][9] ) );
  LHD1 \mem2_reg[0][8]  ( .E(N66), .D(N55), .Q(\mem2[0][8] ) );
  LHD1 \mem2_reg[0][7]  ( .E(N66), .D(N54), .Q(\mem2[0][7] ) );
  LHD1 \mem2_reg[0][6]  ( .E(N66), .D(N53), .Q(\mem2[0][6] ) );
  LHD1 \mem2_reg[0][5]  ( .E(N66), .D(N52), .Q(\mem2[0][5] ) );
  LHD1 \mem2_reg[0][4]  ( .E(N66), .D(N51), .Q(\mem2[0][4] ) );
  LHD1 \mem2_reg[0][3]  ( .E(N66), .D(N50), .Q(\mem2[0][3] ) );
  LHD1 \mem2_reg[0][2]  ( .E(N66), .D(N49), .Q(\mem2[0][2] ) );
  LHD1 \mem2_reg[0][1]  ( .E(N66), .D(N48), .Q(\mem2[0][1] ) );
  LHD1 \mem2_reg[0][0]  ( .E(N66), .D(N47), .Q(\mem2[0][0] ) );
  LHD1 \mem2_reg[1][15]  ( .E(N65), .D(N62), .QN(n58) );
  LHD1 \mem2_reg[1][14]  ( .E(N65), .D(N61), .QN(n56) );
  LHD1 \mem2_reg[1][13]  ( .E(N65), .D(N60), .QN(n54) );
  LHD1 \mem2_reg[1][12]  ( .E(N65), .D(N59), .QN(n52) );
  LHD1 \mem2_reg[1][11]  ( .E(N65), .D(N58), .QN(n50) );
  LHD1 \mem2_reg[1][10]  ( .E(N65), .D(N57), .QN(n47) );
  LHD1 \mem2_reg[1][9]  ( .E(N65), .D(N56), .QN(n45) );
  LHD1 \mem2_reg[1][8]  ( .E(N65), .D(N55), .QN(n43) );
  LHD1 \mem2_reg[1][7]  ( .E(N65), .D(N54), .QN(n41) );
  LHD1 \mem2_reg[1][6]  ( .E(N65), .D(N53), .QN(n39) );
  LHD1 \mem2_reg[1][5]  ( .E(N65), .D(N52), .QN(n37) );
  LHD1 \mem2_reg[1][4]  ( .E(N65), .D(N51), .QN(n35) );
  LHD1 \mem2_reg[1][3]  ( .E(N65), .D(N50), .QN(n33) );
  LHD1 \mem2_reg[1][2]  ( .E(N65), .D(N49), .QN(n31) );
  LHD1 \mem2_reg[1][1]  ( .E(N65), .D(N48), .QN(n29) );
  LHD1 \mem2_reg[1][0]  ( .E(N65), .D(N47), .QN(n27) );
  LHD1 \mem2_reg[2][15]  ( .E(N64), .D(N62), .Q(\mem2[2][15] ) );
  LHD1 \mem2_reg[2][14]  ( .E(N64), .D(N61), .Q(\mem2[2][14] ) );
  LHD1 \mem2_reg[2][13]  ( .E(N64), .D(N60), .Q(\mem2[2][13] ) );
  LHD1 \mem2_reg[2][12]  ( .E(N64), .D(N59), .Q(\mem2[2][12] ) );
  LHD1 \mem2_reg[2][11]  ( .E(N64), .D(N58), .Q(\mem2[2][11] ) );
  LHD1 \mem2_reg[2][10]  ( .E(N64), .D(N57), .Q(\mem2[2][10] ) );
  LHD1 \mem2_reg[2][9]  ( .E(N64), .D(N56), .Q(\mem2[2][9] ) );
  LHD1 \mem2_reg[2][8]  ( .E(N64), .D(N55), .Q(\mem2[2][8] ) );
  LHD1 \mem2_reg[2][7]  ( .E(N64), .D(N54), .Q(\mem2[2][7] ) );
  LHD1 \mem2_reg[2][6]  ( .E(N64), .D(N53), .Q(\mem2[2][6] ) );
  LHD1 \mem2_reg[2][5]  ( .E(N64), .D(N52), .Q(\mem2[2][5] ) );
  LHD1 \mem2_reg[2][4]  ( .E(N64), .D(N51), .Q(\mem2[2][4] ) );
  LHD1 \mem2_reg[2][3]  ( .E(N64), .D(N50), .Q(\mem2[2][3] ) );
  LHD1 \mem2_reg[2][2]  ( .E(N64), .D(N49), .Q(\mem2[2][2] ) );
  LHD1 \mem2_reg[2][1]  ( .E(N64), .D(N48), .Q(\mem2[2][1] ) );
  LHD1 \mem2_reg[2][0]  ( .E(N64), .D(N47), .Q(\mem2[2][0] ) );
  LHD1 \mem2_reg[3][15]  ( .E(N63), .D(N62), .Q(\mem2[3][15] ) );
  LHD1 \mem2_reg[3][14]  ( .E(N63), .D(N61), .Q(\mem2[3][14] ) );
  LHD1 \mem2_reg[3][13]  ( .E(N63), .D(N60), .Q(\mem2[3][13] ) );
  LHD1 \mem2_reg[3][12]  ( .E(N63), .D(N59), .Q(\mem2[3][12] ) );
  LHD1 \mem2_reg[3][11]  ( .E(N63), .D(N58), .Q(\mem2[3][11] ) );
  LHD1 \mem2_reg[3][10]  ( .E(N63), .D(N57), .Q(\mem2[3][10] ) );
  LHD1 \mem2_reg[3][9]  ( .E(N63), .D(N56), .Q(\mem2[3][9] ) );
  LHD1 \mem2_reg[3][8]  ( .E(N63), .D(N55), .Q(\mem2[3][8] ) );
  LHD1 \mem2_reg[3][7]  ( .E(N63), .D(N54), .Q(\mem2[3][7] ) );
  LHD1 \mem2_reg[3][6]  ( .E(N63), .D(N53), .Q(\mem2[3][6] ) );
  LHD1 \mem2_reg[3][5]  ( .E(N63), .D(N52), .Q(\mem2[3][5] ) );
  LHD1 \mem2_reg[3][4]  ( .E(N63), .D(N51), .Q(\mem2[3][4] ) );
  LHD1 \mem2_reg[3][3]  ( .E(N63), .D(N50), .Q(\mem2[3][3] ) );
  LHD1 \mem2_reg[3][2]  ( .E(N63), .D(N49), .Q(\mem2[3][2] ) );
  LHD1 \mem2_reg[3][1]  ( .E(N63), .D(N48), .Q(\mem2[3][1] ) );
  LHD1 \mem2_reg[3][0]  ( .E(N63), .D(N47), .Q(\mem2[3][0] ) );
  LNCND1 \mem2_reg[4][15]  ( .D(inp[15]), .EN(n48), .CDN(rst_n), .QN(n57) );
  LNCND1 \mem2_reg[4][14]  ( .D(inp[14]), .EN(n48), .CDN(rst_n), .QN(n55) );
  LNCND1 \mem2_reg[4][13]  ( .D(inp[13]), .EN(n48), .CDN(rst_n), .QN(n53) );
  LNCND1 \mem2_reg[4][12]  ( .D(inp[12]), .EN(n48), .CDN(rst_n), .QN(n51) );
  LNCND1 \mem2_reg[4][11]  ( .D(inp[11]), .EN(n48), .CDN(rst_n), .QN(n49) );
  LNCND1 \mem2_reg[4][10]  ( .D(inp[10]), .EN(n48), .CDN(rst_n), .QN(n46) );
  LNCND1 \mem2_reg[4][9]  ( .D(inp[9]), .EN(n48), .CDN(rst_n), .QN(n44) );
  LNCND1 \mem2_reg[4][8]  ( .D(inp[8]), .EN(n48), .CDN(rst_n), .QN(n42) );
  LNCND1 \mem2_reg[4][7]  ( .D(inp[7]), .EN(n48), .CDN(rst_n), .QN(n40) );
  LNCND1 \mem2_reg[4][6]  ( .D(inp[6]), .EN(n48), .CDN(rst_n), .QN(n38) );
  LNCND1 \mem2_reg[4][5]  ( .D(inp[5]), .EN(n48), .CDN(rst_n), .QN(n36) );
  LNCND1 \mem2_reg[4][4]  ( .D(inp[4]), .EN(n48), .CDN(rst_n), .QN(n34) );
  LNCND1 \mem2_reg[4][3]  ( .D(inp[3]), .EN(n48), .CDN(rst_n), .QN(n32) );
  LNCND1 \mem2_reg[4][2]  ( .D(inp[2]), .EN(n48), .CDN(rst_n), .QN(n30) );
  LNCND1 \mem2_reg[4][1]  ( .D(inp[1]), .EN(n48), .CDN(rst_n), .QN(n28) );
  LNCND1 \mem2_reg[4][0]  ( .D(inp[0]), .EN(n48), .CDN(rst_n), .QN(n26) );
  LHD1 \outp_reg[15]  ( .E(N67), .D(N83), .Q(outp[15]) );
  LHD1 \outp_reg[14]  ( .E(N67), .D(N82), .Q(outp[14]) );
  LHD1 \outp_reg[13]  ( .E(N67), .D(N81), .Q(outp[13]) );
  LHD1 \outp_reg[12]  ( .E(N67), .D(N80), .Q(outp[12]) );
  LHD1 \outp_reg[11]  ( .E(N67), .D(N79), .Q(outp[11]) );
  LHD1 \outp_reg[10]  ( .E(N67), .D(N78), .Q(outp[10]) );
  LHD1 \outp_reg[9]  ( .E(N67), .D(N77), .Q(outp[9]) );
  LHD1 \outp_reg[8]  ( .E(N67), .D(N76), .Q(outp[8]) );
  LHD1 \outp_reg[7]  ( .E(N67), .D(N75), .Q(outp[7]) );
  LHD1 \outp_reg[6]  ( .E(N67), .D(N74), .Q(outp[6]) );
  LHD1 \outp_reg[5]  ( .E(N67), .D(N73), .Q(outp[5]) );
  LHD1 \outp_reg[4]  ( .E(N67), .D(N72), .Q(outp[4]) );
  LHD1 \outp_reg[3]  ( .E(N67), .D(N71), .Q(outp[3]) );
  LHD1 \outp_reg[2]  ( .E(N67), .D(N70), .Q(outp[2]) );
  LHD1 \outp_reg[1]  ( .E(N67), .D(N69), .Q(outp[1]) );
  LHD1 \outp_reg[0]  ( .E(N67), .D(N68), .Q(outp[0]) );
  OR2D1 U46 ( .A1(addrs[2]), .A2(rws), .Z(n25) );
  BUFFD0 U3 ( .I(n8), .Z(n66) );
  BUFFD0 U4 ( .I(n7), .Z(n65) );
  OAI31D2 U5 ( .A1(n25), .A2(n70), .A3(n69), .B(rst_n), .ZN(N63) );
  ND2D1 U6 ( .A1(rst_n), .A2(n68), .ZN(N67) );
  BUFFD0 U7 ( .I(n9), .Z(n67) );
  INR3D0 U8 ( .A1(rst_n), .B1(n70), .B2(n69), .ZN(n9) );
  OAI31D2 U9 ( .A1(n25), .A2(addrs[0]), .A3(n69), .B(rst_n), .ZN(N64) );
  OAI31D2 U10 ( .A1(n25), .A2(addrs[1]), .A3(n70), .B(rst_n), .ZN(N65) );
  OAI31D2 U11 ( .A1(n25), .A2(addrs[1]), .A3(addrs[0]), .B(rst_n), .ZN(N66) );
  ND4D1 U12 ( .A1(addrs[2]), .A2(n70), .A3(n69), .A4(n68), .ZN(n48) );
  INVD1 U13 ( .I(addrs[1]), .ZN(n69) );
  INVD1 U14 ( .I(addrs[0]), .ZN(n70) );
  ND3D1 U15 ( .A1(rst_n), .A2(n69), .A3(addrs[0]), .ZN(n4) );
  OAI221D0 U16 ( .A1(n4), .A2(n27), .B1(n5), .B2(n26), .C(n24), .ZN(N68) );
  AOI222D0 U17 ( .A1(n65), .A2(\mem2[2][0] ), .B1(n66), .B2(\mem2[0][0] ), 
        .C1(n67), .C2(\mem2[3][0] ), .ZN(n24) );
  OAI221D0 U18 ( .A1(n4), .A2(n29), .B1(n5), .B2(n28), .C(n23), .ZN(N69) );
  AOI222D0 U19 ( .A1(n65), .A2(\mem2[2][1] ), .B1(n66), .B2(\mem2[0][1] ), 
        .C1(n67), .C2(\mem2[3][1] ), .ZN(n23) );
  OAI221D0 U20 ( .A1(n4), .A2(n31), .B1(n5), .B2(n30), .C(n22), .ZN(N70) );
  AOI222D0 U21 ( .A1(n65), .A2(\mem2[2][2] ), .B1(n66), .B2(\mem2[0][2] ), 
        .C1(n67), .C2(\mem2[3][2] ), .ZN(n22) );
  OAI221D0 U22 ( .A1(n4), .A2(n33), .B1(n5), .B2(n32), .C(n21), .ZN(N71) );
  AOI222D0 U23 ( .A1(n65), .A2(\mem2[2][3] ), .B1(n66), .B2(\mem2[0][3] ), 
        .C1(n67), .C2(\mem2[3][3] ), .ZN(n21) );
  OAI221D0 U24 ( .A1(n4), .A2(n35), .B1(n5), .B2(n34), .C(n20), .ZN(N72) );
  AOI222D0 U25 ( .A1(n65), .A2(\mem2[2][4] ), .B1(n66), .B2(\mem2[0][4] ), 
        .C1(n67), .C2(\mem2[3][4] ), .ZN(n20) );
  OAI221D0 U26 ( .A1(n4), .A2(n37), .B1(n5), .B2(n36), .C(n19), .ZN(N73) );
  AOI222D0 U27 ( .A1(n65), .A2(\mem2[2][5] ), .B1(n66), .B2(\mem2[0][5] ), 
        .C1(n67), .C2(\mem2[3][5] ), .ZN(n19) );
  OAI221D0 U28 ( .A1(n4), .A2(n39), .B1(n5), .B2(n38), .C(n18), .ZN(N74) );
  AOI222D0 U29 ( .A1(n65), .A2(\mem2[2][6] ), .B1(n66), .B2(\mem2[0][6] ), 
        .C1(n67), .C2(\mem2[3][6] ), .ZN(n18) );
  OAI221D0 U30 ( .A1(n4), .A2(n41), .B1(n5), .B2(n40), .C(n17), .ZN(N75) );
  AOI222D0 U31 ( .A1(n65), .A2(\mem2[2][7] ), .B1(n66), .B2(\mem2[0][7] ), 
        .C1(n67), .C2(\mem2[3][7] ), .ZN(n17) );
  OAI221D0 U32 ( .A1(n4), .A2(n43), .B1(n5), .B2(n42), .C(n16), .ZN(N76) );
  AOI222D0 U33 ( .A1(n65), .A2(\mem2[2][8] ), .B1(n66), .B2(\mem2[0][8] ), 
        .C1(n67), .C2(\mem2[3][8] ), .ZN(n16) );
  OAI221D0 U34 ( .A1(n4), .A2(n45), .B1(n5), .B2(n44), .C(n15), .ZN(N77) );
  AOI222D0 U35 ( .A1(n65), .A2(\mem2[2][9] ), .B1(n66), .B2(\mem2[0][9] ), 
        .C1(n67), .C2(\mem2[3][9] ), .ZN(n15) );
  OAI221D0 U36 ( .A1(n4), .A2(n47), .B1(n5), .B2(n46), .C(n14), .ZN(N78) );
  AOI222D0 U37 ( .A1(n65), .A2(\mem2[2][10] ), .B1(n66), .B2(\mem2[0][10] ), 
        .C1(n67), .C2(\mem2[3][10] ), .ZN(n14) );
  OAI221D0 U38 ( .A1(n4), .A2(n50), .B1(n5), .B2(n49), .C(n13), .ZN(N79) );
  AOI222D0 U39 ( .A1(n65), .A2(\mem2[2][11] ), .B1(n66), .B2(\mem2[0][11] ), 
        .C1(n67), .C2(\mem2[3][11] ), .ZN(n13) );
  OAI221D0 U40 ( .A1(n4), .A2(n52), .B1(n5), .B2(n51), .C(n12), .ZN(N80) );
  AOI222D0 U41 ( .A1(n65), .A2(\mem2[2][12] ), .B1(n66), .B2(\mem2[0][12] ), 
        .C1(n67), .C2(\mem2[3][12] ), .ZN(n12) );
  OAI221D0 U42 ( .A1(n4), .A2(n54), .B1(n5), .B2(n53), .C(n11), .ZN(N81) );
  AOI222D0 U43 ( .A1(n65), .A2(\mem2[2][13] ), .B1(n66), .B2(\mem2[0][13] ), 
        .C1(n67), .C2(\mem2[3][13] ), .ZN(n11) );
  OAI221D0 U44 ( .A1(n4), .A2(n56), .B1(n5), .B2(n55), .C(n10), .ZN(N82) );
  AOI222D0 U45 ( .A1(n65), .A2(\mem2[2][14] ), .B1(n66), .B2(\mem2[0][14] ), 
        .C1(n67), .C2(\mem2[3][14] ), .ZN(n10) );
  OAI221D0 U47 ( .A1(n4), .A2(n58), .B1(n5), .B2(n57), .C(n6), .ZN(N83) );
  AOI222D0 U48 ( .A1(n65), .A2(\mem2[2][15] ), .B1(n66), .B2(\mem2[0][15] ), 
        .C1(n67), .C2(\mem2[3][15] ), .ZN(n6) );
  ND2D1 U49 ( .A1(rst_n), .A2(addrs[2]), .ZN(n5) );
  AN2D0 U50 ( .A1(inp[0]), .A2(rst_n), .Z(N47) );
  AN2D0 U51 ( .A1(inp[1]), .A2(rst_n), .Z(N48) );
  AN2D0 U52 ( .A1(inp[2]), .A2(rst_n), .Z(N49) );
  AN2D0 U53 ( .A1(inp[3]), .A2(rst_n), .Z(N50) );
  AN2D0 U54 ( .A1(inp[4]), .A2(rst_n), .Z(N51) );
  AN2D0 U55 ( .A1(inp[5]), .A2(rst_n), .Z(N52) );
  AN2D0 U56 ( .A1(inp[6]), .A2(rst_n), .Z(N53) );
  AN2D0 U57 ( .A1(inp[7]), .A2(rst_n), .Z(N54) );
  AN2D0 U58 ( .A1(inp[8]), .A2(rst_n), .Z(N55) );
  AN2D0 U59 ( .A1(inp[9]), .A2(rst_n), .Z(N56) );
  AN2D0 U60 ( .A1(inp[10]), .A2(rst_n), .Z(N57) );
  AN2D0 U61 ( .A1(inp[11]), .A2(rst_n), .Z(N58) );
  AN2D0 U62 ( .A1(inp[12]), .A2(rst_n), .Z(N59) );
  AN2D0 U63 ( .A1(inp[13]), .A2(rst_n), .Z(N60) );
  AN2D0 U64 ( .A1(inp[14]), .A2(rst_n), .Z(N61) );
  AN2D0 U65 ( .A1(inp[15]), .A2(rst_n), .Z(N62) );
  INR3D0 U66 ( .A1(rst_n), .B1(addrs[0]), .B2(n69), .ZN(n7) );
  INR4D0 U67 ( .A1(rst_n), .B1(addrs[0]), .B2(addrs[1]), .B3(addrs[2]), .ZN(n8) );
  INVD1 U68 ( .I(rws), .ZN(n68) );
endmodule


module Delayline_CB_DW01_inc_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:2] carry;

  CMPE22D1 U1_1_30 ( .A(A[30]), .B(carry[30]), .CO(carry[31]), .S(SUM[30]) );
  CMPE22D1 U1_1_27 ( .A(A[27]), .B(carry[27]), .CO(carry[28]), .S(SUM[27]) );
  CMPE22D1 U1_1_23 ( .A(A[23]), .B(carry[23]), .CO(carry[24]), .S(SUM[23]) );
  CMPE22D1 U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  CMPE22D1 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  CMPE22D1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  CMPE22D1 U1_1_29 ( .A(A[29]), .B(carry[29]), .CO(carry[30]), .S(SUM[29]) );
  CMPE22D1 U1_1_26 ( .A(A[26]), .B(carry[26]), .CO(carry[27]), .S(SUM[26]) );
  CMPE22D1 U1_1_25 ( .A(A[25]), .B(carry[25]), .CO(carry[26]), .S(SUM[25]) );
  CMPE22D1 U1_1_22 ( .A(A[22]), .B(carry[22]), .CO(carry[23]), .S(SUM[22]) );
  CMPE22D1 U1_1_21 ( .A(A[21]), .B(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  CMPE22D1 U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  CMPE22D1 U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  CMPE22D1 U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  CMPE22D1 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  CMPE22D1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  CMPE22D1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  CMPE22D1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  CMPE22D1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  CMPE22D1 U1_1_28 ( .A(A[28]), .B(carry[28]), .CO(carry[29]), .S(SUM[28]) );
  CMPE22D1 U1_1_24 ( .A(A[24]), .B(carry[24]), .CO(carry[25]), .S(SUM[24]) );
  CMPE22D1 U1_1_20 ( .A(A[20]), .B(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  CMPE22D1 U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  CMPE22D1 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  CMPE22D1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  CMPE22D1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  CMPE22D1 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  CMPE22D1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  CMPE22D1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CMPE22D1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2D1 U1 ( .A1(carry[31]), .A2(A[31]), .Z(SUM[31]) );
  INVD1 U2 ( .I(A[0]), .ZN(SUM[0]) );
endmodule


module Delayline_CB_DW01_dec_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n44, n45, n46, n47, n48;

  AO21D1 U7 ( .A1(n7), .A2(A[9]), .B(n8), .Z(SUM[9]) );
  AO21D1 U9 ( .A1(n10), .A2(A[7]), .B(n9), .Z(SUM[7]) );
  AO21D1 U20 ( .A1(n19), .A2(A[28]), .B(n18), .Z(SUM[28]) );
  AO21D1 U24 ( .A1(n21), .A2(A[26]), .B(n20), .Z(SUM[26]) );
  OR2D1 U27 ( .A1(n22), .A2(A[25]), .Z(n21) );
  OR2D1 U29 ( .A1(n23), .A2(A[24]), .Z(n22) );
  OR2D1 U31 ( .A1(n24), .A2(A[23]), .Z(n23) );
  OR2D1 U33 ( .A1(n25), .A2(A[22]), .Z(n24) );
  OR2D1 U35 ( .A1(n26), .A2(A[21]), .Z(n25) );
  OR2D1 U37 ( .A1(n27), .A2(A[20]), .Z(n26) );
  OR2D1 U40 ( .A1(n28), .A2(A[19]), .Z(n27) );
  OR2D1 U42 ( .A1(n29), .A2(A[18]), .Z(n28) );
  OR2D1 U44 ( .A1(n30), .A2(A[17]), .Z(n29) );
  OR2D1 U46 ( .A1(n31), .A2(A[16]), .Z(n30) );
  OR2D1 U48 ( .A1(n32), .A2(A[15]), .Z(n31) );
  OR2D1 U50 ( .A1(n33), .A2(A[14]), .Z(n32) );
  OR2D1 U52 ( .A1(n34), .A2(A[13]), .Z(n33) );
  AO21D1 U55 ( .A1(n36), .A2(A[11]), .B(n35), .Z(SUM[11]) );
  OR2D1 U62 ( .A1(n11), .A2(A[6]), .Z(n10) );
  OR2D1 U63 ( .A1(n12), .A2(A[5]), .Z(n11) );
  OR2D1 U64 ( .A1(n13), .A2(A[4]), .Z(n12) );
  OR2D1 U65 ( .A1(n14), .A2(A[3]), .Z(n13) );
  OR2D1 U66 ( .A1(n17), .A2(A[2]), .Z(n14) );
  OR2D1 U67 ( .A1(A[1]), .A2(A[0]), .Z(n17) );
  ND2D1 U1 ( .A1(n18), .A2(n48), .ZN(n16) );
  ND2D1 U2 ( .A1(n8), .A2(n45), .ZN(n36) );
  ND2D1 U3 ( .A1(n20), .A2(n47), .ZN(n19) );
  ND2D1 U4 ( .A1(n9), .A2(n44), .ZN(n7) );
  ND2D1 U5 ( .A1(n35), .A2(n46), .ZN(n34) );
  OAI21D0 U6 ( .A1(n18), .A2(n48), .B(n16), .ZN(SUM[29]) );
  OAI21D0 U8 ( .A1(n20), .A2(n47), .B(n19), .ZN(SUM[27]) );
  OAI21D0 U10 ( .A1(n35), .A2(n46), .B(n34), .ZN(SUM[12]) );
  OAI21D0 U11 ( .A1(n8), .A2(n45), .B(n36), .ZN(SUM[10]) );
  OAI21D0 U12 ( .A1(n9), .A2(n44), .B(n7), .ZN(SUM[8]) );
  NR2D1 U13 ( .A1(n19), .A2(A[28]), .ZN(n18) );
  NR2D1 U14 ( .A1(n36), .A2(A[11]), .ZN(n35) );
  NR2D1 U15 ( .A1(n7), .A2(A[9]), .ZN(n8) );
  NR2D1 U16 ( .A1(n21), .A2(A[26]), .ZN(n20) );
  NR2D1 U17 ( .A1(n10), .A2(A[7]), .ZN(n9) );
  XOR2D1 U18 ( .A1(A[31]), .A2(n15), .Z(SUM[31]) );
  NR2D1 U19 ( .A1(A[30]), .A2(n16), .ZN(n15) );
  XNR2D1 U21 ( .A1(n16), .A2(A[30]), .ZN(SUM[30]) );
  IOA21D1 U22 ( .A1(n22), .A2(A[25]), .B(n21), .ZN(SUM[25]) );
  INVD1 U23 ( .I(A[12]), .ZN(n46) );
  INVD1 U25 ( .I(A[10]), .ZN(n45) );
  INVD1 U26 ( .I(A[8]), .ZN(n44) );
  IOA21D1 U28 ( .A1(n34), .A2(A[13]), .B(n33), .ZN(SUM[13]) );
  IOA21D1 U30 ( .A1(n23), .A2(A[24]), .B(n22), .ZN(SUM[24]) );
  IOA21D1 U32 ( .A1(n24), .A2(A[23]), .B(n23), .ZN(SUM[23]) );
  IOA21D1 U34 ( .A1(n25), .A2(A[22]), .B(n24), .ZN(SUM[22]) );
  IOA21D1 U36 ( .A1(n26), .A2(A[21]), .B(n25), .ZN(SUM[21]) );
  IOA21D1 U38 ( .A1(n27), .A2(A[20]), .B(n26), .ZN(SUM[20]) );
  IOA21D1 U39 ( .A1(n28), .A2(A[19]), .B(n27), .ZN(SUM[19]) );
  IOA21D1 U41 ( .A1(n29), .A2(A[18]), .B(n28), .ZN(SUM[18]) );
  IOA21D1 U43 ( .A1(n30), .A2(A[17]), .B(n29), .ZN(SUM[17]) );
  IOA21D1 U45 ( .A1(n31), .A2(A[16]), .B(n30), .ZN(SUM[16]) );
  IOA21D1 U47 ( .A1(n32), .A2(A[15]), .B(n31), .ZN(SUM[15]) );
  IOA21D1 U49 ( .A1(n33), .A2(A[14]), .B(n32), .ZN(SUM[14]) );
  INVD1 U51 ( .I(A[27]), .ZN(n47) );
  INVD1 U53 ( .I(A[29]), .ZN(n48) );
  INVD1 U54 ( .I(A[0]), .ZN(SUM[0]) );
  IOA21D1 U56 ( .A1(A[0]), .A2(A[1]), .B(n17), .ZN(SUM[1]) );
  IOA21D1 U57 ( .A1(n11), .A2(A[6]), .B(n10), .ZN(SUM[6]) );
  IOA21D1 U58 ( .A1(n14), .A2(A[3]), .B(n13), .ZN(SUM[3]) );
  IOA21D1 U59 ( .A1(n13), .A2(A[4]), .B(n12), .ZN(SUM[4]) );
  IOA21D1 U60 ( .A1(n12), .A2(A[5]), .B(n11), .ZN(SUM[5]) );
  IOA21D1 U61 ( .A1(n17), .A2(A[2]), .B(n14), .ZN(SUM[2]) );
endmodule


module Delayline_CB ( rst_n, clk, sample_clk, sample, sample_out );
  input [15:0] sample;
  output [15:0] sample_out;
  input rst_n, clk, sample_clk;
  wire   rws_wire, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34,
         N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48,
         N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62,
         N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N74, N75, N76, N77,
         N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91,
         N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         N105, N138, N139, N140, N141, N142, N143, N144, N145, N146, N147,
         N148, N149, N150, N151, N152, N153, N154, N155, N156, N157, N158,
         N159, N160, N161, N162, N163, N164, N165, N166, N167, N168, N169,
         N170, N171, N172, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46;
  wire   [2:0] adrs_wire;
  wire   [15:0] sample_write;
  wire   [31:0] counter;
  wire   [31:0] pointer;

  OR4D1 U37 ( .A1(pointer[24]), .A2(pointer[25]), .A3(pointer[26]), .A4(
        pointer[27]), .Z(n9) );
  OR4D1 U38 ( .A1(pointer[28]), .A2(pointer[29]), .A3(pointer[2]), .A4(
        pointer[30]), .Z(n8) );
  OR4D1 U39 ( .A1(pointer[31]), .A2(pointer[3]), .A3(pointer[4]), .A4(
        pointer[5]), .Z(n7) );
  OR4D1 U40 ( .A1(pointer[6]), .A2(pointer[7]), .A3(pointer[8]), .A4(
        pointer[9]), .Z(n6) );
  OR4D1 U42 ( .A1(pointer[0]), .A2(pointer[10]), .A3(pointer[11]), .A4(
        pointer[12]), .Z(n13) );
  OR4D1 U43 ( .A1(pointer[13]), .A2(pointer[14]), .A3(pointer[15]), .A4(
        pointer[16]), .Z(n12) );
  OR4D1 U44 ( .A1(pointer[17]), .A2(pointer[18]), .A3(pointer[19]), .A4(
        pointer[1]), .Z(n11) );
  OR4D1 U45 ( .A1(pointer[20]), .A2(pointer[21]), .A3(pointer[22]), .A4(
        pointer[23]), .Z(n10) );
  IAO21D1 U81 ( .A1(n15), .A2(n16), .B(n40), .ZN(n14) );
  SRAM U30_CBRAM ( .rst_n(rst_n), .rws(rws_wire), .addrs(adrs_wire), .inp(
        sample_write), .outp(sample_out) );
  Delayline_CB_DW01_inc_0 add_78 ( .A(counter), .SUM({N105, N104, N103, N102, 
        N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, 
        N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74})
         );
  Delayline_CB_DW01_dec_0 sub_67 ( .A(pointer), .SUM({N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, 
        N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9}) );
  EDFCNQD1 \sample_write_reg[15]  ( .D(sample[15]), .E(n39), .CP(clk), .CDN(
        rst_n), .Q(sample_write[15]) );
  EDFCNQD1 \sample_write_reg[14]  ( .D(sample[14]), .E(n39), .CP(clk), .CDN(
        rst_n), .Q(sample_write[14]) );
  EDFCNQD1 \sample_write_reg[13]  ( .D(sample[13]), .E(n39), .CP(clk), .CDN(
        rst_n), .Q(sample_write[13]) );
  EDFCNQD1 \sample_write_reg[12]  ( .D(sample[12]), .E(n39), .CP(clk), .CDN(
        rst_n), .Q(sample_write[12]) );
  EDFCNQD1 \sample_write_reg[11]  ( .D(sample[11]), .E(n39), .CP(clk), .CDN(
        rst_n), .Q(sample_write[11]) );
  EDFCNQD1 \sample_write_reg[10]  ( .D(sample[10]), .E(n39), .CP(clk), .CDN(
        rst_n), .Q(sample_write[10]) );
  EDFCNQD1 \sample_write_reg[9]  ( .D(sample[9]), .E(n39), .CP(clk), .CDN(
        rst_n), .Q(sample_write[9]) );
  EDFCNQD1 \sample_write_reg[8]  ( .D(sample[8]), .E(n39), .CP(clk), .CDN(
        rst_n), .Q(sample_write[8]) );
  EDFCNQD1 \sample_write_reg[7]  ( .D(sample[7]), .E(n39), .CP(clk), .CDN(
        rst_n), .Q(sample_write[7]) );
  EDFCNQD1 \sample_write_reg[6]  ( .D(sample[6]), .E(n39), .CP(clk), .CDN(
        rst_n), .Q(sample_write[6]) );
  EDFCNQD1 \sample_write_reg[5]  ( .D(sample[5]), .E(n39), .CP(clk), .CDN(
        rst_n), .Q(sample_write[5]) );
  EDFCNQD1 \sample_write_reg[4]  ( .D(sample[4]), .E(n39), .CP(clk), .CDN(
        rst_n), .Q(sample_write[4]) );
  EDFCNQD1 \sample_write_reg[3]  ( .D(sample[3]), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(sample_write[3]) );
  EDFCNQD1 \sample_write_reg[2]  ( .D(sample[2]), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(sample_write[2]) );
  EDFCNQD1 \sample_write_reg[1]  ( .D(sample[1]), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(sample_write[1]) );
  EDFCNQD1 \sample_write_reg[0]  ( .D(sample[0]), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(sample_write[0]) );
  DFSND1 rws_wire_reg ( .D(n42), .CP(clk), .SDN(rst_n), .Q(rws_wire) );
  DFCNQD1 \adrs_wire_reg[1]  ( .D(N171), .CP(clk), .CDN(rst_n), .Q(
        adrs_wire[1]) );
  DFCNQD1 \adrs_wire_reg[2]  ( .D(N172), .CP(clk), .CDN(rst_n), .Q(
        adrs_wire[2]) );
  DFCNQD1 \adrs_wire_reg[0]  ( .D(N170), .CP(clk), .CDN(rst_n), .Q(
        adrs_wire[0]) );
  DFCNQD1 \counter_reg[31]  ( .D(N169), .CP(clk), .CDN(rst_n), .Q(counter[31])
         );
  DFCNQD1 \counter_reg[23]  ( .D(N161), .CP(clk), .CDN(rst_n), .Q(counter[23])
         );
  DFCNQD1 \counter_reg[27]  ( .D(N165), .CP(clk), .CDN(rst_n), .Q(counter[27])
         );
  DFCNQD1 \counter_reg[19]  ( .D(N157), .CP(clk), .CDN(rst_n), .Q(counter[19])
         );
  DFCNQD1 \counter_reg[22]  ( .D(N160), .CP(clk), .CDN(rst_n), .Q(counter[22])
         );
  DFCNQD1 \counter_reg[26]  ( .D(N164), .CP(clk), .CDN(rst_n), .Q(counter[26])
         );
  DFCNQD1 \counter_reg[30]  ( .D(N168), .CP(clk), .CDN(rst_n), .Q(counter[30])
         );
  DFCNQD1 \counter_reg[18]  ( .D(N156), .CP(clk), .CDN(rst_n), .Q(counter[18])
         );
  DFCNQD1 \counter_reg[21]  ( .D(N159), .CP(clk), .CDN(rst_n), .Q(counter[21])
         );
  DFCNQD1 \counter_reg[25]  ( .D(N163), .CP(clk), .CDN(rst_n), .Q(counter[25])
         );
  DFCNQD1 \counter_reg[29]  ( .D(N167), .CP(clk), .CDN(rst_n), .Q(counter[29])
         );
  DFCNQD1 \counter_reg[17]  ( .D(N155), .CP(clk), .CDN(rst_n), .Q(counter[17])
         );
  DFCNQD1 \counter_reg[20]  ( .D(N158), .CP(clk), .CDN(rst_n), .Q(counter[20])
         );
  DFCNQD1 \counter_reg[24]  ( .D(N162), .CP(clk), .CDN(rst_n), .Q(counter[24])
         );
  DFCNQD1 \counter_reg[28]  ( .D(N166), .CP(clk), .CDN(rst_n), .Q(counter[28])
         );
  DFCNQD1 \counter_reg[16]  ( .D(N154), .CP(clk), .CDN(rst_n), .Q(counter[16])
         );
  DFCNQD1 \counter_reg[6]  ( .D(N144), .CP(clk), .CDN(rst_n), .Q(counter[6])
         );
  DFCNQD1 \counter_reg[12]  ( .D(N150), .CP(clk), .CDN(rst_n), .Q(counter[12])
         );
  DFCNQD1 \counter_reg[5]  ( .D(N143), .CP(clk), .CDN(rst_n), .Q(counter[5])
         );
  DFCNQD1 \counter_reg[9]  ( .D(N147), .CP(clk), .CDN(rst_n), .Q(counter[9])
         );
  DFCNQD1 \counter_reg[15]  ( .D(N153), .CP(clk), .CDN(rst_n), .Q(counter[15])
         );
  DFCNQD1 \counter_reg[4]  ( .D(N142), .CP(clk), .CDN(rst_n), .Q(counter[4])
         );
  DFCNQD1 \counter_reg[8]  ( .D(N146), .CP(clk), .CDN(rst_n), .Q(counter[8])
         );
  DFCNQD1 \counter_reg[14]  ( .D(N152), .CP(clk), .CDN(rst_n), .Q(counter[14])
         );
  DFCNQD1 \counter_reg[3]  ( .D(N141), .CP(clk), .CDN(rst_n), .Q(counter[3])
         );
  DFCNQD1 \counter_reg[7]  ( .D(N145), .CP(clk), .CDN(rst_n), .Q(counter[7])
         );
  DFCNQD1 \counter_reg[13]  ( .D(N151), .CP(clk), .CDN(rst_n), .Q(counter[13])
         );
  DFCNQD1 \counter_reg[10]  ( .D(N148), .CP(clk), .CDN(rst_n), .Q(counter[10])
         );
  DFCNQD1 \counter_reg[11]  ( .D(N149), .CP(clk), .CDN(rst_n), .Q(counter[11])
         );
  DFCNQD1 \counter_reg[2]  ( .D(N140), .CP(clk), .CDN(rst_n), .Q(counter[2])
         );
  DFCNQD1 \counter_reg[1]  ( .D(N139), .CP(clk), .CDN(rst_n), .Q(counter[1])
         );
  DFCNQD1 \counter_reg[0]  ( .D(N138), .CP(clk), .CDN(rst_n), .Q(counter[0])
         );
  EDFCNQD1 \pointer_reg[2]  ( .D(N43), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[2]) );
  EDFCNQD1 \pointer_reg[6]  ( .D(N47), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[6]) );
  EDFCNQD1 \pointer_reg[5]  ( .D(N46), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[5]) );
  EDFCNQD1 \pointer_reg[4]  ( .D(N45), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[4]) );
  EDFCNQD1 \pointer_reg[3]  ( .D(N44), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[3]) );
  EDFCNQD1 \pointer_reg[1]  ( .D(N42), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[1]) );
  EDFCNQD1 \pointer_reg[0]  ( .D(N41), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[0]) );
  EDFCNQD1 \pointer_reg[7]  ( .D(N48), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[7]) );
  EDFCNQD1 \pointer_reg[8]  ( .D(N49), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[8]) );
  EDFCNQD1 \pointer_reg[9]  ( .D(N50), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[9]) );
  EDFCNQD1 \pointer_reg[10]  ( .D(N51), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[10]) );
  EDFCNQD1 \pointer_reg[11]  ( .D(N52), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[11]) );
  EDFCNQD1 \pointer_reg[12]  ( .D(N53), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[12]) );
  EDFCNQD1 \pointer_reg[13]  ( .D(N54), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[13]) );
  EDFCNQD1 \pointer_reg[14]  ( .D(N55), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[14]) );
  EDFCNQD1 \pointer_reg[15]  ( .D(N56), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[15]) );
  EDFCNQD1 \pointer_reg[16]  ( .D(N57), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[16]) );
  EDFCNQD1 \pointer_reg[17]  ( .D(N58), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[17]) );
  EDFCNQD1 \pointer_reg[18]  ( .D(N59), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[18]) );
  EDFCNQD1 \pointer_reg[19]  ( .D(N60), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[19]) );
  EDFCNQD1 \pointer_reg[20]  ( .D(N61), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[20]) );
  EDFCNQD1 \pointer_reg[21]  ( .D(N62), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[21]) );
  EDFCNQD1 \pointer_reg[22]  ( .D(N63), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[22]) );
  EDFCNQD1 \pointer_reg[23]  ( .D(N64), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[23]) );
  EDFCNQD1 \pointer_reg[24]  ( .D(N65), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[24]) );
  EDFCNQD1 \pointer_reg[25]  ( .D(N66), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[25]) );
  EDFCNQD1 \pointer_reg[26]  ( .D(N67), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[26]) );
  EDFCNQD1 \pointer_reg[27]  ( .D(N68), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[27]) );
  EDFCNQD1 \pointer_reg[28]  ( .D(N69), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[28]) );
  EDFCNQD1 \pointer_reg[29]  ( .D(N70), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[29]) );
  EDFCNQD1 \pointer_reg[30]  ( .D(N71), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[30]) );
  EDFCNQD1 \pointer_reg[31]  ( .D(N72), .E(n45), .CP(clk), .CDN(rst_n), .Q(
        pointer[31]) );
  INVD2 U3 ( .I(n46), .ZN(n45) );
  INVD1 U4 ( .I(n14), .ZN(n38) );
  BUFFD0 U5 ( .I(n46), .Z(n42) );
  INVD1 U6 ( .I(n38), .ZN(n37) );
  INVD1 U7 ( .I(n43), .ZN(n40) );
  BUFFD0 U8 ( .I(n46), .Z(n43) );
  INVD1 U9 ( .I(n44), .ZN(n41) );
  BUFFD0 U10 ( .I(n43), .Z(n44) );
  INVD1 U11 ( .I(n42), .ZN(n39) );
  AN2D0 U12 ( .A1(N38), .A2(n3), .Z(N70) );
  AN2D0 U13 ( .A1(N36), .A2(n3), .Z(N68) );
  AN2D0 U14 ( .A1(N21), .A2(n3), .Z(N53) );
  ND4D1 U15 ( .A1(n21), .A2(n22), .A3(n23), .A4(n24), .ZN(n15) );
  ND4D1 U16 ( .A1(n17), .A2(n18), .A3(n19), .A4(n20), .ZN(n16) );
  ND2D1 U17 ( .A1(n4), .A2(n5), .ZN(n3) );
  NR4D0 U18 ( .A1(n6), .A2(n7), .A3(n8), .A4(n9), .ZN(n5) );
  AN2D0 U19 ( .A1(N19), .A2(n3), .Z(N51) );
  AN2D0 U20 ( .A1(N17), .A2(n3), .Z(N49) );
  AN2D0 U21 ( .A1(N40), .A2(n3), .Z(N72) );
  AN2D0 U22 ( .A1(N35), .A2(n3), .Z(N67) );
  AN2D0 U23 ( .A1(N39), .A2(n3), .Z(N71) );
  AN2D0 U24 ( .A1(N34), .A2(n3), .Z(N66) );
  AN2D0 U25 ( .A1(N37), .A2(n3), .Z(N69) );
  AO22D0 U26 ( .A1(n41), .A2(pointer[28]), .B1(N102), .B2(n37), .Z(N166) );
  AO22D0 U27 ( .A1(n41), .A2(pointer[29]), .B1(N103), .B2(n37), .Z(N167) );
  AO22D0 U28 ( .A1(n41), .A2(pointer[30]), .B1(N104), .B2(n37), .Z(N168) );
  AO22D0 U29 ( .A1(n41), .A2(pointer[26]), .B1(N100), .B2(n37), .Z(N164) );
  AO22D0 U30 ( .A1(n41), .A2(pointer[27]), .B1(N101), .B2(n37), .Z(N165) );
  AO22D0 U31 ( .A1(sample_clk), .A2(pointer[31]), .B1(N105), .B2(n37), .Z(N169) );
  AO22D0 U32 ( .A1(n41), .A2(pointer[15]), .B1(N89), .B2(n37), .Z(N153) );
  AO22D0 U33 ( .A1(n41), .A2(pointer[24]), .B1(N98), .B2(n14), .Z(N162) );
  AO22D0 U34 ( .A1(n41), .A2(pointer[20]), .B1(N94), .B2(n14), .Z(N158) );
  AO22D0 U35 ( .A1(n41), .A2(pointer[17]), .B1(N91), .B2(n14), .Z(N155) );
  AO22D0 U36 ( .A1(n41), .A2(pointer[25]), .B1(N99), .B2(n14), .Z(N163) );
  AO22D0 U41 ( .A1(n41), .A2(pointer[21]), .B1(N95), .B2(n14), .Z(N159) );
  AO22D0 U46 ( .A1(n41), .A2(pointer[18]), .B1(N92), .B2(n14), .Z(N156) );
  AO22D0 U47 ( .A1(n41), .A2(pointer[22]), .B1(N96), .B2(n14), .Z(N160) );
  AO22D0 U48 ( .A1(n41), .A2(pointer[19]), .B1(N93), .B2(n14), .Z(N157) );
  AO22D0 U49 ( .A1(n41), .A2(pointer[16]), .B1(N90), .B2(n14), .Z(N154) );
  AO22D0 U50 ( .A1(n41), .A2(pointer[23]), .B1(N97), .B2(n14), .Z(N161) );
  AN2D0 U51 ( .A1(N22), .A2(n3), .Z(N54) );
  AN2D0 U52 ( .A1(N33), .A2(n3), .Z(N65) );
  AN2D0 U53 ( .A1(N32), .A2(n3), .Z(N64) );
  AN2D0 U54 ( .A1(N31), .A2(n3), .Z(N63) );
  AN2D0 U55 ( .A1(N30), .A2(n3), .Z(N62) );
  AN2D0 U56 ( .A1(N29), .A2(n3), .Z(N61) );
  AN2D0 U57 ( .A1(N28), .A2(n3), .Z(N60) );
  AN2D0 U58 ( .A1(N27), .A2(n3), .Z(N59) );
  AN2D0 U59 ( .A1(N26), .A2(n3), .Z(N58) );
  AN2D0 U60 ( .A1(N25), .A2(n3), .Z(N57) );
  AN2D0 U61 ( .A1(N24), .A2(n3), .Z(N56) );
  AN2D0 U62 ( .A1(N23), .A2(n3), .Z(N55) );
  AN2D0 U63 ( .A1(N20), .A2(n3), .Z(N52) );
  NR4D0 U64 ( .A1(counter[26]), .A2(counter[25]), .A3(counter[24]), .A4(
        counter[23]), .ZN(n21) );
  NR4D0 U65 ( .A1(counter[22]), .A2(counter[21]), .A3(counter[20]), .A4(
        counter[1]), .ZN(n20) );
  NR4D0 U66 ( .A1(counter[19]), .A2(counter[18]), .A3(counter[17]), .A4(
        counter[16]), .ZN(n19) );
  NR4D0 U67 ( .A1(counter[9]), .A2(counter[8]), .A3(counter[7]), .A4(
        counter[6]), .ZN(n24) );
  NR4D0 U68 ( .A1(counter[5]), .A2(counter[4]), .A3(counter[3]), .A4(
        counter[31]), .ZN(n23) );
  NR4D0 U69 ( .A1(counter[15]), .A2(counter[14]), .A3(counter[13]), .A4(
        counter[12]), .ZN(n18) );
  NR4D0 U70 ( .A1(counter[30]), .A2(counter[29]), .A3(counter[28]), .A4(
        counter[27]), .ZN(n22) );
  NR4D0 U71 ( .A1(n10), .A2(n11), .A3(n12), .A4(n13), .ZN(n4) );
  INR4D0 U72 ( .A1(counter[2]), .B1(counter[11]), .B2(counter[10]), .B3(
        counter[0]), .ZN(n17) );
  AO22D0 U73 ( .A1(sample_clk), .A2(pointer[0]), .B1(n42), .B2(counter[0]), 
        .Z(N170) );
  AO22D0 U74 ( .A1(sample_clk), .A2(pointer[1]), .B1(n42), .B2(counter[1]), 
        .Z(N171) );
  AO22D0 U75 ( .A1(sample_clk), .A2(pointer[2]), .B1(n42), .B2(counter[2]), 
        .Z(N172) );
  AO22D0 U76 ( .A1(n40), .A2(pointer[0]), .B1(N74), .B2(n37), .Z(N138) );
  AO22D0 U77 ( .A1(n40), .A2(pointer[11]), .B1(N85), .B2(n37), .Z(N149) );
  AO22D0 U78 ( .A1(n40), .A2(pointer[10]), .B1(N84), .B2(n37), .Z(N148) );
  AO22D0 U79 ( .A1(n40), .A2(pointer[1]), .B1(N75), .B2(n37), .Z(N139) );
  AO22D0 U80 ( .A1(n40), .A2(pointer[2]), .B1(N76), .B2(n37), .Z(N140) );
  AO22D0 U82 ( .A1(n40), .A2(pointer[13]), .B1(N87), .B2(n14), .Z(N151) );
  AO22D0 U83 ( .A1(n40), .A2(pointer[7]), .B1(N81), .B2(n37), .Z(N145) );
  AO22D0 U84 ( .A1(n40), .A2(pointer[3]), .B1(N77), .B2(n37), .Z(N141) );
  AO22D0 U85 ( .A1(n40), .A2(pointer[14]), .B1(N88), .B2(n14), .Z(N152) );
  AO22D0 U86 ( .A1(n40), .A2(pointer[8]), .B1(N82), .B2(n37), .Z(N146) );
  AO22D0 U87 ( .A1(n40), .A2(pointer[4]), .B1(N78), .B2(n37), .Z(N142) );
  AO22D0 U88 ( .A1(n40), .A2(pointer[9]), .B1(N83), .B2(n14), .Z(N147) );
  AO22D0 U89 ( .A1(n40), .A2(pointer[5]), .B1(N79), .B2(n14), .Z(N143) );
  AO22D0 U90 ( .A1(n40), .A2(pointer[12]), .B1(N86), .B2(n14), .Z(N150) );
  AO22D0 U91 ( .A1(n40), .A2(pointer[6]), .B1(N80), .B2(n14), .Z(N144) );
  AN2D0 U92 ( .A1(N18), .A2(n3), .Z(N50) );
  AN2D0 U93 ( .A1(N9), .A2(n3), .Z(N41) );
  AN2D0 U94 ( .A1(N10), .A2(n3), .Z(N42) );
  AN2D0 U95 ( .A1(N15), .A2(n3), .Z(N47) );
  AN2D0 U96 ( .A1(N12), .A2(n3), .Z(N44) );
  AN2D0 U97 ( .A1(N13), .A2(n3), .Z(N45) );
  AN2D0 U98 ( .A1(N14), .A2(n3), .Z(N46) );
  AN2D0 U99 ( .A1(N16), .A2(n3), .Z(N48) );
  IND2D1 U100 ( .A1(N11), .B1(n3), .ZN(N43) );
  INVD1 U101 ( .I(sample_clk), .ZN(n46) );
endmodule


module FIR_Processor_DW01_dec_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n43, n44, n45, n47, n48;

  AO21D1 U7 ( .A1(n7), .A2(A[9]), .B(n8), .Z(SUM[9]) );
  AO21D1 U9 ( .A1(n10), .A2(A[7]), .B(n9), .Z(SUM[7]) );
  AO21D1 U20 ( .A1(n19), .A2(A[28]), .B(n18), .Z(SUM[28]) );
  AO21D1 U24 ( .A1(n21), .A2(A[26]), .B(n20), .Z(SUM[26]) );
  OR2D1 U27 ( .A1(n22), .A2(A[25]), .Z(n21) );
  OR2D1 U29 ( .A1(n23), .A2(A[24]), .Z(n22) );
  OR2D1 U31 ( .A1(n24), .A2(A[23]), .Z(n23) );
  OR2D1 U33 ( .A1(n25), .A2(A[22]), .Z(n24) );
  OR2D1 U35 ( .A1(n26), .A2(A[21]), .Z(n25) );
  OR2D1 U37 ( .A1(n27), .A2(A[20]), .Z(n26) );
  OR2D1 U40 ( .A1(n28), .A2(A[19]), .Z(n27) );
  OR2D1 U42 ( .A1(n29), .A2(A[18]), .Z(n28) );
  OR2D1 U44 ( .A1(n30), .A2(A[17]), .Z(n29) );
  OR2D1 U46 ( .A1(n31), .A2(A[16]), .Z(n30) );
  OR2D1 U48 ( .A1(n32), .A2(A[15]), .Z(n31) );
  OR2D1 U50 ( .A1(n33), .A2(A[14]), .Z(n32) );
  OR2D1 U52 ( .A1(n34), .A2(A[13]), .Z(n33) );
  AO21D1 U55 ( .A1(n36), .A2(A[11]), .B(n35), .Z(SUM[11]) );
  OR2D1 U62 ( .A1(n11), .A2(A[6]), .Z(n10) );
  OR2D1 U63 ( .A1(n12), .A2(A[5]), .Z(n11) );
  OR2D1 U64 ( .A1(n13), .A2(A[4]), .Z(n12) );
  OR2D1 U65 ( .A1(n14), .A2(A[3]), .Z(n13) );
  OR2D1 U66 ( .A1(n17), .A2(A[2]), .Z(n14) );
  OR2D1 U67 ( .A1(A[1]), .A2(A[0]), .Z(n17) );
  ND2D1 U1 ( .A1(n18), .A2(n44), .ZN(n16) );
  ND2D1 U2 ( .A1(n8), .A2(n48), .ZN(n36) );
  ND2D1 U3 ( .A1(n9), .A2(n45), .ZN(n7) );
  ND2D1 U4 ( .A1(n20), .A2(n43), .ZN(n19) );
  ND2D1 U5 ( .A1(n35), .A2(n47), .ZN(n34) );
  OAI21D0 U6 ( .A1(n18), .A2(n44), .B(n16), .ZN(SUM[29]) );
  OAI21D0 U8 ( .A1(n20), .A2(n43), .B(n19), .ZN(SUM[27]) );
  OAI21D0 U10 ( .A1(n35), .A2(n47), .B(n34), .ZN(SUM[12]) );
  OAI21D0 U11 ( .A1(n8), .A2(n48), .B(n36), .ZN(SUM[10]) );
  OAI21D0 U12 ( .A1(n9), .A2(n45), .B(n7), .ZN(SUM[8]) );
  NR2D1 U13 ( .A1(n7), .A2(A[9]), .ZN(n8) );
  NR2D1 U14 ( .A1(n36), .A2(A[11]), .ZN(n35) );
  NR2D1 U15 ( .A1(n19), .A2(A[28]), .ZN(n18) );
  NR2D1 U16 ( .A1(n10), .A2(A[7]), .ZN(n9) );
  NR2D1 U17 ( .A1(n21), .A2(A[26]), .ZN(n20) );
  XNR2D1 U18 ( .A1(n16), .A2(A[30]), .ZN(SUM[30]) );
  XOR2D1 U19 ( .A1(A[31]), .A2(n15), .Z(SUM[31]) );
  NR2D1 U21 ( .A1(A[30]), .A2(n16), .ZN(n15) );
  INVD1 U22 ( .I(A[10]), .ZN(n48) );
  INVD1 U23 ( .I(A[12]), .ZN(n47) );
  INVD1 U25 ( .I(A[8]), .ZN(n45) );
  IOA21D1 U26 ( .A1(n34), .A2(A[13]), .B(n33), .ZN(SUM[13]) );
  IOA21D1 U28 ( .A1(n33), .A2(A[14]), .B(n32), .ZN(SUM[14]) );
  IOA21D1 U30 ( .A1(n32), .A2(A[15]), .B(n31), .ZN(SUM[15]) );
  IOA21D1 U32 ( .A1(n31), .A2(A[16]), .B(n30), .ZN(SUM[16]) );
  IOA21D1 U34 ( .A1(n30), .A2(A[17]), .B(n29), .ZN(SUM[17]) );
  IOA21D1 U36 ( .A1(n29), .A2(A[18]), .B(n28), .ZN(SUM[18]) );
  IOA21D1 U38 ( .A1(n22), .A2(A[25]), .B(n21), .ZN(SUM[25]) );
  IOA21D1 U39 ( .A1(n26), .A2(A[21]), .B(n25), .ZN(SUM[21]) );
  IOA21D1 U41 ( .A1(n28), .A2(A[19]), .B(n27), .ZN(SUM[19]) );
  IOA21D1 U43 ( .A1(n25), .A2(A[22]), .B(n24), .ZN(SUM[22]) );
  IOA21D1 U45 ( .A1(n24), .A2(A[23]), .B(n23), .ZN(SUM[23]) );
  IOA21D1 U47 ( .A1(n27), .A2(A[20]), .B(n26), .ZN(SUM[20]) );
  IOA21D1 U49 ( .A1(n23), .A2(A[24]), .B(n22), .ZN(SUM[24]) );
  INVD1 U51 ( .I(A[29]), .ZN(n44) );
  INVD1 U53 ( .I(A[27]), .ZN(n43) );
  IOA21D1 U54 ( .A1(A[0]), .A2(A[1]), .B(n17), .ZN(SUM[1]) );
  IOA21D1 U56 ( .A1(n13), .A2(A[4]), .B(n12), .ZN(SUM[4]) );
  IOA21D1 U57 ( .A1(n12), .A2(A[5]), .B(n11), .ZN(SUM[5]) );
  IOA21D1 U58 ( .A1(n11), .A2(A[6]), .B(n10), .ZN(SUM[6]) );
  IOA21D1 U59 ( .A1(n14), .A2(A[3]), .B(n13), .ZN(SUM[3]) );
  IOA21D1 U60 ( .A1(n17), .A2(A[2]), .B(n14), .ZN(SUM[2]) );
  INVD1 U61 ( .I(A[0]), .ZN(SUM[0]) );
endmodule


module FIR_Processor_DW_mult_uns_0 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n83, n84, n86, n87, n88, n89, n90, n91, n92, n93, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n295, n296, n297, n298, n299, n300, n301, n302,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n746, n747,
         n748, n749, n752, n753, n754, n755, n756, n757, n758, n759, n760,
         n761, n762, n763, n764, n765, n766, n768, n769, n770, n771, n772,
         n773, n774, n775, n776, n777, n778, n779, n780, n781, n782, n783,
         n784, n786, n787, n788, n789, n790, n791, n792, n793, n794, n795,
         n796, n797, n798, n799, n800, n801, n802, n804, n805, n806, n807,
         n808, n809, n810, n811, n812, n813, n814, n815, n816, n817, n818,
         n819, n820, n822, n823, n824, n825, n826, n827, n828, n829, n830,
         n831, n832, n833, n834, n835, n836, n837, n838, n840, n841, n842,
         n843, n844, n845, n846, n847, n848, n849, n850, n851, n852, n853,
         n854, n855, n856, n858, n859, n860, n861, n862, n863, n864, n865,
         n866, n867, n868, n869, n870, n871, n872, n873, n874, n875, n876,
         n877, n878, n879, n880, n881, n882, n883, n884, n885, n886, n887,
         n888, n889, n890, n891, n892, n893, n894, n895, n896, n897, n904,
         n937, n938, n939, n940, n941, n942, n943, n944, n945, n946, n947,
         n948, n949, n950, n951, n952, n953, n954, n955, n956, n957, n958,
         n959, n960, n961, n962, n963, n964, n965, n966, n967, n968, n969,
         n970, n971, n972, n973, n974, n975, n976, n977;

  CMPE32D1 U53 ( .A(n84), .B(n88), .CI(n53), .CO(n52), .S(product[30]) );
  CMPE32D1 U54 ( .A(n89), .B(n91), .CI(n54), .CO(n53), .S(product[29]) );
  CMPE32D1 U55 ( .A(n92), .B(n96), .CI(n55), .CO(n54), .S(product[28]) );
  CMPE32D1 U56 ( .A(n97), .B(n101), .CI(n56), .CO(n55), .S(product[27]) );
  CMPE32D1 U57 ( .A(n102), .B(n108), .CI(n57), .CO(n56), .S(product[26]) );
  CMPE32D1 U58 ( .A(n109), .B(n114), .CI(n58), .CO(n57), .S(product[25]) );
  CMPE32D1 U59 ( .A(n115), .B(n122), .CI(n59), .CO(n58), .S(product[24]) );
  CMPE32D1 U60 ( .A(n123), .B(n130), .CI(n60), .CO(n59), .S(product[23]) );
  CMPE32D1 U61 ( .A(n131), .B(n140), .CI(n61), .CO(n60), .S(product[22]) );
  CMPE32D1 U62 ( .A(n141), .B(n149), .CI(n62), .CO(n61), .S(product[21]) );
  CMPE32D1 U63 ( .A(n150), .B(n160), .CI(n63), .CO(n62), .S(product[20]) );
  CMPE32D1 U64 ( .A(n161), .B(n171), .CI(n64), .CO(n63), .S(product[19]) );
  CMPE32D1 U65 ( .A(n172), .B(n184), .CI(n65), .CO(n64), .S(product[18]) );
  CMPE32D1 U66 ( .A(n185), .B(n196), .CI(n66), .CO(n65), .S(product[17]) );
  CMPE32D1 U67 ( .A(n197), .B(n207), .CI(n67), .CO(n66), .S(product[16]) );
  CMPE32D1 U68 ( .A(n218), .B(n208), .CI(n68), .CO(n67), .S(product[15]) );
  CMPE32D1 U69 ( .A(n227), .B(n219), .CI(n69), .CO(n68), .S(product[14]) );
  CMPE32D1 U70 ( .A(n228), .B(n237), .CI(n70), .CO(n69), .S(product[13]) );
  CMPE32D1 U71 ( .A(n245), .B(n238), .CI(n71), .CO(n70), .S(product[12]) );
  CMPE32D1 U72 ( .A(n253), .B(n246), .CI(n72), .CO(n71), .S(product[11]) );
  CMPE32D1 U73 ( .A(n259), .B(n254), .CI(n73), .CO(n72), .S(product[10]) );
  CMPE32D1 U74 ( .A(n266), .B(n260), .CI(n74), .CO(n73), .S(product[9]) );
  CMPE32D1 U75 ( .A(n271), .B(n267), .CI(n75), .CO(n74), .S(product[8]) );
  CMPE32D1 U76 ( .A(n276), .B(n272), .CI(n76), .CO(n75), .S(product[7]) );
  CMPE32D1 U77 ( .A(n278), .B(n277), .CI(n77), .CO(n76), .S(product[6]) );
  CMPE32D1 U78 ( .A(n282), .B(n279), .CI(n78), .CO(n77), .S(product[5]) );
  CMPE32D1 U79 ( .A(n284), .B(n283), .CI(n79), .CO(n78), .S(product[4]) );
  CMPE32D1 U80 ( .A(n292), .B(n285), .CI(n80), .CO(n79), .S(product[3]) );
  CMPE32D1 U81 ( .A(n428), .B(n444), .CI(n81), .CO(n80), .S(product[2]) );
  CMPE32D1 U84 ( .A(n86), .B(n304), .CI(n87), .CO(n83), .S(n84) );
  CMPE42D1 U86 ( .A(n93), .B(n295), .C(n321), .CIX(n90), .D(n305), .CO(n88), 
        .COX(n87), .S(n89) );
  CMPE42D1 U87 ( .A(n948), .B(n322), .C(n306), .CIX(n95), .D(n98), .CO(n91), 
        .COX(n90), .S(n92) );
  CMPE42D1 U89 ( .A(n323), .B(n307), .C(n99), .CIX(n100), .D(n103), .CO(n96), 
        .COX(n95), .S(n97) );
  CMPE32D1 U90 ( .A(n105), .B(n296), .CI(n339), .CO(n98), .S(n99) );
  CMPE42D1 U91 ( .A(n308), .B(n110), .C(n104), .CIX(n107), .D(n111), .CO(n101), 
        .COX(n100), .S(n102) );
  CMPE32D1 U92 ( .A(n951), .B(n324), .CI(n340), .CO(n103), .S(n104) );
  CMPE42D1 U94 ( .A(n341), .B(n116), .C(n112), .CIX(n113), .D(n117), .CO(n108), 
        .COX(n107), .S(n109) );
  CMPE42D1 U95 ( .A(n119), .B(n297), .C(n357), .CIX(n309), .D(n325), .CO(n111), 
        .COX(n110), .S(n112) );
  CMPE42D1 U96 ( .A(n310), .B(n124), .C(n118), .CIX(n121), .D(n125), .CO(n114), 
        .COX(n113), .S(n115) );
  CMPE42D1 U97 ( .A(n949), .B(n358), .C(n342), .CIX(n127), .D(n326), .CO(n117), 
        .COX(n116), .S(n118) );
  CMPE42D1 U99 ( .A(n311), .B(n135), .C(n126), .CIX(n129), .D(n133), .CO(n122), 
        .COX(n121), .S(n123) );
  CMPE42D1 U100 ( .A(n327), .B(n359), .C(n343), .CIX(n132), .D(n128), .CO(n125), .COX(n124), .S(n126) );
  CMPE32D1 U101 ( .A(n137), .B(n298), .CI(n375), .CO(n127), .S(n128) );
  CMPE42D1 U102 ( .A(n136), .B(n146), .C(n134), .CIX(n139), .D(n143), .CO(n130), .COX(n129), .S(n131) );
  CMPE42D1 U103 ( .A(n312), .B(n360), .C(n344), .CIX(n142), .D(n145), .CO(n133), .COX(n132), .S(n134) );
  CMPE32D1 U104 ( .A(n952), .B(n376), .CI(n328), .CO(n135), .S(n136) );
  CMPE42D1 U106 ( .A(n147), .B(n155), .C(n152), .CIX(n148), .D(n144), .CO(n140), .COX(n139), .S(n141) );
  CMPE42D1 U107 ( .A(n361), .B(n329), .C(n345), .CIX(n151), .D(n154), .CO(n143), .COX(n142), .S(n144) );
  CMPE42D1 U108 ( .A(n157), .B(n299), .C(n393), .CIX(n313), .D(n377), .CO(n146), .COX(n145), .S(n147) );
  CMPE42D1 U109 ( .A(n156), .B(n166), .C(n163), .CIX(n159), .D(n153), .CO(n149), .COX(n148), .S(n150) );
  CMPE42D1 U110 ( .A(n362), .B(n330), .C(n346), .CIX(n165), .D(n162), .CO(n152), .COX(n151), .S(n153) );
  CMPE42D1 U111 ( .A(n950), .B(n394), .C(n378), .CIX(n168), .D(n314), .CO(n155), .COX(n154), .S(n156) );
  CMPE42D1 U113 ( .A(n164), .B(n167), .C(n174), .CIX(n170), .D(n177), .CO(n160), .COX(n159), .S(n161) );
  CMPE42D1 U114 ( .A(n315), .B(n347), .C(n363), .CIX(n173), .D(n179), .CO(n163), .COX(n162), .S(n164) );
  CMPE42D1 U115 ( .A(n331), .B(n395), .C(n379), .CIX(n176), .D(n169), .CO(n166), .COX(n165), .S(n167) );
  CMPE32D1 U116 ( .A(n181), .B(n300), .CI(n411), .CO(n168), .S(n169) );
  CMPE42D1 U117 ( .A(n178), .B(n190), .C(n175), .CIX(n183), .D(n187), .CO(n171), .COX(n170), .S(n172) );
  CMPE42D1 U118 ( .A(n364), .B(n316), .C(n332), .CIX(n186), .D(n180), .CO(n174), .COX(n173), .S(n175) );
  CMPE42D1 U119 ( .A(n348), .B(n396), .C(n380), .CIX(n189), .D(n192), .CO(n177), .COX(n176), .S(n178) );
  CMPE32D1 U120 ( .A(n301), .B(n953), .CI(n412), .CO(n179), .S(n180) );
  CMPE42D1 U122 ( .A(n191), .B(n199), .C(n202), .CIX(n195), .D(n188), .CO(n184), .COX(n183), .S(n185) );
  CMPE42D1 U123 ( .A(n349), .B(n317), .C(n204), .CIX(n198), .D(n193), .CO(n187), .COX(n186), .S(n188) );
  CMPE42D1 U124 ( .A(n333), .B(n397), .C(n381), .CIX(n201), .D(n365), .CO(n190), .COX(n189), .S(n191) );
  CMPE32D1 U125 ( .A(n953), .B(n960), .CI(n413), .CO(n192), .S(n193) );
  CMPE42D1 U127 ( .A(n203), .B(n210), .C(n213), .CIX(n206), .D(n200), .CO(n196), .COX(n195), .S(n197) );
  CMPE42D1 U128 ( .A(n382), .B(n318), .C(n366), .CIX(n209), .D(n205), .CO(n199), .COX(n198), .S(n200) );
  CMPE42D1 U129 ( .A(n350), .B(n414), .C(n398), .CIX(n212), .D(n215), .CO(n202), .COX(n201), .S(n203) );
  CMPE32D1 U130 ( .A(n302), .B(n334), .CI(n430), .CO(n204), .S(n205) );
  CMPE42D1 U131 ( .A(n224), .B(n214), .C(n211), .CIX(n217), .D(n221), .CO(n207), .COX(n206), .S(n208) );
  CMPE42D1 U132 ( .A(n351), .B(n399), .C(n335), .CIX(n223), .D(n367), .CO(n210), .COX(n209), .S(n211) );
  CMPE42D1 U133 ( .A(n383), .B(n431), .C(n415), .CIX(n220), .D(n216), .CO(n213), .COX(n212), .S(n214) );
  CMPE42D1 U135 ( .A(n232), .B(n225), .C(n222), .CIX(n226), .D(n230), .CO(n218), .COX(n217), .S(n219) );
  CMPE42D1 U136 ( .A(n416), .B(n368), .C(n400), .CIX(n229), .D(n384), .CO(n221), .COX(n220), .S(n222) );
  CMPE42D1 U137 ( .A(n320), .B(n352), .C(n432), .CIX(n234), .D(n336), .CO(n224), .COX(n223), .S(n225) );
  CMPE42D1 U138 ( .A(n242), .B(n233), .C(n231), .CIX(n236), .D(n240), .CO(n227), .COX(n226), .S(n228) );
  CMPE42D1 U139 ( .A(n417), .B(n369), .C(n401), .CIX(n239), .D(n235), .CO(n230), .COX(n229), .S(n231) );
  CMPE32D1 U140 ( .A(n385), .B(n433), .CI(n353), .CO(n232), .S(n233) );
  CMPE42D1 U142 ( .A(n354), .B(n243), .C(n241), .CIX(n244), .D(n248), .CO(n237), .COX(n236), .S(n238) );
  CMPE42D1 U143 ( .A(n386), .B(n418), .C(n402), .CIX(n247), .D(n250), .CO(n240), .COX(n239), .S(n241) );
  CMPE32D1 U144 ( .A(n338), .B(n370), .CI(n434), .CO(n242), .S(n243) );
  CMPE42D1 U145 ( .A(n387), .B(n371), .C(n252), .CIX(n249), .D(n256), .CO(n245), .COX(n244), .S(n246) );
  CMPE42D1 U146 ( .A(n403), .B(n435), .C(n419), .CIX(n255), .D(n251), .CO(n248), .COX(n247), .S(n249) );
  CMPE42D1 U148 ( .A(n420), .B(n404), .C(n261), .CIX(n257), .D(n258), .CO(n253), .COX(n252), .S(n254) );
  CMPE42D1 U149 ( .A(n356), .B(n388), .C(n436), .CIX(n263), .D(n372), .CO(n256), .COX(n255), .S(n257) );
  CMPE42D1 U150 ( .A(n437), .B(n264), .C(n268), .CIX(n265), .D(n262), .CO(n259), .COX(n258), .S(n260) );
  CMPE32D1 U151 ( .A(n405), .B(n389), .CI(n421), .CO(n261), .S(n262) );
  CMPE42D1 U153 ( .A(n422), .B(n390), .C(n273), .CIX(n270), .D(n269), .CO(n266), .COX(n265), .S(n267) );
  CMPE32D1 U154 ( .A(n374), .B(n406), .CI(n438), .CO(n268), .S(n269) );
  CMPE42D1 U155 ( .A(n439), .B(n407), .C(n423), .CIX(n275), .D(n274), .CO(n271), .COX(n270), .S(n272) );
  CMPE42D1 U157 ( .A(n392), .B(n440), .C(n424), .CIX(n280), .D(n408), .CO(n276), .COX(n275), .S(n277) );
  CMPE32D1 U158 ( .A(n441), .B(n425), .CI(n281), .CO(n278), .S(n279) );
  CMPE32D1 U160 ( .A(n410), .B(n442), .CI(n426), .CO(n282), .S(n283) );
  AO21D1 U650 ( .A1(n769), .A2(n942), .B(n959), .Z(n411) );
  AO21D1 U684 ( .A1(n787), .A2(n941), .B(n958), .Z(n393) );
  AO21D1 U718 ( .A1(n805), .A2(n940), .B(n957), .Z(n375) );
  AO21D1 U752 ( .A1(n823), .A2(n939), .B(n956), .Z(n357) );
  AO21D1 U786 ( .A1(n841), .A2(n938), .B(n955), .Z(n339) );
  AO21D1 U820 ( .A1(n859), .A2(n937), .B(n954), .Z(n321) );
  XNR2D1 U532 ( .A1(a[11]), .A2(a[12]), .ZN(n937) );
  XNR2D1 U533 ( .A1(a[9]), .A2(a[10]), .ZN(n938) );
  XNR2D1 U534 ( .A1(a[7]), .A2(a[8]), .ZN(n939) );
  XNR2D1 U535 ( .A1(a[5]), .A2(a[6]), .ZN(n940) );
  XNR2D1 U536 ( .A1(a[3]), .A2(a[4]), .ZN(n941) );
  XNR2D1 U537 ( .A1(a[1]), .A2(a[2]), .ZN(n942) );
  ND2D1 U538 ( .A1(a[1]), .A2(n961), .ZN(n943) );
  BUFFD0 U539 ( .I(b[0]), .Z(n944) );
  BUFFD1 U540 ( .I(n904), .Z(n945) );
  INVD1 U541 ( .I(n181), .ZN(n953) );
  NR2D1 U542 ( .A1(n976), .A2(n946), .ZN(n181) );
  XNR2D1 U543 ( .A1(n946), .A2(n977), .ZN(n877) );
  XNR2D1 U544 ( .A1(n946), .A2(n976), .ZN(n876) );
  OAI22D0 U545 ( .A1(n791), .A2(n787), .B1(n941), .B2(n792), .ZN(n405) );
  OAI22D0 U546 ( .A1(n775), .A2(n769), .B1(n942), .B2(n776), .ZN(n421) );
  OAI22D0 U547 ( .A1(n807), .A2(n805), .B1(n940), .B2(n808), .ZN(n389) );
  NR2D1 U548 ( .A1(n942), .A2(n975), .ZN(n428) );
  OAI22D0 U549 ( .A1(n752), .A2(n943), .B1(n753), .B2(n961), .ZN(n444) );
  OAI22D0 U550 ( .A1(n830), .A2(n823), .B1(n939), .B2(n831), .ZN(n366) );
  OAI22D0 U551 ( .A1(n814), .A2(n805), .B1(n940), .B2(n815), .ZN(n382) );
  OAI22D0 U552 ( .A1(n876), .A2(n749), .B1(n945), .B2(n877), .ZN(n318) );
  OAI22D0 U553 ( .A1(n847), .A2(n841), .B1(n938), .B2(n848), .ZN(n349) );
  OAI22D0 U554 ( .A1(n877), .A2(n749), .B1(n945), .B2(n878), .ZN(n317) );
  OAI22D0 U555 ( .A1(n788), .A2(n787), .B1(n941), .B2(n789), .ZN(n408) );
  OAI22D0 U556 ( .A1(n824), .A2(n823), .B1(n939), .B2(n825), .ZN(n372) );
  OAI22D0 U557 ( .A1(n860), .A2(n859), .B1(n937), .B2(n861), .ZN(n336) );
  OAI22D0 U558 ( .A1(n861), .A2(n859), .B1(n937), .B2(n862), .ZN(n335) );
  OAI22D0 U559 ( .A1(n797), .A2(n787), .B1(n941), .B2(n798), .ZN(n399) );
  OAI22D0 U560 ( .A1(n829), .A2(n823), .B1(n939), .B2(n830), .ZN(n367) );
  OAI22D0 U561 ( .A1(n845), .A2(n841), .B1(n938), .B2(n846), .ZN(n351) );
  NR2D1 U562 ( .A1(n961), .A2(n975), .ZN(product[0]) );
  INVD1 U563 ( .I(b[2]), .ZN(n977) );
  OAI22D0 U564 ( .A1(n774), .A2(n769), .B1(n942), .B2(n775), .ZN(n422) );
  OAI22D0 U565 ( .A1(n806), .A2(n805), .B1(n940), .B2(n807), .ZN(n390) );
  OAI22D0 U566 ( .A1(n759), .A2(n943), .B1(n760), .B2(n961), .ZN(n437) );
  OAI22D0 U567 ( .A1(n792), .A2(n787), .B1(n941), .B2(n793), .ZN(n404) );
  OAI22D0 U568 ( .A1(n776), .A2(n769), .B1(n942), .B2(n777), .ZN(n420) );
  OAI22D0 U569 ( .A1(n809), .A2(n805), .B1(n940), .B2(n810), .ZN(n387) );
  OAI22D0 U570 ( .A1(n825), .A2(n823), .B1(n939), .B2(n826), .ZN(n371) );
  OAI22D0 U571 ( .A1(n842), .A2(n841), .B1(n938), .B2(n843), .ZN(n354) );
  OAI22D0 U572 ( .A1(n756), .A2(n943), .B1(n757), .B2(n961), .ZN(n440) );
  OAI22D0 U573 ( .A1(n772), .A2(n769), .B1(n942), .B2(n773), .ZN(n424) );
  NR2D1 U574 ( .A1(n940), .A2(n975), .ZN(n392) );
  OAI22D0 U575 ( .A1(n773), .A2(n769), .B1(n942), .B2(n774), .ZN(n423) );
  OAI22D0 U576 ( .A1(n757), .A2(n943), .B1(n758), .B2(n961), .ZN(n439) );
  OAI22D0 U577 ( .A1(n789), .A2(n787), .B1(n941), .B2(n790), .ZN(n407) );
  OAI22D0 U578 ( .A1(n798), .A2(n787), .B1(n941), .B2(n799), .ZN(n398) );
  OAI22D0 U579 ( .A1(n782), .A2(n769), .B1(n942), .B2(n783), .ZN(n414) );
  OAI22D0 U580 ( .A1(n846), .A2(n841), .B1(n938), .B2(n847), .ZN(n350) );
  OAI22D0 U581 ( .A1(n816), .A2(n805), .B1(n940), .B2(n817), .ZN(n380) );
  OAI22D0 U582 ( .A1(n800), .A2(n787), .B1(n941), .B2(n801), .ZN(n396) );
  OAI22D0 U583 ( .A1(n848), .A2(n841), .B1(n938), .B2(n849), .ZN(n348) );
  OAI22D0 U584 ( .A1(n833), .A2(n823), .B1(n939), .B2(n834), .ZN(n363) );
  OAI22D0 U585 ( .A1(n849), .A2(n841), .B1(n938), .B2(n850), .ZN(n347) );
  OAI22D0 U586 ( .A1(n879), .A2(n749), .B1(n945), .B2(n880), .ZN(n315) );
  INVD1 U587 ( .I(n157), .ZN(n950) );
  OAI22D0 U588 ( .A1(n818), .A2(n805), .B1(n940), .B2(n819), .ZN(n378) );
  OAI22D0 U589 ( .A1(n880), .A2(n749), .B1(n945), .B2(n881), .ZN(n314) );
  OAI22D0 U590 ( .A1(n764), .A2(n943), .B1(n765), .B2(n961), .ZN(n432) );
  OAI22D0 U591 ( .A1(n844), .A2(n841), .B1(n938), .B2(n845), .ZN(n352) );
  NR2D1 U592 ( .A1(n945), .A2(n975), .ZN(n320) );
  OAI22D0 U593 ( .A1(n781), .A2(n769), .B1(n942), .B2(n782), .ZN(n415) );
  OAI22D0 U594 ( .A1(n765), .A2(n943), .B1(n766), .B2(n961), .ZN(n431) );
  OAI22D0 U595 ( .A1(n813), .A2(n805), .B1(n940), .B2(n814), .ZN(n383) );
  OAI22D0 U596 ( .A1(n817), .A2(n805), .B1(n940), .B2(n818), .ZN(n379) );
  OAI22D0 U597 ( .A1(n801), .A2(n787), .B1(n941), .B2(n802), .ZN(n395) );
  OAI22D0 U598 ( .A1(n865), .A2(n859), .B1(n937), .B2(n866), .ZN(n331) );
  XNR2D1 U599 ( .A1(n959), .A2(n977), .ZN(n771) );
  XNR2D1 U600 ( .A1(n959), .A2(n976), .ZN(n770) );
  XNR2D1 U601 ( .A1(n958), .A2(n976), .ZN(n788) );
  XNR2D1 U602 ( .A1(n957), .A2(n976), .ZN(n806) );
  XNR2D1 U603 ( .A1(n959), .A2(n974), .ZN(n772) );
  XNR2D1 U604 ( .A1(n958), .A2(n977), .ZN(n789) );
  XNR2D1 U605 ( .A1(n958), .A2(n974), .ZN(n790) );
  XNR2D1 U606 ( .A1(n957), .A2(n977), .ZN(n807) );
  XNR2D1 U607 ( .A1(n956), .A2(n976), .ZN(n824) );
  XNR2D1 U608 ( .A1(n956), .A2(n977), .ZN(n825) );
  XNR2D1 U609 ( .A1(n957), .A2(n974), .ZN(n808) );
  XNR2D1 U610 ( .A1(n955), .A2(n976), .ZN(n842) );
  XNR2D1 U611 ( .A1(n956), .A2(n974), .ZN(n826) );
  XNR2D1 U612 ( .A1(n955), .A2(n977), .ZN(n843) );
  XNR2D1 U613 ( .A1(n954), .A2(n976), .ZN(n860) );
  XNR2D1 U614 ( .A1(n954), .A2(n977), .ZN(n861) );
  XNR2D1 U615 ( .A1(n955), .A2(n974), .ZN(n844) );
  XNR2D1 U616 ( .A1(n954), .A2(n974), .ZN(n862) );
  XNR2D1 U617 ( .A1(n946), .A2(n974), .ZN(n878) );
  XNR2D1 U618 ( .A1(n960), .A2(n977), .ZN(n753) );
  XNR2D1 U619 ( .A1(n960), .A2(n976), .ZN(n752) );
  XNR2D1 U620 ( .A1(n960), .A2(n974), .ZN(n754) );
  INVD1 U621 ( .I(b[1]), .ZN(n976) );
  OAI22D0 U622 ( .A1(n755), .A2(n943), .B1(n756), .B2(n961), .ZN(n441) );
  OAI22D0 U623 ( .A1(n771), .A2(n769), .B1(n942), .B2(n772), .ZN(n425) );
  OAI22D0 U624 ( .A1(n754), .A2(n943), .B1(n755), .B2(n961), .ZN(n442) );
  NR2D1 U625 ( .A1(n941), .A2(n975), .ZN(n410) );
  OAI22D0 U626 ( .A1(n770), .A2(n769), .B1(n942), .B2(n771), .ZN(n426) );
  OAI22D0 U627 ( .A1(n811), .A2(n805), .B1(n940), .B2(n812), .ZN(n385) );
  OAI22D0 U628 ( .A1(n763), .A2(n943), .B1(n764), .B2(n961), .ZN(n433) );
  OAI22D0 U629 ( .A1(n843), .A2(n841), .B1(n938), .B2(n844), .ZN(n353) );
  NR2D1 U630 ( .A1(n947), .A2(n974), .ZN(n300) );
  OAI32D1 U631 ( .A1(n959), .A2(n944), .A3(n942), .B1(n959), .B2(n769), .ZN(
        n292) );
  OAI22D0 U632 ( .A1(n766), .A2(n943), .B1(n960), .B2(n961), .ZN(n430) );
  OAI22D0 U633 ( .A1(n862), .A2(n859), .B1(n937), .B2(n863), .ZN(n334) );
  NR2D1 U634 ( .A1(n947), .A2(n975), .ZN(n302) );
  OAI22D0 U635 ( .A1(n758), .A2(n943), .B1(n759), .B2(n961), .ZN(n438) );
  OAI22D0 U636 ( .A1(n790), .A2(n787), .B1(n941), .B2(n791), .ZN(n406) );
  NR2D1 U637 ( .A1(n939), .A2(n975), .ZN(n374) );
  OAI22D0 U638 ( .A1(n762), .A2(n943), .B1(n763), .B2(n961), .ZN(n434) );
  OAI22D0 U639 ( .A1(n826), .A2(n823), .B1(n939), .B2(n827), .ZN(n370) );
  NR2D1 U640 ( .A1(n937), .A2(n975), .ZN(n338) );
  OAI22D0 U641 ( .A1(n784), .A2(n769), .B1(n942), .B2(n959), .ZN(n412) );
  NR2D1 U642 ( .A1(n947), .A2(n977), .ZN(n301) );
  OAI22D0 U643 ( .A1(n760), .A2(n943), .B1(n761), .B2(n961), .ZN(n436) );
  OAI22D0 U644 ( .A1(n808), .A2(n805), .B1(n940), .B2(n809), .ZN(n388) );
  NR2D1 U645 ( .A1(n938), .A2(n975), .ZN(n356) );
  OAI22D0 U646 ( .A1(n777), .A2(n769), .B1(n942), .B2(n778), .ZN(n419) );
  OAI22D0 U647 ( .A1(n761), .A2(n943), .B1(n762), .B2(n961), .ZN(n435) );
  OAI22D0 U648 ( .A1(n793), .A2(n787), .B1(n941), .B2(n794), .ZN(n403) );
  OAI22D0 U649 ( .A1(n794), .A2(n787), .B1(n941), .B2(n795), .ZN(n402) );
  OAI22D0 U651 ( .A1(n778), .A2(n769), .B1(n942), .B2(n779), .ZN(n418) );
  OAI22D0 U652 ( .A1(n810), .A2(n805), .B1(n940), .B2(n811), .ZN(n386) );
  OAI22D0 U653 ( .A1(n795), .A2(n787), .B1(n941), .B2(n796), .ZN(n401) );
  OAI22D0 U654 ( .A1(n827), .A2(n823), .B1(n939), .B2(n828), .ZN(n369) );
  OAI22D0 U655 ( .A1(n779), .A2(n769), .B1(n942), .B2(n780), .ZN(n417) );
  OAI22D0 U656 ( .A1(n864), .A2(n859), .B1(n937), .B2(n865), .ZN(n332) );
  OAI22D0 U657 ( .A1(n832), .A2(n823), .B1(n939), .B2(n833), .ZN(n364) );
  OAI22D0 U658 ( .A1(n878), .A2(n749), .B1(n945), .B2(n879), .ZN(n316) );
  OAI22D0 U659 ( .A1(n783), .A2(n769), .B1(n942), .B2(n784), .ZN(n413) );
  CMPE22D1 U660 ( .A(n409), .B(n291), .CO(n280), .S(n281) );
  OAI32D1 U661 ( .A1(n958), .A2(n944), .A3(n941), .B1(n958), .B2(n787), .ZN(
        n291) );
  OAI22D0 U662 ( .A1(n786), .A2(n787), .B1(n941), .B2(n788), .ZN(n409) );
  XNR2D1 U663 ( .A1(n975), .A2(n958), .ZN(n786) );
  CMPE22D1 U664 ( .A(n391), .B(n290), .CO(n273), .S(n274) );
  OAI32D1 U665 ( .A1(n957), .A2(n944), .A3(n940), .B1(n957), .B2(n805), .ZN(
        n290) );
  OAI22D0 U666 ( .A1(n804), .A2(n805), .B1(n940), .B2(n806), .ZN(n391) );
  XNR2D1 U667 ( .A1(n975), .A2(n957), .ZN(n804) );
  CMPE22D1 U668 ( .A(n373), .B(n289), .CO(n263), .S(n264) );
  OAI32D1 U669 ( .A1(n956), .A2(n944), .A3(n939), .B1(n956), .B2(n823), .ZN(
        n289) );
  OAI22D0 U670 ( .A1(n822), .A2(n823), .B1(n939), .B2(n824), .ZN(n373) );
  XNR2D1 U671 ( .A1(n975), .A2(n956), .ZN(n822) );
  CMPE22D1 U672 ( .A(n337), .B(n287), .CO(n234), .S(n235) );
  OAI32D1 U673 ( .A1(n954), .A2(n944), .A3(n937), .B1(n954), .B2(n859), .ZN(
        n287) );
  OAI22D0 U674 ( .A1(n858), .A2(n859), .B1(n937), .B2(n860), .ZN(n337) );
  XNR2D1 U675 ( .A1(n975), .A2(n954), .ZN(n858) );
  CMPE22D1 U676 ( .A(n319), .B(n286), .CO(n215), .S(n216) );
  OAI32D1 U677 ( .A1(n946), .A2(n944), .A3(n945), .B1(n947), .B2(n749), .ZN(
        n286) );
  OAI22D0 U678 ( .A1(n875), .A2(n749), .B1(n945), .B2(n876), .ZN(n319) );
  XNR2D1 U679 ( .A1(n947), .A2(n975), .ZN(n875) );
  CMPE22D1 U680 ( .A(n443), .B(n427), .CO(n284), .S(n285) );
  OAI22D0 U681 ( .A1(n768), .A2(n769), .B1(n942), .B2(n770), .ZN(n427) );
  OAI22D0 U682 ( .A1(n753), .A2(n943), .B1(n754), .B2(n961), .ZN(n443) );
  XNR2D1 U683 ( .A1(n975), .A2(n959), .ZN(n768) );
  XNR3D1 U685 ( .A1(n83), .A2(n52), .A3(n86), .ZN(n747) );
  CMPE22D1 U686 ( .A(n355), .B(n288), .CO(n250), .S(n251) );
  OAI32D1 U687 ( .A1(n955), .A2(n944), .A3(n938), .B1(n955), .B2(n841), .ZN(
        n288) );
  OAI22D0 U688 ( .A1(n840), .A2(n841), .B1(n938), .B2(n842), .ZN(n355) );
  XNR2D1 U689 ( .A1(n975), .A2(n955), .ZN(n840) );
  CMPE22D1 U690 ( .A(n293), .B(n445), .CO(n81), .S(product[1]) );
  OAI21D0 U691 ( .A1(n944), .A2(n960), .B(n943), .ZN(n293) );
  OAI22D0 U692 ( .A1(n944), .A2(n943), .B1(n752), .B2(n961), .ZN(n445) );
  INVD1 U693 ( .I(n944), .ZN(n975) );
  OAI22D0 U694 ( .A1(n780), .A2(n769), .B1(n942), .B2(n781), .ZN(n416) );
  OAI22D0 U695 ( .A1(n863), .A2(n859), .B1(n937), .B2(n864), .ZN(n333) );
  OAI22D0 U696 ( .A1(n802), .A2(n787), .B1(n941), .B2(n958), .ZN(n394) );
  OAI22D0 U697 ( .A1(n838), .A2(n823), .B1(n939), .B2(n956), .ZN(n358) );
  OAI22D0 U698 ( .A1(n819), .A2(n805), .B1(n940), .B2(n820), .ZN(n377) );
  OAI22D0 U699 ( .A1(n871), .A2(n859), .B1(n937), .B2(n872), .ZN(n325) );
  OAI22D0 U700 ( .A1(n884), .A2(n749), .B1(n945), .B2(n885), .ZN(n310) );
  OAI22D0 U701 ( .A1(n855), .A2(n841), .B1(n938), .B2(n856), .ZN(n341) );
  OAI22D0 U702 ( .A1(n886), .A2(n749), .B1(n945), .B2(n887), .ZN(n308) );
  OAI22D0 U703 ( .A1(n853), .A2(n841), .B1(n938), .B2(n854), .ZN(n343) );
  OAI22D0 U704 ( .A1(n837), .A2(n823), .B1(n939), .B2(n838), .ZN(n359) );
  OAI22D0 U705 ( .A1(n869), .A2(n859), .B1(n937), .B2(n870), .ZN(n327) );
  OAI22D0 U706 ( .A1(n887), .A2(n749), .B1(n945), .B2(n888), .ZN(n307) );
  OAI22D0 U707 ( .A1(n873), .A2(n859), .B1(n937), .B2(n874), .ZN(n323) );
  OAI22D0 U708 ( .A1(n883), .A2(n749), .B1(n945), .B2(n884), .ZN(n311) );
  OAI22D0 U709 ( .A1(n851), .A2(n841), .B1(n938), .B2(n852), .ZN(n345) );
  OAI22D0 U710 ( .A1(n867), .A2(n859), .B1(n937), .B2(n868), .ZN(n329) );
  OAI22D0 U711 ( .A1(n835), .A2(n823), .B1(n939), .B2(n836), .ZN(n361) );
  NR2D1 U712 ( .A1(n947), .A2(n971), .ZN(n295) );
  OAI22D0 U713 ( .A1(n889), .A2(n749), .B1(n945), .B2(n890), .ZN(n305) );
  OAI22D0 U714 ( .A1(n796), .A2(n787), .B1(n941), .B2(n797), .ZN(n400) );
  OAI22D0 U715 ( .A1(n828), .A2(n823), .B1(n939), .B2(n829), .ZN(n368) );
  OAI22D0 U716 ( .A1(n812), .A2(n805), .B1(n940), .B2(n813), .ZN(n384) );
  OAI22D0 U717 ( .A1(n815), .A2(n805), .B1(n940), .B2(n816), .ZN(n381) );
  OAI22D0 U719 ( .A1(n799), .A2(n787), .B1(n941), .B2(n800), .ZN(n397) );
  OAI22D0 U720 ( .A1(n831), .A2(n823), .B1(n939), .B2(n832), .ZN(n365) );
  NR2D1 U721 ( .A1(n947), .A2(n963), .ZN(n299) );
  OAI22D0 U722 ( .A1(n881), .A2(n749), .B1(n945), .B2(n882), .ZN(n313) );
  INVD1 U723 ( .I(n119), .ZN(n949) );
  OAI22D0 U724 ( .A1(n854), .A2(n841), .B1(n938), .B2(n855), .ZN(n342) );
  OAI22D0 U725 ( .A1(n870), .A2(n859), .B1(n937), .B2(n871), .ZN(n326) );
  NR2D1 U726 ( .A1(n946), .A2(n967), .ZN(n297) );
  OAI22D0 U727 ( .A1(n885), .A2(n749), .B1(n945), .B2(n886), .ZN(n309) );
  OAI22D0 U728 ( .A1(n850), .A2(n841), .B1(n938), .B2(n851), .ZN(n346) );
  OAI22D0 U729 ( .A1(n866), .A2(n859), .B1(n937), .B2(n867), .ZN(n330) );
  OAI22D0 U730 ( .A1(n834), .A2(n823), .B1(n939), .B2(n835), .ZN(n362) );
  AOI21D0 U731 ( .A1(n749), .A2(n945), .B(n946), .ZN(n748) );
  NR2D1 U732 ( .A1(n964), .A2(n946), .ZN(n137) );
  NR2D1 U733 ( .A1(n968), .A2(n946), .ZN(n105) );
  NR2D1 U734 ( .A1(n962), .A2(n946), .ZN(n157) );
  NR2D1 U735 ( .A1(n966), .A2(n946), .ZN(n119) );
  NR2D1 U736 ( .A1(n970), .A2(n946), .ZN(n93) );
  OAI22D0 U737 ( .A1(n890), .A2(n749), .B1(n945), .B2(n946), .ZN(n304) );
  INVD1 U738 ( .I(n93), .ZN(n948) );
  OAI22D0 U739 ( .A1(n888), .A2(n749), .B1(n945), .B2(n889), .ZN(n306) );
  OAI22D0 U740 ( .A1(n874), .A2(n859), .B1(n937), .B2(n954), .ZN(n322) );
  XNR2D1 U741 ( .A1(n959), .A2(n963), .ZN(n774) );
  XNR2D1 U742 ( .A1(n959), .A2(n962), .ZN(n773) );
  XNR2D1 U743 ( .A1(n959), .A2(n965), .ZN(n776) );
  XNR2D1 U744 ( .A1(n958), .A2(n963), .ZN(n792) );
  XNR2D1 U745 ( .A1(n958), .A2(n962), .ZN(n791) );
  XNR2D1 U746 ( .A1(n959), .A2(n964), .ZN(n775) );
  XNR2D1 U747 ( .A1(n957), .A2(n962), .ZN(n809) );
  XNR2D1 U748 ( .A1(n958), .A2(n964), .ZN(n793) );
  XNR2D1 U749 ( .A1(n959), .A2(n966), .ZN(n777) );
  XNR2D1 U750 ( .A1(n957), .A2(n963), .ZN(n810) );
  XNR2D1 U751 ( .A1(n959), .A2(n967), .ZN(n778) );
  XNR2D1 U753 ( .A1(n958), .A2(n965), .ZN(n794) );
  XNR2D1 U754 ( .A1(n957), .A2(n964), .ZN(n811) );
  XNR2D1 U755 ( .A1(n959), .A2(n968), .ZN(n779) );
  XNR2D1 U756 ( .A1(n956), .A2(n962), .ZN(n827) );
  XNR2D1 U757 ( .A1(n958), .A2(n966), .ZN(n795) );
  XNR2D1 U758 ( .A1(n959), .A2(n969), .ZN(n780) );
  XNR2D1 U759 ( .A1(n957), .A2(n965), .ZN(n812) );
  XNR2D1 U760 ( .A1(n956), .A2(n963), .ZN(n828) );
  XNR2D1 U761 ( .A1(n958), .A2(n967), .ZN(n796) );
  XNR2D1 U762 ( .A1(n955), .A2(n962), .ZN(n845) );
  XNR2D1 U763 ( .A1(n956), .A2(n964), .ZN(n829) );
  XNR2D1 U764 ( .A1(n958), .A2(n968), .ZN(n797) );
  XNR2D1 U765 ( .A1(n954), .A2(n962), .ZN(n863) );
  XNR2D1 U766 ( .A1(n957), .A2(n966), .ZN(n813) );
  XNR2D1 U767 ( .A1(n959), .A2(n970), .ZN(n781) );
  XNR2D1 U768 ( .A1(n957), .A2(n967), .ZN(n814) );
  XNR2D1 U769 ( .A1(n956), .A2(n965), .ZN(n830) );
  XNR2D1 U770 ( .A1(n955), .A2(n963), .ZN(n846) );
  XNR2D1 U771 ( .A1(n959), .A2(n971), .ZN(n782) );
  XNR2D1 U772 ( .A1(n958), .A2(n969), .ZN(n798) );
  XNR2D1 U773 ( .A1(n955), .A2(n964), .ZN(n847) );
  XNR2D1 U774 ( .A1(n959), .A2(n972), .ZN(n783) );
  XNR2D1 U775 ( .A1(n956), .A2(n966), .ZN(n831) );
  XNR2D1 U776 ( .A1(n958), .A2(n970), .ZN(n799) );
  XNR2D1 U777 ( .A1(n957), .A2(n968), .ZN(n815) );
  XNR2D1 U778 ( .A1(n959), .A2(n973), .ZN(n784) );
  XNR2D1 U779 ( .A1(n956), .A2(n967), .ZN(n832) );
  XNR2D1 U780 ( .A1(n954), .A2(n963), .ZN(n864) );
  XNR2D1 U781 ( .A1(n955), .A2(n965), .ZN(n848) );
  XNR2D1 U782 ( .A1(n958), .A2(n971), .ZN(n800) );
  XNR2D1 U783 ( .A1(n957), .A2(n969), .ZN(n816) );
  XNR2D1 U784 ( .A1(n955), .A2(n966), .ZN(n849) );
  XNR2D1 U785 ( .A1(n956), .A2(n968), .ZN(n833) );
  XNR2D1 U787 ( .A1(n954), .A2(n964), .ZN(n865) );
  XNR2D1 U788 ( .A1(n958), .A2(n972), .ZN(n801) );
  XNR2D1 U789 ( .A1(n957), .A2(n970), .ZN(n817) );
  XNR2D1 U790 ( .A1(n958), .A2(n973), .ZN(n802) );
  XNR2D1 U791 ( .A1(n957), .A2(n971), .ZN(n818) );
  XNR2D1 U792 ( .A1(n956), .A2(n969), .ZN(n834) );
  XNR2D1 U793 ( .A1(n954), .A2(n965), .ZN(n866) );
  XNR2D1 U794 ( .A1(n955), .A2(n967), .ZN(n850) );
  XNR2D1 U795 ( .A1(n957), .A2(n972), .ZN(n819) );
  XNR2D1 U796 ( .A1(n956), .A2(n970), .ZN(n835) );
  XNR2D1 U797 ( .A1(n954), .A2(n966), .ZN(n867) );
  XNR2D1 U798 ( .A1(n955), .A2(n968), .ZN(n851) );
  XNR2D1 U799 ( .A1(n957), .A2(n973), .ZN(n820) );
  XNR2D1 U800 ( .A1(n954), .A2(n967), .ZN(n868) );
  XNR2D1 U801 ( .A1(n956), .A2(n971), .ZN(n836) );
  XNR2D1 U802 ( .A1(n955), .A2(n969), .ZN(n852) );
  XNR2D1 U803 ( .A1(n954), .A2(n968), .ZN(n869) );
  XNR2D1 U804 ( .A1(n956), .A2(n972), .ZN(n837) );
  XNR2D1 U805 ( .A1(n955), .A2(n970), .ZN(n853) );
  XNR2D1 U806 ( .A1(n956), .A2(n973), .ZN(n838) );
  XNR2D1 U807 ( .A1(n954), .A2(n969), .ZN(n870) );
  XNR2D1 U808 ( .A1(n955), .A2(n972), .ZN(n855) );
  XNR2D1 U809 ( .A1(n955), .A2(n971), .ZN(n854) );
  XNR2D1 U810 ( .A1(n954), .A2(n970), .ZN(n871) );
  XNR2D1 U811 ( .A1(n954), .A2(n972), .ZN(n873) );
  XNR2D1 U812 ( .A1(n954), .A2(n971), .ZN(n872) );
  XNR2D1 U813 ( .A1(n955), .A2(n973), .ZN(n856) );
  XNR2D1 U814 ( .A1(n954), .A2(n973), .ZN(n874) );
  XNR2D1 U815 ( .A1(n946), .A2(n971), .ZN(n888) );
  XNR2D1 U816 ( .A1(n946), .A2(n972), .ZN(n889) );
  XNR2D1 U817 ( .A1(n946), .A2(n973), .ZN(n890) );
  XNR2D1 U818 ( .A1(n960), .A2(n962), .ZN(n755) );
  XNR2D1 U819 ( .A1(n960), .A2(n963), .ZN(n756) );
  XNR2D1 U821 ( .A1(n960), .A2(n964), .ZN(n757) );
  XNR2D1 U822 ( .A1(n960), .A2(n966), .ZN(n759) );
  XNR2D1 U823 ( .A1(n960), .A2(n965), .ZN(n758) );
  XNR2D1 U824 ( .A1(n960), .A2(n967), .ZN(n760) );
  XNR2D1 U825 ( .A1(n960), .A2(n968), .ZN(n761) );
  XNR2D1 U826 ( .A1(n960), .A2(n969), .ZN(n762) );
  XNR2D1 U827 ( .A1(n960), .A2(n970), .ZN(n763) );
  XNR2D1 U828 ( .A1(n960), .A2(n971), .ZN(n764) );
  XNR2D1 U829 ( .A1(n960), .A2(n973), .ZN(n766) );
  XNR2D1 U830 ( .A1(n960), .A2(n972), .ZN(n765) );
  XNR2D1 U831 ( .A1(n947), .A2(n962), .ZN(n879) );
  XNR2D1 U832 ( .A1(n947), .A2(n963), .ZN(n880) );
  XNR2D1 U833 ( .A1(n947), .A2(n964), .ZN(n881) );
  XNR2D1 U834 ( .A1(n947), .A2(n966), .ZN(n883) );
  XNR2D1 U835 ( .A1(n947), .A2(n965), .ZN(n882) );
  XNR2D1 U836 ( .A1(n947), .A2(n969), .ZN(n886) );
  XNR2D1 U837 ( .A1(n947), .A2(n968), .ZN(n885) );
  XNR2D1 U838 ( .A1(n947), .A2(n967), .ZN(n884) );
  XNR2D1 U839 ( .A1(n947), .A2(n970), .ZN(n887) );
  OAI22D0 U840 ( .A1(n852), .A2(n841), .B1(n938), .B2(n853), .ZN(n344) );
  OAI22D0 U841 ( .A1(n836), .A2(n823), .B1(n939), .B2(n837), .ZN(n360) );
  OAI22D0 U842 ( .A1(n882), .A2(n749), .B1(n945), .B2(n883), .ZN(n312) );
  NR2D1 U843 ( .A1(n946), .A2(n969), .ZN(n296) );
  INVD1 U844 ( .I(n137), .ZN(n952) );
  OAI22D0 U845 ( .A1(n868), .A2(n859), .B1(n937), .B2(n869), .ZN(n328) );
  OAI22D0 U846 ( .A1(n820), .A2(n805), .B1(n940), .B2(n957), .ZN(n376) );
  INVD1 U847 ( .I(n105), .ZN(n951) );
  OAI22D0 U848 ( .A1(n856), .A2(n841), .B1(n938), .B2(n955), .ZN(n340) );
  OAI22D0 U849 ( .A1(n872), .A2(n859), .B1(n937), .B2(n873), .ZN(n324) );
  NR2D1 U850 ( .A1(n946), .A2(n965), .ZN(n298) );
  INVD1 U851 ( .I(a[15]), .ZN(n947) );
  INVD1 U852 ( .I(a[15]), .ZN(n946) );
  INVD1 U853 ( .I(b[3]), .ZN(n974) );
  XNR3D1 U854 ( .A1(n746), .A2(n747), .A3(n748), .ZN(product[31]) );
  NR2D1 U855 ( .A1(n946), .A2(n973), .ZN(n746) );
  INVD1 U856 ( .I(a[3]), .ZN(n959) );
  INVD1 U857 ( .I(a[5]), .ZN(n958) );
  INVD1 U858 ( .I(a[7]), .ZN(n957) );
  INVD1 U859 ( .I(a[9]), .ZN(n956) );
  INVD1 U860 ( .I(a[11]), .ZN(n955) );
  INVD1 U861 ( .I(a[13]), .ZN(n954) );
  ND2D1 U862 ( .A1(n945), .A2(n897), .ZN(n749) );
  XNR2D1 U863 ( .A1(n947), .A2(a[14]), .ZN(n897) );
  ND2D1 U864 ( .A1(n942), .A2(n891), .ZN(n769) );
  XNR2D1 U865 ( .A1(n959), .A2(a[2]), .ZN(n891) );
  ND2D1 U866 ( .A1(n941), .A2(n892), .ZN(n787) );
  XNR2D1 U867 ( .A1(n958), .A2(a[4]), .ZN(n892) );
  ND2D1 U868 ( .A1(n940), .A2(n893), .ZN(n805) );
  XNR2D1 U869 ( .A1(n957), .A2(a[6]), .ZN(n893) );
  ND2D1 U870 ( .A1(n939), .A2(n894), .ZN(n823) );
  XNR2D1 U871 ( .A1(n956), .A2(a[8]), .ZN(n894) );
  ND2D1 U872 ( .A1(n938), .A2(n895), .ZN(n841) );
  XNR2D1 U873 ( .A1(n955), .A2(a[10]), .ZN(n895) );
  ND2D1 U874 ( .A1(n937), .A2(n896), .ZN(n859) );
  XNR2D1 U875 ( .A1(n954), .A2(a[12]), .ZN(n896) );
  INVD1 U876 ( .I(a[1]), .ZN(n960) );
  XNR2D1 U877 ( .A1(a[13]), .A2(a[14]), .ZN(n904) );
  ND2D1 U878 ( .A1(b[14]), .A2(a[15]), .ZN(n86) );
  INVD1 U879 ( .I(a[0]), .ZN(n961) );
  INVD1 U880 ( .I(b[7]), .ZN(n965) );
  INVD1 U881 ( .I(b[11]), .ZN(n969) );
  INVD1 U882 ( .I(b[5]), .ZN(n963) );
  INVD1 U883 ( .I(b[9]), .ZN(n967) );
  INVD1 U884 ( .I(b[13]), .ZN(n971) );
  INVD1 U885 ( .I(b[15]), .ZN(n973) );
  INVD1 U886 ( .I(b[4]), .ZN(n962) );
  INVD1 U887 ( .I(b[6]), .ZN(n964) );
  INVD1 U888 ( .I(b[8]), .ZN(n966) );
  INVD1 U889 ( .I(b[10]), .ZN(n968) );
  INVD1 U890 ( .I(b[12]), .ZN(n970) );
  INVD1 U891 ( .I(b[14]), .ZN(n972) );
endmodule


module FIR_Processor_DW01_add_0 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [31:1] carry;

  CMPE32D1 U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  CMPE32D1 U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  CMPE32D1 U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  CMPE32D1 U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  CMPE32D1 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  CMPE32D1 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  CMPE32D1 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  CMPE32D1 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  CMPE32D1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  CMPE32D1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  CMPE32D1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  CMPE32D1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  CMPE32D1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  CMPE32D1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  CMPE32D1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  CMPE32D1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  CMPE32D1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  CMPE32D1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  CMPE32D1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  CMPE32D1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  CMPE32D1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  CMPE32D1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  CMPE32D1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  CMPE32D1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  CMPE32D1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  CMPE32D1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  CMPE32D1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  CMPE32D1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  CMPE32D1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  CMPE32D1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3D1 U1_31 ( .A1(A[31]), .A2(B[31]), .A3(carry[31]), .Z(SUM[31]) );
  AN2D0 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  XOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module FIR_Processor ( rst_n, clk, sample_clk, sample_delay_in, coeficient, 
        coef_addr, dav, outp );
  input [15:0] sample_delay_in;
  input [15:0] coeficient;
  output [2:0] coef_addr;
  output [15:0] outp;
  input rst_n, clk, sample_clk;
  output dav;
  wire   CURRENT_STATE, NEXT_STATE, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45,
         N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59,
         N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N109,
         N110, N111, N112, N113, N114, N115, N116, N117, N118, N119, N120,
         N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131,
         N132, N133, N134, N135, N136, N137, N138, N139, N140, N176, N177,
         N178, N179, N180, N181, N182, N183, N184, N185, N186, N187, N188,
         N189, N190, N191, N192, N193, N194, N195, N196, N197, N198, N199,
         N200, N201, N202, N203, N204, N205, N206, N207, N208, N209, N210, n2,
         n25, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87,
         N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N108, N107, N106,
         N105, N104, N103, N102, N101, N100, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n26, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60;
  wire   [31:0] counter;
  wire   [31:0] accumulator;

  IAO21D1 U41 ( .A1(n15), .A2(coef_addr[1]), .B(N208), .ZN(n13) );
  FIR_Processor_DW01_dec_0 sub_79 ( .A(counter), .SUM({N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, 
        N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9}) );
  FIR_Processor_DW_mult_uns_0 mult_115 ( .a(sample_delay_in), .b(coeficient), 
        .product({N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, 
        N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, 
        N84, N83, N82, N81, N80, N79, N78, N77}) );
  FIR_Processor_DW01_add_0 add_115 ( .A({N108, N107, N106, N105, N104, N103, 
        N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, 
        N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77}), .B(
        accumulator), .CI(1'b0), .SUM({N140, N139, N138, N137, N136, N135, 
        N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, 
        N110, N109}) );
  DFCNQD1 \accumulator_reg[31]  ( .D(N207), .CP(clk), .CDN(n54), .Q(
        accumulator[31]) );
  DFCNQD1 \accumulator_reg[30]  ( .D(N206), .CP(clk), .CDN(n57), .Q(
        accumulator[30]) );
  DFCNQD1 \accumulator_reg[29]  ( .D(N205), .CP(clk), .CDN(n57), .Q(
        accumulator[29]) );
  DFCNQD1 \accumulator_reg[28]  ( .D(N204), .CP(clk), .CDN(n57), .Q(
        accumulator[28]) );
  DFCNQD1 \accumulator_reg[27]  ( .D(N203), .CP(clk), .CDN(n57), .Q(
        accumulator[27]) );
  DFCNQD1 \accumulator_reg[26]  ( .D(N202), .CP(clk), .CDN(n57), .Q(
        accumulator[26]) );
  DFCNQD1 \accumulator_reg[25]  ( .D(N201), .CP(clk), .CDN(n57), .Q(
        accumulator[25]) );
  DFCNQD1 \accumulator_reg[24]  ( .D(N200), .CP(clk), .CDN(n56), .Q(
        accumulator[24]) );
  DFCNQD1 \accumulator_reg[23]  ( .D(N199), .CP(clk), .CDN(n56), .Q(
        accumulator[23]) );
  DFCNQD1 \accumulator_reg[22]  ( .D(N198), .CP(clk), .CDN(n56), .Q(
        accumulator[22]) );
  DFCNQD1 \accumulator_reg[21]  ( .D(N197), .CP(clk), .CDN(n56), .Q(
        accumulator[21]) );
  DFCNQD1 \accumulator_reg[20]  ( .D(N196), .CP(clk), .CDN(n56), .Q(
        accumulator[20]) );
  DFCNQD1 \counter_reg[31]  ( .D(N72), .CP(clk), .CDN(n56), .Q(counter[31]) );
  DFCNQD1 \counter_reg[27]  ( .D(N68), .CP(clk), .CDN(n56), .Q(counter[27]) );
  DFCNQD1 \counter_reg[29]  ( .D(N70), .CP(clk), .CDN(n56), .Q(counter[29]) );
  DFCNQD1 \counter_reg[24]  ( .D(N65), .CP(clk), .CDN(n56), .Q(counter[24]) );
  DFCNQD1 \counter_reg[20]  ( .D(N61), .CP(clk), .CDN(n56), .Q(counter[20]) );
  DFCNQD1 \counter_reg[23]  ( .D(N64), .CP(clk), .CDN(n56), .Q(counter[23]) );
  DFCNQD1 \counter_reg[22]  ( .D(N63), .CP(clk), .CDN(n55), .Q(counter[22]) );
  DFCNQD1 \counter_reg[21]  ( .D(N62), .CP(clk), .CDN(n55), .Q(counter[21]) );
  DFCNQD1 \counter_reg[25]  ( .D(N66), .CP(clk), .CDN(n55), .Q(counter[25]) );
  DFCNQD1 \counter_reg[28]  ( .D(N69), .CP(clk), .CDN(n55), .Q(counter[28]) );
  DFCNQD1 \counter_reg[30]  ( .D(N71), .CP(clk), .CDN(n55), .Q(counter[30]) );
  DFCNQD1 \counter_reg[26]  ( .D(N67), .CP(clk), .CDN(n55), .Q(counter[26]) );
  DFCNQD1 CURRENT_STATE_reg ( .D(NEXT_STATE), .CP(clk), .CDN(n55), .Q(
        CURRENT_STATE) );
  DFCNQD1 \accumulator_reg[19]  ( .D(N195), .CP(clk), .CDN(n56), .Q(
        accumulator[19]) );
  DFCNQD1 \accumulator_reg[18]  ( .D(N194), .CP(clk), .CDN(n55), .Q(
        accumulator[18]) );
  DFCNQD1 \accumulator_reg[17]  ( .D(N193), .CP(clk), .CDN(n55), .Q(
        accumulator[17]) );
  DFCNQD1 \accumulator_reg[16]  ( .D(N192), .CP(clk), .CDN(n55), .Q(
        accumulator[16]) );
  DFCNQD1 \accumulator_reg[15]  ( .D(N191), .CP(clk), .CDN(n54), .Q(
        accumulator[15]) );
  DFCNQD1 \accumulator_reg[14]  ( .D(N190), .CP(clk), .CDN(n54), .Q(
        accumulator[14]) );
  DFCNQD1 \accumulator_reg[13]  ( .D(N189), .CP(clk), .CDN(n54), .Q(
        accumulator[13]) );
  DFCNQD1 \accumulator_reg[12]  ( .D(N188), .CP(clk), .CDN(n54), .Q(
        accumulator[12]) );
  DFCNQD1 \accumulator_reg[11]  ( .D(N187), .CP(clk), .CDN(n54), .Q(
        accumulator[11]) );
  DFCNQD1 \accumulator_reg[10]  ( .D(N186), .CP(clk), .CDN(n54), .Q(
        accumulator[10]) );
  DFCNQD1 \accumulator_reg[9]  ( .D(N185), .CP(clk), .CDN(n54), .Q(
        accumulator[9]) );
  DFCNQD1 \accumulator_reg[8]  ( .D(N184), .CP(clk), .CDN(n54), .Q(
        accumulator[8]) );
  DFCNQD1 \accumulator_reg[7]  ( .D(N183), .CP(clk), .CDN(n54), .Q(
        accumulator[7]) );
  DFCNQD1 \accumulator_reg[6]  ( .D(N182), .CP(clk), .CDN(n54), .Q(
        accumulator[6]) );
  DFCNQD1 \accumulator_reg[5]  ( .D(N181), .CP(clk), .CDN(n54), .Q(
        accumulator[5]) );
  DFCNQD1 \accumulator_reg[4]  ( .D(N180), .CP(clk), .CDN(n53), .Q(
        accumulator[4]) );
  DFCNQD1 \counter_reg[8]  ( .D(N49), .CP(clk), .CDN(n53), .Q(counter[8]) );
  DFCNQD1 \counter_reg[13]  ( .D(N54), .CP(clk), .CDN(n53), .Q(counter[13]) );
  DFCNQD1 \counter_reg[17]  ( .D(N58), .CP(clk), .CDN(n53), .Q(counter[17]) );
  DFCNQD1 \counter_reg[16]  ( .D(N57), .CP(clk), .CDN(n53), .Q(counter[16]) );
  DFCNQD1 \counter_reg[6]  ( .D(N47), .CP(clk), .CDN(n53), .Q(counter[6]) );
  DFCNQD1 \counter_reg[19]  ( .D(N60), .CP(clk), .CDN(n55), .Q(counter[19]) );
  DFCNQD1 \counter_reg[15]  ( .D(N56), .CP(clk), .CDN(n53), .Q(counter[15]) );
  DFCNQD1 \counter_reg[18]  ( .D(N59), .CP(clk), .CDN(n55), .Q(counter[18]) );
  DFCNQD1 \counter_reg[14]  ( .D(N55), .CP(clk), .CDN(n52), .Q(counter[14]) );
  DFCNQD1 \counter_reg[12]  ( .D(N53), .CP(clk), .CDN(n52), .Q(counter[12]) );
  DFCNQD1 \counter_reg[10]  ( .D(N51), .CP(clk), .CDN(n52), .Q(counter[10]) );
  DFCNQD1 \counter_reg[7]  ( .D(N48), .CP(clk), .CDN(n52), .Q(counter[7]) );
  DFCNQD1 \counter_reg[9]  ( .D(N50), .CP(clk), .CDN(n52), .Q(counter[9]) );
  DFCNQD1 \counter_reg[11]  ( .D(N52), .CP(clk), .CDN(n52), .Q(counter[11]) );
  DFSND1 \counter_reg[2]  ( .D(N43), .CP(clk), .SDN(n57), .Q(counter[2]), .QN(
        n25) );
  DFCNQD1 \accumulator_reg[3]  ( .D(N179), .CP(clk), .CDN(n53), .Q(
        accumulator[3]) );
  DFCNQD1 \accumulator_reg[2]  ( .D(N178), .CP(clk), .CDN(n53), .Q(
        accumulator[2]) );
  DFCNQD1 \accumulator_reg[1]  ( .D(N177), .CP(clk), .CDN(n52), .Q(
        accumulator[1]) );
  DFCNQD1 \counter_reg[3]  ( .D(N44), .CP(clk), .CDN(n53), .Q(counter[3]) );
  DFCNQD1 \counter_reg[5]  ( .D(N46), .CP(clk), .CDN(n53), .Q(counter[5]) );
  DFCNQD1 \counter_reg[1]  ( .D(N42), .CP(clk), .CDN(n53), .Q(counter[1]) );
  DFCNQD1 \accumulator_reg[0]  ( .D(N176), .CP(clk), .CDN(n52), .Q(
        accumulator[0]) );
  DFCNQD1 \counter_reg[4]  ( .D(N45), .CP(clk), .CDN(n52), .Q(counter[4]) );
  DFSND1 \counter_reg[0]  ( .D(N41), .CP(clk), .SDN(n57), .Q(counter[0]), .QN(
        n2) );
  DFCNQD1 \coef_addr_wire_reg[2]  ( .D(N210), .CP(clk), .CDN(n52), .Q(
        coef_addr[2]) );
  DFCNQD1 \coef_addr_wire_reg[1]  ( .D(N209), .CP(clk), .CDN(n52), .Q(
        coef_addr[1]) );
  DFCNQD1 \coef_addr_wire_reg[0]  ( .D(N208), .CP(clk), .CDN(n52), .Q(
        coef_addr[0]) );
  DFSND1 dav_wire_reg ( .D(n59), .CP(clk), .SDN(n57), .Q(dav) );
  EDFCNQD1 \outp_wire_reg[15]  ( .D(accumulator[15]), .E(n59), .CP(clk), .CDN(
        n57), .Q(outp[15]) );
  EDFCNQD1 \outp_wire_reg[14]  ( .D(accumulator[14]), .E(n59), .CP(clk), .CDN(
        n57), .Q(outp[14]) );
  EDFCNQD1 \outp_wire_reg[13]  ( .D(accumulator[13]), .E(n59), .CP(clk), .CDN(
        n57), .Q(outp[13]) );
  EDFCNQD1 \outp_wire_reg[12]  ( .D(accumulator[12]), .E(n59), .CP(clk), .CDN(
        n57), .Q(outp[12]) );
  EDFCNQD1 \outp_wire_reg[11]  ( .D(accumulator[11]), .E(n59), .CP(clk), .CDN(
        n58), .Q(outp[11]) );
  EDFCNQD1 \outp_wire_reg[10]  ( .D(accumulator[10]), .E(n59), .CP(clk), .CDN(
        n58), .Q(outp[10]) );
  EDFCNQD1 \outp_wire_reg[9]  ( .D(accumulator[9]), .E(n59), .CP(clk), .CDN(
        n58), .Q(outp[9]) );
  EDFCNQD1 \outp_wire_reg[8]  ( .D(accumulator[8]), .E(n59), .CP(clk), .CDN(
        n58), .Q(outp[8]) );
  EDFCNQD1 \outp_wire_reg[7]  ( .D(accumulator[7]), .E(n59), .CP(clk), .CDN(
        n58), .Q(outp[7]) );
  EDFCNQD1 \outp_wire_reg[6]  ( .D(accumulator[6]), .E(n59), .CP(clk), .CDN(
        n58), .Q(outp[6]) );
  EDFCNQD1 \outp_wire_reg[5]  ( .D(accumulator[5]), .E(n59), .CP(clk), .CDN(
        n58), .Q(outp[5]) );
  EDFCNQD1 \outp_wire_reg[4]  ( .D(accumulator[4]), .E(n59), .CP(clk), .CDN(
        n58), .Q(outp[4]) );
  EDFCNQD1 \outp_wire_reg[3]  ( .D(accumulator[3]), .E(n59), .CP(clk), .CDN(
        n58), .Q(outp[3]) );
  EDFCNQD1 \outp_wire_reg[2]  ( .D(accumulator[2]), .E(n59), .CP(clk), .CDN(
        n58), .Q(outp[2]) );
  EDFCNQD1 \outp_wire_reg[1]  ( .D(accumulator[1]), .E(n59), .CP(clk), .CDN(
        n58), .Q(outp[1]) );
  EDFCNQD1 \outp_wire_reg[0]  ( .D(accumulator[0]), .E(n59), .CP(clk), .CDN(
        n58), .Q(outp[0]) );
  BUFFD0 U3 ( .I(n51), .Z(n58) );
  INVD1 U5 ( .I(sample_clk), .ZN(n48) );
  INVD1 U6 ( .I(n15), .ZN(n47) );
  AN2D0 U7 ( .A1(N38), .A2(n48), .Z(N70) );
  AN2D0 U8 ( .A1(N36), .A2(n48), .Z(N68) );
  AN2D0 U9 ( .A1(N130), .A2(n47), .Z(N197) );
  AN2D0 U10 ( .A1(N131), .A2(n47), .Z(N198) );
  AN2D0 U11 ( .A1(N132), .A2(n47), .Z(N199) );
  AN2D0 U12 ( .A1(N133), .A2(n47), .Z(N200) );
  AN2D0 U13 ( .A1(N134), .A2(n47), .Z(N201) );
  AN2D0 U14 ( .A1(N135), .A2(n47), .Z(N202) );
  AN2D0 U15 ( .A1(N136), .A2(n47), .Z(N203) );
  AN2D0 U16 ( .A1(N137), .A2(n47), .Z(N204) );
  AN2D0 U17 ( .A1(N138), .A2(n47), .Z(N205) );
  AN2D0 U18 ( .A1(N139), .A2(n47), .Z(N206) );
  AN2D0 U19 ( .A1(N21), .A2(n48), .Z(N53) );
  AN2D0 U20 ( .A1(N113), .A2(n47), .Z(N180) );
  AN2D0 U21 ( .A1(N114), .A2(n47), .Z(N181) );
  AN2D0 U22 ( .A1(N115), .A2(n47), .Z(N182) );
  AN2D0 U23 ( .A1(N116), .A2(n47), .Z(N183) );
  AN2D0 U24 ( .A1(N117), .A2(n47), .Z(N184) );
  AN2D0 U25 ( .A1(N118), .A2(n47), .Z(N185) );
  AN2D0 U26 ( .A1(N119), .A2(n47), .Z(N186) );
  AN2D0 U27 ( .A1(N120), .A2(n47), .Z(N187) );
  AN2D0 U28 ( .A1(N121), .A2(n47), .Z(N188) );
  AN2D0 U29 ( .A1(N122), .A2(n47), .Z(N189) );
  AN2D0 U30 ( .A1(N123), .A2(n47), .Z(N190) );
  AN2D0 U31 ( .A1(N124), .A2(n47), .Z(N191) );
  AN2D0 U32 ( .A1(N125), .A2(n47), .Z(N192) );
  AN2D0 U33 ( .A1(N126), .A2(n47), .Z(N193) );
  AN2D0 U34 ( .A1(N127), .A2(n47), .Z(N194) );
  AN2D0 U35 ( .A1(N128), .A2(n47), .Z(N195) );
  AN2D0 U36 ( .A1(N129), .A2(n47), .Z(N196) );
  AN2D0 U37 ( .A1(N19), .A2(n48), .Z(N51) );
  AN2D0 U38 ( .A1(N17), .A2(n48), .Z(N49) );
  AN2D0 U39 ( .A1(N111), .A2(n47), .Z(N178) );
  AN2D0 U40 ( .A1(N112), .A2(n47), .Z(N179) );
  AN2D0 U42 ( .A1(N110), .A2(n47), .Z(N177) );
  BUFFD0 U43 ( .I(n50), .Z(n57) );
  BUFFD0 U44 ( .I(n49), .Z(n52) );
  BUFFD0 U45 ( .I(n49), .Z(n53) );
  BUFFD0 U46 ( .I(n50), .Z(n55) );
  BUFFD0 U47 ( .I(n50), .Z(n56) );
  BUFFD0 U48 ( .I(n49), .Z(n54) );
  AN2D0 U49 ( .A1(N39), .A2(n48), .Z(N71) );
  AN2D0 U50 ( .A1(N40), .A2(n48), .Z(N72) );
  AN2D0 U51 ( .A1(N140), .A2(n47), .Z(N207) );
  AN2D0 U52 ( .A1(N37), .A2(n48), .Z(N69) );
  AN2D0 U53 ( .A1(N35), .A2(n48), .Z(N67) );
  AN2D0 U54 ( .A1(N20), .A2(n48), .Z(N52) );
  AN2D0 U55 ( .A1(N22), .A2(n48), .Z(N54) );
  AN2D0 U56 ( .A1(N23), .A2(n48), .Z(N55) );
  AN2D0 U57 ( .A1(N24), .A2(n48), .Z(N56) );
  AN2D0 U58 ( .A1(N25), .A2(n48), .Z(N57) );
  AN2D0 U59 ( .A1(N26), .A2(n48), .Z(N58) );
  AN2D0 U60 ( .A1(N27), .A2(n48), .Z(N59) );
  AN2D0 U61 ( .A1(N34), .A2(n48), .Z(N66) );
  AN2D0 U62 ( .A1(N30), .A2(n48), .Z(N62) );
  AN2D0 U63 ( .A1(N28), .A2(n48), .Z(N60) );
  AN2D0 U64 ( .A1(N31), .A2(n48), .Z(N63) );
  AN2D0 U65 ( .A1(N32), .A2(n48), .Z(N64) );
  AN2D0 U66 ( .A1(N29), .A2(n48), .Z(N61) );
  AN2D0 U67 ( .A1(N33), .A2(n48), .Z(N65) );
  OAI21D0 U68 ( .A1(n25), .A2(n12), .B(CURRENT_STATE), .ZN(n15) );
  NR4D0 U69 ( .A1(counter[27]), .A2(counter[26]), .A3(counter[25]), .A4(
        counter[24]), .ZN(n22) );
  NR4D0 U70 ( .A1(n2), .A2(counter[9]), .A3(counter[8]), .A4(counter[7]), .ZN(
        n26) );
  NR4D0 U71 ( .A1(counter[6]), .A2(counter[5]), .A3(counter[4]), .A4(
        counter[3]), .ZN(n24) );
  NR4D0 U72 ( .A1(counter[31]), .A2(counter[30]), .A3(counter[29]), .A4(
        counter[28]), .ZN(n23) );
  INR4D0 U73 ( .A1(n21), .B1(counter[12]), .B2(counter[10]), .B3(counter[11]), 
        .ZN(n19) );
  NR4D0 U74 ( .A1(counter[16]), .A2(counter[15]), .A3(counter[14]), .A4(
        counter[13]), .ZN(n21) );
  INVD1 U75 ( .I(CURRENT_STATE), .ZN(n59) );
  OAI22D0 U76 ( .A1(CURRENT_STATE), .A2(n48), .B1(n59), .B2(n11), .ZN(
        NEXT_STATE) );
  INR2D1 U77 ( .A1(n25), .B1(n12), .ZN(n11) );
  IND4D1 U78 ( .A1(n17), .B1(n18), .B2(n19), .B3(n20), .ZN(n12) );
  NR4D0 U79 ( .A1(counter[1]), .A2(counter[19]), .A3(counter[18]), .A4(
        counter[17]), .ZN(n20) );
  NR4D0 U80 ( .A1(counter[23]), .A2(counter[22]), .A3(counter[21]), .A4(
        counter[20]), .ZN(n18) );
  ND4D1 U81 ( .A1(n22), .A2(n23), .A3(n24), .A4(n26), .ZN(n17) );
  NR2D1 U82 ( .A1(n15), .A2(coef_addr[0]), .ZN(N208) );
  OAI21D0 U83 ( .A1(n13), .A2(n60), .B(n14), .ZN(N210) );
  ND4D1 U84 ( .A1(coef_addr[1]), .A2(coef_addr[0]), .A3(n47), .A4(n60), .ZN(
        n14) );
  INVD1 U85 ( .I(coef_addr[2]), .ZN(n60) );
  NR2D1 U86 ( .A1(n16), .A2(n15), .ZN(N209) );
  XNR2D1 U87 ( .A1(coef_addr[1]), .A2(coef_addr[0]), .ZN(n16) );
  AN2D0 U88 ( .A1(N18), .A2(n48), .Z(N50) );
  AN2D0 U89 ( .A1(N109), .A2(n47), .Z(N176) );
  AN2D0 U90 ( .A1(N10), .A2(n48), .Z(N42) );
  AN2D0 U91 ( .A1(N13), .A2(n48), .Z(N45) );
  AN2D0 U92 ( .A1(N14), .A2(n48), .Z(N46) );
  AN2D0 U93 ( .A1(N15), .A2(n48), .Z(N47) );
  AN2D0 U94 ( .A1(N12), .A2(n48), .Z(N44) );
  AN2D0 U95 ( .A1(N16), .A2(n48), .Z(N48) );
  IND2D1 U96 ( .A1(N11), .B1(n48), .ZN(N43) );
  IND2D1 U97 ( .A1(N9), .B1(n48), .ZN(N41) );
  BUFFD0 U98 ( .I(rst_n), .Z(n51) );
  BUFFD0 U99 ( .I(rst_n), .Z(n50) );
  BUFFD0 U100 ( .I(rst_n), .Z(n49) );
endmodule


module ROM_Process ( address, coeficient_out );
  input [2:0] address;
  output [15:0] coeficient_out;
  wire   \address[2] , n5, n6;
  assign coeficient_out[4] = 1'b0;
  assign coeficient_out[5] = 1'b0;
  assign coeficient_out[6] = 1'b0;
  assign coeficient_out[7] = 1'b0;
  assign coeficient_out[8] = 1'b0;
  assign coeficient_out[9] = 1'b0;
  assign coeficient_out[10] = 1'b0;
  assign coeficient_out[11] = 1'b0;
  assign coeficient_out[12] = 1'b0;
  assign coeficient_out[13] = 1'b0;
  assign coeficient_out[14] = 1'b0;
  assign coeficient_out[15] = 1'b0;
  assign coeficient_out[3] = \address[2] ;
  assign \address[2]  = address[2];

  NR2D1 U3 ( .A1(coeficient_out[1]), .A2(n6), .ZN(coeficient_out[2]) );
  XNR2D1 U4 ( .A1(address[1]), .A2(n6), .ZN(coeficient_out[1]) );
  AOI21D0 U5 ( .A1(\address[2] ), .A2(n5), .B(address[0]), .ZN(
        coeficient_out[0]) );
  INVD1 U6 ( .I(address[1]), .ZN(n5) );
  INVD1 U7 ( .I(address[0]), .ZN(n6) );
endmodule


module FIR_Toplevel_5 ( rst_n, clk, sample_clk, sample, dav, outp );
  input [15:0] sample;
  output [15:0] outp;
  input rst_n, clk, sample_clk;
  output dav;

  wire   [15:0] sample_out_wire;
  wire   [15:0] coeficient_out_wire;
  wire   [2:0] coef_addr_wire;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11;

  Delayline_CB U_delayline ( .rst_n(rst_n), .clk(clk), .sample_clk(sample_clk), 
        .sample(sample), .sample_out(sample_out_wire) );
  FIR_Processor u_FIRP ( .rst_n(rst_n), .clk(clk), .sample_clk(sample_clk), 
        .sample_delay_in(sample_out_wire), .coeficient({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        coeficient_out_wire[3:0]}), .coef_addr(coef_addr_wire), .dav(dav), 
        .outp(outp) );
  ROM_Process u_ROM ( .address(coef_addr_wire), .coeficient_out({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        coeficient_out_wire[3:0]}) );
endmodule

