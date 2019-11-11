
module Shift_register ( clk, sample_clk, rst_n, sample_in, .sample_out({
        \sample_out[12][9] , \sample_out[12][8] , \sample_out[12][7] , 
        \sample_out[12][6] , \sample_out[12][5] , \sample_out[12][4] , 
        \sample_out[12][3] , \sample_out[12][2] , \sample_out[12][1] , 
        \sample_out[12][0] , \sample_out[11][9] , \sample_out[11][8] , 
        \sample_out[11][7] , \sample_out[11][6] , \sample_out[11][5] , 
        \sample_out[11][4] , \sample_out[11][3] , \sample_out[11][2] , 
        \sample_out[11][1] , \sample_out[11][0] , \sample_out[10][9] , 
        \sample_out[10][8] , \sample_out[10][7] , \sample_out[10][6] , 
        \sample_out[10][5] , \sample_out[10][4] , \sample_out[10][3] , 
        \sample_out[10][2] , \sample_out[10][1] , \sample_out[10][0] , 
        \sample_out[9][9] , \sample_out[9][8] , \sample_out[9][7] , 
        \sample_out[9][6] , \sample_out[9][5] , \sample_out[9][4] , 
        \sample_out[9][3] , \sample_out[9][2] , \sample_out[9][1] , 
        \sample_out[9][0] , \sample_out[8][9] , \sample_out[8][8] , 
        \sample_out[8][7] , \sample_out[8][6] , \sample_out[8][5] , 
        \sample_out[8][4] , \sample_out[8][3] , \sample_out[8][2] , 
        \sample_out[8][1] , \sample_out[8][0] , \sample_out[7][9] , 
        \sample_out[7][8] , \sample_out[7][7] , \sample_out[7][6] , 
        \sample_out[7][5] , \sample_out[7][4] , \sample_out[7][3] , 
        \sample_out[7][2] , \sample_out[7][1] , \sample_out[7][0] , 
        \sample_out[6][9] , \sample_out[6][8] , \sample_out[6][7] , 
        \sample_out[6][6] , \sample_out[6][5] , \sample_out[6][4] , 
        \sample_out[6][3] , \sample_out[6][2] , \sample_out[6][1] , 
        \sample_out[6][0] , \sample_out[5][9] , \sample_out[5][8] , 
        \sample_out[5][7] , \sample_out[5][6] , \sample_out[5][5] , 
        \sample_out[5][4] , \sample_out[5][3] , \sample_out[5][2] , 
        \sample_out[5][1] , \sample_out[5][0] , \sample_out[4][9] , 
        \sample_out[4][8] , \sample_out[4][7] , \sample_out[4][6] , 
        \sample_out[4][5] , \sample_out[4][4] , \sample_out[4][3] , 
        \sample_out[4][2] , \sample_out[4][1] , \sample_out[4][0] , 
        \sample_out[3][9] , \sample_out[3][8] , \sample_out[3][7] , 
        \sample_out[3][6] , \sample_out[3][5] , \sample_out[3][4] , 
        \sample_out[3][3] , \sample_out[3][2] , \sample_out[3][1] , 
        \sample_out[3][0] , \sample_out[2][9] , \sample_out[2][8] , 
        \sample_out[2][7] , \sample_out[2][6] , \sample_out[2][5] , 
        \sample_out[2][4] , \sample_out[2][3] , \sample_out[2][2] , 
        \sample_out[2][1] , \sample_out[2][0] , \sample_out[1][9] , 
        \sample_out[1][8] , \sample_out[1][7] , \sample_out[1][6] , 
        \sample_out[1][5] , \sample_out[1][4] , \sample_out[1][3] , 
        \sample_out[1][2] , \sample_out[1][1] , \sample_out[1][0] , 
        \sample_out[0][9] , \sample_out[0][8] , \sample_out[0][7] , 
        \sample_out[0][6] , \sample_out[0][5] , \sample_out[0][4] , 
        \sample_out[0][3] , \sample_out[0][2] , \sample_out[0][1] , 
        \sample_out[0][0] }) );
  input [9:0] sample_in;
  input clk, sample_clk, rst_n;
  output \sample_out[12][9] , \sample_out[12][8] , \sample_out[12][7] ,
         \sample_out[12][6] , \sample_out[12][5] , \sample_out[12][4] ,
         \sample_out[12][3] , \sample_out[12][2] , \sample_out[12][1] ,
         \sample_out[12][0] , \sample_out[11][9] , \sample_out[11][8] ,
         \sample_out[11][7] , \sample_out[11][6] , \sample_out[11][5] ,
         \sample_out[11][4] , \sample_out[11][3] , \sample_out[11][2] ,
         \sample_out[11][1] , \sample_out[11][0] , \sample_out[10][9] ,
         \sample_out[10][8] , \sample_out[10][7] , \sample_out[10][6] ,
         \sample_out[10][5] , \sample_out[10][4] , \sample_out[10][3] ,
         \sample_out[10][2] , \sample_out[10][1] , \sample_out[10][0] ,
         \sample_out[9][9] , \sample_out[9][8] , \sample_out[9][7] ,
         \sample_out[9][6] , \sample_out[9][5] , \sample_out[9][4] ,
         \sample_out[9][3] , \sample_out[9][2] , \sample_out[9][1] ,
         \sample_out[9][0] , \sample_out[8][9] , \sample_out[8][8] ,
         \sample_out[8][7] , \sample_out[8][6] , \sample_out[8][5] ,
         \sample_out[8][4] , \sample_out[8][3] , \sample_out[8][2] ,
         \sample_out[8][1] , \sample_out[8][0] , \sample_out[7][9] ,
         \sample_out[7][8] , \sample_out[7][7] , \sample_out[7][6] ,
         \sample_out[7][5] , \sample_out[7][4] , \sample_out[7][3] ,
         \sample_out[7][2] , \sample_out[7][1] , \sample_out[7][0] ,
         \sample_out[6][9] , \sample_out[6][8] , \sample_out[6][7] ,
         \sample_out[6][6] , \sample_out[6][5] , \sample_out[6][4] ,
         \sample_out[6][3] , \sample_out[6][2] , \sample_out[6][1] ,
         \sample_out[6][0] , \sample_out[5][9] , \sample_out[5][8] ,
         \sample_out[5][7] , \sample_out[5][6] , \sample_out[5][5] ,
         \sample_out[5][4] , \sample_out[5][3] , \sample_out[5][2] ,
         \sample_out[5][1] , \sample_out[5][0] , \sample_out[4][9] ,
         \sample_out[4][8] , \sample_out[4][7] , \sample_out[4][6] ,
         \sample_out[4][5] , \sample_out[4][4] , \sample_out[4][3] ,
         \sample_out[4][2] , \sample_out[4][1] , \sample_out[4][0] ,
         \sample_out[3][9] , \sample_out[3][8] , \sample_out[3][7] ,
         \sample_out[3][6] , \sample_out[3][5] , \sample_out[3][4] ,
         \sample_out[3][3] , \sample_out[3][2] , \sample_out[3][1] ,
         \sample_out[3][0] , \sample_out[2][9] , \sample_out[2][8] ,
         \sample_out[2][7] , \sample_out[2][6] , \sample_out[2][5] ,
         \sample_out[2][4] , \sample_out[2][3] , \sample_out[2][2] ,
         \sample_out[2][1] , \sample_out[2][0] , \sample_out[1][9] ,
         \sample_out[1][8] , \sample_out[1][7] , \sample_out[1][6] ,
         \sample_out[1][5] , \sample_out[1][4] , \sample_out[1][3] ,
         \sample_out[1][2] , \sample_out[1][1] , \sample_out[1][0] ,
         \sample_out[0][9] , \sample_out[0][8] , \sample_out[0][7] ,
         \sample_out[0][6] , \sample_out[0][5] , \sample_out[0][4] ,
         \sample_out[0][3] , \sample_out[0][2] , \sample_out[0][1] ,
         \sample_out[0][0] ;


  EDFCNQD1 \data_reg[12][9]  ( .D(\sample_out[11][9] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[12][9] ) );
  EDFCNQD1 \data_reg[12][0]  ( .D(\sample_out[11][0] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[12][0] ) );
  EDFCNQD1 \data_reg[12][8]  ( .D(\sample_out[11][8] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[12][8] ) );
  EDFCNQD1 \data_reg[12][6]  ( .D(\sample_out[11][6] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[12][6] ) );
  EDFCNQD1 \data_reg[12][4]  ( .D(\sample_out[11][4] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[12][4] ) );
  EDFCNQD1 \data_reg[12][2]  ( .D(\sample_out[11][2] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[12][2] ) );
  EDFCNQD1 \data_reg[0][9]  ( .D(sample_in[9]), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[0][9] ) );
  EDFCNQD1 \data_reg[1][9]  ( .D(\sample_out[0][9] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[1][9] ) );
  EDFCNQD1 \data_reg[2][9]  ( .D(\sample_out[1][9] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[2][9] ) );
  EDFCNQD1 \data_reg[3][9]  ( .D(\sample_out[2][9] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[3][9] ) );
  EDFCNQD1 \data_reg[4][9]  ( .D(\sample_out[3][9] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[4][9] ) );
  EDFCNQD1 \data_reg[5][9]  ( .D(\sample_out[4][9] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[5][9] ) );
  EDFCNQD1 \data_reg[6][9]  ( .D(\sample_out[5][9] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[6][9] ) );
  EDFCNQD1 \data_reg[7][9]  ( .D(\sample_out[6][9] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[7][9] ) );
  EDFCNQD1 \data_reg[8][9]  ( .D(\sample_out[7][9] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[8][9] ) );
  EDFCNQD1 \data_reg[9][9]  ( .D(\sample_out[8][9] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[9][9] ) );
  EDFCNQD1 \data_reg[10][9]  ( .D(\sample_out[9][9] ), .E(sample_clk), .CP(clk), .CDN(rst_n), .Q(\sample_out[10][9] ) );
  EDFCNQD1 \data_reg[11][9]  ( .D(\sample_out[10][9] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[11][9] ) );
  EDFCNQD1 \data_reg[0][0]  ( .D(sample_in[0]), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[0][0] ) );
  EDFCNQD1 \data_reg[1][0]  ( .D(\sample_out[0][0] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[1][0] ) );
  EDFCNQD1 \data_reg[2][0]  ( .D(\sample_out[1][0] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[2][0] ) );
  EDFCNQD1 \data_reg[3][0]  ( .D(\sample_out[2][0] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[3][0] ) );
  EDFCNQD1 \data_reg[4][0]  ( .D(\sample_out[3][0] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[4][0] ) );
  EDFCNQD1 \data_reg[5][0]  ( .D(\sample_out[4][0] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[5][0] ) );
  EDFCNQD1 \data_reg[6][0]  ( .D(\sample_out[5][0] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[6][0] ) );
  EDFCNQD1 \data_reg[7][0]  ( .D(\sample_out[6][0] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[7][0] ) );
  EDFCNQD1 \data_reg[8][0]  ( .D(\sample_out[7][0] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[8][0] ) );
  EDFCNQD1 \data_reg[9][0]  ( .D(\sample_out[8][0] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[9][0] ) );
  EDFCNQD1 \data_reg[10][0]  ( .D(\sample_out[9][0] ), .E(sample_clk), .CP(clk), .CDN(rst_n), .Q(\sample_out[10][0] ) );
  EDFCNQD1 \data_reg[11][0]  ( .D(\sample_out[10][0] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[11][0] ) );
  EDFCNQD1 \data_reg[12][7]  ( .D(\sample_out[11][7] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[12][7] ) );
  EDFCNQD1 \data_reg[12][5]  ( .D(\sample_out[11][5] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[12][5] ) );
  EDFCNQD1 \data_reg[12][3]  ( .D(\sample_out[11][3] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[12][3] ) );
  EDFCNQD1 \data_reg[12][1]  ( .D(\sample_out[11][1] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[12][1] ) );
  EDFCNQD1 \data_reg[0][8]  ( .D(sample_in[8]), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[0][8] ) );
  EDFCNQD1 \data_reg[1][8]  ( .D(\sample_out[0][8] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[1][8] ) );
  EDFCNQD1 \data_reg[2][8]  ( .D(\sample_out[1][8] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[2][8] ) );
  EDFCNQD1 \data_reg[3][8]  ( .D(\sample_out[2][8] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[3][8] ) );
  EDFCNQD1 \data_reg[4][8]  ( .D(\sample_out[3][8] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[4][8] ) );
  EDFCNQD1 \data_reg[5][8]  ( .D(\sample_out[4][8] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[5][8] ) );
  EDFCNQD1 \data_reg[6][8]  ( .D(\sample_out[5][8] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[6][8] ) );
  EDFCNQD1 \data_reg[7][8]  ( .D(\sample_out[6][8] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[7][8] ) );
  EDFCNQD1 \data_reg[8][8]  ( .D(\sample_out[7][8] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[8][8] ) );
  EDFCNQD1 \data_reg[9][8]  ( .D(\sample_out[8][8] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[9][8] ) );
  EDFCNQD1 \data_reg[10][8]  ( .D(\sample_out[9][8] ), .E(sample_clk), .CP(clk), .CDN(rst_n), .Q(\sample_out[10][8] ) );
  EDFCNQD1 \data_reg[11][8]  ( .D(\sample_out[10][8] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[11][8] ) );
  EDFCNQD1 \data_reg[0][6]  ( .D(sample_in[6]), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[0][6] ) );
  EDFCNQD1 \data_reg[1][6]  ( .D(\sample_out[0][6] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[1][6] ) );
  EDFCNQD1 \data_reg[2][6]  ( .D(\sample_out[1][6] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[2][6] ) );
  EDFCNQD1 \data_reg[3][6]  ( .D(\sample_out[2][6] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[3][6] ) );
  EDFCNQD1 \data_reg[4][6]  ( .D(\sample_out[3][6] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[4][6] ) );
  EDFCNQD1 \data_reg[5][6]  ( .D(\sample_out[4][6] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[5][6] ) );
  EDFCNQD1 \data_reg[6][6]  ( .D(\sample_out[5][6] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[6][6] ) );
  EDFCNQD1 \data_reg[7][6]  ( .D(\sample_out[6][6] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[7][6] ) );
  EDFCNQD1 \data_reg[8][6]  ( .D(\sample_out[7][6] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[8][6] ) );
  EDFCNQD1 \data_reg[9][6]  ( .D(\sample_out[8][6] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[9][6] ) );
  EDFCNQD1 \data_reg[10][6]  ( .D(\sample_out[9][6] ), .E(sample_clk), .CP(clk), .CDN(rst_n), .Q(\sample_out[10][6] ) );
  EDFCNQD1 \data_reg[11][6]  ( .D(\sample_out[10][6] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[11][6] ) );
  EDFCNQD1 \data_reg[0][4]  ( .D(sample_in[4]), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[0][4] ) );
  EDFCNQD1 \data_reg[1][4]  ( .D(\sample_out[0][4] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[1][4] ) );
  EDFCNQD1 \data_reg[2][4]  ( .D(\sample_out[1][4] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[2][4] ) );
  EDFCNQD1 \data_reg[3][4]  ( .D(\sample_out[2][4] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[3][4] ) );
  EDFCNQD1 \data_reg[4][4]  ( .D(\sample_out[3][4] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[4][4] ) );
  EDFCNQD1 \data_reg[5][4]  ( .D(\sample_out[4][4] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[5][4] ) );
  EDFCNQD1 \data_reg[6][4]  ( .D(\sample_out[5][4] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[6][4] ) );
  EDFCNQD1 \data_reg[7][4]  ( .D(\sample_out[6][4] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[7][4] ) );
  EDFCNQD1 \data_reg[8][4]  ( .D(\sample_out[7][4] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[8][4] ) );
  EDFCNQD1 \data_reg[9][4]  ( .D(\sample_out[8][4] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[9][4] ) );
  EDFCNQD1 \data_reg[10][4]  ( .D(\sample_out[9][4] ), .E(sample_clk), .CP(clk), .CDN(rst_n), .Q(\sample_out[10][4] ) );
  EDFCNQD1 \data_reg[11][4]  ( .D(\sample_out[10][4] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[11][4] ) );
  EDFCNQD1 \data_reg[0][2]  ( .D(sample_in[2]), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[0][2] ) );
  EDFCNQD1 \data_reg[1][2]  ( .D(\sample_out[0][2] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[1][2] ) );
  EDFCNQD1 \data_reg[2][2]  ( .D(\sample_out[1][2] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[2][2] ) );
  EDFCNQD1 \data_reg[3][2]  ( .D(\sample_out[2][2] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[3][2] ) );
  EDFCNQD1 \data_reg[4][2]  ( .D(\sample_out[3][2] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[4][2] ) );
  EDFCNQD1 \data_reg[5][2]  ( .D(\sample_out[4][2] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[5][2] ) );
  EDFCNQD1 \data_reg[6][2]  ( .D(\sample_out[5][2] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[6][2] ) );
  EDFCNQD1 \data_reg[7][2]  ( .D(\sample_out[6][2] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[7][2] ) );
  EDFCNQD1 \data_reg[8][2]  ( .D(\sample_out[7][2] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[8][2] ) );
  EDFCNQD1 \data_reg[9][2]  ( .D(\sample_out[8][2] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[9][2] ) );
  EDFCNQD1 \data_reg[10][2]  ( .D(\sample_out[9][2] ), .E(sample_clk), .CP(clk), .CDN(rst_n), .Q(\sample_out[10][2] ) );
  EDFCNQD1 \data_reg[11][2]  ( .D(\sample_out[10][2] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[11][2] ) );
  EDFCNQD1 \data_reg[0][7]  ( .D(sample_in[7]), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[0][7] ) );
  EDFCNQD1 \data_reg[1][7]  ( .D(\sample_out[0][7] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[1][7] ) );
  EDFCNQD1 \data_reg[2][7]  ( .D(\sample_out[1][7] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[2][7] ) );
  EDFCNQD1 \data_reg[3][7]  ( .D(\sample_out[2][7] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[3][7] ) );
  EDFCNQD1 \data_reg[4][7]  ( .D(\sample_out[3][7] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[4][7] ) );
  EDFCNQD1 \data_reg[5][7]  ( .D(\sample_out[4][7] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[5][7] ) );
  EDFCNQD1 \data_reg[6][7]  ( .D(\sample_out[5][7] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[6][7] ) );
  EDFCNQD1 \data_reg[7][7]  ( .D(\sample_out[6][7] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[7][7] ) );
  EDFCNQD1 \data_reg[8][7]  ( .D(\sample_out[7][7] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[8][7] ) );
  EDFCNQD1 \data_reg[9][7]  ( .D(\sample_out[8][7] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[9][7] ) );
  EDFCNQD1 \data_reg[10][7]  ( .D(\sample_out[9][7] ), .E(sample_clk), .CP(clk), .CDN(rst_n), .Q(\sample_out[10][7] ) );
  EDFCNQD1 \data_reg[11][7]  ( .D(\sample_out[10][7] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[11][7] ) );
  EDFCNQD1 \data_reg[0][5]  ( .D(sample_in[5]), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[0][5] ) );
  EDFCNQD1 \data_reg[1][5]  ( .D(\sample_out[0][5] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[1][5] ) );
  EDFCNQD1 \data_reg[2][5]  ( .D(\sample_out[1][5] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[2][5] ) );
  EDFCNQD1 \data_reg[3][5]  ( .D(\sample_out[2][5] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[3][5] ) );
  EDFCNQD1 \data_reg[4][5]  ( .D(\sample_out[3][5] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[4][5] ) );
  EDFCNQD1 \data_reg[5][5]  ( .D(\sample_out[4][5] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[5][5] ) );
  EDFCNQD1 \data_reg[6][5]  ( .D(\sample_out[5][5] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[6][5] ) );
  EDFCNQD1 \data_reg[7][5]  ( .D(\sample_out[6][5] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[7][5] ) );
  EDFCNQD1 \data_reg[8][5]  ( .D(\sample_out[7][5] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[8][5] ) );
  EDFCNQD1 \data_reg[9][5]  ( .D(\sample_out[8][5] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[9][5] ) );
  EDFCNQD1 \data_reg[10][5]  ( .D(\sample_out[9][5] ), .E(sample_clk), .CP(clk), .CDN(rst_n), .Q(\sample_out[10][5] ) );
  EDFCNQD1 \data_reg[11][5]  ( .D(\sample_out[10][5] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[11][5] ) );
  EDFCNQD1 \data_reg[0][3]  ( .D(sample_in[3]), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[0][3] ) );
  EDFCNQD1 \data_reg[1][3]  ( .D(\sample_out[0][3] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[1][3] ) );
  EDFCNQD1 \data_reg[2][3]  ( .D(\sample_out[1][3] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[2][3] ) );
  EDFCNQD1 \data_reg[3][3]  ( .D(\sample_out[2][3] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[3][3] ) );
  EDFCNQD1 \data_reg[4][3]  ( .D(\sample_out[3][3] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[4][3] ) );
  EDFCNQD1 \data_reg[5][3]  ( .D(\sample_out[4][3] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[5][3] ) );
  EDFCNQD1 \data_reg[6][3]  ( .D(\sample_out[5][3] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[6][3] ) );
  EDFCNQD1 \data_reg[7][3]  ( .D(\sample_out[6][3] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[7][3] ) );
  EDFCNQD1 \data_reg[8][3]  ( .D(\sample_out[7][3] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[8][3] ) );
  EDFCNQD1 \data_reg[9][3]  ( .D(\sample_out[8][3] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[9][3] ) );
  EDFCNQD1 \data_reg[10][3]  ( .D(\sample_out[9][3] ), .E(sample_clk), .CP(clk), .CDN(rst_n), .Q(\sample_out[10][3] ) );
  EDFCNQD1 \data_reg[11][3]  ( .D(\sample_out[10][3] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[11][3] ) );
  EDFCNQD1 \data_reg[0][1]  ( .D(sample_in[1]), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[0][1] ) );
  EDFCNQD1 \data_reg[1][1]  ( .D(\sample_out[0][1] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[1][1] ) );
  EDFCNQD1 \data_reg[2][1]  ( .D(\sample_out[1][1] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[2][1] ) );
  EDFCNQD1 \data_reg[3][1]  ( .D(\sample_out[2][1] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[3][1] ) );
  EDFCNQD1 \data_reg[4][1]  ( .D(\sample_out[3][1] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[4][1] ) );
  EDFCNQD1 \data_reg[5][1]  ( .D(\sample_out[4][1] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[5][1] ) );
  EDFCNQD1 \data_reg[6][1]  ( .D(\sample_out[5][1] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[6][1] ) );
  EDFCNQD1 \data_reg[7][1]  ( .D(\sample_out[6][1] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[7][1] ) );
  EDFCNQD1 \data_reg[8][1]  ( .D(\sample_out[7][1] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[8][1] ) );
  EDFCNQD1 \data_reg[9][1]  ( .D(\sample_out[8][1] ), .E(sample_clk), .CP(clk), 
        .CDN(rst_n), .Q(\sample_out[9][1] ) );
  EDFCNQD1 \data_reg[10][1]  ( .D(\sample_out[9][1] ), .E(sample_clk), .CP(clk), .CDN(rst_n), .Q(\sample_out[10][1] ) );
  EDFCNQD1 \data_reg[11][1]  ( .D(\sample_out[10][1] ), .E(sample_clk), .CP(
        clk), .CDN(rst_n), .Q(\sample_out[11][1] ) );
