
module delay_line ( clk, sample_clk, rst_n, w_addr, w_en, sample_in, r_addr1, 
        sample_out1 );
  input [3:0] w_addr;
  input [9:0] sample_in;
  input [3:0] r_addr1;
  output [9:0] sample_out1;
  input clk, sample_clk, rst_n, w_en;
  wire   \data[10][9] , \data[10][8] , \data[10][7] , \data[10][6] ,
         \data[10][5] , \data[10][4] , \data[10][3] , \data[10][2] ,
         \data[10][1] , \data[10][0] , \data[9][9] , \data[9][8] ,
         \data[9][7] , \data[9][6] , \data[9][5] , \data[9][4] , \data[9][3] ,
         \data[9][2] , \data[9][1] , \data[9][0] , \data[8][9] , \data[8][8] ,
         \data[8][7] , \data[8][6] , \data[8][5] , \data[8][4] , \data[8][3] ,
         \data[8][2] , \data[8][1] , \data[8][0] , \data[7][9] , \data[7][8] ,
         \data[7][7] , \data[7][6] , \data[7][5] , \data[7][4] , \data[7][3] ,
         \data[7][2] , \data[7][1] , \data[7][0] , \data[6][9] , \data[6][8] ,
         \data[6][7] , \data[6][6] , \data[6][5] , \data[6][4] , \data[6][3] ,
         \data[6][2] , \data[6][1] , \data[6][0] , \data[5][9] , \data[5][8] ,
         \data[5][7] , \data[5][6] , \data[5][5] , \data[5][4] , \data[5][3] ,
         \data[5][2] , \data[5][1] , \data[5][0] , \data[4][9] , \data[4][8] ,
         \data[4][7] , \data[4][6] , \data[4][5] , \data[4][4] , \data[4][3] ,
         \data[4][2] , \data[4][1] , \data[4][0] , \data[3][9] , \data[3][8] ,
         \data[3][7] , \data[3][6] , \data[3][5] , \data[3][4] , \data[3][3] ,
         \data[3][2] , \data[3][1] , \data[3][0] , \data[2][9] , \data[2][8] ,
         \data[2][7] , \data[2][6] , \data[2][5] , \data[2][4] , \data[2][3] ,
         \data[2][2] , \data[2][1] , \data[2][0] , \data[1][9] , \data[1][8] ,
         \data[1][7] , \data[1][6] , \data[1][5] , \data[1][4] , \data[1][3] ,
         \data[1][2] , \data[1][1] , \data[1][0] , \data[0][9] , \data[0][8] ,
         \data[0][7] , \data[0][6] , \data[0][5] , \data[0][4] , \data[0][3] ,
         \data[0][2] , \data[0][1] , \data[0][0] , n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113;

  EDFCND1 \data_reg[12][9]  ( .D(sample_in[9]), .E(n107), .CP(clk), .CDN(rst_n), .QN(n12) );
  EDFCND1 \data_reg[12][8]  ( .D(sample_in[8]), .E(n107), .CP(clk), .CDN(rst_n), .QN(n13) );
  EDFCND1 \data_reg[12][7]  ( .D(sample_in[7]), .E(n107), .CP(clk), .CDN(rst_n), .QN(n14) );
  EDFCND1 \data_reg[12][6]  ( .D(sample_in[6]), .E(n107), .CP(clk), .CDN(rst_n), .QN(n15) );
  EDFCND1 \data_reg[12][5]  ( .D(sample_in[5]), .E(n107), .CP(clk), .CDN(rst_n), .QN(n16) );
  EDFCND1 \data_reg[12][4]  ( .D(sample_in[4]), .E(n107), .CP(clk), .CDN(rst_n), .QN(n17) );
  EDFCND1 \data_reg[12][3]  ( .D(sample_in[3]), .E(n107), .CP(clk), .CDN(rst_n), .QN(n18) );
  EDFCND1 \data_reg[12][2]  ( .D(sample_in[2]), .E(n107), .CP(clk), .CDN(rst_n), .QN(n19) );
  EDFCND1 \data_reg[12][1]  ( .D(sample_in[1]), .E(n107), .CP(clk), .CDN(rst_n), .QN(n20) );
  EDFCND1 \data_reg[12][0]  ( .D(sample_in[0]), .E(n107), .CP(clk), .CDN(rst_n), .QN(n21) );
  EDFCND1 \data_reg[11][9]  ( .D(sample_in[9]), .E(n111), .CP(clk), .CDN(rst_n), .QN(n22) );
  EDFCND1 \data_reg[11][8]  ( .D(sample_in[8]), .E(n111), .CP(clk), .CDN(rst_n), .QN(n23) );
  EDFCND1 \data_reg[11][7]  ( .D(sample_in[7]), .E(n111), .CP(clk), .CDN(rst_n), .QN(n24) );
  EDFCND1 \data_reg[11][6]  ( .D(sample_in[6]), .E(n111), .CP(clk), .CDN(rst_n), .QN(n25) );
  EDFCND1 \data_reg[11][5]  ( .D(sample_in[5]), .E(n111), .CP(clk), .CDN(rst_n), .QN(n26) );
  EDFCND1 \data_reg[11][4]  ( .D(sample_in[4]), .E(n111), .CP(clk), .CDN(rst_n), .QN(n27) );
  EDFCND1 \data_reg[11][3]  ( .D(sample_in[3]), .E(n111), .CP(clk), .CDN(rst_n), .QN(n28) );
  EDFCND1 \data_reg[11][2]  ( .D(sample_in[2]), .E(n111), .CP(clk), .CDN(rst_n), .QN(n29) );
  EDFCND1 \data_reg[11][1]  ( .D(sample_in[1]), .E(n111), .CP(clk), .CDN(rst_n), .QN(n30) );
  EDFCND1 \data_reg[11][0]  ( .D(sample_in[0]), .E(n111), .CP(clk), .CDN(rst_n), .QN(n31) );
  EDFCNQD1 \data_reg[10][9]  ( .D(sample_in[9]), .E(n104), .CP(clk), .CDN(
        rst_n), .Q(\data[10][9] ) );
  EDFCNQD1 \data_reg[10][8]  ( .D(sample_in[8]), .E(n104), .CP(clk), .CDN(
        rst_n), .Q(\data[10][8] ) );
  EDFCNQD1 \data_reg[10][7]  ( .D(sample_in[7]), .E(n104), .CP(clk), .CDN(
        rst_n), .Q(\data[10][7] ) );
  EDFCNQD1 \data_reg[10][6]  ( .D(sample_in[6]), .E(n104), .CP(clk), .CDN(
        rst_n), .Q(\data[10][6] ) );
  EDFCNQD1 \data_reg[10][5]  ( .D(sample_in[5]), .E(n104), .CP(clk), .CDN(
        rst_n), .Q(\data[10][5] ) );
  EDFCNQD1 \data_reg[10][4]  ( .D(sample_in[4]), .E(n104), .CP(clk), .CDN(
        rst_n), .Q(\data[10][4] ) );
  EDFCNQD1 \data_reg[10][3]  ( .D(sample_in[3]), .E(n104), .CP(clk), .CDN(
        rst_n), .Q(\data[10][3] ) );
  EDFCNQD1 \data_reg[10][2]  ( .D(sample_in[2]), .E(n104), .CP(clk), .CDN(
        rst_n), .Q(\data[10][2] ) );
  EDFCNQD1 \data_reg[10][1]  ( .D(sample_in[1]), .E(n104), .CP(clk), .CDN(
        rst_n), .Q(\data[10][1] ) );
  EDFCNQD1 \data_reg[10][0]  ( .D(sample_in[0]), .E(n104), .CP(clk), .CDN(
        rst_n), .Q(\data[10][0] ) );
  EDFCNQD1 \data_reg[9][9]  ( .D(sample_in[9]), .E(n101), .CP(clk), .CDN(rst_n), .Q(\data[9][9] ) );
  EDFCNQD1 \data_reg[9][8]  ( .D(sample_in[8]), .E(n101), .CP(clk), .CDN(rst_n), .Q(\data[9][8] ) );
  EDFCNQD1 \data_reg[9][7]  ( .D(sample_in[7]), .E(n101), .CP(clk), .CDN(rst_n), .Q(\data[9][7] ) );
  EDFCNQD1 \data_reg[9][6]  ( .D(sample_in[6]), .E(n101), .CP(clk), .CDN(rst_n), .Q(\data[9][6] ) );
  EDFCNQD1 \data_reg[9][5]  ( .D(sample_in[5]), .E(n101), .CP(clk), .CDN(rst_n), .Q(\data[9][5] ) );
  EDFCNQD1 \data_reg[9][4]  ( .D(sample_in[4]), .E(n101), .CP(clk), .CDN(rst_n), .Q(\data[9][4] ) );
  EDFCNQD1 \data_reg[9][3]  ( .D(sample_in[3]), .E(n101), .CP(clk), .CDN(rst_n), .Q(\data[9][3] ) );
  EDFCNQD1 \data_reg[9][2]  ( .D(sample_in[2]), .E(n101), .CP(clk), .CDN(rst_n), .Q(\data[9][2] ) );
  EDFCNQD1 \data_reg[9][1]  ( .D(sample_in[1]), .E(n101), .CP(clk), .CDN(rst_n), .Q(\data[9][1] ) );
  EDFCNQD1 \data_reg[9][0]  ( .D(sample_in[0]), .E(n101), .CP(clk), .CDN(rst_n), .Q(\data[9][0] ) );
  EDFCNQD1 \data_reg[8][9]  ( .D(sample_in[9]), .E(n108), .CP(clk), .CDN(rst_n), .Q(\data[8][9] ) );
  EDFCNQD1 \data_reg[8][8]  ( .D(sample_in[8]), .E(n108), .CP(clk), .CDN(rst_n), .Q(\data[8][8] ) );
  EDFCNQD1 \data_reg[8][7]  ( .D(sample_in[7]), .E(n108), .CP(clk), .CDN(rst_n), .Q(\data[8][7] ) );
  EDFCNQD1 \data_reg[8][6]  ( .D(sample_in[6]), .E(n108), .CP(clk), .CDN(rst_n), .Q(\data[8][6] ) );
  EDFCNQD1 \data_reg[8][5]  ( .D(sample_in[5]), .E(n108), .CP(clk), .CDN(rst_n), .Q(\data[8][5] ) );
  EDFCNQD1 \data_reg[8][4]  ( .D(sample_in[4]), .E(n108), .CP(clk), .CDN(rst_n), .Q(\data[8][4] ) );
  EDFCNQD1 \data_reg[8][3]  ( .D(sample_in[3]), .E(n108), .CP(clk), .CDN(rst_n), .Q(\data[8][3] ) );
  EDFCNQD1 \data_reg[8][2]  ( .D(sample_in[2]), .E(n108), .CP(clk), .CDN(rst_n), .Q(\data[8][2] ) );
  EDFCNQD1 \data_reg[8][1]  ( .D(sample_in[1]), .E(n108), .CP(clk), .CDN(rst_n), .Q(\data[8][1] ) );
  EDFCNQD1 \data_reg[8][0]  ( .D(sample_in[0]), .E(n108), .CP(clk), .CDN(rst_n), .Q(\data[8][0] ) );
  EDFCNQD1 \data_reg[7][9]  ( .D(sample_in[9]), .E(n112), .CP(clk), .CDN(rst_n), .Q(\data[7][9] ) );
  EDFCNQD1 \data_reg[7][8]  ( .D(sample_in[8]), .E(n112), .CP(clk), .CDN(rst_n), .Q(\data[7][8] ) );
  EDFCNQD1 \data_reg[7][7]  ( .D(sample_in[7]), .E(n112), .CP(clk), .CDN(rst_n), .Q(\data[7][7] ) );
  EDFCNQD1 \data_reg[7][6]  ( .D(sample_in[6]), .E(n112), .CP(clk), .CDN(rst_n), .Q(\data[7][6] ) );
  EDFCNQD1 \data_reg[7][5]  ( .D(sample_in[5]), .E(n112), .CP(clk), .CDN(rst_n), .Q(\data[7][5] ) );
  EDFCNQD1 \data_reg[7][4]  ( .D(sample_in[4]), .E(n112), .CP(clk), .CDN(rst_n), .Q(\data[7][4] ) );
  EDFCNQD1 \data_reg[7][3]  ( .D(sample_in[3]), .E(n112), .CP(clk), .CDN(rst_n), .Q(\data[7][3] ) );
  EDFCNQD1 \data_reg[7][2]  ( .D(sample_in[2]), .E(n112), .CP(clk), .CDN(rst_n), .Q(\data[7][2] ) );
  EDFCNQD1 \data_reg[7][1]  ( .D(sample_in[1]), .E(n112), .CP(clk), .CDN(rst_n), .Q(\data[7][1] ) );
  EDFCNQD1 \data_reg[7][0]  ( .D(sample_in[0]), .E(n112), .CP(clk), .CDN(rst_n), .Q(\data[7][0] ) );
  EDFCNQD1 \data_reg[6][9]  ( .D(sample_in[9]), .E(n105), .CP(clk), .CDN(rst_n), .Q(\data[6][9] ) );
  EDFCNQD1 \data_reg[6][8]  ( .D(sample_in[8]), .E(n105), .CP(clk), .CDN(rst_n), .Q(\data[6][8] ) );
  EDFCNQD1 \data_reg[6][7]  ( .D(sample_in[7]), .E(n105), .CP(clk), .CDN(rst_n), .Q(\data[6][7] ) );
  EDFCNQD1 \data_reg[6][6]  ( .D(sample_in[6]), .E(n105), .CP(clk), .CDN(rst_n), .Q(\data[6][6] ) );
  EDFCNQD1 \data_reg[6][5]  ( .D(sample_in[5]), .E(n105), .CP(clk), .CDN(rst_n), .Q(\data[6][5] ) );
  EDFCNQD1 \data_reg[6][4]  ( .D(sample_in[4]), .E(n105), .CP(clk), .CDN(rst_n), .Q(\data[6][4] ) );
  EDFCNQD1 \data_reg[6][3]  ( .D(sample_in[3]), .E(n105), .CP(clk), .CDN(rst_n), .Q(\data[6][3] ) );
  EDFCNQD1 \data_reg[6][2]  ( .D(sample_in[2]), .E(n105), .CP(clk), .CDN(rst_n), .Q(\data[6][2] ) );
  EDFCNQD1 \data_reg[6][1]  ( .D(sample_in[1]), .E(n105), .CP(clk), .CDN(rst_n), .Q(\data[6][1] ) );
  EDFCNQD1 \data_reg[6][0]  ( .D(sample_in[0]), .E(n105), .CP(clk), .CDN(rst_n), .Q(\data[6][0] ) );
  EDFCNQD1 \data_reg[5][9]  ( .D(sample_in[9]), .E(n102), .CP(clk), .CDN(rst_n), .Q(\data[5][9] ) );
  EDFCNQD1 \data_reg[5][8]  ( .D(sample_in[8]), .E(n102), .CP(clk), .CDN(rst_n), .Q(\data[5][8] ) );
  EDFCNQD1 \data_reg[5][7]  ( .D(sample_in[7]), .E(n102), .CP(clk), .CDN(rst_n), .Q(\data[5][7] ) );
  EDFCNQD1 \data_reg[5][6]  ( .D(sample_in[6]), .E(n102), .CP(clk), .CDN(rst_n), .Q(\data[5][6] ) );
  EDFCNQD1 \data_reg[5][5]  ( .D(sample_in[5]), .E(n102), .CP(clk), .CDN(rst_n), .Q(\data[5][5] ) );
  EDFCNQD1 \data_reg[5][4]  ( .D(sample_in[4]), .E(n102), .CP(clk), .CDN(rst_n), .Q(\data[5][4] ) );
  EDFCNQD1 \data_reg[5][3]  ( .D(sample_in[3]), .E(n102), .CP(clk), .CDN(rst_n), .Q(\data[5][3] ) );
  EDFCNQD1 \data_reg[5][2]  ( .D(sample_in[2]), .E(n102), .CP(clk), .CDN(rst_n), .Q(\data[5][2] ) );
  EDFCNQD1 \data_reg[5][1]  ( .D(sample_in[1]), .E(n102), .CP(clk), .CDN(rst_n), .Q(\data[5][1] ) );
  EDFCNQD1 \data_reg[5][0]  ( .D(sample_in[0]), .E(n102), .CP(clk), .CDN(rst_n), .Q(\data[5][0] ) );
  EDFCNQD1 \data_reg[4][9]  ( .D(sample_in[9]), .E(n109), .CP(clk), .CDN(rst_n), .Q(\data[4][9] ) );
  EDFCNQD1 \data_reg[4][8]  ( .D(sample_in[8]), .E(n109), .CP(clk), .CDN(rst_n), .Q(\data[4][8] ) );
  EDFCNQD1 \data_reg[4][7]  ( .D(sample_in[7]), .E(n109), .CP(clk), .CDN(rst_n), .Q(\data[4][7] ) );
  EDFCNQD1 \data_reg[4][6]  ( .D(sample_in[6]), .E(n109), .CP(clk), .CDN(rst_n), .Q(\data[4][6] ) );
  EDFCNQD1 \data_reg[4][5]  ( .D(sample_in[5]), .E(n109), .CP(clk), .CDN(rst_n), .Q(\data[4][5] ) );
  EDFCNQD1 \data_reg[4][4]  ( .D(sample_in[4]), .E(n109), .CP(clk), .CDN(rst_n), .Q(\data[4][4] ) );
  EDFCNQD1 \data_reg[4][3]  ( .D(sample_in[3]), .E(n109), .CP(clk), .CDN(rst_n), .Q(\data[4][3] ) );
  EDFCNQD1 \data_reg[4][2]  ( .D(sample_in[2]), .E(n109), .CP(clk), .CDN(rst_n), .Q(\data[4][2] ) );
  EDFCNQD1 \data_reg[4][1]  ( .D(sample_in[1]), .E(n109), .CP(clk), .CDN(rst_n), .Q(\data[4][1] ) );
  EDFCNQD1 \data_reg[4][0]  ( .D(sample_in[0]), .E(n109), .CP(clk), .CDN(rst_n), .Q(\data[4][0] ) );
  EDFCNQD1 \data_reg[3][9]  ( .D(sample_in[9]), .E(n113), .CP(clk), .CDN(rst_n), .Q(\data[3][9] ) );
  EDFCNQD1 \data_reg[3][8]  ( .D(sample_in[8]), .E(n113), .CP(clk), .CDN(rst_n), .Q(\data[3][8] ) );
  EDFCNQD1 \data_reg[3][7]  ( .D(sample_in[7]), .E(n113), .CP(clk), .CDN(rst_n), .Q(\data[3][7] ) );
  EDFCNQD1 \data_reg[3][6]  ( .D(sample_in[6]), .E(n113), .CP(clk), .CDN(rst_n), .Q(\data[3][6] ) );
  EDFCNQD1 \data_reg[3][5]  ( .D(sample_in[5]), .E(n113), .CP(clk), .CDN(rst_n), .Q(\data[3][5] ) );
  EDFCNQD1 \data_reg[3][4]  ( .D(sample_in[4]), .E(n113), .CP(clk), .CDN(rst_n), .Q(\data[3][4] ) );
  EDFCNQD1 \data_reg[3][3]  ( .D(sample_in[3]), .E(n113), .CP(clk), .CDN(rst_n), .Q(\data[3][3] ) );
  EDFCNQD1 \data_reg[3][2]  ( .D(sample_in[2]), .E(n113), .CP(clk), .CDN(rst_n), .Q(\data[3][2] ) );
  EDFCNQD1 \data_reg[3][1]  ( .D(sample_in[1]), .E(n113), .CP(clk), .CDN(rst_n), .Q(\data[3][1] ) );
  EDFCNQD1 \data_reg[3][0]  ( .D(sample_in[0]), .E(n113), .CP(clk), .CDN(rst_n), .Q(\data[3][0] ) );
  EDFCNQD1 \data_reg[2][9]  ( .D(sample_in[9]), .E(n106), .CP(clk), .CDN(rst_n), .Q(\data[2][9] ) );
  EDFCNQD1 \data_reg[2][8]  ( .D(sample_in[8]), .E(n106), .CP(clk), .CDN(rst_n), .Q(\data[2][8] ) );
  EDFCNQD1 \data_reg[2][7]  ( .D(sample_in[7]), .E(n106), .CP(clk), .CDN(rst_n), .Q(\data[2][7] ) );
  EDFCNQD1 \data_reg[2][6]  ( .D(sample_in[6]), .E(n106), .CP(clk), .CDN(rst_n), .Q(\data[2][6] ) );
  EDFCNQD1 \data_reg[2][5]  ( .D(sample_in[5]), .E(n106), .CP(clk), .CDN(rst_n), .Q(\data[2][5] ) );
  EDFCNQD1 \data_reg[2][4]  ( .D(sample_in[4]), .E(n106), .CP(clk), .CDN(rst_n), .Q(\data[2][4] ) );
  EDFCNQD1 \data_reg[2][3]  ( .D(sample_in[3]), .E(n106), .CP(clk), .CDN(rst_n), .Q(\data[2][3] ) );
  EDFCNQD1 \data_reg[2][2]  ( .D(sample_in[2]), .E(n106), .CP(clk), .CDN(rst_n), .Q(\data[2][2] ) );
  EDFCNQD1 \data_reg[2][1]  ( .D(sample_in[1]), .E(n106), .CP(clk), .CDN(rst_n), .Q(\data[2][1] ) );
  EDFCNQD1 \data_reg[2][0]  ( .D(sample_in[0]), .E(n106), .CP(clk), .CDN(rst_n), .Q(\data[2][0] ) );
  EDFCNQD1 \data_reg[1][9]  ( .D(sample_in[9]), .E(n103), .CP(clk), .CDN(rst_n), .Q(\data[1][9] ) );
  EDFCNQD1 \data_reg[1][8]  ( .D(sample_in[8]), .E(n103), .CP(clk), .CDN(rst_n), .Q(\data[1][8] ) );
  EDFCNQD1 \data_reg[1][7]  ( .D(sample_in[7]), .E(n103), .CP(clk), .CDN(rst_n), .Q(\data[1][7] ) );
  EDFCNQD1 \data_reg[1][6]  ( .D(sample_in[6]), .E(n103), .CP(clk), .CDN(rst_n), .Q(\data[1][6] ) );
  EDFCNQD1 \data_reg[1][5]  ( .D(sample_in[5]), .E(n103), .CP(clk), .CDN(rst_n), .Q(\data[1][5] ) );
  EDFCNQD1 \data_reg[1][4]  ( .D(sample_in[4]), .E(n103), .CP(clk), .CDN(rst_n), .Q(\data[1][4] ) );
  EDFCNQD1 \data_reg[1][3]  ( .D(sample_in[3]), .E(n103), .CP(clk), .CDN(rst_n), .Q(\data[1][3] ) );
  EDFCNQD1 \data_reg[1][2]  ( .D(sample_in[2]), .E(n103), .CP(clk), .CDN(rst_n), .Q(\data[1][2] ) );
  EDFCNQD1 \data_reg[1][1]  ( .D(sample_in[1]), .E(n103), .CP(clk), .CDN(rst_n), .Q(\data[1][1] ) );
  EDFCNQD1 \data_reg[1][0]  ( .D(sample_in[0]), .E(n103), .CP(clk), .CDN(rst_n), .Q(\data[1][0] ) );
  EDFCNQD1 \data_reg[0][9]  ( .D(sample_in[9]), .E(n110), .CP(clk), .CDN(rst_n), .Q(\data[0][9] ) );
  EDFCNQD1 \data_reg[0][8]  ( .D(sample_in[8]), .E(n110), .CP(clk), .CDN(rst_n), .Q(\data[0][8] ) );
  EDFCNQD1 \data_reg[0][7]  ( .D(sample_in[7]), .E(n110), .CP(clk), .CDN(rst_n), .Q(\data[0][7] ) );
  EDFCNQD1 \data_reg[0][6]  ( .D(sample_in[6]), .E(n110), .CP(clk), .CDN(rst_n), .Q(\data[0][6] ) );
  EDFCNQD1 \data_reg[0][5]  ( .D(sample_in[5]), .E(n110), .CP(clk), .CDN(rst_n), .Q(\data[0][5] ) );
  EDFCNQD1 \data_reg[0][4]  ( .D(sample_in[4]), .E(n110), .CP(clk), .CDN(rst_n), .Q(\data[0][4] ) );
  EDFCNQD1 \data_reg[0][3]  ( .D(sample_in[3]), .E(n110), .CP(clk), .CDN(rst_n), .Q(\data[0][3] ) );
  EDFCNQD1 \data_reg[0][2]  ( .D(sample_in[2]), .E(n110), .CP(clk), .CDN(rst_n), .Q(\data[0][2] ) );
  EDFCNQD1 \data_reg[0][1]  ( .D(sample_in[1]), .E(n110), .CP(clk), .CDN(rst_n), .Q(\data[0][1] ) );
  EDFCNQD1 \data_reg[0][0]  ( .D(sample_in[0]), .E(n110), .CP(clk), .CDN(rst_n), .Q(\data[0][0] ) );
  NR2D1 U2 ( .A1(n92), .A2(n99), .ZN(n109) );
  ND3D1 U3 ( .A1(w_en), .A2(n97), .A3(w_addr[2]), .ZN(n92) );
  NR2D1 U4 ( .A1(n90), .A2(n93), .ZN(n103) );
  ND3D0 U5 ( .A1(n98), .A2(n97), .A3(w_en), .ZN(n93) );
  NR2D1 U6 ( .A1(n93), .A2(n99), .ZN(n110) );
  NR2D1 U7 ( .A1(n92), .A2(n100), .ZN(n112) );
  NR2D1 U8 ( .A1(n91), .A2(n95), .ZN(n104) );
  NR2D1 U9 ( .A1(n90), .A2(n91), .ZN(n101) );
  ND3D0 U10 ( .A1(w_addr[3]), .A2(n98), .A3(w_en), .ZN(n91) );
  NR2D1 U11 ( .A1(n91), .A2(n99), .ZN(n108) );
  NR2D1 U12 ( .A1(n93), .A2(n100), .ZN(n113) );
  NR2D1 U13 ( .A1(n92), .A2(n95), .ZN(n105) );
  NR2D1 U14 ( .A1(n90), .A2(n92), .ZN(n102) );
  NR2D1 U15 ( .A1(n91), .A2(n100), .ZN(n111) );
  NR2D1 U16 ( .A1(n93), .A2(n95), .ZN(n106) );
  INR4D1 U17 ( .A1(w_en), .B1(n97), .B2(n98), .B3(n99), .ZN(n107) );
  ND4D0 U18 ( .A1(n1), .A2(n2), .A3(n3), .A4(n4), .ZN(sample_out1[9]) );
  AOI221D0 U19 ( .A1(\data[9][9] ), .A2(n5), .B1(\data[10][9] ), .B2(n6), .C(
        n7), .ZN(n4) );
  OAI22D0 U20 ( .A1(n8), .A2(n22), .B1(n9), .B2(n12), .ZN(n7) );
  AOI222D0 U21 ( .A1(\data[6][9] ), .A2(n10), .B1(\data[7][9] ), .B2(n11), 
        .C1(\data[8][9] ), .C2(n32), .ZN(n3) );
  AOI222D0 U22 ( .A1(\data[3][9] ), .A2(n33), .B1(\data[4][9] ), .B2(n34), 
        .C1(\data[5][9] ), .C2(n35), .ZN(n2) );
  AOI222D0 U23 ( .A1(\data[0][9] ), .A2(n36), .B1(\data[1][9] ), .B2(n37), 
        .C1(\data[2][9] ), .C2(n38), .ZN(n1) );
  ND4D0 U24 ( .A1(n39), .A2(n40), .A3(n41), .A4(n42), .ZN(sample_out1[8]) );
  AOI221D0 U25 ( .A1(\data[9][8] ), .A2(n5), .B1(\data[10][8] ), .B2(n6), .C(
        n43), .ZN(n42) );
  OAI22D0 U26 ( .A1(n8), .A2(n23), .B1(n9), .B2(n13), .ZN(n43) );
  AOI222D0 U27 ( .A1(\data[6][8] ), .A2(n10), .B1(\data[7][8] ), .B2(n11), 
        .C1(\data[8][8] ), .C2(n32), .ZN(n41) );
  AOI222D0 U28 ( .A1(\data[3][8] ), .A2(n33), .B1(\data[4][8] ), .B2(n34), 
        .C1(\data[5][8] ), .C2(n35), .ZN(n40) );
  AOI222D0 U29 ( .A1(\data[0][8] ), .A2(n36), .B1(\data[1][8] ), .B2(n37), 
        .C1(\data[2][8] ), .C2(n38), .ZN(n39) );
  ND4D0 U30 ( .A1(n44), .A2(n45), .A3(n46), .A4(n47), .ZN(sample_out1[7]) );
  AOI221D0 U31 ( .A1(\data[9][7] ), .A2(n5), .B1(\data[10][7] ), .B2(n6), .C(
        n48), .ZN(n47) );
  OAI22D0 U32 ( .A1(n8), .A2(n24), .B1(n9), .B2(n14), .ZN(n48) );
  AOI222D0 U33 ( .A1(\data[6][7] ), .A2(n10), .B1(\data[7][7] ), .B2(n11), 
        .C1(\data[8][7] ), .C2(n32), .ZN(n46) );
  AOI222D0 U34 ( .A1(\data[3][7] ), .A2(n33), .B1(\data[4][7] ), .B2(n34), 
        .C1(\data[5][7] ), .C2(n35), .ZN(n45) );
  AOI222D0 U35 ( .A1(\data[0][7] ), .A2(n36), .B1(\data[1][7] ), .B2(n37), 
        .C1(\data[2][7] ), .C2(n38), .ZN(n44) );
  ND4D0 U36 ( .A1(n49), .A2(n50), .A3(n51), .A4(n52), .ZN(sample_out1[6]) );
  AOI221D0 U37 ( .A1(\data[9][6] ), .A2(n5), .B1(\data[10][6] ), .B2(n6), .C(
        n53), .ZN(n52) );
  OAI22D0 U38 ( .A1(n8), .A2(n25), .B1(n9), .B2(n15), .ZN(n53) );
  AOI222D0 U39 ( .A1(\data[6][6] ), .A2(n10), .B1(\data[7][6] ), .B2(n11), 
        .C1(\data[8][6] ), .C2(n32), .ZN(n51) );
  AOI222D0 U40 ( .A1(\data[3][6] ), .A2(n33), .B1(\data[4][6] ), .B2(n34), 
        .C1(\data[5][6] ), .C2(n35), .ZN(n50) );
  AOI222D0 U41 ( .A1(\data[0][6] ), .A2(n36), .B1(\data[1][6] ), .B2(n37), 
        .C1(\data[2][6] ), .C2(n38), .ZN(n49) );
  ND4D0 U42 ( .A1(n54), .A2(n55), .A3(n56), .A4(n57), .ZN(sample_out1[5]) );
  AOI221D0 U43 ( .A1(\data[9][5] ), .A2(n5), .B1(\data[10][5] ), .B2(n6), .C(
        n58), .ZN(n57) );
  OAI22D0 U44 ( .A1(n8), .A2(n26), .B1(n9), .B2(n16), .ZN(n58) );
  AOI222D0 U45 ( .A1(\data[6][5] ), .A2(n10), .B1(\data[7][5] ), .B2(n11), 
        .C1(\data[8][5] ), .C2(n32), .ZN(n56) );
  AOI222D0 U46 ( .A1(\data[3][5] ), .A2(n33), .B1(\data[4][5] ), .B2(n34), 
        .C1(\data[5][5] ), .C2(n35), .ZN(n55) );
  AOI222D0 U47 ( .A1(\data[0][5] ), .A2(n36), .B1(\data[1][5] ), .B2(n37), 
        .C1(\data[2][5] ), .C2(n38), .ZN(n54) );
  ND4D0 U48 ( .A1(n59), .A2(n60), .A3(n61), .A4(n62), .ZN(sample_out1[4]) );
  AOI221D0 U49 ( .A1(\data[9][4] ), .A2(n5), .B1(\data[10][4] ), .B2(n6), .C(
        n63), .ZN(n62) );
  OAI22D0 U50 ( .A1(n8), .A2(n27), .B1(n9), .B2(n17), .ZN(n63) );
  AOI222D0 U51 ( .A1(\data[6][4] ), .A2(n10), .B1(\data[7][4] ), .B2(n11), 
        .C1(\data[8][4] ), .C2(n32), .ZN(n61) );
  AOI222D0 U52 ( .A1(\data[3][4] ), .A2(n33), .B1(\data[4][4] ), .B2(n34), 
        .C1(\data[5][4] ), .C2(n35), .ZN(n60) );
  AOI222D0 U53 ( .A1(\data[0][4] ), .A2(n36), .B1(\data[1][4] ), .B2(n37), 
        .C1(\data[2][4] ), .C2(n38), .ZN(n59) );
  ND4D0 U54 ( .A1(n64), .A2(n65), .A3(n66), .A4(n67), .ZN(sample_out1[3]) );
  AOI221D0 U55 ( .A1(\data[9][3] ), .A2(n5), .B1(\data[10][3] ), .B2(n6), .C(
        n68), .ZN(n67) );
  OAI22D0 U56 ( .A1(n8), .A2(n28), .B1(n9), .B2(n18), .ZN(n68) );
  AOI222D0 U57 ( .A1(\data[6][3] ), .A2(n10), .B1(\data[7][3] ), .B2(n11), 
        .C1(\data[8][3] ), .C2(n32), .ZN(n66) );
  AOI222D0 U58 ( .A1(\data[3][3] ), .A2(n33), .B1(\data[4][3] ), .B2(n34), 
        .C1(\data[5][3] ), .C2(n35), .ZN(n65) );
  AOI222D0 U59 ( .A1(\data[0][3] ), .A2(n36), .B1(\data[1][3] ), .B2(n37), 
        .C1(\data[2][3] ), .C2(n38), .ZN(n64) );
  ND4D0 U60 ( .A1(n69), .A2(n70), .A3(n71), .A4(n72), .ZN(sample_out1[2]) );
  AOI221D0 U61 ( .A1(\data[9][2] ), .A2(n5), .B1(\data[10][2] ), .B2(n6), .C(
        n73), .ZN(n72) );
  OAI22D0 U62 ( .A1(n8), .A2(n29), .B1(n9), .B2(n19), .ZN(n73) );
  AOI222D0 U63 ( .A1(\data[6][2] ), .A2(n10), .B1(\data[7][2] ), .B2(n11), 
        .C1(\data[8][2] ), .C2(n32), .ZN(n71) );
  AOI222D0 U64 ( .A1(\data[3][2] ), .A2(n33), .B1(\data[4][2] ), .B2(n34), 
        .C1(\data[5][2] ), .C2(n35), .ZN(n70) );
  AOI222D0 U65 ( .A1(\data[0][2] ), .A2(n36), .B1(\data[1][2] ), .B2(n37), 
        .C1(\data[2][2] ), .C2(n38), .ZN(n69) );
  ND4D0 U66 ( .A1(n74), .A2(n75), .A3(n76), .A4(n77), .ZN(sample_out1[1]) );
  AOI221D0 U67 ( .A1(\data[9][1] ), .A2(n5), .B1(\data[10][1] ), .B2(n6), .C(
        n78), .ZN(n77) );
  OAI22D0 U68 ( .A1(n8), .A2(n30), .B1(n9), .B2(n20), .ZN(n78) );
  AOI222D0 U69 ( .A1(\data[6][1] ), .A2(n10), .B1(\data[7][1] ), .B2(n11), 
        .C1(\data[8][1] ), .C2(n32), .ZN(n76) );
  AOI222D0 U70 ( .A1(\data[3][1] ), .A2(n33), .B1(\data[4][1] ), .B2(n34), 
        .C1(\data[5][1] ), .C2(n35), .ZN(n75) );
  AOI222D0 U71 ( .A1(\data[0][1] ), .A2(n36), .B1(\data[1][1] ), .B2(n37), 
        .C1(\data[2][1] ), .C2(n38), .ZN(n74) );
  ND4D0 U72 ( .A1(n79), .A2(n80), .A3(n81), .A4(n82), .ZN(sample_out1[0]) );
  AOI221D0 U73 ( .A1(\data[9][0] ), .A2(n5), .B1(\data[10][0] ), .B2(n6), .C(
        n83), .ZN(n82) );
  OAI22D0 U74 ( .A1(n8), .A2(n31), .B1(n9), .B2(n21), .ZN(n83) );
  ND2D0 U75 ( .A1(r_addr1[3]), .A2(r_addr1[2]), .ZN(n9) );
  ND3D0 U76 ( .A1(r_addr1[0]), .A2(r_addr1[3]), .A3(r_addr1[1]), .ZN(n8) );
  AN2D0 U77 ( .A1(n84), .A2(r_addr1[3]), .Z(n6) );
  AN2D0 U78 ( .A1(n85), .A2(r_addr1[3]), .Z(n5) );
  AOI222D0 U79 ( .A1(\data[6][0] ), .A2(n10), .B1(\data[7][0] ), .B2(n11), 
        .C1(\data[8][0] ), .C2(n32), .ZN(n81) );
  AN3D0 U80 ( .A1(r_addr1[3]), .A2(n86), .A3(n87), .Z(n32) );
  AN3D0 U81 ( .A1(r_addr1[1]), .A2(r_addr1[0]), .A3(r_addr1[2]), .Z(n11) );
  AN2D0 U82 ( .A1(n84), .A2(r_addr1[2]), .Z(n10) );
  AOI222D0 U83 ( .A1(\data[3][0] ), .A2(n33), .B1(\data[4][0] ), .B2(n34), 
        .C1(\data[5][0] ), .C2(n35), .ZN(n80) );
  AN2D0 U84 ( .A1(n85), .A2(r_addr1[2]), .Z(n35) );
  INR3D0 U85 ( .A1(n87), .B1(n86), .B2(r_addr1[3]), .ZN(n34) );
  INVD0 U86 ( .I(r_addr1[2]), .ZN(n86) );
  AN3D0 U87 ( .A1(r_addr1[1]), .A2(r_addr1[0]), .A3(n88), .Z(n33) );
  AOI222D0 U88 ( .A1(\data[0][0] ), .A2(n36), .B1(\data[1][0] ), .B2(n37), 
        .C1(\data[2][0] ), .C2(n38), .ZN(n79) );
  AN2D0 U89 ( .A1(n88), .A2(n84), .Z(n38) );
  AN2D0 U90 ( .A1(r_addr1[1]), .A2(n89), .Z(n84) );
  AN2D0 U91 ( .A1(n88), .A2(n85), .Z(n37) );
  NR2D0 U92 ( .A1(n89), .A2(r_addr1[1]), .ZN(n85) );
  INVD0 U93 ( .I(r_addr1[0]), .ZN(n89) );
  AN2D0 U94 ( .A1(n88), .A2(n87), .Z(n36) );
  NR2D0 U95 ( .A1(r_addr1[0]), .A2(r_addr1[1]), .ZN(n87) );
  NR2D0 U96 ( .A1(r_addr1[2]), .A2(r_addr1[3]), .ZN(n88) );
  ND2D0 U97 ( .A1(w_addr[0]), .A2(n94), .ZN(n90) );
  ND2D0 U98 ( .A1(w_addr[1]), .A2(n96), .ZN(n95) );
  ND2D0 U99 ( .A1(n96), .A2(n94), .ZN(n99) );
  INVD0 U100 ( .I(w_addr[1]), .ZN(n94) );
  INVD0 U101 ( .I(w_addr[0]), .ZN(n96) );
  ND2D0 U102 ( .A1(w_addr[1]), .A2(w_addr[0]), .ZN(n100) );
  INVD0 U103 ( .I(w_addr[3]), .ZN(n97) );
  INVD0 U104 ( .I(w_addr[2]), .ZN(n98) );