endmodule


module Coef_ROM ( .all_coeffs({\all_coeffs[12][9] , \all_coeffs[12][8] , 
        \all_coeffs[12][7] , \all_coeffs[12][6] , \all_coeffs[12][5] , 
        \all_coeffs[12][4] , \all_coeffs[12][3] , \all_coeffs[12][2] , 
        \all_coeffs[12][1] , \all_coeffs[12][0] , \all_coeffs[11][9] , 
        \all_coeffs[11][8] , \all_coeffs[11][7] , \all_coeffs[11][6] , 
        \all_coeffs[11][5] , \all_coeffs[11][4] , \all_coeffs[11][3] , 
        \all_coeffs[11][2] , \all_coeffs[11][1] , \all_coeffs[11][0] , 
        \all_coeffs[10][9] , \all_coeffs[10][8] , \all_coeffs[10][7] , 
        \all_coeffs[10][6] , \all_coeffs[10][5] , \all_coeffs[10][4] , 
        \all_coeffs[10][3] , \all_coeffs[10][2] , \all_coeffs[10][1] , 
        \all_coeffs[10][0] , \all_coeffs[9][9] , \all_coeffs[9][8] , 
        \all_coeffs[9][7] , \all_coeffs[9][6] , \all_coeffs[9][5] , 
        \all_coeffs[9][4] , \all_coeffs[9][3] , \all_coeffs[9][2] , 
        \all_coeffs[9][1] , \all_coeffs[9][0] , \all_coeffs[8][9] , 
        \all_coeffs[8][8] , \all_coeffs[8][7] , \all_coeffs[8][6] , 
        \all_coeffs[8][5] , \all_coeffs[8][4] , \all_coeffs[8][3] , 
        \all_coeffs[8][2] , \all_coeffs[8][1] , \all_coeffs[8][0] , 
        \all_coeffs[7][9] , \all_coeffs[7][8] , \all_coeffs[7][7] , 
        \all_coeffs[7][6] , \all_coeffs[7][5] , \all_coeffs[7][4] , 
        \all_coeffs[7][3] , \all_coeffs[7][2] , \all_coeffs[7][1] , 
        \all_coeffs[7][0] , \all_coeffs[6][9] , \all_coeffs[6][8] , 
        \all_coeffs[6][7] , \all_coeffs[6][6] , \all_coeffs[6][5] , 
        \all_coeffs[6][4] , \all_coeffs[6][3] , \all_coeffs[6][2] , 
        \all_coeffs[6][1] , \all_coeffs[6][0] , \all_coeffs[5][9] , 
        \all_coeffs[5][8] , \all_coeffs[5][7] , \all_coeffs[5][6] , 
        \all_coeffs[5][5] , \all_coeffs[5][4] , \all_coeffs[5][3] , 
        \all_coeffs[5][2] , \all_coeffs[5][1] , \all_coeffs[5][0] , 
        \all_coeffs[4][9] , \all_coeffs[4][8] , \all_coeffs[4][7] , 
        \all_coeffs[4][6] , \all_coeffs[4][5] , \all_coeffs[4][4] , 
        \all_coeffs[4][3] , \all_coeffs[4][2] , \all_coeffs[4][1] , 
        \all_coeffs[4][0] , \all_coeffs[3][9] , \all_coeffs[3][8] , 
        \all_coeffs[3][7] , \all_coeffs[3][6] , \all_coeffs[3][5] , 
        \all_coeffs[3][4] , \all_coeffs[3][3] , \all_coeffs[3][2] , 
        \all_coeffs[3][1] , \all_coeffs[3][0] , \all_coeffs[2][9] , 
        \all_coeffs[2][8] , \all_coeffs[2][7] , \all_coeffs[2][6] , 
        \all_coeffs[2][5] , \all_coeffs[2][4] , \all_coeffs[2][3] , 
        \all_coeffs[2][2] , \all_coeffs[2][1] , \all_coeffs[2][0] , 
        \all_coeffs[1][9] , \all_coeffs[1][8] , \all_coeffs[1][7] , 
        \all_coeffs[1][6] , \all_coeffs[1][5] , \all_coeffs[1][4] , 
        \all_coeffs[1][3] , \all_coeffs[1][2] , \all_coeffs[1][1] , 
        \all_coeffs[1][0] , \all_coeffs[0][9] , \all_coeffs[0][8] , 
        \all_coeffs[0][7] , \all_coeffs[0][6] , \all_coeffs[0][5] , 
        \all_coeffs[0][4] , \all_coeffs[0][3] , \all_coeffs[0][2] , 
        \all_coeffs[0][1] , \all_coeffs[0][0] }) );
  output \all_coeffs[12][9] , \all_coeffs[12][8] , \all_coeffs[12][7] ,
         \all_coeffs[12][6] , \all_coeffs[12][5] , \all_coeffs[12][4] ,
         \all_coeffs[12][3] , \all_coeffs[12][2] , \all_coeffs[12][1] ,
         \all_coeffs[12][0] , \all_coeffs[11][9] , \all_coeffs[11][8] ,
         \all_coeffs[11][7] , \all_coeffs[11][6] , \all_coeffs[11][5] ,
         \all_coeffs[11][4] , \all_coeffs[11][3] , \all_coeffs[11][2] ,
         \all_coeffs[11][1] , \all_coeffs[11][0] , \all_coeffs[10][9] ,
         \all_coeffs[10][8] , \all_coeffs[10][7] , \all_coeffs[10][6] ,
         \all_coeffs[10][5] , \all_coeffs[10][4] , \all_coeffs[10][3] ,
         \all_coeffs[10][2] , \all_coeffs[10][1] , \all_coeffs[10][0] ,
         \all_coeffs[9][9] , \all_coeffs[9][8] , \all_coeffs[9][7] ,
         \all_coeffs[9][6] , \all_coeffs[9][5] , \all_coeffs[9][4] ,
         \all_coeffs[9][3] , \all_coeffs[9][2] , \all_coeffs[9][1] ,
         \all_coeffs[9][0] , \all_coeffs[8][9] , \all_coeffs[8][8] ,
         \all_coeffs[8][7] , \all_coeffs[8][6] , \all_coeffs[8][5] ,
         \all_coeffs[8][4] , \all_coeffs[8][3] , \all_coeffs[8][2] ,
         \all_coeffs[8][1] , \all_coeffs[8][0] , \all_coeffs[7][9] ,
         \all_coeffs[7][8] , \all_coeffs[7][7] , \all_coeffs[7][6] ,
         \all_coeffs[7][5] , \all_coeffs[7][4] , \all_coeffs[7][3] ,
         \all_coeffs[7][2] , \all_coeffs[7][1] , \all_coeffs[7][0] ,
         \all_coeffs[6][9] , \all_coeffs[6][8] , \all_coeffs[6][7] ,
         \all_coeffs[6][6] , \all_coeffs[6][5] , \all_coeffs[6][4] ,
         \all_coeffs[6][3] , \all_coeffs[6][2] , \all_coeffs[6][1] ,
         \all_coeffs[6][0] , \all_coeffs[5][9] , \all_coeffs[5][8] ,
         \all_coeffs[5][7] , \all_coeffs[5][6] , \all_coeffs[5][5] ,
         \all_coeffs[5][4] , \all_coeffs[5][3] , \all_coeffs[5][2] ,
         \all_coeffs[5][1] , \all_coeffs[5][0] , \all_coeffs[4][9] ,
         \all_coeffs[4][8] , \all_coeffs[4][7] , \all_coeffs[4][6] ,
         \all_coeffs[4][5] , \all_coeffs[4][4] , \all_coeffs[4][3] ,
         \all_coeffs[4][2] , \all_coeffs[4][1] , \all_coeffs[4][0] ,
         \all_coeffs[3][9] , \all_coeffs[3][8] , \all_coeffs[3][7] ,
         \all_coeffs[3][6] , \all_coeffs[3][5] , \all_coeffs[3][4] ,
         \all_coeffs[3][3] , \all_coeffs[3][2] , \all_coeffs[3][1] ,
         \all_coeffs[3][0] , \all_coeffs[2][9] , \all_coeffs[2][8] ,
         \all_coeffs[2][7] , \all_coeffs[2][6] , \all_coeffs[2][5] ,
         \all_coeffs[2][4] , \all_coeffs[2][3] , \all_coeffs[2][2] ,
         \all_coeffs[2][1] , \all_coeffs[2][0] , \all_coeffs[1][9] ,
         \all_coeffs[1][8] , \all_coeffs[1][7] , \all_coeffs[1][6] ,
         \all_coeffs[1][5] , \all_coeffs[1][4] , \all_coeffs[1][3] ,
         \all_coeffs[1][2] , \all_coeffs[1][1] , \all_coeffs[1][0] ,
         \all_coeffs[0][9] , \all_coeffs[0][8] , \all_coeffs[0][7] ,
         \all_coeffs[0][6] , \all_coeffs[0][5] , \all_coeffs[0][4] ,
         \all_coeffs[0][3] , \all_coeffs[0][2] , \all_coeffs[0][1] ,
         \all_coeffs[0][0] ;

  assign \all_coeffs[0][0]  = 1'b1;
  assign \all_coeffs[1][0]  = 1'b1;
  assign \all_coeffs[1][1]  = 1'b1;
  assign \all_coeffs[2][0]  = 1'b1;
  assign \all_coeffs[2][1]  = 1'b1;
  assign \all_coeffs[2][2]  = 1'b1;
  assign \all_coeffs[3][0]  = 1'b1;
  assign \all_coeffs[3][1]  = 1'b1;
  assign \all_coeffs[3][2]  = 1'b1;
  assign \all_coeffs[3][3]  = 1'b1;
  assign \all_coeffs[4][0]  = 1'b1;
  assign \all_coeffs[4][1]  = 1'b1;
  assign \all_coeffs[4][2]  = 1'b1;
  assign \all_coeffs[4][3]  = 1'b1;
  assign \all_coeffs[4][4]  = 1'b1;
  assign \all_coeffs[5][0]  = 1'b1;
  assign \all_coeffs[5][1]  = 1'b1;
  assign \all_coeffs[5][2]  = 1'b1;
  assign \all_coeffs[5][3]  = 1'b1;
  assign \all_coeffs[5][4]  = 1'b1;
  assign \all_coeffs[5][5]  = 1'b1;
  assign \all_coeffs[6][0]  = 1'b1;
  assign \all_coeffs[6][1]  = 1'b1;
  assign \all_coeffs[6][2]  = 1'b1;
  assign \all_coeffs[6][3]  = 1'b1;
  assign \all_coeffs[6][4]  = 1'b1;
  assign \all_coeffs[6][5]  = 1'b1;
  assign \all_coeffs[6][6]  = 1'b1;
  assign \all_coeffs[7][0]  = 1'b1;
  assign \all_coeffs[7][1]  = 1'b1;
  assign \all_coeffs[7][2]  = 1'b1;
  assign \all_coeffs[7][3]  = 1'b1;
  assign \all_coeffs[7][4]  = 1'b1;
  assign \all_coeffs[7][5]  = 1'b1;
  assign \all_coeffs[8][0]  = 1'b1;
  assign \all_coeffs[8][1]  = 1'b1;
  assign \all_coeffs[8][2]  = 1'b1;
  assign \all_coeffs[8][3]  = 1'b1;
  assign \all_coeffs[8][4]  = 1'b1;
  assign \all_coeffs[9][0]  = 1'b1;
  assign \all_coeffs[9][1]  = 1'b1;
  assign \all_coeffs[9][2]  = 1'b1;
  assign \all_coeffs[9][3]  = 1'b1;
  assign \all_coeffs[10][0]  = 1'b1;
  assign \all_coeffs[10][1]  = 1'b1;
  assign \all_coeffs[10][2]  = 1'b1;
  assign \all_coeffs[11][0]  = 1'b1;
  assign \all_coeffs[11][1]  = 1'b1;
  assign \all_coeffs[12][0]  = 1'b1;
  assign \all_coeffs[0][1]  = 1'b0;
  assign \all_coeffs[0][2]  = 1'b0;
  assign \all_coeffs[0][3]  = 1'b0;
  assign \all_coeffs[0][4]  = 1'b0;
  assign \all_coeffs[0][5]  = 1'b0;
  assign \all_coeffs[0][6]  = 1'b0;
  assign \all_coeffs[0][7]  = 1'b0;
  assign \all_coeffs[0][8]  = 1'b0;
  assign \all_coeffs[0][9]  = 1'b0;
  assign \all_coeffs[1][2]  = 1'b0;
  assign \all_coeffs[1][3]  = 1'b0;
  assign \all_coeffs[1][4]  = 1'b0;
  assign \all_coeffs[1][5]  = 1'b0;
  assign \all_coeffs[1][6]  = 1'b0;
  assign \all_coeffs[1][7]  = 1'b0;
  assign \all_coeffs[1][8]  = 1'b0;
  assign \all_coeffs[1][9]  = 1'b0;
  assign \all_coeffs[2][3]  = 1'b0;
  assign \all_coeffs[2][4]  = 1'b0;
  assign \all_coeffs[2][5]  = 1'b0;
  assign \all_coeffs[2][6]  = 1'b0;
  assign \all_coeffs[2][7]  = 1'b0;
  assign \all_coeffs[2][8]  = 1'b0;
  assign \all_coeffs[2][9]  = 1'b0;
  assign \all_coeffs[3][4]  = 1'b0;
  assign \all_coeffs[3][5]  = 1'b0;
  assign \all_coeffs[3][6]  = 1'b0;
  assign \all_coeffs[3][7]  = 1'b0;
  assign \all_coeffs[3][8]  = 1'b0;
  assign \all_coeffs[3][9]  = 1'b0;
  assign \all_coeffs[4][5]  = 1'b0;
  assign \all_coeffs[4][6]  = 1'b0;
  assign \all_coeffs[4][7]  = 1'b0;
  assign \all_coeffs[4][8]  = 1'b0;
  assign \all_coeffs[4][9]  = 1'b0;
  assign \all_coeffs[5][6]  = 1'b0;
  assign \all_coeffs[5][7]  = 1'b0;
  assign \all_coeffs[5][8]  = 1'b0;
  assign \all_coeffs[5][9]  = 1'b0;
  assign \all_coeffs[6][7]  = 1'b0;
  assign \all_coeffs[6][8]  = 1'b0;
  assign \all_coeffs[6][9]  = 1'b0;
  assign \all_coeffs[7][6]  = 1'b0;
  assign \all_coeffs[7][7]  = 1'b0;
  assign \all_coeffs[7][8]  = 1'b0;
  assign \all_coeffs[7][9]  = 1'b0;
  assign \all_coeffs[8][5]  = 1'b0;
  assign \all_coeffs[8][6]  = 1'b0;
  assign \all_coeffs[8][7]  = 1'b0;
  assign \all_coeffs[8][8]  = 1'b0;
  assign \all_coeffs[8][9]  = 1'b0;
  assign \all_coeffs[9][4]  = 1'b0;
  assign \all_coeffs[9][5]  = 1'b0;
  assign \all_coeffs[9][6]  = 1'b0;
  assign \all_coeffs[9][7]  = 1'b0;
  assign \all_coeffs[9][8]  = 1'b0;
  assign \all_coeffs[9][9]  = 1'b0;
  assign \all_coeffs[10][3]  = 1'b0;
  assign \all_coeffs[10][4]  = 1'b0;
  assign \all_coeffs[10][5]  = 1'b0;
  assign \all_coeffs[10][6]  = 1'b0;
  assign \all_coeffs[10][7]  = 1'b0;
  assign \all_coeffs[10][8]  = 1'b0;
  assign \all_coeffs[10][9]  = 1'b0;
  assign \all_coeffs[11][2]  = 1'b0;
  assign \all_coeffs[11][3]  = 1'b0;
  assign \all_coeffs[11][4]  = 1'b0;
  assign \all_coeffs[11][5]  = 1'b0;
  assign \all_coeffs[11][6]  = 1'b0;
  assign \all_coeffs[11][7]  = 1'b0;
  assign \all_coeffs[11][8]  = 1'b0;
  assign \all_coeffs[11][9]  = 1'b0;
  assign \all_coeffs[12][1]  = 1'b0;
  assign \all_coeffs[12][2]  = 1'b0;
  assign \all_coeffs[12][3]  = 1'b0;
  assign \all_coeffs[12][4]  = 1'b0;
  assign \all_coeffs[12][5]  = 1'b0;
  assign \all_coeffs[12][6]  = 1'b0;
  assign \all_coeffs[12][7]  = 1'b0;
  assign \all_coeffs[12][8]  = 1'b0;
  assign \all_coeffs[12][9]  = 1'b0;