endmodule


module Coef_ROM ( coeff_addr, coeff );
  input [3:0] coeff_addr;
  output [9:0] coeff;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  assign coeff[0] = 1'b1;
  assign coeff[7] = 1'b0;
  assign coeff[8] = 1'b0;
  assign coeff[9] = 1'b0;

  NR3D0 U3 ( .A1(n1), .A2(coeff_addr[0]), .A3(n2), .ZN(coeff[6]) );
  INVD0 U4 ( .I(n3), .ZN(coeff[3]) );
  OAI21D0 U5 ( .A1(coeff_addr[0]), .A2(n1), .B(n3), .ZN(coeff[2]) );
  AOI21D0 U6 ( .A1(n4), .A2(coeff_addr[0]), .B(coeff[4]), .ZN(n3) );
  INVD0 U7 ( .I(n5), .ZN(coeff[4]) );
  CKXOR2D0 U8 ( .A1(n1), .A2(n6), .Z(n4) );
  INVD0 U9 ( .I(coeff_addr[1]), .ZN(n1) );
  ND2D0 U10 ( .A1(n7), .A2(n5), .ZN(coeff[1]) );
  NR2D0 U11 ( .A1(n8), .A2(coeff[5]), .ZN(n5) );
  NR2D0 U12 ( .A1(n2), .A2(n7), .ZN(coeff[5]) );
  CKMUX2D0 U13 ( .I0(n6), .I1(n9), .S(n2), .Z(n8) );
  INVD0 U14 ( .I(coeff_addr[2]), .ZN(n2) );
  AN2D0 U15 ( .A1(n7), .A2(coeff_addr[3]), .Z(n9) );
  INVD0 U16 ( .I(coeff_addr[3]), .ZN(n6) );
  NR2D0 U17 ( .A1(coeff_addr[1]), .A2(coeff_addr[0]), .ZN(n7) );