endmodule


module MAC_0_DW01_add_0 ( A, B, CI, SUM, CO );
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
  XOR2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  AN2D0 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
endmodule


module MAC_0_DW_mult_tc_1 ( a, b, product );
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
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236;

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
  XNR2D1 U66 ( .A1(n198), .A2(n222), .ZN(n143) );
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
  XNR2D1 U89 ( .A1(n198), .A2(n223), .ZN(n154) );
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
  XNR2D1 U112 ( .A1(n198), .A2(n224), .ZN(n165) );
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
  XNR2D1 U135 ( .A1(n198), .A2(n225), .ZN(n176) );
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
  XNR2D1 U158 ( .A1(n198), .A2(n226), .ZN(n187) );
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
  BUFFD0 U210 ( .I(n236), .Z(n216) );
  BUFFD0 U211 ( .I(n235), .Z(n215) );
  BUFFD0 U212 ( .I(n232), .Z(n212) );
  BUFFD0 U213 ( .I(n233), .Z(n213) );
  BUFFD0 U214 ( .I(n234), .Z(n214) );
  BUFFD0 U215 ( .I(a[1]), .Z(n226) );
  BUFFD0 U216 ( .I(a[3]), .Z(n225) );
  BUFFD0 U217 ( .I(a[5]), .Z(n224) );
  BUFFD0 U218 ( .I(a[7]), .Z(n223) );
  BUFFD0 U219 ( .I(a[9]), .Z(n222) );
  BUFFD0 U220 ( .I(n231), .Z(n211) );
  BUFFD0 U221 ( .I(n230), .Z(n210) );
  BUFFD0 U222 ( .I(n227), .Z(n207) );
  BUFFD0 U223 ( .I(n228), .Z(n208) );
  BUFFD0 U224 ( .I(n229), .Z(n209) );
  BUFFD0 U225 ( .I(b[0]), .Z(n201) );
  BUFFD0 U226 ( .I(b[1]), .Z(n200) );
  BUFFD0 U227 ( .I(b[2]), .Z(n199) );
  BUFFD0 U228 ( .I(b[3]), .Z(n198) );
  BUFFD0 U229 ( .I(b[5]), .Z(n196) );
  BUFFD0 U230 ( .I(b[4]), .Z(n197) );
  BUFFD0 U231 ( .I(b[6]), .Z(n195) );
  BUFFD0 U232 ( .I(b[8]), .Z(n193) );
  BUFFD0 U233 ( .I(b[7]), .Z(n194) );
  BUFFD0 U234 ( .I(b[9]), .Z(n192) );
endmodule