endmodule


module MAC_DW01_add_0 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [23:1] carry;

  CMPE32D1 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .S(SUM[23]) );
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
  AN2D0 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  XOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module MAC_DW_mult_tc_1 ( a, b, product );
  input [9:0] a;
  input [9:0] b;
  output [19:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236;

  INVD1 U1 ( .I(n1), .ZN(product[19]) );
  CMPE32D1 U2 ( .A(n87), .B(n19), .CI(n2), .CO(n1), .S(product[18]) );
  CMPE32D1 U3 ( .A(n20), .B(n21), .CI(n3), .CO(n2), .S(product[17]) );
  CMPE32D1 U4 ( .A(n22), .B(n23), .CI(n4), .CO(n3), .S(product[16]) );
  CMPE32D1 U5 ( .A(n24), .B(n28), .CI(n5), .CO(n4), .S(product[15]) );
  CMPE32D1 U6 ( .A(n29), .B(n31), .CI(n6), .CO(n5), .S(product[14]) );
  CMPE32D1 U7 ( .A(n32), .B(n36), .CI(n7), .CO(n6), .S(product[13]) );
  CMPE32D1 U8 ( .A(n37), .B(n41), .CI(n8), .CO(n7), .S(product[12]) );
  CMPE32D1 U9 ( .A(n42), .B(n48), .CI(n9), .CO(n8), .S(product[11]) );
  CMPE32D1 U10 ( .A(n55), .B(n49), .CI(n10), .CO(n9), .S(product[10]) );
  CMPE32D1 U11 ( .A(n62), .B(n56), .CI(n11), .CO(n10), .S(product[9]) );
  CMPE32D1 U12 ( .A(n67), .B(n63), .CI(n12), .CO(n11), .S(product[8]) );
  CMPE32D1 U13 ( .A(n72), .B(n68), .CI(n13), .CO(n12), .S(product[7]) );
  CMPE32D1 U14 ( .A(n74), .B(n73), .CI(n14), .CO(n13), .S(product[6]) );
  CMPE32D1 U15 ( .A(n78), .B(n75), .CI(n15), .CO(n14), .S(product[5]) );
  CMPE32D1 U16 ( .A(n80), .B(n79), .CI(n16), .CO(n15), .S(product[4]) );
  CMPE32D1 U17 ( .A(n85), .B(n81), .CI(n17), .CO(n16), .S(product[3]) );
  CMPE32D1 U18 ( .A(n126), .B(n135), .CI(n18), .CO(n17), .S(product[2]) );
  CMPE22D1 U19 ( .A(n86), .B(n136), .CO(n18), .S(product[1]) );
  INVD1 U20 ( .I(n19), .ZN(n20) );
  CMPE32D1 U21 ( .A(n97), .B(n88), .CI(n25), .CO(n21), .S(n22) );
  CMPE32D1 U22 ( .A(n89), .B(n26), .CI(n27), .CO(n23), .S(n24) );
  INVD1 U23 ( .I(n25), .ZN(n26) );
  CMPE42D1 U24 ( .A(n107), .B(n98), .C(n33), .CIX(n30), .D(n90), .CO(n28), 
        .COX(n27), .S(n29) );
  CMPE42D1 U25 ( .A(n99), .B(n91), .C(n34), .CIX(n35), .D(n38), .CO(n31), 
        .COX(n30), .S(n32) );
  INVD1 U26 ( .I(n33), .ZN(n34) );
  CMPE42D1 U27 ( .A(n108), .B(n100), .C(n43), .CIX(n40), .D(n39), .CO(n36), 
        .COX(n35), .S(n37) );
  CMPE32D1 U28 ( .A(n117), .B(n92), .CI(n45), .CO(n38), .S(n39) );
  CMPE42D1 U29 ( .A(n46), .B(n52), .C(n50), .CIX(n47), .D(n44), .CO(n41), 
        .COX(n40), .S(n42) );
  CMPE32D1 U30 ( .A(n93), .B(n101), .CI(n109), .CO(n43), .S(n44) );
  INVD1 U31 ( .I(n45), .ZN(n46) );
  CMPE42D1 U32 ( .A(n59), .B(n53), .C(n57), .CIX(n54), .D(n51), .CO(n48), 
        .COX(n47), .S(n49) );
  CMPE32D1 U33 ( .A(n94), .B(n102), .CI(n110), .CO(n50), .S(n51) );
  XNR2D1 U34 ( .A1(n127), .A2(n118), .ZN(n53) );
  OR2D1 U35 ( .A1(n118), .A2(n127), .Z(n52) );
  CMPE42D1 U36 ( .A(n128), .B(n60), .C(n64), .CIX(n61), .D(n58), .CO(n55), 
        .COX(n54), .S(n56) );
  CMPE32D1 U37 ( .A(n111), .B(n103), .CI(n119), .CO(n57), .S(n58) );
  CMPE22D1 U38 ( .A(n95), .B(n82), .CO(n59), .S(n60) );
  CMPE42D1 U39 ( .A(n120), .B(n104), .C(n69), .CIX(n66), .D(n65), .CO(n62), 
        .COX(n61), .S(n63) );
  CMPE32D1 U40 ( .A(n96), .B(n112), .CI(n129), .CO(n64), .S(n65) );
  CMPE42D1 U41 ( .A(n130), .B(n113), .C(n121), .CIX(n71), .D(n70), .CO(n67), 
        .COX(n66), .S(n68) );
  CMPE22D1 U42 ( .A(n105), .B(n83), .CO(n69), .S(n70) );
  CMPE42D1 U43 ( .A(n106), .B(n131), .C(n122), .CIX(n76), .D(n114), .CO(n72), 
        .COX(n71), .S(n73) );
  CMPE32D1 U44 ( .A(n132), .B(n123), .CI(n77), .CO(n74), .S(n75) );
  CMPE22D1 U45 ( .A(n115), .B(n84), .CO(n76), .S(n77) );
  CMPE32D1 U46 ( .A(n116), .B(n133), .CI(n124), .CO(n78), .S(n79) );
  CMPE22D1 U47 ( .A(n134), .B(n125), .CO(n80), .S(n81) );
  OAI22D0 U48 ( .A1(n207), .A2(n217), .B1(n147), .B2(n212), .ZN(n82) );
  AO21D1 U49 ( .A1(n207), .A2(n212), .B(n137), .Z(n87) );
  OAI22D0 U50 ( .A1(n207), .A2(n138), .B1(n212), .B2(n137), .ZN(n19) );
  OAI22D0 U51 ( .A1(n207), .A2(n139), .B1(n212), .B2(n138), .ZN(n88) );
  OAI22D0 U52 ( .A1(n207), .A2(n140), .B1(n212), .B2(n139), .ZN(n89) );
  OAI22D0 U53 ( .A1(n207), .A2(n141), .B1(n212), .B2(n140), .ZN(n90) );
  OAI22D0 U54 ( .A1(n207), .A2(n142), .B1(n212), .B2(n141), .ZN(n91) );
  OAI22D0 U55 ( .A1(n207), .A2(n143), .B1(n212), .B2(n142), .ZN(n92) );
  OAI22D0 U56 ( .A1(n207), .A2(n144), .B1(n212), .B2(n143), .ZN(n93) );
  OAI22D0 U57 ( .A1(n207), .A2(n145), .B1(n212), .B2(n144), .ZN(n94) );
  OAI22D0 U58 ( .A1(n207), .A2(n146), .B1(n212), .B2(n145), .ZN(n95) );
  INR2D1 U59 ( .A1(n201), .B1(n212), .ZN(n96) );
  XNR2D1 U60 ( .A1(n192), .A2(n222), .ZN(n137) );
  XNR2D1 U61 ( .A1(n193), .A2(n222), .ZN(n138) );
  XNR2D1 U62 ( .A1(n194), .A2(n222), .ZN(n139) );
  XNR2D1 U63 ( .A1(n195), .A2(n222), .ZN(n140) );
  XNR2D1 U64 ( .A1(n196), .A2(n222), .ZN(n141) );
  XNR2D1 U65 ( .A1(n197), .A2(n222), .ZN(n142) );
  XNR2D1 U66 ( .A1(b[3]), .A2(n222), .ZN(n143) );
  XNR2D1 U67 ( .A1(n199), .A2(n222), .ZN(n144) );
  XNR2D1 U68 ( .A1(n200), .A2(n222), .ZN(n145) );
  XNR2D1 U69 ( .A1(n201), .A2(n222), .ZN(n146) );
  IND2D1 U70 ( .A1(n201), .B1(n222), .ZN(n147) );
  OAI22D0 U71 ( .A1(n208), .A2(n218), .B1(n158), .B2(n213), .ZN(n83) );
  AO21D1 U72 ( .A1(n208), .A2(n213), .B(n148), .Z(n97) );
  OAI22D0 U73 ( .A1(n208), .A2(n149), .B1(n213), .B2(n148), .ZN(n25) );
  OAI22D0 U74 ( .A1(n208), .A2(n150), .B1(n213), .B2(n149), .ZN(n98) );
  OAI22D0 U75 ( .A1(n208), .A2(n151), .B1(n213), .B2(n150), .ZN(n99) );
  OAI22D0 U76 ( .A1(n208), .A2(n152), .B1(n213), .B2(n151), .ZN(n100) );
  OAI22D0 U77 ( .A1(n208), .A2(n153), .B1(n213), .B2(n152), .ZN(n101) );
  OAI22D0 U78 ( .A1(n208), .A2(n154), .B1(n213), .B2(n153), .ZN(n102) );
  OAI22D0 U79 ( .A1(n208), .A2(n155), .B1(n213), .B2(n154), .ZN(n103) );
  OAI22D0 U80 ( .A1(n208), .A2(n156), .B1(n213), .B2(n155), .ZN(n104) );
  OAI22D0 U81 ( .A1(n208), .A2(n157), .B1(n213), .B2(n156), .ZN(n105) );
  INR2D1 U82 ( .A1(n201), .B1(n213), .ZN(n106) );
  XNR2D1 U83 ( .A1(n192), .A2(n223), .ZN(n148) );
  XNR2D1 U84 ( .A1(n193), .A2(n223), .ZN(n149) );
  XNR2D1 U85 ( .A1(n194), .A2(n223), .ZN(n150) );
  XNR2D1 U86 ( .A1(n195), .A2(n223), .ZN(n151) );
  XNR2D1 U87 ( .A1(n196), .A2(n223), .ZN(n152) );
  XNR2D1 U88 ( .A1(n197), .A2(n223), .ZN(n153) );
  XNR2D1 U89 ( .A1(b[3]), .A2(n223), .ZN(n154) );
  XNR2D1 U90 ( .A1(n199), .A2(n223), .ZN(n155) );
  XNR2D1 U91 ( .A1(n200), .A2(n223), .ZN(n156) );
  XNR2D1 U92 ( .A1(n201), .A2(n223), .ZN(n157) );
  IND2D1 U93 ( .A1(n201), .B1(n223), .ZN(n158) );
  OAI22D0 U94 ( .A1(n209), .A2(n219), .B1(n169), .B2(n214), .ZN(n84) );
  AO21D1 U95 ( .A1(n209), .A2(n214), .B(n159), .Z(n107) );
  OAI22D0 U96 ( .A1(n209), .A2(n160), .B1(n214), .B2(n159), .ZN(n33) );
  OAI22D0 U97 ( .A1(n209), .A2(n161), .B1(n214), .B2(n160), .ZN(n108) );
  OAI22D0 U98 ( .A1(n209), .A2(n162), .B1(n214), .B2(n161), .ZN(n109) );
  OAI22D0 U99 ( .A1(n209), .A2(n163), .B1(n214), .B2(n162), .ZN(n110) );
  OAI22D0 U100 ( .A1(n209), .A2(n164), .B1(n214), .B2(n163), .ZN(n111) );
  OAI22D0 U101 ( .A1(n209), .A2(n165), .B1(n214), .B2(n164), .ZN(n112) );
  OAI22D0 U102 ( .A1(n209), .A2(n166), .B1(n214), .B2(n165), .ZN(n113) );
  OAI22D0 U103 ( .A1(n209), .A2(n167), .B1(n214), .B2(n166), .ZN(n114) );
  OAI22D0 U104 ( .A1(n209), .A2(n168), .B1(n214), .B2(n167), .ZN(n115) );
  INR2D1 U105 ( .A1(n201), .B1(n214), .ZN(n116) );
  XNR2D1 U106 ( .A1(n192), .A2(n224), .ZN(n159) );
  XNR2D1 U107 ( .A1(n193), .A2(n224), .ZN(n160) );
  XNR2D1 U108 ( .A1(n194), .A2(n224), .ZN(n161) );
  XNR2D1 U109 ( .A1(n195), .A2(n224), .ZN(n162) );
  XNR2D1 U110 ( .A1(n196), .A2(n224), .ZN(n163) );
  XNR2D1 U111 ( .A1(n197), .A2(n224), .ZN(n164) );
  XNR2D1 U112 ( .A1(b[3]), .A2(n224), .ZN(n165) );
  XNR2D1 U113 ( .A1(n199), .A2(n224), .ZN(n166) );
  XNR2D1 U114 ( .A1(n200), .A2(n224), .ZN(n167) );
  XNR2D1 U115 ( .A1(n201), .A2(n224), .ZN(n168) );
  IND2D1 U116 ( .A1(n201), .B1(n224), .ZN(n169) );
  OAI22D0 U117 ( .A1(n210), .A2(n220), .B1(n180), .B2(n215), .ZN(n85) );
  AO21D1 U118 ( .A1(n210), .A2(n215), .B(n170), .Z(n117) );
  OAI22D0 U119 ( .A1(n210), .A2(n171), .B1(n215), .B2(n170), .ZN(n45) );
  OAI22D0 U120 ( .A1(n210), .A2(n172), .B1(n215), .B2(n171), .ZN(n118) );
  OAI22D0 U121 ( .A1(n210), .A2(n173), .B1(n215), .B2(n172), .ZN(n119) );
  OAI22D0 U122 ( .A1(n210), .A2(n174), .B1(n215), .B2(n173), .ZN(n120) );
  OAI22D0 U123 ( .A1(n210), .A2(n175), .B1(n215), .B2(n174), .ZN(n121) );
  OAI22D0 U124 ( .A1(n210), .A2(n176), .B1(n215), .B2(n175), .ZN(n122) );
  OAI22D0 U125 ( .A1(n210), .A2(n177), .B1(n215), .B2(n176), .ZN(n123) );
  OAI22D0 U126 ( .A1(n210), .A2(n178), .B1(n215), .B2(n177), .ZN(n124) );
  OAI22D0 U127 ( .A1(n210), .A2(n179), .B1(n215), .B2(n178), .ZN(n125) );
  INR2D1 U128 ( .A1(n201), .B1(n215), .ZN(n126) );
  XNR2D1 U129 ( .A1(n192), .A2(n225), .ZN(n170) );
  XNR2D1 U130 ( .A1(n193), .A2(n225), .ZN(n171) );
  XNR2D1 U131 ( .A1(n194), .A2(n225), .ZN(n172) );
  XNR2D1 U132 ( .A1(n195), .A2(n225), .ZN(n173) );
  XNR2D1 U133 ( .A1(n196), .A2(n225), .ZN(n174) );
  XNR2D1 U134 ( .A1(n197), .A2(n225), .ZN(n175) );
  XNR2D1 U135 ( .A1(b[3]), .A2(n225), .ZN(n176) );
  XNR2D1 U136 ( .A1(n199), .A2(n225), .ZN(n177) );
  XNR2D1 U137 ( .A1(n200), .A2(n225), .ZN(n178) );
  XNR2D1 U138 ( .A1(n201), .A2(n225), .ZN(n179) );
  IND2D1 U139 ( .A1(n201), .B1(n225), .ZN(n180) );
  OAI22D0 U140 ( .A1(n211), .A2(n221), .B1(n216), .B2(n191), .ZN(n86) );
  AO21D1 U141 ( .A1(n211), .A2(n216), .B(n181), .Z(n127) );
  OAI22D0 U142 ( .A1(n211), .A2(n182), .B1(n216), .B2(n181), .ZN(n128) );
  OAI22D0 U143 ( .A1(n211), .A2(n183), .B1(n216), .B2(n182), .ZN(n129) );
  OAI22D0 U144 ( .A1(n211), .A2(n184), .B1(n216), .B2(n183), .ZN(n130) );
  OAI22D0 U145 ( .A1(n211), .A2(n185), .B1(n216), .B2(n184), .ZN(n131) );
  OAI22D0 U146 ( .A1(n211), .A2(n186), .B1(n216), .B2(n185), .ZN(n132) );
  OAI22D0 U147 ( .A1(n211), .A2(n187), .B1(n216), .B2(n186), .ZN(n133) );
  OAI22D0 U148 ( .A1(n211), .A2(n188), .B1(n216), .B2(n187), .ZN(n134) );
  OAI22D0 U149 ( .A1(n211), .A2(n189), .B1(n216), .B2(n188), .ZN(n135) );
  OAI22D0 U150 ( .A1(n211), .A2(n190), .B1(n216), .B2(n189), .ZN(n136) );
  INR2D1 U151 ( .A1(n201), .B1(n216), .ZN(product[0]) );
  XNR2D1 U152 ( .A1(n192), .A2(n226), .ZN(n181) );
  XNR2D1 U153 ( .A1(n193), .A2(n226), .ZN(n182) );
  XNR2D1 U154 ( .A1(n194), .A2(n226), .ZN(n183) );
  XNR2D1 U155 ( .A1(n195), .A2(n226), .ZN(n184) );
  XNR2D1 U156 ( .A1(n196), .A2(n226), .ZN(n185) );
  XNR2D1 U157 ( .A1(n197), .A2(n226), .ZN(n186) );
  XNR2D1 U158 ( .A1(b[3]), .A2(n226), .ZN(n187) );
  XNR2D1 U159 ( .A1(n199), .A2(n226), .ZN(n188) );
  XNR2D1 U160 ( .A1(n200), .A2(n226), .ZN(n189) );
  XNR2D1 U161 ( .A1(n201), .A2(n226), .ZN(n190) );
  IND2D1 U162 ( .A1(n201), .B1(n226), .ZN(n191) );
  INVD1 U175 ( .I(n222), .ZN(n217) );
  INVD1 U179 ( .I(n223), .ZN(n218) );
  INVD1 U183 ( .I(n224), .ZN(n219) );
  INVD1 U187 ( .I(n225), .ZN(n220) );
  INVD1 U191 ( .I(n226), .ZN(n221) );
  ND2D1 U193 ( .A1(n202), .A2(n232), .ZN(n227) );
  XOR2D1 U194 ( .A1(a[8]), .A2(a[9]), .Z(n202) );
  XNR2D1 U195 ( .A1(a[8]), .A2(a[7]), .ZN(n232) );
  ND2D1 U196 ( .A1(n203), .A2(n233), .ZN(n228) );
  XOR2D1 U197 ( .A1(a[6]), .A2(a[7]), .Z(n203) );
  XNR2D1 U198 ( .A1(a[6]), .A2(a[5]), .ZN(n233) );
  ND2D1 U199 ( .A1(n204), .A2(n234), .ZN(n229) );
  XOR2D1 U200 ( .A1(a[4]), .A2(a[5]), .Z(n204) );
  XNR2D1 U201 ( .A1(a[4]), .A2(a[3]), .ZN(n234) );
  ND2D1 U202 ( .A1(n205), .A2(n235), .ZN(n230) );
  XOR2D1 U203 ( .A1(a[2]), .A2(a[3]), .Z(n205) );
  XNR2D1 U204 ( .A1(a[2]), .A2(a[1]), .ZN(n235) );
  ND2D1 U205 ( .A1(n206), .A2(n236), .ZN(n231) );
  XOR2D1 U206 ( .A1(a[0]), .A2(a[1]), .Z(n206) );
  INVD1 U207 ( .I(a[0]), .ZN(n236) );
  BUFFD0 U210 ( .I(b[4]), .Z(n197) );
  BUFFD0 U211 ( .I(n236), .Z(n216) );
  BUFFD0 U212 ( .I(n235), .Z(n215) );
  BUFFD0 U213 ( .I(n232), .Z(n212) );
  BUFFD0 U214 ( .I(n233), .Z(n213) );
  BUFFD0 U215 ( .I(n234), .Z(n214) );
  BUFFD0 U216 ( .I(b[5]), .Z(n196) );
  BUFFD0 U217 ( .I(b[1]), .Z(n200) );
  BUFFD0 U218 ( .I(a[1]), .Z(n226) );
  BUFFD0 U219 ( .I(a[3]), .Z(n225) );
  BUFFD0 U220 ( .I(a[5]), .Z(n224) );
  BUFFD0 U221 ( .I(a[7]), .Z(n223) );
  BUFFD0 U222 ( .I(a[9]), .Z(n222) );
  BUFFD0 U223 ( .I(n231), .Z(n211) );
  BUFFD0 U224 ( .I(n230), .Z(n210) );
  BUFFD0 U225 ( .I(n227), .Z(n207) );
  BUFFD0 U226 ( .I(n228), .Z(n208) );
  BUFFD0 U227 ( .I(n229), .Z(n209) );
  BUFFD0 U228 ( .I(b[2]), .Z(n199) );
  BUFFD0 U229 ( .I(b[6]), .Z(n195) );
  BUFFD0 U230 ( .I(b[0]), .Z(n201) );
  BUFFD0 U231 ( .I(b[8]), .Z(n193) );
  BUFFD0 U232 ( .I(b[7]), .Z(n194) );
  BUFFD0 U233 ( .I(b[9]), .Z(n192) );
endmodule


module MAC ( sample_in, coeff, acc, result );
  input [9:0] sample_in;
  input [9:0] coeff;
  input [23:0] acc;
  output [23:0] result;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N19, N18, N17, N16, N15, N14, N13,
         N12, N11, N10, N1, N0;

  MAC_DW01_add_0 add_16 ( .A({N19, N19, N19, N19, N19, N18, N17, N16, N15, N14, 
        N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(acc), 
        .CI(1'b0), .SUM(result) );
  MAC_DW_mult_tc_1 mult_16 ( .a(sample_in), .b(coeff), .product({N19, N18, N17, 
        N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, 
        N0}) );
endmodule


module Arith_Unit ( clk, rst_n, rst_mac_n, sample1, coeff, result1 );
  input [9:0] sample1;
  input [9:0] coeff;
  output [23:0] result1;
  input clk, rst_n, rst_mac_n;
  wire   n1;
  wire   [23:0] MAC_result1;

  MAC MAC1 ( .sample_in(sample1), .coeff(coeff), .acc(result1), .result(
        MAC_result1) );
  DFCNQD1 \tmp_result1_reg[1]  ( .D(MAC_result1[1]), .CP(clk), .CDN(n1), .Q(
        result1[1]) );
  DFCNQD1 \tmp_result1_reg[2]  ( .D(MAC_result1[2]), .CP(clk), .CDN(n1), .Q(
        result1[2]) );
  DFCNQD1 \tmp_result1_reg[3]  ( .D(MAC_result1[3]), .CP(clk), .CDN(n1), .Q(
        result1[3]) );
  DFCNQD1 \tmp_result1_reg[4]  ( .D(MAC_result1[4]), .CP(clk), .CDN(n1), .Q(
        result1[4]) );
  DFCNQD1 \tmp_result1_reg[5]  ( .D(MAC_result1[5]), .CP(clk), .CDN(n1), .Q(
        result1[5]) );
  DFCNQD1 \tmp_result1_reg[6]  ( .D(MAC_result1[6]), .CP(clk), .CDN(n1), .Q(
        result1[6]) );
  DFCNQD1 \tmp_result1_reg[7]  ( .D(MAC_result1[7]), .CP(clk), .CDN(n1), .Q(
        result1[7]) );
  DFCNQD1 \tmp_result1_reg[8]  ( .D(MAC_result1[8]), .CP(clk), .CDN(n1), .Q(
        result1[8]) );
  DFCNQD1 \tmp_result1_reg[9]  ( .D(MAC_result1[9]), .CP(clk), .CDN(n1), .Q(
        result1[9]) );
  DFCNQD1 \tmp_result1_reg[10]  ( .D(MAC_result1[10]), .CP(clk), .CDN(n1), .Q(
        result1[10]) );
  DFCNQD1 \tmp_result1_reg[11]  ( .D(MAC_result1[11]), .CP(clk), .CDN(n1), .Q(
        result1[11]) );
  DFCNQD1 \tmp_result1_reg[12]  ( .D(MAC_result1[12]), .CP(clk), .CDN(n1), .Q(
        result1[12]) );
  DFCNQD1 \tmp_result1_reg[13]  ( .D(MAC_result1[13]), .CP(clk), .CDN(n1), .Q(
        result1[13]) );
  DFCNQD1 \tmp_result1_reg[14]  ( .D(MAC_result1[14]), .CP(clk), .CDN(n1), .Q(
        result1[14]) );
  DFCNQD1 \tmp_result1_reg[15]  ( .D(MAC_result1[15]), .CP(clk), .CDN(n1), .Q(
        result1[15]) );
  DFCNQD1 \tmp_result1_reg[16]  ( .D(MAC_result1[16]), .CP(clk), .CDN(n1), .Q(
        result1[16]) );
  DFCNQD1 \tmp_result1_reg[17]  ( .D(MAC_result1[17]), .CP(clk), .CDN(n1), .Q(
        result1[17]) );
  DFCNQD1 \tmp_result1_reg[18]  ( .D(MAC_result1[18]), .CP(clk), .CDN(n1), .Q(
        result1[18]) );
  DFCNQD1 \tmp_result1_reg[19]  ( .D(MAC_result1[19]), .CP(clk), .CDN(n1), .Q(
        result1[19]) );
  DFCNQD1 \tmp_result1_reg[20]  ( .D(MAC_result1[20]), .CP(clk), .CDN(n1), .Q(
        result1[20]) );
  DFCNQD1 \tmp_result1_reg[21]  ( .D(MAC_result1[21]), .CP(clk), .CDN(n1), .Q(
        result1[21]) );
  DFCNQD1 \tmp_result1_reg[22]  ( .D(MAC_result1[22]), .CP(clk), .CDN(n1), .Q(
        result1[22]) );
  DFCNQD1 \tmp_result1_reg[23]  ( .D(MAC_result1[23]), .CP(clk), .CDN(n1), .Q(
        result1[23]) );
  DFCNQD1 \tmp_result1_reg[0]  ( .D(MAC_result1[0]), .CP(clk), .CDN(n1), .Q(
        result1[0]) );
  AN2D1 U3 ( .A1(rst_n), .A2(rst_mac_n), .Z(n1) );
endmodule


module FSM ( rst_n, clk, sample_clk, delayLineWrEn, delayLineAdr, delayLineR1, 
        dav, rst_mac_n, coeffAdr );
  output [3:0] delayLineAdr;
  output [3:0] delayLineR1;
  output [3:0] coeffAdr;
  input rst_n, clk, sample_clk;
  output delayLineWrEn, dav, rst_mac_n;
  wire   N26, N27, N28, N29, N31, N32, N33, N47, N48, N49, N50, n35, n36, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n33;
  wire   [3:0] count;
  wire   [1:0] present_state;

  DFCNQD1 \count_reg[1]  ( .D(N31), .CP(clk), .CDN(rst_mac_n), .Q(count[1]) );
  DFCNQD1 \count_reg[3]  ( .D(N33), .CP(clk), .CDN(rst_mac_n), .Q(count[3]) );
  DFCNQD1 \present_state_reg[1]  ( .D(n35), .CP(clk), .CDN(rst_n), .Q(
        present_state[1]) );
  DFCNQD1 \count_reg[0]  ( .D(n33), .CP(clk), .CDN(rst_mac_n), .Q(count[0]) );
  EDFCNQD1 \wrAdr_reg[3]  ( .D(N29), .E(sample_clk), .CP(clk), .CDN(rst_n), 
        .Q(delayLineAdr[3]) );
  DFCNQD1 \present_state_reg[0]  ( .D(n36), .CP(clk), .CDN(rst_n), .Q(
        present_state[0]) );
  DFCNQD1 \count_reg[2]  ( .D(N32), .CP(clk), .CDN(rst_mac_n), .Q(count[2]) );
  EDFCNQD1 \wrAdr_reg[2]  ( .D(N28), .E(sample_clk), .CP(clk), .CDN(rst_n), 
        .Q(delayLineAdr[2]) );
  EDFCNQD1 \wrAdr_reg[1]  ( .D(N27), .E(sample_clk), .CP(clk), .CDN(rst_n), 
        .Q(delayLineAdr[1]) );
  DFCNQD1 \adrR1_reg[2]  ( .D(N49), .CP(clk), .CDN(rst_n), .Q(delayLineR1[2])
         );
  DFCNQD1 \adrR1_reg[1]  ( .D(N48), .CP(clk), .CDN(rst_n), .Q(delayLineR1[1])
         );
  DFCNQD1 \adrR1_reg[3]  ( .D(N50), .CP(clk), .CDN(rst_n), .Q(delayLineR1[3])
         );
  EDFCNQD1 \wrAdr_reg[0]  ( .D(N26), .E(sample_clk), .CP(clk), .CDN(rst_n), 
        .Q(delayLineAdr[0]) );
  DFCNQD1 \adrR1_reg[0]  ( .D(N47), .CP(clk), .CDN(rst_n), .Q(delayLineR1[0])
         );
  NR2D2 U3 ( .A1(n2), .A2(present_state[0]), .ZN(dav) );
  INVD1 U4 ( .I(present_state[1]), .ZN(n2) );
  IND2D0 U5 ( .A1(dav), .B1(n1), .ZN(rst_mac_n) );
  MUX2ND0 U6 ( .I0(n2), .I1(sample_clk), .S(n3), .ZN(n1) );
  MUX2ND0 U7 ( .I0(n4), .I1(n3), .S(n5), .ZN(n36) );
  ND2D0 U8 ( .A1(n3), .A2(n2), .ZN(n4) );
  NR3D0 U9 ( .A1(n5), .A2(present_state[1]), .A3(n3), .ZN(n35) );
  INVD0 U10 ( .I(present_state[0]), .ZN(n3) );
  OAI21D0 U11 ( .A1(sample_clk), .A2(present_state[0]), .B(n6), .ZN(n5) );
  NR3D0 U12 ( .A1(n7), .A2(present_state[1]), .A3(present_state[0]), .ZN(
        delayLineWrEn) );
  NR3D0 U13 ( .A1(n8), .A2(n9), .A3(n10), .ZN(coeffAdr[3]) );
  NR2D0 U14 ( .A1(n11), .A2(n8), .ZN(coeffAdr[2]) );
  AOI21D0 U15 ( .A1(count[2]), .A2(n12), .B(n9), .ZN(n11) );
  NR2D0 U16 ( .A1(N31), .A2(n8), .ZN(coeffAdr[1]) );
  NR2D0 U17 ( .A1(count[0]), .A2(n8), .ZN(coeffAdr[0]) );
  AO21D0 U18 ( .A1(n10), .A2(n9), .B(n6), .Z(n8) );
  ND3D0 U19 ( .A1(n13), .A2(n2), .A3(present_state[0]), .ZN(n6) );
  ND4D0 U20 ( .A1(n14), .A2(count[3]), .A3(count[2]), .A4(count[0]), .ZN(n13)
         );
  NR2D0 U21 ( .A1(n12), .A2(count[2]), .ZN(n9) );
  MUX2ND0 U22 ( .I0(n15), .I1(n16), .S(n7), .ZN(N50) );
  AOI21D0 U23 ( .A1(delayLineR1[3]), .A2(n17), .B(n18), .ZN(n16) );
  MUX2ND0 U24 ( .I0(n19), .I1(n20), .S(n7), .ZN(N49) );
  AN2D0 U25 ( .A1(n21), .A2(n17), .Z(n20) );
  OAI21D0 U26 ( .A1(delayLineR1[1]), .A2(delayLineR1[0]), .B(delayLineR1[2]), 
        .ZN(n21) );
  MUX2ND0 U27 ( .I0(n22), .I1(n23), .S(n7), .ZN(N48) );
  INVD0 U28 ( .I(sample_clk), .ZN(n7) );
  IND2D0 U29 ( .A1(n18), .B1(n24), .ZN(n23) );
  XNR2D0 U30 ( .A1(delayLineR1[0]), .A2(delayLineR1[1]), .ZN(n24) );
  CKMUX2D0 U31 ( .I0(n25), .I1(delayLineAdr[0]), .S(sample_clk), .Z(N47) );
  NR2D0 U32 ( .A1(n18), .A2(delayLineR1[0]), .ZN(n25) );
  NR2D0 U33 ( .A1(n17), .A2(delayLineR1[3]), .ZN(n18) );
  OR3D0 U34 ( .A1(delayLineR1[1]), .A2(delayLineR1[2]), .A3(delayLineR1[0]), 
        .Z(n17) );
  XNR2D0 U35 ( .A1(n10), .A2(n26), .ZN(N33) );
  INR2D0 U36 ( .A1(count[2]), .B1(n27), .ZN(n26) );
  INVD0 U37 ( .I(count[3]), .ZN(n10) );
  XNR2D0 U38 ( .A1(n27), .A2(count[2]), .ZN(N32) );
  AN2D0 U39 ( .A1(n27), .A2(n12), .Z(N31) );
  ND2D0 U40 ( .A1(n14), .A2(n33), .ZN(n12) );
  INVD0 U41 ( .I(count[0]), .ZN(n33) );
  INVD0 U42 ( .I(count[1]), .ZN(n14) );
  ND2D0 U43 ( .A1(count[1]), .A2(count[0]), .ZN(n27) );
  MUX2ND0 U44 ( .I0(n28), .I1(n29), .S(n15), .ZN(N29) );
  INVD0 U45 ( .I(delayLineAdr[3]), .ZN(n15) );
  ND3D0 U46 ( .A1(delayLineAdr[1]), .A2(delayLineAdr[2]), .A3(delayLineAdr[0]), 
        .ZN(n29) );
  AN2D0 U47 ( .A1(delayLineAdr[2]), .A2(n30), .Z(n28) );
  MUX2ND0 U48 ( .I0(n30), .I1(n31), .S(n19), .ZN(N28) );
  INVD0 U49 ( .I(delayLineAdr[2]), .ZN(n19) );
  ND2D0 U50 ( .A1(delayLineAdr[0]), .A2(delayLineAdr[1]), .ZN(n31) );
  AOI21D0 U51 ( .A1(n22), .A2(delayLineAdr[0]), .B(N26), .ZN(n30) );
  XNR2D0 U52 ( .A1(n22), .A2(delayLineAdr[0]), .ZN(N27) );
  AOI31D0 U53 ( .A1(delayLineAdr[2]), .A2(n22), .A3(delayLineAdr[3]), .B(
        delayLineAdr[0]), .ZN(N26) );
  INVD0 U54 ( .I(delayLineAdr[1]), .ZN(n22) );
endmodule


module Top_Serial_FIR ( clk, rst_n, sample_clk, sample, conv_sum, dav );
  input [9:0] sample;
  output [23:0] conv_sum;
  input clk, rst_n, sample_clk;
  output dav;
  wire   w_en, rst_mac_n;
  wire   [3:0] w_addr;
  wire   [3:0] r_addr1;
  wire   [9:0] sample_out1;
  wire   [3:0] coeff_addr;
  wire   [9:0] coeff;
  wire   [23:0] result;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  delay_line D1 ( .clk(clk), .sample_clk(sample_clk), .rst_n(rst_n), .w_addr(
        w_addr), .w_en(w_en), .sample_in(sample), .r_addr1(r_addr1), 
        .sample_out1(sample_out1) );
  Coef_ROM C1 ( .coeff_addr(coeff_addr), .coeff({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, coeff[6:1], 
        SYNOPSYS_UNCONNECTED__3}) );
  Arith_Unit A1 ( .clk(clk), .rst_n(rst_n), .rst_mac_n(rst_mac_n), .sample1(
        sample_out1), .coeff({1'b0, 1'b0, 1'b0, coeff[6:1], 1'b1}), .result1(
        result) );
  FSM F1 ( .rst_n(rst_n), .clk(clk), .sample_clk(sample_clk), .delayLineWrEn(
        w_en), .delayLineAdr(w_addr), .delayLineR1(r_addr1), .dav(dav), 
        .rst_mac_n(rst_mac_n), .coeffAdr(coeff_addr) );
  AN2D0 U26 ( .A1(result[9]), .A2(dav), .Z(conv_sum[9]) );
  AN2D0 U27 ( .A1(result[8]), .A2(dav), .Z(conv_sum[8]) );
  AN2D0 U28 ( .A1(result[7]), .A2(dav), .Z(conv_sum[7]) );
  AN2D0 U29 ( .A1(result[6]), .A2(dav), .Z(conv_sum[6]) );
  AN2D0 U30 ( .A1(result[5]), .A2(dav), .Z(conv_sum[5]) );
  AN2D0 U31 ( .A1(result[4]), .A2(dav), .Z(conv_sum[4]) );
  AN2D0 U32 ( .A1(result[3]), .A2(dav), .Z(conv_sum[3]) );
  AN2D0 U33 ( .A1(result[2]), .A2(dav), .Z(conv_sum[2]) );
  AN2D0 U34 ( .A1(result[23]), .A2(dav), .Z(conv_sum[23]) );
  AN2D0 U35 ( .A1(result[22]), .A2(dav), .Z(conv_sum[22]) );
  AN2D0 U36 ( .A1(result[21]), .A2(dav), .Z(conv_sum[21]) );
  AN2D0 U37 ( .A1(result[20]), .A2(dav), .Z(conv_sum[20]) );
  AN2D0 U38 ( .A1(result[1]), .A2(dav), .Z(conv_sum[1]) );
  AN2D0 U39 ( .A1(result[19]), .A2(dav), .Z(conv_sum[19]) );
  AN2D0 U40 ( .A1(result[18]), .A2(dav), .Z(conv_sum[18]) );
  AN2D0 U41 ( .A1(result[17]), .A2(dav), .Z(conv_sum[17]) );
  AN2D0 U42 ( .A1(result[16]), .A2(dav), .Z(conv_sum[16]) );
  AN2D0 U43 ( .A1(result[15]), .A2(dav), .Z(conv_sum[15]) );
  AN2D0 U44 ( .A1(result[14]), .A2(dav), .Z(conv_sum[14]) );
  AN2D0 U45 ( .A1(result[13]), .A2(dav), .Z(conv_sum[13]) );
  AN2D0 U46 ( .A1(result[12]), .A2(dav), .Z(conv_sum[12]) );
  AN2D0 U47 ( .A1(result[11]), .A2(dav), .Z(conv_sum[11]) );
  AN2D0 U48 ( .A1(result[10]), .A2(dav), .Z(conv_sum[10]) );
  AN2D0 U49 ( .A1(result[0]), .A2(dav), .Z(conv_sum[0]) );
endmodule