module MAC_0 ( sample_in, coeff, acc, result );
  input [9:0] sample_in;
  input [9:0] coeff;
  input [23:0] acc;
  output [23:0] result;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N19, N18, N17, N16, N15, N14, N13,
         N12, N11, N10, N1, N0;

  MAC_0_DW01_add_0 add_16 ( .A({N19, N19, N19, N19, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        acc), .CI(1'b0), .SUM(result) );
  MAC_0_DW_mult_tc_1 mult_16 ( .a(sample_in), .b(coeff), .product({N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, 
        N1, N0}) );
endmodule


module MAC_12_DW01_add_0 ( A, B, CI, SUM, CO );
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
  XOR2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  AN2D0 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
endmodule


module MAC_12_DW_mult_tc_1 ( a, b, product );
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
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236;

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
  XNR2D1 U66 ( .A1(n198), .A2(n222), .ZN(n143) );
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
  XNR2D1 U89 ( .A1(n198), .A2(n223), .ZN(n154) );
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
  XNR2D1 U112 ( .A1(n198), .A2(n224), .ZN(n165) );
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
  XNR2D1 U135 ( .A1(n198), .A2(n225), .ZN(n176) );
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
  XNR2D1 U158 ( .A1(n198), .A2(n226), .ZN(n187) );
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
  BUFFD0 U210 ( .I(n236), .Z(n216) );
  BUFFD0 U211 ( .I(n235), .Z(n215) );
  BUFFD0 U212 ( .I(n232), .Z(n212) );
  BUFFD0 U213 ( .I(n233), .Z(n213) );
  BUFFD0 U214 ( .I(n234), .Z(n214) );
  BUFFD0 U215 ( .I(a[1]), .Z(n226) );
  BUFFD0 U216 ( .I(a[3]), .Z(n225) );
  BUFFD0 U217 ( .I(a[5]), .Z(n224) );
  BUFFD0 U218 ( .I(a[7]), .Z(n223) );
  BUFFD0 U219 ( .I(a[9]), .Z(n222) );
  BUFFD0 U220 ( .I(n231), .Z(n211) );
  BUFFD0 U221 ( .I(n230), .Z(n210) );
  BUFFD0 U222 ( .I(n227), .Z(n207) );
  BUFFD0 U223 ( .I(n228), .Z(n208) );
  BUFFD0 U224 ( .I(n229), .Z(n209) );
  BUFFD0 U225 ( .I(b[0]), .Z(n201) );
  BUFFD0 U226 ( .I(b[1]), .Z(n200) );
  BUFFD0 U227 ( .I(b[2]), .Z(n199) );
  BUFFD0 U228 ( .I(b[3]), .Z(n198) );
  BUFFD0 U229 ( .I(b[5]), .Z(n196) );
  BUFFD0 U230 ( .I(b[4]), .Z(n197) );
  BUFFD0 U231 ( .I(b[6]), .Z(n195) );
  BUFFD0 U232 ( .I(b[8]), .Z(n193) );
  BUFFD0 U233 ( .I(b[7]), .Z(n194) );
  BUFFD0 U234 ( .I(b[9]), .Z(n192) );
endmodule


module MAC_12 ( sample_in, coeff, acc, result );
  input [9:0] sample_in;
  input [9:0] coeff;
  input [23:0] acc;
  output [23:0] result;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N19, N18, N17, N16, N15, N14, N13,
         N12, N11, N10, N1, N0;

  MAC_12_DW01_add_0 add_16 ( .A({N19, N19, N19, N19, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        acc), .CI(1'b0), .SUM(result) );
  MAC_12_DW_mult_tc_1 mult_16 ( .a(sample_in), .b(coeff), .product({N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, 
        N1, N0}) );
endmodule


module MAC_11_DW01_add_0 ( A, B, CI, SUM, CO );
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
  XOR2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  AN2D0 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
endmodule


module MAC_11_DW_mult_tc_1 ( a, b, product );
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
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236;

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
  XNR2D1 U66 ( .A1(n198), .A2(n222), .ZN(n143) );
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
  XNR2D1 U89 ( .A1(n198), .A2(n223), .ZN(n154) );
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
  XNR2D1 U112 ( .A1(n198), .A2(n224), .ZN(n165) );
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
  XNR2D1 U135 ( .A1(n198), .A2(n225), .ZN(n176) );
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
  XNR2D1 U158 ( .A1(n198), .A2(n226), .ZN(n187) );
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
  BUFFD0 U210 ( .I(n236), .Z(n216) );
  BUFFD0 U211 ( .I(n235), .Z(n215) );
  BUFFD0 U212 ( .I(n232), .Z(n212) );
  BUFFD0 U213 ( .I(n233), .Z(n213) );
  BUFFD0 U214 ( .I(n234), .Z(n214) );
  BUFFD0 U215 ( .I(a[1]), .Z(n226) );
  BUFFD0 U216 ( .I(a[3]), .Z(n225) );
  BUFFD0 U217 ( .I(a[5]), .Z(n224) );
  BUFFD0 U218 ( .I(a[7]), .Z(n223) );
  BUFFD0 U219 ( .I(a[9]), .Z(n222) );
  BUFFD0 U220 ( .I(n231), .Z(n211) );
  BUFFD0 U221 ( .I(n230), .Z(n210) );
  BUFFD0 U222 ( .I(n227), .Z(n207) );
  BUFFD0 U223 ( .I(n228), .Z(n208) );
  BUFFD0 U224 ( .I(n229), .Z(n209) );
  BUFFD0 U225 ( .I(b[0]), .Z(n201) );
  BUFFD0 U226 ( .I(b[1]), .Z(n200) );
  BUFFD0 U227 ( .I(b[2]), .Z(n199) );
  BUFFD0 U228 ( .I(b[3]), .Z(n198) );
  BUFFD0 U229 ( .I(b[5]), .Z(n196) );
  BUFFD0 U230 ( .I(b[4]), .Z(n197) );
  BUFFD0 U231 ( .I(b[6]), .Z(n195) );
  BUFFD0 U232 ( .I(b[8]), .Z(n193) );
  BUFFD0 U233 ( .I(b[7]), .Z(n194) );
  BUFFD0 U234 ( .I(b[9]), .Z(n192) );
endmodule


module MAC_11 ( sample_in, coeff, acc, result );
  input [9:0] sample_in;
  input [9:0] coeff;
  input [23:0] acc;
  output [23:0] result;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N19, N18, N17, N16, N15, N14, N13,
         N12, N11, N10, N1, N0;

  MAC_11_DW01_add_0 add_16 ( .A({N19, N19, N19, N19, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        acc), .CI(1'b0), .SUM(result) );
  MAC_11_DW_mult_tc_1 mult_16 ( .a(sample_in), .b(coeff), .product({N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, 
        N1, N0}) );
endmodule


module MAC_10_DW01_add_0 ( A, B, CI, SUM, CO );
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
  XOR2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  AN2D0 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
endmodule


module MAC_10_DW_mult_tc_1 ( a, b, product );
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
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236;

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
  XNR2D1 U66 ( .A1(n198), .A2(n222), .ZN(n143) );
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
  XNR2D1 U89 ( .A1(n198), .A2(n223), .ZN(n154) );
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
  XNR2D1 U112 ( .A1(n198), .A2(n224), .ZN(n165) );
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
  XNR2D1 U135 ( .A1(n198), .A2(n225), .ZN(n176) );
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
  XNR2D1 U158 ( .A1(n198), .A2(n226), .ZN(n187) );
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
  BUFFD0 U210 ( .I(n236), .Z(n216) );
  BUFFD0 U211 ( .I(n235), .Z(n215) );
  BUFFD0 U212 ( .I(n232), .Z(n212) );
  BUFFD0 U213 ( .I(n233), .Z(n213) );
  BUFFD0 U214 ( .I(n234), .Z(n214) );
  BUFFD0 U215 ( .I(a[1]), .Z(n226) );
  BUFFD0 U216 ( .I(a[3]), .Z(n225) );
  BUFFD0 U217 ( .I(a[5]), .Z(n224) );
  BUFFD0 U218 ( .I(a[7]), .Z(n223) );
  BUFFD0 U219 ( .I(a[9]), .Z(n222) );
  BUFFD0 U220 ( .I(n231), .Z(n211) );
  BUFFD0 U221 ( .I(n230), .Z(n210) );
  BUFFD0 U222 ( .I(n227), .Z(n207) );
  BUFFD0 U223 ( .I(n228), .Z(n208) );
  BUFFD0 U224 ( .I(n229), .Z(n209) );
  BUFFD0 U225 ( .I(b[0]), .Z(n201) );
  BUFFD0 U226 ( .I(b[1]), .Z(n200) );
  BUFFD0 U227 ( .I(b[2]), .Z(n199) );
  BUFFD0 U228 ( .I(b[3]), .Z(n198) );
  BUFFD0 U229 ( .I(b[5]), .Z(n196) );
  BUFFD0 U230 ( .I(b[4]), .Z(n197) );
  BUFFD0 U231 ( .I(b[6]), .Z(n195) );
  BUFFD0 U232 ( .I(b[8]), .Z(n193) );
  BUFFD0 U233 ( .I(b[7]), .Z(n194) );
  BUFFD0 U234 ( .I(b[9]), .Z(n192) );
endmodule


module MAC_10 ( sample_in, coeff, acc, result );
  input [9:0] sample_in;
  input [9:0] coeff;
  input [23:0] acc;
  output [23:0] result;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N19, N18, N17, N16, N15, N14, N13,
         N12, N11, N10, N1, N0;

  MAC_10_DW01_add_0 add_16 ( .A({N19, N19, N19, N19, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        acc), .CI(1'b0), .SUM(result) );
  MAC_10_DW_mult_tc_1 mult_16 ( .a(sample_in), .b(coeff), .product({N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, 
        N1, N0}) );
endmodule


module MAC_9_DW01_add_0 ( A, B, CI, SUM, CO );
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
  XOR2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  AN2D0 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
endmodule


module MAC_9_DW_mult_tc_1 ( a, b, product );
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
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236;

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
  XNR2D1 U66 ( .A1(n198), .A2(n222), .ZN(n143) );
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
  XNR2D1 U89 ( .A1(n198), .A2(n223), .ZN(n154) );
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
  XNR2D1 U112 ( .A1(n198), .A2(n224), .ZN(n165) );
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
  XNR2D1 U135 ( .A1(n198), .A2(n225), .ZN(n176) );
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
  XNR2D1 U158 ( .A1(n198), .A2(n226), .ZN(n187) );
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
  BUFFD0 U210 ( .I(n236), .Z(n216) );
  BUFFD0 U211 ( .I(n235), .Z(n215) );
  BUFFD0 U212 ( .I(n232), .Z(n212) );
  BUFFD0 U213 ( .I(n233), .Z(n213) );
  BUFFD0 U214 ( .I(n234), .Z(n214) );
  BUFFD0 U215 ( .I(a[1]), .Z(n226) );
  BUFFD0 U216 ( .I(a[3]), .Z(n225) );
  BUFFD0 U217 ( .I(a[5]), .Z(n224) );
  BUFFD0 U218 ( .I(a[7]), .Z(n223) );
  BUFFD0 U219 ( .I(a[9]), .Z(n222) );
  BUFFD0 U220 ( .I(n231), .Z(n211) );
  BUFFD0 U221 ( .I(n230), .Z(n210) );
  BUFFD0 U222 ( .I(n227), .Z(n207) );
  BUFFD0 U223 ( .I(n228), .Z(n208) );
  BUFFD0 U224 ( .I(n229), .Z(n209) );
  BUFFD0 U225 ( .I(b[0]), .Z(n201) );
  BUFFD0 U226 ( .I(b[1]), .Z(n200) );
  BUFFD0 U227 ( .I(b[2]), .Z(n199) );
  BUFFD0 U228 ( .I(b[3]), .Z(n198) );
  BUFFD0 U229 ( .I(b[5]), .Z(n196) );
  BUFFD0 U230 ( .I(b[4]), .Z(n197) );
  BUFFD0 U231 ( .I(b[6]), .Z(n195) );
  BUFFD0 U232 ( .I(b[8]), .Z(n193) );
  BUFFD0 U233 ( .I(b[7]), .Z(n194) );
  BUFFD0 U234 ( .I(b[9]), .Z(n192) );
endmodule


module MAC_9 ( sample_in, coeff, acc, result );
  input [9:0] sample_in;
  input [9:0] coeff;
  input [23:0] acc;
  output [23:0] result;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N19, N18, N17, N16, N15, N14, N13,
         N12, N11, N10, N1, N0;

  MAC_9_DW01_add_0 add_16 ( .A({N19, N19, N19, N19, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        acc), .CI(1'b0), .SUM(result) );
  MAC_9_DW_mult_tc_1 mult_16 ( .a(sample_in), .b(coeff), .product({N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, 
        N1, N0}) );
endmodule


module MAC_8_DW01_add_0 ( A, B, CI, SUM, CO );
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
  XOR2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  AN2D0 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
endmodule


module MAC_8_DW_mult_tc_1 ( a, b, product );
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
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236;

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
  XNR2D1 U66 ( .A1(n198), .A2(n222), .ZN(n143) );
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
  XNR2D1 U89 ( .A1(n198), .A2(n223), .ZN(n154) );
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
  XNR2D1 U112 ( .A1(n198), .A2(n224), .ZN(n165) );
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
  XNR2D1 U135 ( .A1(n198), .A2(n225), .ZN(n176) );
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
  XNR2D1 U158 ( .A1(n198), .A2(n226), .ZN(n187) );
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
  BUFFD0 U210 ( .I(n236), .Z(n216) );
  BUFFD0 U211 ( .I(n235), .Z(n215) );
  BUFFD0 U212 ( .I(n232), .Z(n212) );
  BUFFD0 U213 ( .I(n233), .Z(n213) );
  BUFFD0 U214 ( .I(n234), .Z(n214) );
  BUFFD0 U215 ( .I(a[1]), .Z(n226) );
  BUFFD0 U216 ( .I(a[3]), .Z(n225) );
  BUFFD0 U217 ( .I(a[5]), .Z(n224) );
  BUFFD0 U218 ( .I(a[7]), .Z(n223) );
  BUFFD0 U219 ( .I(a[9]), .Z(n222) );
  BUFFD0 U220 ( .I(n231), .Z(n211) );
  BUFFD0 U221 ( .I(n230), .Z(n210) );
  BUFFD0 U222 ( .I(n227), .Z(n207) );
  BUFFD0 U223 ( .I(n228), .Z(n208) );
  BUFFD0 U224 ( .I(n229), .Z(n209) );
  BUFFD0 U225 ( .I(b[0]), .Z(n201) );
  BUFFD0 U226 ( .I(b[1]), .Z(n200) );
  BUFFD0 U227 ( .I(b[2]), .Z(n199) );
  BUFFD0 U228 ( .I(b[3]), .Z(n198) );
  BUFFD0 U229 ( .I(b[5]), .Z(n196) );
  BUFFD0 U230 ( .I(b[4]), .Z(n197) );
  BUFFD0 U231 ( .I(b[6]), .Z(n195) );
  BUFFD0 U232 ( .I(b[8]), .Z(n193) );
  BUFFD0 U233 ( .I(b[7]), .Z(n194) );
  BUFFD0 U234 ( .I(b[9]), .Z(n192) );
endmodule


module MAC_8 ( sample_in, coeff, acc, result );
  input [9:0] sample_in;
  input [9:0] coeff;
  input [23:0] acc;
  output [23:0] result;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N19, N18, N17, N16, N15, N14, N13,
         N12, N11, N10, N1, N0;

  MAC_8_DW01_add_0 add_16 ( .A({N19, N19, N19, N19, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        acc), .CI(1'b0), .SUM(result) );
  MAC_8_DW_mult_tc_1 mult_16 ( .a(sample_in), .b(coeff), .product({N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, 
        N1, N0}) );
endmodule


module MAC_7_DW01_add_0 ( A, B, CI, SUM, CO );
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
  XOR2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  AN2D0 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
endmodule


module MAC_7_DW_mult_tc_1 ( a, b, product );
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
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236;

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
  XNR2D1 U66 ( .A1(n198), .A2(n222), .ZN(n143) );
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
  XNR2D1 U89 ( .A1(n198), .A2(n223), .ZN(n154) );
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
  XNR2D1 U112 ( .A1(n198), .A2(n224), .ZN(n165) );
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
  XNR2D1 U135 ( .A1(n198), .A2(n225), .ZN(n176) );
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
  XNR2D1 U158 ( .A1(n198), .A2(n226), .ZN(n187) );
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
  BUFFD0 U210 ( .I(n236), .Z(n216) );
  BUFFD0 U211 ( .I(n235), .Z(n215) );
  BUFFD0 U212 ( .I(n232), .Z(n212) );
  BUFFD0 U213 ( .I(n233), .Z(n213) );
  BUFFD0 U214 ( .I(n234), .Z(n214) );
  BUFFD0 U215 ( .I(a[1]), .Z(n226) );
  BUFFD0 U216 ( .I(a[3]), .Z(n225) );
  BUFFD0 U217 ( .I(a[5]), .Z(n224) );
  BUFFD0 U218 ( .I(a[7]), .Z(n223) );
  BUFFD0 U219 ( .I(a[9]), .Z(n222) );
  BUFFD0 U220 ( .I(n231), .Z(n211) );
  BUFFD0 U221 ( .I(n230), .Z(n210) );
  BUFFD0 U222 ( .I(n227), .Z(n207) );
  BUFFD0 U223 ( .I(n228), .Z(n208) );
  BUFFD0 U224 ( .I(n229), .Z(n209) );
  BUFFD0 U225 ( .I(b[0]), .Z(n201) );
  BUFFD0 U226 ( .I(b[1]), .Z(n200) );
  BUFFD0 U227 ( .I(b[2]), .Z(n199) );
  BUFFD0 U228 ( .I(b[3]), .Z(n198) );
  BUFFD0 U229 ( .I(b[5]), .Z(n196) );
  BUFFD0 U230 ( .I(b[4]), .Z(n197) );
  BUFFD0 U231 ( .I(b[6]), .Z(n195) );
  BUFFD0 U232 ( .I(b[8]), .Z(n193) );
  BUFFD0 U233 ( .I(b[7]), .Z(n194) );
  BUFFD0 U234 ( .I(b[9]), .Z(n192) );
endmodule


module MAC_7 ( sample_in, coeff, acc, result );
  input [9:0] sample_in;
  input [9:0] coeff;
  input [23:0] acc;
  output [23:0] result;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N19, N18, N17, N16, N15, N14, N13,
         N12, N11, N10, N1, N0;

  MAC_7_DW01_add_0 add_16 ( .A({N19, N19, N19, N19, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        acc), .CI(1'b0), .SUM(result) );
  MAC_7_DW_mult_tc_1 mult_16 ( .a(sample_in), .b(coeff), .product({N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, 
        N1, N0}) );
endmodule


module MAC_6_DW01_add_0 ( A, B, CI, SUM, CO );
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
  XOR2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  AN2D0 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
endmodule


module MAC_6_DW_mult_tc_1 ( a, b, product );
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
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236;

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
  XNR2D1 U66 ( .A1(n198), .A2(n222), .ZN(n143) );
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
  XNR2D1 U89 ( .A1(n198), .A2(n223), .ZN(n154) );
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
  XNR2D1 U112 ( .A1(n198), .A2(n224), .ZN(n165) );
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
  XNR2D1 U135 ( .A1(n198), .A2(n225), .ZN(n176) );
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
  XNR2D1 U158 ( .A1(n198), .A2(n226), .ZN(n187) );
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
  BUFFD0 U210 ( .I(n236), .Z(n216) );
  BUFFD0 U211 ( .I(n235), .Z(n215) );
  BUFFD0 U212 ( .I(n232), .Z(n212) );
  BUFFD0 U213 ( .I(n233), .Z(n213) );
  BUFFD0 U214 ( .I(n234), .Z(n214) );
  BUFFD0 U215 ( .I(a[1]), .Z(n226) );
  BUFFD0 U216 ( .I(a[3]), .Z(n225) );
  BUFFD0 U217 ( .I(a[5]), .Z(n224) );
  BUFFD0 U218 ( .I(a[7]), .Z(n223) );
  BUFFD0 U219 ( .I(a[9]), .Z(n222) );
  BUFFD0 U220 ( .I(n231), .Z(n211) );
  BUFFD0 U221 ( .I(n230), .Z(n210) );
  BUFFD0 U222 ( .I(n227), .Z(n207) );
  BUFFD0 U223 ( .I(n228), .Z(n208) );
  BUFFD0 U224 ( .I(n229), .Z(n209) );
  BUFFD0 U225 ( .I(b[0]), .Z(n201) );
  BUFFD0 U226 ( .I(b[1]), .Z(n200) );
  BUFFD0 U227 ( .I(b[2]), .Z(n199) );
  BUFFD0 U228 ( .I(b[3]), .Z(n198) );
  BUFFD0 U229 ( .I(b[5]), .Z(n196) );
  BUFFD0 U230 ( .I(b[4]), .Z(n197) );
  BUFFD0 U231 ( .I(b[6]), .Z(n195) );
  BUFFD0 U232 ( .I(b[8]), .Z(n193) );
  BUFFD0 U233 ( .I(b[7]), .Z(n194) );
  BUFFD0 U234 ( .I(b[9]), .Z(n192) );
endmodule


module MAC_6 ( sample_in, coeff, acc, result );
  input [9:0] sample_in;
  input [9:0] coeff;
  input [23:0] acc;
  output [23:0] result;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N19, N18, N17, N16, N15, N14, N13,
         N12, N11, N10, N1, N0;

  MAC_6_DW01_add_0 add_16 ( .A({N19, N19, N19, N19, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        acc), .CI(1'b0), .SUM(result) );
  MAC_6_DW_mult_tc_1 mult_16 ( .a(sample_in), .b(coeff), .product({N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, 
        N1, N0}) );
endmodule


module MAC_5_DW01_add_0 ( A, B, CI, SUM, CO );
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
  XOR2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  AN2D0 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
endmodule


module MAC_5_DW_mult_tc_1 ( a, b, product );
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
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236;

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
  XNR2D1 U66 ( .A1(n198), .A2(n222), .ZN(n143) );
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
  XNR2D1 U89 ( .A1(n198), .A2(n223), .ZN(n154) );
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
  XNR2D1 U112 ( .A1(n198), .A2(n224), .ZN(n165) );
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
  XNR2D1 U135 ( .A1(n198), .A2(n225), .ZN(n176) );
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
  XNR2D1 U158 ( .A1(n198), .A2(n226), .ZN(n187) );
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
  BUFFD0 U210 ( .I(n236), .Z(n216) );
  BUFFD0 U211 ( .I(n235), .Z(n215) );
  BUFFD0 U212 ( .I(n232), .Z(n212) );
  BUFFD0 U213 ( .I(n233), .Z(n213) );
  BUFFD0 U214 ( .I(n234), .Z(n214) );
  BUFFD0 U215 ( .I(a[1]), .Z(n226) );
  BUFFD0 U216 ( .I(a[3]), .Z(n225) );
  BUFFD0 U217 ( .I(a[5]), .Z(n224) );
  BUFFD0 U218 ( .I(a[7]), .Z(n223) );
  BUFFD0 U219 ( .I(a[9]), .Z(n222) );
  BUFFD0 U220 ( .I(n231), .Z(n211) );
  BUFFD0 U221 ( .I(n230), .Z(n210) );
  BUFFD0 U222 ( .I(n227), .Z(n207) );
  BUFFD0 U223 ( .I(n228), .Z(n208) );
  BUFFD0 U224 ( .I(n229), .Z(n209) );
  BUFFD0 U225 ( .I(b[0]), .Z(n201) );
  BUFFD0 U226 ( .I(b[1]), .Z(n200) );
  BUFFD0 U227 ( .I(b[2]), .Z(n199) );
  BUFFD0 U228 ( .I(b[3]), .Z(n198) );
  BUFFD0 U229 ( .I(b[5]), .Z(n196) );
  BUFFD0 U230 ( .I(b[4]), .Z(n197) );
  BUFFD0 U231 ( .I(b[6]), .Z(n195) );
  BUFFD0 U232 ( .I(b[8]), .Z(n193) );
  BUFFD0 U233 ( .I(b[7]), .Z(n194) );
  BUFFD0 U234 ( .I(b[9]), .Z(n192) );
endmodule


module MAC_5 ( sample_in, coeff, acc, result );
  input [9:0] sample_in;
  input [9:0] coeff;
  input [23:0] acc;
  output [23:0] result;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N19, N18, N17, N16, N15, N14, N13,
         N12, N11, N10, N1, N0;

  MAC_5_DW01_add_0 add_16 ( .A({N19, N19, N19, N19, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        acc), .CI(1'b0), .SUM(result) );
  MAC_5_DW_mult_tc_1 mult_16 ( .a(sample_in), .b(coeff), .product({N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, 
        N1, N0}) );
endmodule


module MAC_4_DW01_add_0 ( A, B, CI, SUM, CO );
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
  XOR2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  AN2D0 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
endmodule


module MAC_4_DW_mult_tc_1 ( a, b, product );
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
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236;

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
  XNR2D1 U66 ( .A1(n198), .A2(n222), .ZN(n143) );
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
  XNR2D1 U89 ( .A1(n198), .A2(n223), .ZN(n154) );
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
  XNR2D1 U112 ( .A1(n198), .A2(n224), .ZN(n165) );
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
  XNR2D1 U135 ( .A1(n198), .A2(n225), .ZN(n176) );
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
  XNR2D1 U158 ( .A1(n198), .A2(n226), .ZN(n187) );
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
  BUFFD0 U210 ( .I(n236), .Z(n216) );
  BUFFD0 U211 ( .I(n235), .Z(n215) );
  BUFFD0 U212 ( .I(n232), .Z(n212) );
  BUFFD0 U213 ( .I(n233), .Z(n213) );
  BUFFD0 U214 ( .I(n234), .Z(n214) );
  BUFFD0 U215 ( .I(a[1]), .Z(n226) );
  BUFFD0 U216 ( .I(a[3]), .Z(n225) );
  BUFFD0 U217 ( .I(a[5]), .Z(n224) );
  BUFFD0 U218 ( .I(a[7]), .Z(n223) );
  BUFFD0 U219 ( .I(a[9]), .Z(n222) );
  BUFFD0 U220 ( .I(n231), .Z(n211) );
  BUFFD0 U221 ( .I(n230), .Z(n210) );
  BUFFD0 U222 ( .I(n227), .Z(n207) );
  BUFFD0 U223 ( .I(n228), .Z(n208) );
  BUFFD0 U224 ( .I(n229), .Z(n209) );
  BUFFD0 U225 ( .I(b[0]), .Z(n201) );
  BUFFD0 U226 ( .I(b[1]), .Z(n200) );
  BUFFD0 U227 ( .I(b[2]), .Z(n199) );
  BUFFD0 U228 ( .I(b[3]), .Z(n198) );
  BUFFD0 U229 ( .I(b[5]), .Z(n196) );
  BUFFD0 U230 ( .I(b[4]), .Z(n197) );
  BUFFD0 U231 ( .I(b[6]), .Z(n195) );
  BUFFD0 U232 ( .I(b[8]), .Z(n193) );
  BUFFD0 U233 ( .I(b[7]), .Z(n194) );
  BUFFD0 U234 ( .I(b[9]), .Z(n192) );
endmodule


module MAC_4 ( sample_in, coeff, acc, result );
  input [9:0] sample_in;
  input [9:0] coeff;
  input [23:0] acc;
  output [23:0] result;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N19, N18, N17, N16, N15, N14, N13,
         N12, N11, N10, N1, N0;

  MAC_4_DW01_add_0 add_16 ( .A({N19, N19, N19, N19, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        acc), .CI(1'b0), .SUM(result) );
  MAC_4_DW_mult_tc_1 mult_16 ( .a(sample_in), .b(coeff), .product({N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, 
        N1, N0}) );
endmodule


module MAC_3_DW01_add_0 ( A, B, CI, SUM, CO );
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
  XOR2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  AN2D0 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
endmodule


module MAC_3_DW_mult_tc_1 ( a, b, product );
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
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236;

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
  XNR2D1 U66 ( .A1(n198), .A2(n222), .ZN(n143) );
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
  XNR2D1 U89 ( .A1(n198), .A2(n223), .ZN(n154) );
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
  XNR2D1 U112 ( .A1(n198), .A2(n224), .ZN(n165) );
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
  XNR2D1 U135 ( .A1(n198), .A2(n225), .ZN(n176) );
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
  XNR2D1 U158 ( .A1(n198), .A2(n226), .ZN(n187) );
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
  BUFFD0 U210 ( .I(n236), .Z(n216) );
  BUFFD0 U211 ( .I(n235), .Z(n215) );
  BUFFD0 U212 ( .I(n232), .Z(n212) );
  BUFFD0 U213 ( .I(n233), .Z(n213) );
  BUFFD0 U214 ( .I(n234), .Z(n214) );
  BUFFD0 U215 ( .I(a[1]), .Z(n226) );
  BUFFD0 U216 ( .I(a[3]), .Z(n225) );
  BUFFD0 U217 ( .I(a[5]), .Z(n224) );
  BUFFD0 U218 ( .I(a[7]), .Z(n223) );
  BUFFD0 U219 ( .I(a[9]), .Z(n222) );
  BUFFD0 U220 ( .I(n231), .Z(n211) );
  BUFFD0 U221 ( .I(n230), .Z(n210) );
  BUFFD0 U222 ( .I(n227), .Z(n207) );
  BUFFD0 U223 ( .I(n228), .Z(n208) );
  BUFFD0 U224 ( .I(n229), .Z(n209) );
  BUFFD0 U225 ( .I(b[0]), .Z(n201) );
  BUFFD0 U226 ( .I(b[1]), .Z(n200) );
  BUFFD0 U227 ( .I(b[2]), .Z(n199) );
  BUFFD0 U228 ( .I(b[3]), .Z(n198) );
  BUFFD0 U229 ( .I(b[5]), .Z(n196) );
  BUFFD0 U230 ( .I(b[4]), .Z(n197) );
  BUFFD0 U231 ( .I(b[6]), .Z(n195) );
  BUFFD0 U232 ( .I(b[8]), .Z(n193) );
  BUFFD0 U233 ( .I(b[7]), .Z(n194) );
  BUFFD0 U234 ( .I(b[9]), .Z(n192) );
endmodule


module MAC_3 ( sample_in, coeff, acc, result );
  input [9:0] sample_in;
  input [9:0] coeff;
  input [23:0] acc;
  output [23:0] result;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N19, N18, N17, N16, N15, N14, N13,
         N12, N11, N10, N1, N0;

  MAC_3_DW01_add_0 add_16 ( .A({N19, N19, N19, N19, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        acc), .CI(1'b0), .SUM(result) );
  MAC_3_DW_mult_tc_1 mult_16 ( .a(sample_in), .b(coeff), .product({N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, 
        N1, N0}) );
endmodule


module MAC_2_DW01_add_0 ( A, B, CI, SUM, CO );
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
  XOR2D1 U1 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  AN2D0 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
endmodule


module MAC_2_DW_mult_tc_1 ( a, b, product );
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
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236;

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
  XNR2D1 U66 ( .A1(n198), .A2(n222), .ZN(n143) );
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
  XNR2D1 U89 ( .A1(n198), .A2(n223), .ZN(n154) );
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
  XNR2D1 U112 ( .A1(n198), .A2(n224), .ZN(n165) );
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
  XNR2D1 U135 ( .A1(n198), .A2(n225), .ZN(n176) );
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
  XNR2D1 U158 ( .A1(n198), .A2(n226), .ZN(n187) );
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
  BUFFD0 U210 ( .I(n236), .Z(n216) );
  BUFFD0 U211 ( .I(n235), .Z(n215) );
  BUFFD0 U212 ( .I(n232), .Z(n212) );
  BUFFD0 U213 ( .I(n233), .Z(n213) );
  BUFFD0 U214 ( .I(n234), .Z(n214) );
  BUFFD0 U215 ( .I(a[1]), .Z(n226) );
  BUFFD0 U216 ( .I(a[3]), .Z(n225) );
  BUFFD0 U217 ( .I(a[5]), .Z(n224) );
  BUFFD0 U218 ( .I(a[7]), .Z(n223) );
  BUFFD0 U219 ( .I(a[9]), .Z(n222) );
  BUFFD0 U220 ( .I(n231), .Z(n211) );
  BUFFD0 U221 ( .I(n230), .Z(n210) );
  BUFFD0 U222 ( .I(n227), .Z(n207) );
  BUFFD0 U223 ( .I(n228), .Z(n208) );
  BUFFD0 U224 ( .I(n229), .Z(n209) );
  BUFFD0 U225 ( .I(b[0]), .Z(n201) );
  BUFFD0 U226 ( .I(b[1]), .Z(n200) );
  BUFFD0 U227 ( .I(b[2]), .Z(n199) );
  BUFFD0 U228 ( .I(b[3]), .Z(n198) );
  BUFFD0 U229 ( .I(b[5]), .Z(n196) );
  BUFFD0 U230 ( .I(b[4]), .Z(n197) );
  BUFFD0 U231 ( .I(b[6]), .Z(n195) );
  BUFFD0 U232 ( .I(b[8]), .Z(n193) );
  BUFFD0 U233 ( .I(b[7]), .Z(n194) );
  BUFFD0 U234 ( .I(b[9]), .Z(n192) );
endmodule


module MAC_2 ( sample_in, coeff, acc, result );
  input [9:0] sample_in;
  input [9:0] coeff;
  input [23:0] acc;
  output [23:0] result;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N19, N18, N17, N16, N15, N14, N13,
         N12, N11, N10, N1, N0;

  MAC_2_DW01_add_0 add_16 ( .A({N19, N19, N19, N19, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        acc), .CI(1'b0), .SUM(result) );
  MAC_2_DW_mult_tc_1 mult_16 ( .a(sample_in), .b(coeff), .product({N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, 
        N1, N0}) );
endmodule


module MAC_1_DW01_add_0 ( A, B, CI, SUM, CO );
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


module MAC_1_DW_mult_tc_1 ( a, b, product );
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
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236;

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
  XNR2D1 U66 ( .A1(n198), .A2(n222), .ZN(n143) );
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
  XNR2D1 U89 ( .A1(n198), .A2(n223), .ZN(n154) );
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
  XNR2D1 U112 ( .A1(n198), .A2(n224), .ZN(n165) );
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
  XNR2D1 U135 ( .A1(n198), .A2(n225), .ZN(n176) );
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
  XNR2D1 U158 ( .A1(n198), .A2(n226), .ZN(n187) );
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
  BUFFD0 U210 ( .I(n236), .Z(n216) );
  BUFFD0 U211 ( .I(n235), .Z(n215) );
  BUFFD0 U212 ( .I(n232), .Z(n212) );
  BUFFD0 U213 ( .I(n233), .Z(n213) );
  BUFFD0 U214 ( .I(n234), .Z(n214) );
  BUFFD0 U215 ( .I(a[1]), .Z(n226) );
  BUFFD0 U216 ( .I(a[3]), .Z(n225) );
  BUFFD0 U217 ( .I(a[5]), .Z(n224) );
  BUFFD0 U218 ( .I(a[7]), .Z(n223) );
  BUFFD0 U219 ( .I(a[9]), .Z(n222) );
  BUFFD0 U220 ( .I(n231), .Z(n211) );
  BUFFD0 U221 ( .I(n230), .Z(n210) );
  BUFFD0 U222 ( .I(n227), .Z(n207) );
  BUFFD0 U223 ( .I(n228), .Z(n208) );
  BUFFD0 U224 ( .I(n229), .Z(n209) );
  BUFFD0 U225 ( .I(b[0]), .Z(n201) );
  BUFFD0 U226 ( .I(b[1]), .Z(n200) );
  BUFFD0 U227 ( .I(b[2]), .Z(n199) );
  BUFFD0 U228 ( .I(b[3]), .Z(n198) );
  BUFFD0 U229 ( .I(b[5]), .Z(n196) );
  BUFFD0 U230 ( .I(b[4]), .Z(n197) );
  BUFFD0 U231 ( .I(b[6]), .Z(n195) );
  BUFFD0 U232 ( .I(b[8]), .Z(n193) );
  BUFFD0 U233 ( .I(b[7]), .Z(n194) );
  BUFFD0 U234 ( .I(b[9]), .Z(n192) );
endmodule


module MAC_1 ( sample_in, coeff, acc, result );
  input [9:0] sample_in;
  input [9:0] coeff;
  input [23:0] acc;
  output [23:0] result;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N19, N18, N17, N16, N15, N14, N13,
         N12, N11, N10, N1, N0;

  MAC_1_DW01_add_0 add_16 ( .A({N19, N19, N19, N19, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        acc), .CI(1'b0), .SUM(result) );
  MAC_1_DW_mult_tc_1 mult_16 ( .a(sample_in), .b(coeff), .product({N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, 
        N1, N0}) );
endmodule


module Arith_Unit ( .all_samples({\all_samples[12][9] , \all_samples[12][8] , 
        \all_samples[12][7] , \all_samples[12][6] , \all_samples[12][5] , 
        \all_samples[12][4] , \all_samples[12][3] , \all_samples[12][2] , 
        \all_samples[12][1] , \all_samples[12][0] , \all_samples[11][9] , 
        \all_samples[11][8] , \all_samples[11][7] , \all_samples[11][6] , 
        \all_samples[11][5] , \all_samples[11][4] , \all_samples[11][3] , 
        \all_samples[11][2] , \all_samples[11][1] , \all_samples[11][0] , 
        \all_samples[10][9] , \all_samples[10][8] , \all_samples[10][7] , 
        \all_samples[10][6] , \all_samples[10][5] , \all_samples[10][4] , 
        \all_samples[10][3] , \all_samples[10][2] , \all_samples[10][1] , 
        \all_samples[10][0] , \all_samples[9][9] , \all_samples[9][8] , 
        \all_samples[9][7] , \all_samples[9][6] , \all_samples[9][5] , 
        \all_samples[9][4] , \all_samples[9][3] , \all_samples[9][2] , 
        \all_samples[9][1] , \all_samples[9][0] , \all_samples[8][9] , 
        \all_samples[8][8] , \all_samples[8][7] , \all_samples[8][6] , 
        \all_samples[8][5] , \all_samples[8][4] , \all_samples[8][3] , 
        \all_samples[8][2] , \all_samples[8][1] , \all_samples[8][0] , 
        \all_samples[7][9] , \all_samples[7][8] , \all_samples[7][7] , 
        \all_samples[7][6] , \all_samples[7][5] , \all_samples[7][4] , 
        \all_samples[7][3] , \all_samples[7][2] , \all_samples[7][1] , 
        \all_samples[7][0] , \all_samples[6][9] , \all_samples[6][8] , 
        \all_samples[6][7] , \all_samples[6][6] , \all_samples[6][5] , 
        \all_samples[6][4] , \all_samples[6][3] , \all_samples[6][2] , 
        \all_samples[6][1] , \all_samples[6][0] , \all_samples[5][9] , 
        \all_samples[5][8] , \all_samples[5][7] , \all_samples[5][6] , 
        \all_samples[5][5] , \all_samples[5][4] , \all_samples[5][3] , 
        \all_samples[5][2] , \all_samples[5][1] , \all_samples[5][0] , 
        \all_samples[4][9] , \all_samples[4][8] , \all_samples[4][7] , 
        \all_samples[4][6] , \all_samples[4][5] , \all_samples[4][4] , 
        \all_samples[4][3] , \all_samples[4][2] , \all_samples[4][1] , 
        \all_samples[4][0] , \all_samples[3][9] , \all_samples[3][8] , 
        \all_samples[3][7] , \all_samples[3][6] , \all_samples[3][5] , 
        \all_samples[3][4] , \all_samples[3][3] , \all_samples[3][2] , 
        \all_samples[3][1] , \all_samples[3][0] , \all_samples[2][9] , 
        \all_samples[2][8] , \all_samples[2][7] , \all_samples[2][6] , 
        \all_samples[2][5] , \all_samples[2][4] , \all_samples[2][3] , 
        \all_samples[2][2] , \all_samples[2][1] , \all_samples[2][0] , 
        \all_samples[1][9] , \all_samples[1][8] , \all_samples[1][7] , 
        \all_samples[1][6] , \all_samples[1][5] , \all_samples[1][4] , 
        \all_samples[1][3] , \all_samples[1][2] , \all_samples[1][1] , 
        \all_samples[1][0] , \all_samples[0][9] , \all_samples[0][8] , 
        \all_samples[0][7] , \all_samples[0][6] , \all_samples[0][5] , 
        \all_samples[0][4] , \all_samples[0][3] , \all_samples[0][2] , 
        \all_samples[0][1] , \all_samples[0][0] }), .all_coeffs({
        \all_coeffs[12][9] , \all_coeffs[12][8] , \all_coeffs[12][7] , 
        \all_coeffs[12][6] , \all_coeffs[12][5] , \all_coeffs[12][4] , 
        \all_coeffs[12][3] , \all_coeffs[12][2] , \all_coeffs[12][1] , 
        \all_coeffs[12][0] , \all_coeffs[11][9] , \all_coeffs[11][8] , 
        \all_coeffs[11][7] , \all_coeffs[11][6] , \all_coeffs[11][5] , 
        \all_coeffs[11][4] , \all_coeffs[11][3] , \all_coeffs[11][2] , 
        \all_coeffs[11][1] , \all_coeffs[11][0] , \all_coeffs[10][9] , 
        \all_coeffs[10][8] , \all_coeffs[10][7] , \all_coeffs[10][6] , 
        \all_coeffs[10][5] , \all_coeffs[10][4] , \all_coeffs[10][3] , 
        \all_coeffs[10][2] , \all_coeffs[10][1] , \all_coeffs[10][0] , 
        \all_coeffs[9][9] , \all_coeffs[9][8] , \all_coeffs[9][7] , 
        \all_coeffs[9][6] , \all_coeffs[9][5] , \all_coeffs[9][4] , 
        \all_coeffs[9][3] , \all_coeffs[9][2] , \all_coeffs[9][1] , 
        \all_coeffs[9][0] , \all_coeffs[8][9] , \all_coeffs[8][8] , 
        \all_coeffs[8][7] , \all_coeffs[8][6] , \all_coeffs[8][5] , 
        \all_coeffs[8][4] , \all_coeffs[8][3] , \all_coeffs[8][2] , 
        \all_coeffs[8][1] , \all_coeffs[8][0] , \all_coeffs[7][9] , 
        \all_coeffs[7][8] , \all_coeffs[7][7] , \all_coeffs[7][6] , 
        \all_coeffs[7][5] , \all_coeffs[7][4] , \all_coeffs[7][3] , 
        \all_coeffs[7][2] , \all_coeffs[7][1] , \all_coeffs[7][0] , 
        \all_coeffs[6][9] , \all_coeffs[6][8] , \all_coeffs[6][7] , 
        \all_coeffs[6][6] , \all_coeffs[6][5] , \all_coeffs[6][4] , 
        \all_coeffs[6][3] , \all_coeffs[6][2] , \all_coeffs[6][1] , 
        \all_coeffs[6][0] , \all_coeffs[5][9] , \all_coeffs[5][8] , 
        \all_coeffs[5][7] , \all_coeffs[5][6] , \all_coeffs[5][5] , 
        \all_coeffs[5][4] , \all_coeffs[5][3] , \all_coeffs[5][2] , 
        \all_coeffs[5][1] , \all_coeffs[5][0] , \all_coeffs[4][9] , 
        \all_coeffs[4][8] , \all_coeffs[4][7] , \all_coeffs[4][6] , 
        \all_coeffs[4][5] , \all_coeffs[4][4] , \all_coeffs[4][3] , 
        \all_coeffs[4][2] , \all_coeffs[4][1] , \all_coeffs[4][0] , 
        \all_coeffs[3][9] , \all_coeffs[3][8] , \all_coeffs[3][7] , 
        \all_coeffs[3][6] , \all_coeffs[3][5] , \all_coeffs[3][4] , 
        \all_coeffs[3][3] , \all_coeffs[3][2] , \all_coeffs[3][1] , 
        \all_coeffs[3][0] , \all_coeffs[2][9] , \all_coeffs[2][8] , 
        \all_coeffs[2][7] , \all_coeffs[2][6] , \all_coeffs[2][5] , 
        \all_coeffs[2][4] , \all_coeffs[2][3] , \all_coeffs[2][2] , 
        \all_coeffs[2][1] , \all_coeffs[2][0] , \all_coeffs[1][9] , 
        \all_coeffs[1][8] , \all_coeffs[1][7] , \all_coeffs[1][6] , 
        \all_coeffs[1][5] , \all_coeffs[1][4] , \all_coeffs[1][3] , 
        \all_coeffs[1][2] , \all_coeffs[1][1] , \all_coeffs[1][0] , 
        \all_coeffs[0][9] , \all_coeffs[0][8] , \all_coeffs[0][7] , 
        \all_coeffs[0][6] , \all_coeffs[0][5] , \all_coeffs[0][4] , 
        \all_coeffs[0][3] , \all_coeffs[0][2] , \all_coeffs[0][1] , 
        \all_coeffs[0][0] }), result );
  output [23:0] result;
  input \all_samples[12][9] , \all_samples[12][8] , \all_samples[12][7] ,
         \all_samples[12][6] , \all_samples[12][5] , \all_samples[12][4] ,
         \all_samples[12][3] , \all_samples[12][2] , \all_samples[12][1] ,
         \all_samples[12][0] , \all_samples[11][9] , \all_samples[11][8] ,
         \all_samples[11][7] , \all_samples[11][6] , \all_samples[11][5] ,
         \all_samples[11][4] , \all_samples[11][3] , \all_samples[11][2] ,
         \all_samples[11][1] , \all_samples[11][0] , \all_samples[10][9] ,
         \all_samples[10][8] , \all_samples[10][7] , \all_samples[10][6] ,
         \all_samples[10][5] , \all_samples[10][4] , \all_samples[10][3] ,
         \all_samples[10][2] , \all_samples[10][1] , \all_samples[10][0] ,
         \all_samples[9][9] , \all_samples[9][8] , \all_samples[9][7] ,
         \all_samples[9][6] , \all_samples[9][5] , \all_samples[9][4] ,
         \all_samples[9][3] , \all_samples[9][2] , \all_samples[9][1] ,
         \all_samples[9][0] , \all_samples[8][9] , \all_samples[8][8] ,
         \all_samples[8][7] , \all_samples[8][6] , \all_samples[8][5] ,
         \all_samples[8][4] , \all_samples[8][3] , \all_samples[8][2] ,
         \all_samples[8][1] , \all_samples[8][0] , \all_samples[7][9] ,
         \all_samples[7][8] , \all_samples[7][7] , \all_samples[7][6] ,
         \all_samples[7][5] , \all_samples[7][4] , \all_samples[7][3] ,
         \all_samples[7][2] , \all_samples[7][1] , \all_samples[7][0] ,
         \all_samples[6][9] , \all_samples[6][8] , \all_samples[6][7] ,
         \all_samples[6][6] , \all_samples[6][5] , \all_samples[6][4] ,
         \all_samples[6][3] , \all_samples[6][2] , \all_samples[6][1] ,
         \all_samples[6][0] , \all_samples[5][9] , \all_samples[5][8] ,
         \all_samples[5][7] , \all_samples[5][6] , \all_samples[5][5] ,
         \all_samples[5][4] , \all_samples[5][3] , \all_samples[5][2] ,
         \all_samples[5][1] , \all_samples[5][0] , \all_samples[4][9] ,
         \all_samples[4][8] , \all_samples[4][7] , \all_samples[4][6] ,
         \all_samples[4][5] , \all_samples[4][4] , \all_samples[4][3] ,
         \all_samples[4][2] , \all_samples[4][1] , \all_samples[4][0] ,
         \all_samples[3][9] , \all_samples[3][8] , \all_samples[3][7] ,
         \all_samples[3][6] , \all_samples[3][5] , \all_samples[3][4] ,
         \all_samples[3][3] , \all_samples[3][2] , \all_samples[3][1] ,
         \all_samples[3][0] , \all_samples[2][9] , \all_samples[2][8] ,
         \all_samples[2][7] , \all_samples[2][6] , \all_samples[2][5] ,
         \all_samples[2][4] , \all_samples[2][3] , \all_samples[2][2] ,
         \all_samples[2][1] , \all_samples[2][0] , \all_samples[1][9] ,
         \all_samples[1][8] , \all_samples[1][7] , \all_samples[1][6] ,
         \all_samples[1][5] , \all_samples[1][4] , \all_samples[1][3] ,
         \all_samples[1][2] , \all_samples[1][1] , \all_samples[1][0] ,
         \all_samples[0][9] , \all_samples[0][8] , \all_samples[0][7] ,
         \all_samples[0][6] , \all_samples[0][5] , \all_samples[0][4] ,
         \all_samples[0][3] , \all_samples[0][2] , \all_samples[0][1] ,
         \all_samples[0][0] , \all_coeffs[12][9] , \all_coeffs[12][8] ,
         \all_coeffs[12][7] , \all_coeffs[12][6] , \all_coeffs[12][5] ,
         \all_coeffs[12][4] , \all_coeffs[12][3] , \all_coeffs[12][2] ,
         \all_coeffs[12][1] , \all_coeffs[12][0] , \all_coeffs[11][9] ,
         \all_coeffs[11][8] , \all_coeffs[11][7] , \all_coeffs[11][6] ,
         \all_coeffs[11][5] , \all_coeffs[11][4] , \all_coeffs[11][3] ,
         \all_coeffs[11][2] , \all_coeffs[11][1] , \all_coeffs[11][0] ,
         \all_coeffs[10][9] , \all_coeffs[10][8] , \all_coeffs[10][7] ,
         \all_coeffs[10][6] , \all_coeffs[10][5] , \all_coeffs[10][4] ,
         \all_coeffs[10][3] , \all_coeffs[10][2] , \all_coeffs[10][1] ,
         \all_coeffs[10][0] , \all_coeffs[9][9] , \all_coeffs[9][8] ,
         \all_coeffs[9][7] , \all_coeffs[9][6] , \all_coeffs[9][5] ,
         \all_coeffs[9][4] , \all_coeffs[9][3] , \all_coeffs[9][2] ,
         \all_coeffs[9][1] , \all_coeffs[9][0] , \all_coeffs[8][9] ,
         \all_coeffs[8][8] , \all_coeffs[8][7] , \all_coeffs[8][6] ,
         \all_coeffs[8][5] , \all_coeffs[8][4] , \all_coeffs[8][3] ,
         \all_coeffs[8][2] , \all_coeffs[8][1] , \all_coeffs[8][0] ,
         \all_coeffs[7][9] , \all_coeffs[7][8] , \all_coeffs[7][7] ,
         \all_coeffs[7][6] , \all_coeffs[7][5] , \all_coeffs[7][4] ,
         \all_coeffs[7][3] , \all_coeffs[7][2] , \all_coeffs[7][1] ,
         \all_coeffs[7][0] , \all_coeffs[6][9] , \all_coeffs[6][8] ,
         \all_coeffs[6][7] , \all_coeffs[6][6] , \all_coeffs[6][5] ,
         \all_coeffs[6][4] , \all_coeffs[6][3] , \all_coeffs[6][2] ,
         \all_coeffs[6][1] , \all_coeffs[6][0] , \all_coeffs[5][9] ,
         \all_coeffs[5][8] , \all_coeffs[5][7] , \all_coeffs[5][6] ,
         \all_coeffs[5][5] , \all_coeffs[5][4] , \all_coeffs[5][3] ,
         \all_coeffs[5][2] , \all_coeffs[5][1] , \all_coeffs[5][0] ,
         \all_coeffs[4][9] , \all_coeffs[4][8] , \all_coeffs[4][7] ,
         \all_coeffs[4][6] , \all_coeffs[4][5] , \all_coeffs[4][4] ,
         \all_coeffs[4][3] , \all_coeffs[4][2] , \all_coeffs[4][1] ,
         \all_coeffs[4][0] , \all_coeffs[3][9] , \all_coeffs[3][8] ,
         \all_coeffs[3][7] , \all_coeffs[3][6] , \all_coeffs[3][5] ,
         \all_coeffs[3][4] , \all_coeffs[3][3] , \all_coeffs[3][2] ,
         \all_coeffs[3][1] , \all_coeffs[3][0] , \all_coeffs[2][9] ,
         \all_coeffs[2][8] , \all_coeffs[2][7] , \all_coeffs[2][6] ,
         \all_coeffs[2][5] , \all_coeffs[2][4] , \all_coeffs[2][3] ,
         \all_coeffs[2][2] , \all_coeffs[2][1] , \all_coeffs[2][0] ,
         \all_coeffs[1][9] , \all_coeffs[1][8] , \all_coeffs[1][7] ,
         \all_coeffs[1][6] , \all_coeffs[1][5] , \all_coeffs[1][4] ,
         \all_coeffs[1][3] , \all_coeffs[1][2] , \all_coeffs[1][1] ,
         \all_coeffs[1][0] , \all_coeffs[0][9] , \all_coeffs[0][8] ,
         \all_coeffs[0][7] , \all_coeffs[0][6] , \all_coeffs[0][5] ,
         \all_coeffs[0][4] , \all_coeffs[0][3] , \all_coeffs[0][2] ,
         \all_coeffs[0][1] , \all_coeffs[0][0] ;
  wire   \tmp_result[12][23] , \tmp_result[12][22] , \tmp_result[12][21] ,
         \tmp_result[12][20] , \tmp_result[12][19] , \tmp_result[12][18] ,
         \tmp_result[12][17] , \tmp_result[12][16] , \tmp_result[12][15] ,
         \tmp_result[12][14] , \tmp_result[12][13] , \tmp_result[12][12] ,
         \tmp_result[12][11] , \tmp_result[12][10] , \tmp_result[12][9] ,
         \tmp_result[12][8] , \tmp_result[12][7] , \tmp_result[12][6] ,
         \tmp_result[12][5] , \tmp_result[12][4] , \tmp_result[12][3] ,
         \tmp_result[12][2] , \tmp_result[12][1] , \tmp_result[12][0] ,
         \tmp_result[11][23] , \tmp_result[11][22] , \tmp_result[11][21] ,
         \tmp_result[11][20] , \tmp_result[11][19] , \tmp_result[11][18] ,
         \tmp_result[11][17] , \tmp_result[11][16] , \tmp_result[11][15] ,
         \tmp_result[11][14] , \tmp_result[11][13] , \tmp_result[11][12] ,
         \tmp_result[11][11] , \tmp_result[11][10] , \tmp_result[11][9] ,
         \tmp_result[11][8] , \tmp_result[11][7] , \tmp_result[11][6] ,
         \tmp_result[11][5] , \tmp_result[11][4] , \tmp_result[11][3] ,
         \tmp_result[11][2] , \tmp_result[11][1] , \tmp_result[11][0] ,
         \tmp_result[10][23] , \tmp_result[10][22] , \tmp_result[10][21] ,
         \tmp_result[10][20] , \tmp_result[10][19] , \tmp_result[10][18] ,
         \tmp_result[10][17] , \tmp_result[10][16] , \tmp_result[10][15] ,
         \tmp_result[10][14] , \tmp_result[10][13] , \tmp_result[10][12] ,
         \tmp_result[10][11] , \tmp_result[10][10] , \tmp_result[10][9] ,
         \tmp_result[10][8] , \tmp_result[10][7] , \tmp_result[10][6] ,
         \tmp_result[10][5] , \tmp_result[10][4] , \tmp_result[10][3] ,
         \tmp_result[10][2] , \tmp_result[10][1] , \tmp_result[10][0] ,
         \tmp_result[9][23] , \tmp_result[9][22] , \tmp_result[9][21] ,
         \tmp_result[9][20] , \tmp_result[9][19] , \tmp_result[9][18] ,
         \tmp_result[9][17] , \tmp_result[9][16] , \tmp_result[9][15] ,
         \tmp_result[9][14] , \tmp_result[9][13] , \tmp_result[9][12] ,
         \tmp_result[9][11] , \tmp_result[9][10] , \tmp_result[9][9] ,
         \tmp_result[9][8] , \tmp_result[9][7] , \tmp_result[9][6] ,
         \tmp_result[9][5] , \tmp_result[9][4] , \tmp_result[9][3] ,
         \tmp_result[9][2] , \tmp_result[9][1] , \tmp_result[9][0] ,
         \tmp_result[8][23] , \tmp_result[8][22] , \tmp_result[8][21] ,
         \tmp_result[8][20] , \tmp_result[8][19] , \tmp_result[8][18] ,
         \tmp_result[8][17] , \tmp_result[8][16] , \tmp_result[8][15] ,
         \tmp_result[8][14] , \tmp_result[8][13] , \tmp_result[8][12] ,
         \tmp_result[8][11] , \tmp_result[8][10] , \tmp_result[8][9] ,
         \tmp_result[8][8] , \tmp_result[8][7] , \tmp_result[8][6] ,
         \tmp_result[8][5] , \tmp_result[8][4] , \tmp_result[8][3] ,
         \tmp_result[8][2] , \tmp_result[8][1] , \tmp_result[8][0] ,
         \tmp_result[7][23] , \tmp_result[7][22] , \tmp_result[7][21] ,
         \tmp_result[7][20] , \tmp_result[7][19] , \tmp_result[7][18] ,
         \tmp_result[7][17] , \tmp_result[7][16] , \tmp_result[7][15] ,
         \tmp_result[7][14] , \tmp_result[7][13] , \tmp_result[7][12] ,
         \tmp_result[7][11] , \tmp_result[7][10] , \tmp_result[7][9] ,
         \tmp_result[7][8] , \tmp_result[7][7] , \tmp_result[7][6] ,
         \tmp_result[7][5] , \tmp_result[7][4] , \tmp_result[7][3] ,
         \tmp_result[7][2] , \tmp_result[7][1] , \tmp_result[7][0] ,
         \tmp_result[6][23] , \tmp_result[6][22] , \tmp_result[6][21] ,
         \tmp_result[6][20] , \tmp_result[6][19] , \tmp_result[6][18] ,
         \tmp_result[6][17] , \tmp_result[6][16] , \tmp_result[6][15] ,
         \tmp_result[6][14] , \tmp_result[6][13] , \tmp_result[6][12] ,
         \tmp_result[6][11] , \tmp_result[6][10] , \tmp_result[6][9] ,
         \tmp_result[6][8] , \tmp_result[6][7] , \tmp_result[6][6] ,
         \tmp_result[6][5] , \tmp_result[6][4] , \tmp_result[6][3] ,
         \tmp_result[6][2] , \tmp_result[6][1] , \tmp_result[6][0] ,
         \tmp_result[5][23] , \tmp_result[5][22] , \tmp_result[5][21] ,
         \tmp_result[5][20] , \tmp_result[5][19] , \tmp_result[5][18] ,
         \tmp_result[5][17] , \tmp_result[5][16] , \tmp_result[5][15] ,
         \tmp_result[5][14] , \tmp_result[5][13] , \tmp_result[5][12] ,
         \tmp_result[5][11] , \tmp_result[5][10] , \tmp_result[5][9] ,
         \tmp_result[5][8] , \tmp_result[5][7] , \tmp_result[5][6] ,
         \tmp_result[5][5] , \tmp_result[5][4] , \tmp_result[5][3] ,
         \tmp_result[5][2] , \tmp_result[5][1] , \tmp_result[5][0] ,
         \tmp_result[4][23] , \tmp_result[4][22] , \tmp_result[4][21] ,
         \tmp_result[4][20] , \tmp_result[4][19] , \tmp_result[4][18] ,
         \tmp_result[4][17] , \tmp_result[4][16] , \tmp_result[4][15] ,
         \tmp_result[4][14] , \tmp_result[4][13] , \tmp_result[4][12] ,
         \tmp_result[4][11] , \tmp_result[4][10] , \tmp_result[4][9] ,
         \tmp_result[4][8] , \tmp_result[4][7] , \tmp_result[4][6] ,
         \tmp_result[4][5] , \tmp_result[4][4] , \tmp_result[4][3] ,
         \tmp_result[4][2] , \tmp_result[4][1] , \tmp_result[4][0] ,
         \tmp_result[3][23] , \tmp_result[3][22] , \tmp_result[3][21] ,
         \tmp_result[3][20] , \tmp_result[3][19] , \tmp_result[3][18] ,
         \tmp_result[3][17] , \tmp_result[3][16] , \tmp_result[3][15] ,
         \tmp_result[3][14] , \tmp_result[3][13] , \tmp_result[3][12] ,
         \tmp_result[3][11] , \tmp_result[3][10] , \tmp_result[3][9] ,
         \tmp_result[3][8] , \tmp_result[3][7] , \tmp_result[3][6] ,
         \tmp_result[3][5] , \tmp_result[3][4] , \tmp_result[3][3] ,
         \tmp_result[3][2] , \tmp_result[3][1] , \tmp_result[3][0] ,
         \tmp_result[2][23] , \tmp_result[2][22] , \tmp_result[2][21] ,
         \tmp_result[2][20] , \tmp_result[2][19] , \tmp_result[2][18] ,
         \tmp_result[2][17] , \tmp_result[2][16] , \tmp_result[2][15] ,
         \tmp_result[2][14] , \tmp_result[2][13] , \tmp_result[2][12] ,
         \tmp_result[2][11] , \tmp_result[2][10] , \tmp_result[2][9] ,
         \tmp_result[2][8] , \tmp_result[2][7] , \tmp_result[2][6] ,
         \tmp_result[2][5] , \tmp_result[2][4] , \tmp_result[2][3] ,
         \tmp_result[2][2] , \tmp_result[2][1] , \tmp_result[2][0] ,
         \tmp_result[1][23] , \tmp_result[1][22] , \tmp_result[1][21] ,
         \tmp_result[1][20] , \tmp_result[1][19] , \tmp_result[1][18] ,
         \tmp_result[1][17] , \tmp_result[1][16] , \tmp_result[1][15] ,
         \tmp_result[1][14] , \tmp_result[1][13] , \tmp_result[1][12] ,
         \tmp_result[1][11] , \tmp_result[1][10] , \tmp_result[1][9] ,
         \tmp_result[1][8] , \tmp_result[1][7] , \tmp_result[1][6] ,
         \tmp_result[1][5] , \tmp_result[1][4] , \tmp_result[1][3] ,
         \tmp_result[1][2] , \tmp_result[1][1] , \tmp_result[1][0] ;

  MAC_0 MACX_0 ( .sample_in({\all_samples[0][9] , \all_samples[0][8] , 
        \all_samples[0][7] , \all_samples[0][6] , \all_samples[0][5] , 
        \all_samples[0][4] , \all_samples[0][3] , \all_samples[0][2] , 
        \all_samples[0][1] , \all_samples[0][0] }), .coeff({\all_coeffs[0][9] , 
        \all_coeffs[0][8] , \all_coeffs[0][7] , \all_coeffs[0][6] , 
        \all_coeffs[0][5] , \all_coeffs[0][4] , \all_coeffs[0][3] , 
        \all_coeffs[0][2] , \all_coeffs[0][1] , \all_coeffs[0][0] }), .acc({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .result({\tmp_result[1][23] , \tmp_result[1][22] , \tmp_result[1][21] , 
        \tmp_result[1][20] , \tmp_result[1][19] , \tmp_result[1][18] , 
        \tmp_result[1][17] , \tmp_result[1][16] , \tmp_result[1][15] , 
        \tmp_result[1][14] , \tmp_result[1][13] , \tmp_result[1][12] , 
        \tmp_result[1][11] , \tmp_result[1][10] , \tmp_result[1][9] , 
        \tmp_result[1][8] , \tmp_result[1][7] , \tmp_result[1][6] , 
        \tmp_result[1][5] , \tmp_result[1][4] , \tmp_result[1][3] , 
        \tmp_result[1][2] , \tmp_result[1][1] , \tmp_result[1][0] }) );
  MAC_12 MACX_1 ( .sample_in({\all_samples[1][9] , \all_samples[1][8] , 
        \all_samples[1][7] , \all_samples[1][6] , \all_samples[1][5] , 
        \all_samples[1][4] , \all_samples[1][3] , \all_samples[1][2] , 
        \all_samples[1][1] , \all_samples[1][0] }), .coeff({\all_coeffs[1][9] , 
        \all_coeffs[1][8] , \all_coeffs[1][7] , \all_coeffs[1][6] , 
        \all_coeffs[1][5] , \all_coeffs[1][4] , \all_coeffs[1][3] , 
        \all_coeffs[1][2] , \all_coeffs[1][1] , \all_coeffs[1][0] }), .acc({
        \tmp_result[1][23] , \tmp_result[1][22] , \tmp_result[1][21] , 
        \tmp_result[1][20] , \tmp_result[1][19] , \tmp_result[1][18] , 
        \tmp_result[1][17] , \tmp_result[1][16] , \tmp_result[1][15] , 
        \tmp_result[1][14] , \tmp_result[1][13] , \tmp_result[1][12] , 
        \tmp_result[1][11] , \tmp_result[1][10] , \tmp_result[1][9] , 
        \tmp_result[1][8] , \tmp_result[1][7] , \tmp_result[1][6] , 
        \tmp_result[1][5] , \tmp_result[1][4] , \tmp_result[1][3] , 
        \tmp_result[1][2] , \tmp_result[1][1] , \tmp_result[1][0] }), .result(
        {\tmp_result[2][23] , \tmp_result[2][22] , \tmp_result[2][21] , 
        \tmp_result[2][20] , \tmp_result[2][19] , \tmp_result[2][18] , 
        \tmp_result[2][17] , \tmp_result[2][16] , \tmp_result[2][15] , 
        \tmp_result[2][14] , \tmp_result[2][13] , \tmp_result[2][12] , 
        \tmp_result[2][11] , \tmp_result[2][10] , \tmp_result[2][9] , 
        \tmp_result[2][8] , \tmp_result[2][7] , \tmp_result[2][6] , 
        \tmp_result[2][5] , \tmp_result[2][4] , \tmp_result[2][3] , 
        \tmp_result[2][2] , \tmp_result[2][1] , \tmp_result[2][0] }) );
  MAC_11 MACX_2 ( .sample_in({\all_samples[2][9] , \all_samples[2][8] , 
        \all_samples[2][7] , \all_samples[2][6] , \all_samples[2][5] , 
        \all_samples[2][4] , \all_samples[2][3] , \all_samples[2][2] , 
        \all_samples[2][1] , \all_samples[2][0] }), .coeff({\all_coeffs[2][9] , 
        \all_coeffs[2][8] , \all_coeffs[2][7] , \all_coeffs[2][6] , 
        \all_coeffs[2][5] , \all_coeffs[2][4] , \all_coeffs[2][3] , 
        \all_coeffs[2][2] , \all_coeffs[2][1] , \all_coeffs[2][0] }), .acc({
        \tmp_result[2][23] , \tmp_result[2][22] , \tmp_result[2][21] , 
        \tmp_result[2][20] , \tmp_result[2][19] , \tmp_result[2][18] , 
        \tmp_result[2][17] , \tmp_result[2][16] , \tmp_result[2][15] , 
        \tmp_result[2][14] , \tmp_result[2][13] , \tmp_result[2][12] , 
        \tmp_result[2][11] , \tmp_result[2][10] , \tmp_result[2][9] , 
        \tmp_result[2][8] , \tmp_result[2][7] , \tmp_result[2][6] , 
        \tmp_result[2][5] , \tmp_result[2][4] , \tmp_result[2][3] , 
        \tmp_result[2][2] , \tmp_result[2][1] , \tmp_result[2][0] }), .result(
        {\tmp_result[3][23] , \tmp_result[3][22] , \tmp_result[3][21] , 
        \tmp_result[3][20] , \tmp_result[3][19] , \tmp_result[3][18] , 
        \tmp_result[3][17] , \tmp_result[3][16] , \tmp_result[3][15] , 
        \tmp_result[3][14] , \tmp_result[3][13] , \tmp_result[3][12] , 
        \tmp_result[3][11] , \tmp_result[3][10] , \tmp_result[3][9] , 
        \tmp_result[3][8] , \tmp_result[3][7] , \tmp_result[3][6] , 
        \tmp_result[3][5] , \tmp_result[3][4] , \tmp_result[3][3] , 
        \tmp_result[3][2] , \tmp_result[3][1] , \tmp_result[3][0] }) );
  MAC_10 MACX_3 ( .sample_in({\all_samples[3][9] , \all_samples[3][8] , 
        \all_samples[3][7] , \all_samples[3][6] , \all_samples[3][5] , 
        \all_samples[3][4] , \all_samples[3][3] , \all_samples[3][2] , 
        \all_samples[3][1] , \all_samples[3][0] }), .coeff({\all_coeffs[3][9] , 
        \all_coeffs[3][8] , \all_coeffs[3][7] , \all_coeffs[3][6] , 
        \all_coeffs[3][5] , \all_coeffs[3][4] , \all_coeffs[3][3] , 
        \all_coeffs[3][2] , \all_coeffs[3][1] , \all_coeffs[3][0] }), .acc({
        \tmp_result[3][23] , \tmp_result[3][22] , \tmp_result[3][21] , 
        \tmp_result[3][20] , \tmp_result[3][19] , \tmp_result[3][18] , 
        \tmp_result[3][17] , \tmp_result[3][16] , \tmp_result[3][15] , 
        \tmp_result[3][14] , \tmp_result[3][13] , \tmp_result[3][12] , 
        \tmp_result[3][11] , \tmp_result[3][10] , \tmp_result[3][9] , 
        \tmp_result[3][8] , \tmp_result[3][7] , \tmp_result[3][6] , 
        \tmp_result[3][5] , \tmp_result[3][4] , \tmp_result[3][3] , 
        \tmp_result[3][2] , \tmp_result[3][1] , \tmp_result[3][0] }), .result(
        {\tmp_result[4][23] , \tmp_result[4][22] , \tmp_result[4][21] , 
        \tmp_result[4][20] , \tmp_result[4][19] , \tmp_result[4][18] , 
        \tmp_result[4][17] , \tmp_result[4][16] , \tmp_result[4][15] , 
        \tmp_result[4][14] , \tmp_result[4][13] , \tmp_result[4][12] , 
        \tmp_result[4][11] , \tmp_result[4][10] , \tmp_result[4][9] , 
        \tmp_result[4][8] , \tmp_result[4][7] , \tmp_result[4][6] , 
        \tmp_result[4][5] , \tmp_result[4][4] , \tmp_result[4][3] , 
        \tmp_result[4][2] , \tmp_result[4][1] , \tmp_result[4][0] }) );
  MAC_9 MACX_4 ( .sample_in({\all_samples[4][9] , \all_samples[4][8] , 
        \all_samples[4][7] , \all_samples[4][6] , \all_samples[4][5] , 
        \all_samples[4][4] , \all_samples[4][3] , \all_samples[4][2] , 
        \all_samples[4][1] , \all_samples[4][0] }), .coeff({\all_coeffs[4][9] , 
        \all_coeffs[4][8] , \all_coeffs[4][7] , \all_coeffs[4][6] , 
        \all_coeffs[4][5] , \all_coeffs[4][4] , \all_coeffs[4][3] , 
        \all_coeffs[4][2] , \all_coeffs[4][1] , \all_coeffs[4][0] }), .acc({
        \tmp_result[4][23] , \tmp_result[4][22] , \tmp_result[4][21] , 
        \tmp_result[4][20] , \tmp_result[4][19] , \tmp_result[4][18] , 
        \tmp_result[4][17] , \tmp_result[4][16] , \tmp_result[4][15] , 
        \tmp_result[4][14] , \tmp_result[4][13] , \tmp_result[4][12] , 
        \tmp_result[4][11] , \tmp_result[4][10] , \tmp_result[4][9] , 
        \tmp_result[4][8] , \tmp_result[4][7] , \tmp_result[4][6] , 
        \tmp_result[4][5] , \tmp_result[4][4] , \tmp_result[4][3] , 
        \tmp_result[4][2] , \tmp_result[4][1] , \tmp_result[4][0] }), .result(
        {\tmp_result[5][23] , \tmp_result[5][22] , \tmp_result[5][21] , 
        \tmp_result[5][20] , \tmp_result[5][19] , \tmp_result[5][18] , 
        \tmp_result[5][17] , \tmp_result[5][16] , \tmp_result[5][15] , 
        \tmp_result[5][14] , \tmp_result[5][13] , \tmp_result[5][12] , 
        \tmp_result[5][11] , \tmp_result[5][10] , \tmp_result[5][9] , 
        \tmp_result[5][8] , \tmp_result[5][7] , \tmp_result[5][6] , 
        \tmp_result[5][5] , \tmp_result[5][4] , \tmp_result[5][3] , 
        \tmp_result[5][2] , \tmp_result[5][1] , \tmp_result[5][0] }) );
  MAC_8 MACX_5 ( .sample_in({\all_samples[5][9] , \all_samples[5][8] , 
        \all_samples[5][7] , \all_samples[5][6] , \all_samples[5][5] , 
        \all_samples[5][4] , \all_samples[5][3] , \all_samples[5][2] , 
        \all_samples[5][1] , \all_samples[5][0] }), .coeff({\all_coeffs[5][9] , 
        \all_coeffs[5][8] , \all_coeffs[5][7] , \all_coeffs[5][6] , 
        \all_coeffs[5][5] , \all_coeffs[5][4] , \all_coeffs[5][3] , 
        \all_coeffs[5][2] , \all_coeffs[5][1] , \all_coeffs[5][0] }), .acc({
        \tmp_result[5][23] , \tmp_result[5][22] , \tmp_result[5][21] , 
        \tmp_result[5][20] , \tmp_result[5][19] , \tmp_result[5][18] , 
        \tmp_result[5][17] , \tmp_result[5][16] , \tmp_result[5][15] , 
        \tmp_result[5][14] , \tmp_result[5][13] , \tmp_result[5][12] , 
        \tmp_result[5][11] , \tmp_result[5][10] , \tmp_result[5][9] , 
        \tmp_result[5][8] , \tmp_result[5][7] , \tmp_result[5][6] , 
        \tmp_result[5][5] , \tmp_result[5][4] , \tmp_result[5][3] , 
        \tmp_result[5][2] , \tmp_result[5][1] , \tmp_result[5][0] }), .result(
        {\tmp_result[6][23] , \tmp_result[6][22] , \tmp_result[6][21] , 
        \tmp_result[6][20] , \tmp_result[6][19] , \tmp_result[6][18] , 
        \tmp_result[6][17] , \tmp_result[6][16] , \tmp_result[6][15] , 
        \tmp_result[6][14] , \tmp_result[6][13] , \tmp_result[6][12] , 
        \tmp_result[6][11] , \tmp_result[6][10] , \tmp_result[6][9] , 
        \tmp_result[6][8] , \tmp_result[6][7] , \tmp_result[6][6] , 
        \tmp_result[6][5] , \tmp_result[6][4] , \tmp_result[6][3] , 
        \tmp_result[6][2] , \tmp_result[6][1] , \tmp_result[6][0] }) );
  MAC_7 MACX_6 ( .sample_in({\all_samples[6][9] , \all_samples[6][8] , 
        \all_samples[6][7] , \all_samples[6][6] , \all_samples[6][5] , 
        \all_samples[6][4] , \all_samples[6][3] , \all_samples[6][2] , 
        \all_samples[6][1] , \all_samples[6][0] }), .coeff({\all_coeffs[6][9] , 
        \all_coeffs[6][8] , \all_coeffs[6][7] , \all_coeffs[6][6] , 
        \all_coeffs[6][5] , \all_coeffs[6][4] , \all_coeffs[6][3] , 
        \all_coeffs[6][2] , \all_coeffs[6][1] , \all_coeffs[6][0] }), .acc({
        \tmp_result[6][23] , \tmp_result[6][22] , \tmp_result[6][21] , 
        \tmp_result[6][20] , \tmp_result[6][19] , \tmp_result[6][18] , 
        \tmp_result[6][17] , \tmp_result[6][16] , \tmp_result[6][15] , 
        \tmp_result[6][14] , \tmp_result[6][13] , \tmp_result[6][12] , 
        \tmp_result[6][11] , \tmp_result[6][10] , \tmp_result[6][9] , 
        \tmp_result[6][8] , \tmp_result[6][7] , \tmp_result[6][6] , 
        \tmp_result[6][5] , \tmp_result[6][4] , \tmp_result[6][3] , 
        \tmp_result[6][2] , \tmp_result[6][1] , \tmp_result[6][0] }), .result(
        {\tmp_result[7][23] , \tmp_result[7][22] , \tmp_result[7][21] , 
        \tmp_result[7][20] , \tmp_result[7][19] , \tmp_result[7][18] , 
        \tmp_result[7][17] , \tmp_result[7][16] , \tmp_result[7][15] , 
        \tmp_result[7][14] , \tmp_result[7][13] , \tmp_result[7][12] , 
        \tmp_result[7][11] , \tmp_result[7][10] , \tmp_result[7][9] , 
        \tmp_result[7][8] , \tmp_result[7][7] , \tmp_result[7][6] , 
        \tmp_result[7][5] , \tmp_result[7][4] , \tmp_result[7][3] , 
        \tmp_result[7][2] , \tmp_result[7][1] , \tmp_result[7][0] }) );
  MAC_6 MACX_7 ( .sample_in({\all_samples[7][9] , \all_samples[7][8] , 
        \all_samples[7][7] , \all_samples[7][6] , \all_samples[7][5] , 
        \all_samples[7][4] , \all_samples[7][3] , \all_samples[7][2] , 
        \all_samples[7][1] , \all_samples[7][0] }), .coeff({\all_coeffs[7][9] , 
        \all_coeffs[7][8] , \all_coeffs[7][7] , \all_coeffs[7][6] , 
        \all_coeffs[7][5] , \all_coeffs[7][4] , \all_coeffs[7][3] , 
        \all_coeffs[7][2] , \all_coeffs[7][1] , \all_coeffs[7][0] }), .acc({
        \tmp_result[7][23] , \tmp_result[7][22] , \tmp_result[7][21] , 
        \tmp_result[7][20] , \tmp_result[7][19] , \tmp_result[7][18] , 
        \tmp_result[7][17] , \tmp_result[7][16] , \tmp_result[7][15] , 
        \tmp_result[7][14] , \tmp_result[7][13] , \tmp_result[7][12] , 
        \tmp_result[7][11] , \tmp_result[7][10] , \tmp_result[7][9] , 
        \tmp_result[7][8] , \tmp_result[7][7] , \tmp_result[7][6] , 
        \tmp_result[7][5] , \tmp_result[7][4] , \tmp_result[7][3] , 
        \tmp_result[7][2] , \tmp_result[7][1] , \tmp_result[7][0] }), .result(
        {\tmp_result[8][23] , \tmp_result[8][22] , \tmp_result[8][21] , 
        \tmp_result[8][20] , \tmp_result[8][19] , \tmp_result[8][18] , 
        \tmp_result[8][17] , \tmp_result[8][16] , \tmp_result[8][15] , 
        \tmp_result[8][14] , \tmp_result[8][13] , \tmp_result[8][12] , 
        \tmp_result[8][11] , \tmp_result[8][10] , \tmp_result[8][9] , 
        \tmp_result[8][8] , \tmp_result[8][7] , \tmp_result[8][6] , 
        \tmp_result[8][5] , \tmp_result[8][4] , \tmp_result[8][3] , 
        \tmp_result[8][2] , \tmp_result[8][1] , \tmp_result[8][0] }) );
  MAC_5 MACX_8 ( .sample_in({\all_samples[8][9] , \all_samples[8][8] , 
        \all_samples[8][7] , \all_samples[8][6] , \all_samples[8][5] , 
        \all_samples[8][4] , \all_samples[8][3] , \all_samples[8][2] , 
        \all_samples[8][1] , \all_samples[8][0] }), .coeff({\all_coeffs[8][9] , 
        \all_coeffs[8][8] , \all_coeffs[8][7] , \all_coeffs[8][6] , 
        \all_coeffs[8][5] , \all_coeffs[8][4] , \all_coeffs[8][3] , 
        \all_coeffs[8][2] , \all_coeffs[8][1] , \all_coeffs[8][0] }), .acc({
        \tmp_result[8][23] , \tmp_result[8][22] , \tmp_result[8][21] , 
        \tmp_result[8][20] , \tmp_result[8][19] , \tmp_result[8][18] , 
        \tmp_result[8][17] , \tmp_result[8][16] , \tmp_result[8][15] , 
        \tmp_result[8][14] , \tmp_result[8][13] , \tmp_result[8][12] , 
        \tmp_result[8][11] , \tmp_result[8][10] , \tmp_result[8][9] , 
        \tmp_result[8][8] , \tmp_result[8][7] , \tmp_result[8][6] , 
        \tmp_result[8][5] , \tmp_result[8][4] , \tmp_result[8][3] , 
        \tmp_result[8][2] , \tmp_result[8][1] , \tmp_result[8][0] }), .result(
        {\tmp_result[9][23] , \tmp_result[9][22] , \tmp_result[9][21] , 
        \tmp_result[9][20] , \tmp_result[9][19] , \tmp_result[9][18] , 
        \tmp_result[9][17] , \tmp_result[9][16] , \tmp_result[9][15] , 
        \tmp_result[9][14] , \tmp_result[9][13] , \tmp_result[9][12] , 
        \tmp_result[9][11] , \tmp_result[9][10] , \tmp_result[9][9] , 
        \tmp_result[9][8] , \tmp_result[9][7] , \tmp_result[9][6] , 
        \tmp_result[9][5] , \tmp_result[9][4] , \tmp_result[9][3] , 
        \tmp_result[9][2] , \tmp_result[9][1] , \tmp_result[9][0] }) );
  MAC_4 MACX_9 ( .sample_in({\all_samples[9][9] , \all_samples[9][8] , 
        \all_samples[9][7] , \all_samples[9][6] , \all_samples[9][5] , 
        \all_samples[9][4] , \all_samples[9][3] , \all_samples[9][2] , 
        \all_samples[9][1] , \all_samples[9][0] }), .coeff({\all_coeffs[9][9] , 
        \all_coeffs[9][8] , \all_coeffs[9][7] , \all_coeffs[9][6] , 
        \all_coeffs[9][5] , \all_coeffs[9][4] , \all_coeffs[9][3] , 
        \all_coeffs[9][2] , \all_coeffs[9][1] , \all_coeffs[9][0] }), .acc({
        \tmp_result[9][23] , \tmp_result[9][22] , \tmp_result[9][21] , 
        \tmp_result[9][20] , \tmp_result[9][19] , \tmp_result[9][18] , 
        \tmp_result[9][17] , \tmp_result[9][16] , \tmp_result[9][15] , 
        \tmp_result[9][14] , \tmp_result[9][13] , \tmp_result[9][12] , 
        \tmp_result[9][11] , \tmp_result[9][10] , \tmp_result[9][9] , 
        \tmp_result[9][8] , \tmp_result[9][7] , \tmp_result[9][6] , 
        \tmp_result[9][5] , \tmp_result[9][4] , \tmp_result[9][3] , 
        \tmp_result[9][2] , \tmp_result[9][1] , \tmp_result[9][0] }), .result(
        {\tmp_result[10][23] , \tmp_result[10][22] , \tmp_result[10][21] , 
        \tmp_result[10][20] , \tmp_result[10][19] , \tmp_result[10][18] , 
        \tmp_result[10][17] , \tmp_result[10][16] , \tmp_result[10][15] , 
        \tmp_result[10][14] , \tmp_result[10][13] , \tmp_result[10][12] , 
        \tmp_result[10][11] , \tmp_result[10][10] , \tmp_result[10][9] , 
        \tmp_result[10][8] , \tmp_result[10][7] , \tmp_result[10][6] , 
        \tmp_result[10][5] , \tmp_result[10][4] , \tmp_result[10][3] , 
        \tmp_result[10][2] , \tmp_result[10][1] , \tmp_result[10][0] }) );
  MAC_3 MACX_10 ( .sample_in({\all_samples[10][9] , \all_samples[10][8] , 
        \all_samples[10][7] , \all_samples[10][6] , \all_samples[10][5] , 
        \all_samples[10][4] , \all_samples[10][3] , \all_samples[10][2] , 
        \all_samples[10][1] , \all_samples[10][0] }), .coeff({
        \all_coeffs[10][9] , \all_coeffs[10][8] , \all_coeffs[10][7] , 
        \all_coeffs[10][6] , \all_coeffs[10][5] , \all_coeffs[10][4] , 
        \all_coeffs[10][3] , \all_coeffs[10][2] , \all_coeffs[10][1] , 
        \all_coeffs[10][0] }), .acc({\tmp_result[10][23] , 
        \tmp_result[10][22] , \tmp_result[10][21] , \tmp_result[10][20] , 
        \tmp_result[10][19] , \tmp_result[10][18] , \tmp_result[10][17] , 
        \tmp_result[10][16] , \tmp_result[10][15] , \tmp_result[10][14] , 
        \tmp_result[10][13] , \tmp_result[10][12] , \tmp_result[10][11] , 
        \tmp_result[10][10] , \tmp_result[10][9] , \tmp_result[10][8] , 
        \tmp_result[10][7] , \tmp_result[10][6] , \tmp_result[10][5] , 
        \tmp_result[10][4] , \tmp_result[10][3] , \tmp_result[10][2] , 
        \tmp_result[10][1] , \tmp_result[10][0] }), .result({
        \tmp_result[11][23] , \tmp_result[11][22] , \tmp_result[11][21] , 
        \tmp_result[11][20] , \tmp_result[11][19] , \tmp_result[11][18] , 
        \tmp_result[11][17] , \tmp_result[11][16] , \tmp_result[11][15] , 
        \tmp_result[11][14] , \tmp_result[11][13] , \tmp_result[11][12] , 
        \tmp_result[11][11] , \tmp_result[11][10] , \tmp_result[11][9] , 
        \tmp_result[11][8] , \tmp_result[11][7] , \tmp_result[11][6] , 
        \tmp_result[11][5] , \tmp_result[11][4] , \tmp_result[11][3] , 
        \tmp_result[11][2] , \tmp_result[11][1] , \tmp_result[11][0] }) );
  MAC_2 MACX_11 ( .sample_in({\all_samples[11][9] , \all_samples[11][8] , 
        \all_samples[11][7] , \all_samples[11][6] , \all_samples[11][5] , 
        \all_samples[11][4] , \all_samples[11][3] , \all_samples[11][2] , 
        \all_samples[11][1] , \all_samples[11][0] }), .coeff({
        \all_coeffs[11][9] , \all_coeffs[11][8] , \all_coeffs[11][7] , 
        \all_coeffs[11][6] , \all_coeffs[11][5] , \all_coeffs[11][4] , 
        \all_coeffs[11][3] , \all_coeffs[11][2] , \all_coeffs[11][1] , 
        \all_coeffs[11][0] }), .acc({\tmp_result[11][23] , 
        \tmp_result[11][22] , \tmp_result[11][21] , \tmp_result[11][20] , 
        \tmp_result[11][19] , \tmp_result[11][18] , \tmp_result[11][17] , 
        \tmp_result[11][16] , \tmp_result[11][15] , \tmp_result[11][14] , 
        \tmp_result[11][13] , \tmp_result[11][12] , \tmp_result[11][11] , 
        \tmp_result[11][10] , \tmp_result[11][9] , \tmp_result[11][8] , 
        \tmp_result[11][7] , \tmp_result[11][6] , \tmp_result[11][5] , 
        \tmp_result[11][4] , \tmp_result[11][3] , \tmp_result[11][2] , 
        \tmp_result[11][1] , \tmp_result[11][0] }), .result({
        \tmp_result[12][23] , \tmp_result[12][22] , \tmp_result[12][21] , 
        \tmp_result[12][20] , \tmp_result[12][19] , \tmp_result[12][18] , 
        \tmp_result[12][17] , \tmp_result[12][16] , \tmp_result[12][15] , 
        \tmp_result[12][14] , \tmp_result[12][13] , \tmp_result[12][12] , 
        \tmp_result[12][11] , \tmp_result[12][10] , \tmp_result[12][9] , 
        \tmp_result[12][8] , \tmp_result[12][7] , \tmp_result[12][6] , 
        \tmp_result[12][5] , \tmp_result[12][4] , \tmp_result[12][3] , 
        \tmp_result[12][2] , \tmp_result[12][1] , \tmp_result[12][0] }) );
  MAC_1 MACX_12 ( .sample_in({\all_samples[12][9] , \all_samples[12][8] , 
        \all_samples[12][7] , \all_samples[12][6] , \all_samples[12][5] , 
        \all_samples[12][4] , \all_samples[12][3] , \all_samples[12][2] , 
        \all_samples[12][1] , \all_samples[12][0] }), .coeff({
        \all_coeffs[12][9] , \all_coeffs[12][8] , \all_coeffs[12][7] , 
        \all_coeffs[12][6] , \all_coeffs[12][5] , \all_coeffs[12][4] , 
        \all_coeffs[12][3] , \all_coeffs[12][2] , \all_coeffs[12][1] , 
        \all_coeffs[12][0] }), .acc({\tmp_result[12][23] , 
        \tmp_result[12][22] , \tmp_result[12][21] , \tmp_result[12][20] , 
        \tmp_result[12][19] , \tmp_result[12][18] , \tmp_result[12][17] , 
        \tmp_result[12][16] , \tmp_result[12][15] , \tmp_result[12][14] , 
        \tmp_result[12][13] , \tmp_result[12][12] , \tmp_result[12][11] , 
        \tmp_result[12][10] , \tmp_result[12][9] , \tmp_result[12][8] , 
        \tmp_result[12][7] , \tmp_result[12][6] , \tmp_result[12][5] , 
        \tmp_result[12][4] , \tmp_result[12][3] , \tmp_result[12][2] , 
        \tmp_result[12][1] , \tmp_result[12][0] }), .result(result) );
endmodule


module FSM ( clk, sample_clk, rst_n, dav );
  input clk, sample_clk, rst_n;
  output dav;
  wire   pres_state, n1;
  assign dav = pres_state;

  DFCNQD1 pres_state_reg ( .D(n1), .CP(clk), .CDN(rst_n), .Q(pres_state) );
  INR2D0 U2 ( .A1(sample_clk), .B1(pres_state), .ZN(n1) );
endmodule


module Top_Parallel_FIR ( clk, rst_n, sample_clk, sample, conv_sum, dav );
  input [9:0] sample;
  output [23:0] conv_sum;
  input clk, rst_n, sample_clk;
  output dav;
  wire   \all_samples[12][9] , \all_samples[12][8] , \all_samples[12][7] ,
         \all_samples[12][6] , \all_samples[12][5] , \all_samples[12][4] ,
         \all_samples[12][3] , \all_samples[12][2] , \all_samples[12][1] ,
         \all_samples[12][0] , \all_samples[11][9] , \all_samples[11][8] ,
         \all_samples[11][7] , \all_samples[11][6] , \all_samples[11][5] ,
         \all_samples[11][4] , \all_samples[11][3] , \all_samples[11][2] ,
         \all_samples[11][1] , \all_samples[11][0] , \all_samples[10][9] ,
         \all_samples[10][8] , \all_samples[10][7] , \all_samples[10][6] ,
         \all_samples[10][5] , \all_samples[10][4] , \all_samples[10][3] ,
         \all_samples[10][2] , \all_samples[10][1] , \all_samples[10][0] ,
         \all_samples[9][9] , \all_samples[9][8] , \all_samples[9][7] ,
         \all_samples[9][6] , \all_samples[9][5] , \all_samples[9][4] ,
         \all_samples[9][3] , \all_samples[9][2] , \all_samples[9][1] ,
         \all_samples[9][0] , \all_samples[8][9] , \all_samples[8][8] ,
         \all_samples[8][7] , \all_samples[8][6] , \all_samples[8][5] ,
         \all_samples[8][4] , \all_samples[8][3] , \all_samples[8][2] ,
         \all_samples[8][1] , \all_samples[8][0] , \all_samples[7][9] ,
         \all_samples[7][8] , \all_samples[7][7] , \all_samples[7][6] ,
         \all_samples[7][5] , \all_samples[7][4] , \all_samples[7][3] ,
         \all_samples[7][2] , \all_samples[7][1] , \all_samples[7][0] ,
         \all_samples[6][9] , \all_samples[6][8] , \all_samples[6][7] ,
         \all_samples[6][6] , \all_samples[6][5] , \all_samples[6][4] ,
         \all_samples[6][3] , \all_samples[6][2] , \all_samples[6][1] ,
         \all_samples[6][0] , \all_samples[5][9] , \all_samples[5][8] ,
         \all_samples[5][7] , \all_samples[5][6] , \all_samples[5][5] ,
         \all_samples[5][4] , \all_samples[5][3] , \all_samples[5][2] ,
         \all_samples[5][1] , \all_samples[5][0] , \all_samples[4][9] ,
         \all_samples[4][8] , \all_samples[4][7] , \all_samples[4][6] ,
         \all_samples[4][5] , \all_samples[4][4] , \all_samples[4][3] ,
         \all_samples[4][2] , \all_samples[4][1] , \all_samples[4][0] ,
         \all_samples[3][9] , \all_samples[3][8] , \all_samples[3][7] ,
         \all_samples[3][6] , \all_samples[3][5] , \all_samples[3][4] ,
         \all_samples[3][3] , \all_samples[3][2] , \all_samples[3][1] ,
         \all_samples[3][0] , \all_samples[2][9] , \all_samples[2][8] ,
         \all_samples[2][7] , \all_samples[2][6] , \all_samples[2][5] ,
         \all_samples[2][4] , \all_samples[2][3] , \all_samples[2][2] ,
         \all_samples[2][1] , \all_samples[2][0] , \all_samples[1][9] ,
         \all_samples[1][8] , \all_samples[1][7] , \all_samples[1][6] ,
         \all_samples[1][5] , \all_samples[1][4] , \all_samples[1][3] ,
         \all_samples[1][2] , \all_samples[1][1] , \all_samples[1][0] ,
         \all_samples[0][9] , \all_samples[0][8] , \all_samples[0][7] ,
         \all_samples[0][6] , \all_samples[0][5] , \all_samples[0][4] ,
         \all_samples[0][3] , \all_samples[0][2] , \all_samples[0][1] ,
         \all_samples[0][0] ;
  wire   [23:0] result;

  Shift_register S1 ( .clk(clk), .sample_clk(sample_clk), .rst_n(rst_n), 
        .sample_in(sample), .sample_out({\all_samples[12][9] , 
        \all_samples[12][8] , \all_samples[12][7] , \all_samples[12][6] , 
        \all_samples[12][5] , \all_samples[12][4] , \all_samples[12][3] , 
        \all_samples[12][2] , \all_samples[12][1] , \all_samples[12][0] , 
        \all_samples[11][9] , \all_samples[11][8] , \all_samples[11][7] , 
        \all_samples[11][6] , \all_samples[11][5] , \all_samples[11][4] , 
        \all_samples[11][3] , \all_samples[11][2] , \all_samples[11][1] , 
        \all_samples[11][0] , \all_samples[10][9] , \all_samples[10][8] , 
        \all_samples[10][7] , \all_samples[10][6] , \all_samples[10][5] , 
        \all_samples[10][4] , \all_samples[10][3] , \all_samples[10][2] , 
        \all_samples[10][1] , \all_samples[10][0] , \all_samples[9][9] , 
        \all_samples[9][8] , \all_samples[9][7] , \all_samples[9][6] , 
        \all_samples[9][5] , \all_samples[9][4] , \all_samples[9][3] , 
        \all_samples[9][2] , \all_samples[9][1] , \all_samples[9][0] , 
        \all_samples[8][9] , \all_samples[8][8] , \all_samples[8][7] , 
        \all_samples[8][6] , \all_samples[8][5] , \all_samples[8][4] , 
        \all_samples[8][3] , \all_samples[8][2] , \all_samples[8][1] , 
        \all_samples[8][0] , \all_samples[7][9] , \all_samples[7][8] , 
        \all_samples[7][7] , \all_samples[7][6] , \all_samples[7][5] , 
        \all_samples[7][4] , \all_samples[7][3] , \all_samples[7][2] , 
        \all_samples[7][1] , \all_samples[7][0] , \all_samples[6][9] , 
        \all_samples[6][8] , \all_samples[6][7] , \all_samples[6][6] , 
        \all_samples[6][5] , \all_samples[6][4] , \all_samples[6][3] , 
        \all_samples[6][2] , \all_samples[6][1] , \all_samples[6][0] , 
        \all_samples[5][9] , \all_samples[5][8] , \all_samples[5][7] , 
        \all_samples[5][6] , \all_samples[5][5] , \all_samples[5][4] , 
        \all_samples[5][3] , \all_samples[5][2] , \all_samples[5][1] , 
        \all_samples[5][0] , \all_samples[4][9] , \all_samples[4][8] , 
        \all_samples[4][7] , \all_samples[4][6] , \all_samples[4][5] , 
        \all_samples[4][4] , \all_samples[4][3] , \all_samples[4][2] , 
        \all_samples[4][1] , \all_samples[4][0] , \all_samples[3][9] , 
        \all_samples[3][8] , \all_samples[3][7] , \all_samples[3][6] , 
        \all_samples[3][5] , \all_samples[3][4] , \all_samples[3][3] , 
        \all_samples[3][2] , \all_samples[3][1] , \all_samples[3][0] , 
        \all_samples[2][9] , \all_samples[2][8] , \all_samples[2][7] , 
        \all_samples[2][6] , \all_samples[2][5] , \all_samples[2][4] , 
        \all_samples[2][3] , \all_samples[2][2] , \all_samples[2][1] , 
        \all_samples[2][0] , \all_samples[1][9] , \all_samples[1][8] , 
        \all_samples[1][7] , \all_samples[1][6] , \all_samples[1][5] , 
        \all_samples[1][4] , \all_samples[1][3] , \all_samples[1][2] , 
        \all_samples[1][1] , \all_samples[1][0] , \all_samples[0][9] , 
        \all_samples[0][8] , \all_samples[0][7] , \all_samples[0][6] , 
        \all_samples[0][5] , \all_samples[0][4] , \all_samples[0][3] , 
        \all_samples[0][2] , \all_samples[0][1] , \all_samples[0][0] }) );
  Coef_ROM C1 (  );
  Arith_Unit A1 ( .all_samples({\all_samples[12][9] , \all_samples[12][8] , 
        \all_samples[12][7] , \all_samples[12][6] , \all_samples[12][5] , 
        \all_samples[12][4] , \all_samples[12][3] , \all_samples[12][2] , 
        \all_samples[12][1] , \all_samples[12][0] , \all_samples[11][9] , 
        \all_samples[11][8] , \all_samples[11][7] , \all_samples[11][6] , 
        \all_samples[11][5] , \all_samples[11][4] , \all_samples[11][3] , 
        \all_samples[11][2] , \all_samples[11][1] , \all_samples[11][0] , 
        \all_samples[10][9] , \all_samples[10][8] , \all_samples[10][7] , 
        \all_samples[10][6] , \all_samples[10][5] , \all_samples[10][4] , 
        \all_samples[10][3] , \all_samples[10][2] , \all_samples[10][1] , 
        \all_samples[10][0] , \all_samples[9][9] , \all_samples[9][8] , 
        \all_samples[9][7] , \all_samples[9][6] , \all_samples[9][5] , 
        \all_samples[9][4] , \all_samples[9][3] , \all_samples[9][2] , 
        \all_samples[9][1] , \all_samples[9][0] , \all_samples[8][9] , 
        \all_samples[8][8] , \all_samples[8][7] , \all_samples[8][6] , 
        \all_samples[8][5] , \all_samples[8][4] , \all_samples[8][3] , 
        \all_samples[8][2] , \all_samples[8][1] , \all_samples[8][0] , 
        \all_samples[7][9] , \all_samples[7][8] , \all_samples[7][7] , 
        \all_samples[7][6] , \all_samples[7][5] , \all_samples[7][4] , 
        \all_samples[7][3] , \all_samples[7][2] , \all_samples[7][1] , 
        \all_samples[7][0] , \all_samples[6][9] , \all_samples[6][8] , 
        \all_samples[6][7] , \all_samples[6][6] , \all_samples[6][5] , 
        \all_samples[6][4] , \all_samples[6][3] , \all_samples[6][2] , 
        \all_samples[6][1] , \all_samples[6][0] , \all_samples[5][9] , 
        \all_samples[5][8] , \all_samples[5][7] , \all_samples[5][6] , 
        \all_samples[5][5] , \all_samples[5][4] , \all_samples[5][3] , 
        \all_samples[5][2] , \all_samples[5][1] , \all_samples[5][0] , 
        \all_samples[4][9] , \all_samples[4][8] , \all_samples[4][7] , 
        \all_samples[4][6] , \all_samples[4][5] , \all_samples[4][4] , 
        \all_samples[4][3] , \all_samples[4][2] , \all_samples[4][1] , 
        \all_samples[4][0] , \all_samples[3][9] , \all_samples[3][8] , 
        \all_samples[3][7] , \all_samples[3][6] , \all_samples[3][5] , 
        \all_samples[3][4] , \all_samples[3][3] , \all_samples[3][2] , 
        \all_samples[3][1] , \all_samples[3][0] , \all_samples[2][9] , 
        \all_samples[2][8] , \all_samples[2][7] , \all_samples[2][6] , 
        \all_samples[2][5] , \all_samples[2][4] , \all_samples[2][3] , 
        \all_samples[2][2] , \all_samples[2][1] , \all_samples[2][0] , 
        \all_samples[1][9] , \all_samples[1][8] , \all_samples[1][7] , 
        \all_samples[1][6] , \all_samples[1][5] , \all_samples[1][4] , 
        \all_samples[1][3] , \all_samples[1][2] , \all_samples[1][1] , 
        \all_samples[1][0] , \all_samples[0][9] , \all_samples[0][8] , 
        \all_samples[0][7] , \all_samples[0][6] , \all_samples[0][5] , 
        \all_samples[0][4] , \all_samples[0][3] , \all_samples[0][2] , 
        \all_samples[0][1] , \all_samples[0][0] }), .all_coeffs({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .result(result) );
  FSM f1 ( .clk(clk), .sample_clk(sample_clk), .rst_n(rst_n), .dav(dav) );
  DFCNQD1 \conv_sum_reg[18]  ( .D(result[18]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[18]) );
  DFCNQD1 \conv_sum_reg[3]  ( .D(result[3]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[3]) );
  DFCNQD1 \conv_sum_reg[2]  ( .D(result[2]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[2]) );
  DFCNQD1 \conv_sum_reg[1]  ( .D(result[1]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[1]) );
  DFCNQD1 \conv_sum_reg[0]  ( .D(result[0]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[0]) );
  DFCNQD1 \conv_sum_reg[23]  ( .D(result[23]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[23]) );
  DFCNQD1 \conv_sum_reg[22]  ( .D(result[22]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[22]) );
  DFCNQD1 \conv_sum_reg[21]  ( .D(result[21]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[21]) );
  DFCNQD1 \conv_sum_reg[20]  ( .D(result[20]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[20]) );
  DFCNQD1 \conv_sum_reg[19]  ( .D(result[19]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[19]) );
  DFCNQD1 \conv_sum_reg[17]  ( .D(result[17]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[17]) );
  DFCNQD1 \conv_sum_reg[16]  ( .D(result[16]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[16]) );
  DFCNQD1 \conv_sum_reg[15]  ( .D(result[15]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[15]) );
  DFCNQD1 \conv_sum_reg[14]  ( .D(result[14]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[14]) );
  DFCNQD1 \conv_sum_reg[13]  ( .D(result[13]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[13]) );
  DFCNQD1 \conv_sum_reg[12]  ( .D(result[12]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[12]) );
  DFCNQD1 \conv_sum_reg[10]  ( .D(result[10]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[10]) );
  DFCNQD1 \conv_sum_reg[9]  ( .D(result[9]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[9]) );
  DFCNQD1 \conv_sum_reg[8]  ( .D(result[8]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[8]) );
  DFCNQD1 \conv_sum_reg[7]  ( .D(result[7]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[7]) );
  DFCNQD1 \conv_sum_reg[6]  ( .D(result[6]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[6]) );
  DFCNQD1 \conv_sum_reg[5]  ( .D(result[5]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[5]) );
  DFCNQD1 \conv_sum_reg[4]  ( .D(result[4]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[4]) );
  DFCNQD1 \conv_sum_reg[11]  ( .D(result[11]), .CP(clk), .CDN(rst_n), .Q(
        conv_sum[11]) );
endmodule

