/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Oct 31 03:20:35 2022
/////////////////////////////////////////////////////////////


module RegFile ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, REG0, REG1, 
        REG2 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  input CLK, RST, WrEn, RdEn;
  wire   n425, n420, n414, n389, n418, n405, n406, n407, n408, n383, n387,
         n384, n385, n234, n235, n236, n237, n238, n239, n240, n241,
         \regArr[15][7] , \regArr[15][6] , \regArr[15][5] , \regArr[15][4] ,
         \regArr[15][3] , \regArr[15][2] , \regArr[15][1] , \regArr[15][0] ,
         \regArr[14][7] , \regArr[14][6] , \regArr[14][5] , \regArr[14][4] ,
         \regArr[14][3] , \regArr[14][2] , \regArr[14][1] , \regArr[14][0] ,
         \regArr[13][7] , \regArr[13][6] , \regArr[13][5] , \regArr[13][4] ,
         \regArr[13][3] , \regArr[13][2] , \regArr[13][1] , \regArr[13][0] ,
         \regArr[12][7] , \regArr[12][6] , \regArr[12][5] , \regArr[12][4] ,
         \regArr[12][3] , \regArr[12][2] , \regArr[12][1] , \regArr[12][0] ,
         \regArr[11][7] , \regArr[11][6] , \regArr[11][5] , \regArr[11][4] ,
         \regArr[11][3] , \regArr[11][2] , \regArr[11][1] , \regArr[11][0] ,
         \regArr[10][7] , \regArr[10][6] , \regArr[10][5] , \regArr[10][4] ,
         \regArr[10][3] , \regArr[10][2] , \regArr[10][1] , \regArr[10][0] ,
         \regArr[9][7] , \regArr[9][6] , \regArr[9][5] , \regArr[9][4] ,
         \regArr[9][3] , \regArr[9][2] , \regArr[9][1] , \regArr[9][0] ,
         \regArr[8][7] , \regArr[8][6] , \regArr[8][5] , \regArr[8][4] ,
         \regArr[8][3] , \regArr[8][2] , \regArr[8][1] , \regArr[8][0] ,
         \regArr[7][7] , \regArr[7][6] , \regArr[7][5] , \regArr[7][4] ,
         \regArr[7][3] , \regArr[7][2] , \regArr[7][1] , \regArr[7][0] ,
         \regArr[6][7] , \regArr[6][6] , \regArr[6][5] , \regArr[6][4] ,
         \regArr[6][3] , \regArr[6][2] , \regArr[6][1] , \regArr[6][0] ,
         \regArr[5][7] , \regArr[5][6] , \regArr[5][5] , \regArr[5][4] ,
         \regArr[5][3] , \regArr[5][2] , \regArr[5][1] , \regArr[5][0] ,
         \regArr[4][7] , \regArr[4][6] , \regArr[4][5] , \regArr[4][4] ,
         \regArr[4][3] , \regArr[4][2] , \regArr[4][1] , \regArr[4][0] ,
         \regArr[3][7] , \regArr[3][6] , \regArr[3][5] , \regArr[3][4] ,
         \regArr[3][3] , \regArr[3][2] , \regArr[3][1] , \regArr[3][0] , N36,
         N37, N38, N39, N40, N41, N42, N43, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n233, n4, n5, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n9, n14,
         n15, n16, n17, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n359,
         n413, n1, n2, n3, n6, n7, n8, n10, n11, n12, n13, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n59, n60, n61, n62, n63, n64, n65, n76,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n180, n290,
         n325, n327, n329, n331, n333, n335, n337, n339, n341, n343, n345,
         n347, n349, n351, n354, n355, n356, n357, n358, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n386, n388,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n409, n410, n411, n412, n415, n416, n417,
         n419, n421, n422, n423, n424, n426, n427, n428, n429, n430, n431,
         n432;
  assign REG0[6] = n425;
  assign REG0[4] = n420;
  assign REG2[1] = n414;
  assign REG0[3] = n389;
  assign REG0[2] = n383;
  assign REG0[1] = n384;

  DFFRQX1M \regArr_reg[14][7]  ( .D(n161), .CK(CLK), .RN(n428), .Q(
        \regArr[14][7] ) );
  DFFRQX1M \regArr_reg[14][6]  ( .D(n160), .CK(CLK), .RN(n428), .Q(
        \regArr[14][6] ) );
  DFFRQX1M \regArr_reg[14][5]  ( .D(n159), .CK(CLK), .RN(n427), .Q(
        \regArr[14][5] ) );
  DFFRQX1M \regArr_reg[14][4]  ( .D(n158), .CK(CLK), .RN(n427), .Q(
        \regArr[14][4] ) );
  DFFRQX1M \regArr_reg[14][3]  ( .D(n157), .CK(CLK), .RN(n427), .Q(
        \regArr[14][3] ) );
  DFFRQX1M \regArr_reg[14][2]  ( .D(n156), .CK(CLK), .RN(n427), .Q(
        \regArr[14][2] ) );
  DFFRQX1M \regArr_reg[14][1]  ( .D(n155), .CK(CLK), .RN(n427), .Q(
        \regArr[14][1] ) );
  DFFRQX1M \regArr_reg[14][0]  ( .D(n154), .CK(CLK), .RN(n427), .Q(
        \regArr[14][0] ) );
  DFFRQX1M \regArr_reg[8][7]  ( .D(n113), .CK(CLK), .RN(n426), .Q(
        \regArr[8][7] ) );
  DFFRQX1M \regArr_reg[8][6]  ( .D(n112), .CK(CLK), .RN(n426), .Q(
        \regArr[8][6] ) );
  DFFRQX1M \regArr_reg[8][5]  ( .D(n111), .CK(CLK), .RN(n426), .Q(
        \regArr[8][5] ) );
  DFFRQX1M \regArr_reg[8][4]  ( .D(n110), .CK(CLK), .RN(n426), .Q(
        \regArr[8][4] ) );
  DFFRQX1M \regArr_reg[8][3]  ( .D(n109), .CK(CLK), .RN(n426), .Q(
        \regArr[8][3] ) );
  DFFRQX1M \regArr_reg[8][2]  ( .D(n108), .CK(CLK), .RN(n426), .Q(
        \regArr[8][2] ) );
  DFFRQX1M \regArr_reg[8][1]  ( .D(n107), .CK(CLK), .RN(n426), .Q(
        \regArr[8][1] ) );
  DFFRQX1M \regArr_reg[8][0]  ( .D(n106), .CK(CLK), .RN(n426), .Q(
        \regArr[8][0] ) );
  DFFRQX1M \regArr_reg[11][7]  ( .D(n311), .CK(CLK), .RN(n426), .Q(
        \regArr[11][7] ) );
  DFFRQX1M \regArr_reg[11][6]  ( .D(n312), .CK(CLK), .RN(n426), .Q(
        \regArr[11][6] ) );
  DFFRQX1M \regArr_reg[11][5]  ( .D(n5), .CK(CLK), .RN(n426), .Q(
        \regArr[11][5] ) );
  DFFRQX1M \regArr_reg[11][4]  ( .D(n313), .CK(CLK), .RN(n426), .Q(
        \regArr[11][4] ) );
  DFFRQX1M \regArr_reg[11][3]  ( .D(n314), .CK(CLK), .RN(n424), .Q(
        \regArr[11][3] ) );
  DFFRQX1M \regArr_reg[11][2]  ( .D(n315), .CK(CLK), .RN(n424), .Q(
        \regArr[11][2] ) );
  DFFRQX1M \regArr_reg[11][1]  ( .D(n316), .CK(CLK), .RN(n424), .Q(
        \regArr[11][1] ) );
  DFFRQX1M \regArr_reg[11][0]  ( .D(n317), .CK(CLK), .RN(n424), .Q(
        \regArr[11][0] ) );
  DFFRQX1M \regArr_reg[7][7]  ( .D(n105), .CK(CLK), .RN(n422), .Q(
        \regArr[7][7] ) );
  DFFRQX1M \regArr_reg[7][6]  ( .D(n104), .CK(CLK), .RN(n422), .Q(
        \regArr[7][6] ) );
  DFFRQX1M \regArr_reg[7][4]  ( .D(n102), .CK(CLK), .RN(n421), .Q(
        \regArr[7][4] ) );
  DFFRQX1M \regArr_reg[7][3]  ( .D(n101), .CK(CLK), .RN(n421), .Q(
        \regArr[7][3] ) );
  DFFRQX1M \regArr_reg[7][2]  ( .D(n100), .CK(CLK), .RN(n421), .Q(
        \regArr[7][2] ) );
  DFFRQX1M \regArr_reg[7][1]  ( .D(n99), .CK(CLK), .RN(n421), .Q(
        \regArr[7][1] ) );
  DFFRQX1M \regArr_reg[7][0]  ( .D(n98), .CK(CLK), .RN(n421), .Q(
        \regArr[7][0] ) );
  DFFRQX1M \regArr_reg[7][5]  ( .D(n103), .CK(CLK), .RN(n421), .Q(
        \regArr[7][5] ) );
  DFFRQX1M \regArr_reg[6][7]  ( .D(n97), .CK(CLK), .RN(n421), .Q(
        \regArr[6][7] ) );
  DFFRQX1M \regArr_reg[6][6]  ( .D(n96), .CK(CLK), .RN(n421), .Q(
        \regArr[6][6] ) );
  DFFRQX1M \regArr_reg[6][4]  ( .D(n94), .CK(CLK), .RN(n421), .Q(
        \regArr[6][4] ) );
  DFFRQX1M \regArr_reg[6][3]  ( .D(n93), .CK(CLK), .RN(n421), .Q(
        \regArr[6][3] ) );
  DFFRQX1M \regArr_reg[6][2]  ( .D(n92), .CK(CLK), .RN(n421), .Q(
        \regArr[6][2] ) );
  DFFRQX1M \regArr_reg[6][1]  ( .D(n91), .CK(CLK), .RN(n421), .Q(
        \regArr[6][1] ) );
  DFFRQX1M \regArr_reg[6][0]  ( .D(n90), .CK(CLK), .RN(n421), .Q(
        \regArr[6][0] ) );
  DFFRQX1M \regArr_reg[6][5]  ( .D(n95), .CK(CLK), .RN(n419), .Q(
        \regArr[6][5] ) );
  DFFRQX1M \regArr_reg[12][7]  ( .D(n303), .CK(CLK), .RN(n417), .Q(
        \regArr[12][7] ) );
  DFFRQX1M \regArr_reg[12][6]  ( .D(n304), .CK(CLK), .RN(n429), .Q(
        \regArr[12][6] ) );
  DFFRQX1M \regArr_reg[12][5]  ( .D(n15), .CK(CLK), .RN(n429), .Q(
        \regArr[12][5] ) );
  DFFRQX1M \regArr_reg[12][4]  ( .D(n305), .CK(CLK), .RN(n429), .Q(
        \regArr[12][4] ) );
  DFFRQX1M \regArr_reg[12][3]  ( .D(n306), .CK(CLK), .RN(n429), .Q(
        \regArr[12][3] ) );
  DFFRQX1M \regArr_reg[12][2]  ( .D(n307), .CK(CLK), .RN(n429), .Q(
        \regArr[12][2] ) );
  DFFRQX1M \regArr_reg[12][1]  ( .D(n308), .CK(CLK), .RN(n429), .Q(
        \regArr[12][1] ) );
  DFFRQX1M \regArr_reg[12][0]  ( .D(n309), .CK(CLK), .RN(n429), .Q(
        \regArr[12][0] ) );
  DFFRQX1M \regArr_reg[13][2]  ( .D(n9), .CK(CLK), .RN(n429), .Q(
        \regArr[13][2] ) );
  DFFRQX1M \regArr_reg[13][0]  ( .D(n302), .CK(CLK), .RN(n429), .Q(
        \regArr[13][0] ) );
  DFFRQX1M \regArr_reg[13][7]  ( .D(n297), .CK(CLK), .RN(n429), .Q(
        \regArr[13][7] ) );
  DFFRQX1M \regArr_reg[13][6]  ( .D(n298), .CK(CLK), .RN(n429), .Q(
        \regArr[13][6] ) );
  DFFRQX1M \regArr_reg[13][4]  ( .D(n299), .CK(CLK), .RN(n429), .Q(
        \regArr[13][4] ) );
  DFFRQX1M \regArr_reg[13][3]  ( .D(n300), .CK(CLK), .RN(n428), .Q(
        \regArr[13][3] ) );
  DFFRQX1M \regArr_reg[13][1]  ( .D(n301), .CK(CLK), .RN(n428), .Q(
        \regArr[13][1] ) );
  DFFRQX1M \regArr_reg[13][5]  ( .D(n16), .CK(CLK), .RN(n428), .Q(
        \regArr[13][5] ) );
  DFFRQX1M \regArr_reg[15][5]  ( .D(n167), .CK(CLK), .RN(n428), .Q(
        \regArr[15][5] ) );
  DFFRQX1M \regArr_reg[15][2]  ( .D(n164), .CK(CLK), .RN(n428), .Q(
        \regArr[15][2] ) );
  DFFRQX1M \regArr_reg[15][0]  ( .D(n162), .CK(CLK), .RN(n428), .Q(
        \regArr[15][0] ) );
  DFFRQX1M \regArr_reg[15][7]  ( .D(n169), .CK(CLK), .RN(n428), .Q(
        \regArr[15][7] ) );
  DFFRQX1M \regArr_reg[15][6]  ( .D(n168), .CK(CLK), .RN(n428), .Q(
        \regArr[15][6] ) );
  DFFRQX1M \regArr_reg[15][4]  ( .D(n166), .CK(CLK), .RN(n428), .Q(
        \regArr[15][4] ) );
  DFFRQX1M \regArr_reg[15][3]  ( .D(n165), .CK(CLK), .RN(n428), .Q(
        \regArr[15][3] ) );
  DFFRQX1M \regArr_reg[15][1]  ( .D(n163), .CK(CLK), .RN(n428), .Q(
        \regArr[15][1] ) );
  DFFRQX1M \regArr_reg[9][5]  ( .D(n119), .CK(CLK), .RN(n427), .Q(
        \regArr[9][5] ) );
  DFFRQX1M \regArr_reg[9][7]  ( .D(n121), .CK(CLK), .RN(n427), .Q(
        \regArr[9][7] ) );
  DFFRQX1M \regArr_reg[9][6]  ( .D(n120), .CK(CLK), .RN(n427), .Q(
        \regArr[9][6] ) );
  DFFRQX1M \regArr_reg[9][4]  ( .D(n118), .CK(CLK), .RN(n427), .Q(
        \regArr[9][4] ) );
  DFFRQX1M \regArr_reg[9][3]  ( .D(n117), .CK(CLK), .RN(n427), .Q(
        \regArr[9][3] ) );
  DFFRQX1M \regArr_reg[9][1]  ( .D(n115), .CK(CLK), .RN(n427), .Q(
        \regArr[9][1] ) );
  DFFRQX1M \regArr_reg[9][2]  ( .D(n116), .CK(CLK), .RN(n427), .Q(
        \regArr[9][2] ) );
  DFFRQX1M \regArr_reg[9][0]  ( .D(n114), .CK(CLK), .RN(n426), .Q(
        \regArr[9][0] ) );
  DFFRQX1M \regArr_reg[10][7]  ( .D(n318), .CK(CLK), .RN(n424), .Q(
        \regArr[10][7] ) );
  DFFRQX1M \regArr_reg[10][6]  ( .D(n319), .CK(CLK), .RN(n424), .Q(
        \regArr[10][6] ) );
  DFFRQX1M \regArr_reg[10][5]  ( .D(n4), .CK(CLK), .RN(n424), .Q(
        \regArr[10][5] ) );
  DFFRQX1M \regArr_reg[10][4]  ( .D(n320), .CK(CLK), .RN(n424), .Q(
        \regArr[10][4] ) );
  DFFRQX1M \regArr_reg[10][3]  ( .D(n321), .CK(CLK), .RN(n424), .Q(
        \regArr[10][3] ) );
  DFFRQX1M \regArr_reg[10][2]  ( .D(n322), .CK(CLK), .RN(n424), .Q(
        \regArr[10][2] ) );
  DFFRQX1M \regArr_reg[10][1]  ( .D(n323), .CK(CLK), .RN(n424), .Q(
        \regArr[10][1] ) );
  DFFRQX1M \regArr_reg[10][0]  ( .D(n324), .CK(CLK), .RN(n424), .Q(
        \regArr[10][0] ) );
  DFFRQX1M \regArr_reg[4][7]  ( .D(n81), .CK(CLK), .RN(n424), .Q(
        \regArr[4][7] ) );
  DFFRQX1M \regArr_reg[4][6]  ( .D(n80), .CK(CLK), .RN(n423), .Q(
        \regArr[4][6] ) );
  DFFRQX1M \regArr_reg[4][4]  ( .D(n78), .CK(CLK), .RN(n423), .Q(
        \regArr[4][4] ) );
  DFFRQX1M \regArr_reg[4][3]  ( .D(n77), .CK(CLK), .RN(n423), .Q(
        \regArr[4][3] ) );
  DFFRQX1M \regArr_reg[4][2]  ( .D(n310), .CK(CLK), .RN(n423), .Q(
        \regArr[4][2] ) );
  DFFRQX1M \regArr_reg[4][1]  ( .D(n75), .CK(CLK), .RN(n423), .Q(
        \regArr[4][1] ) );
  DFFRQX1M \regArr_reg[4][0]  ( .D(n74), .CK(CLK), .RN(n423), .Q(
        \regArr[4][0] ) );
  DFFRQX1M \regArr_reg[4][5]  ( .D(n79), .CK(CLK), .RN(n423), .Q(
        \regArr[4][5] ) );
  DFFRQX1M \regArr_reg[3][7]  ( .D(n73), .CK(CLK), .RN(n423), .Q(
        \regArr[3][7] ) );
  DFFRQX1M \regArr_reg[3][6]  ( .D(n72), .CK(CLK), .RN(n423), .Q(
        \regArr[3][6] ) );
  DFFRQX1M \regArr_reg[3][5]  ( .D(n71), .CK(CLK), .RN(n423), .Q(
        \regArr[3][5] ) );
  DFFRQX1M \regArr_reg[3][4]  ( .D(n70), .CK(CLK), .RN(n423), .Q(
        \regArr[3][4] ) );
  DFFRQX1M \regArr_reg[3][3]  ( .D(n69), .CK(CLK), .RN(n423), .Q(
        \regArr[3][3] ) );
  DFFRQX1M \regArr_reg[3][2]  ( .D(n68), .CK(CLK), .RN(n422), .Q(
        \regArr[3][2] ) );
  DFFRQX1M \regArr_reg[3][1]  ( .D(n67), .CK(CLK), .RN(n422), .Q(
        \regArr[3][1] ) );
  DFFRQX1M \regArr_reg[3][0]  ( .D(n66), .CK(CLK), .RN(n422), .Q(
        \regArr[3][0] ) );
  DFFRQX1M \regArr_reg[5][7]  ( .D(n89), .CK(CLK), .RN(n422), .Q(
        \regArr[5][7] ) );
  DFFRQX1M \regArr_reg[5][6]  ( .D(n88), .CK(CLK), .RN(n422), .Q(
        \regArr[5][6] ) );
  DFFRQX1M \regArr_reg[5][5]  ( .D(n87), .CK(CLK), .RN(n422), .Q(
        \regArr[5][5] ) );
  DFFRQX1M \regArr_reg[5][4]  ( .D(n86), .CK(CLK), .RN(n422), .Q(
        \regArr[5][4] ) );
  DFFRQX1M \regArr_reg[5][3]  ( .D(n85), .CK(CLK), .RN(n422), .Q(
        \regArr[5][3] ) );
  DFFRQX1M \regArr_reg[5][2]  ( .D(n84), .CK(CLK), .RN(n422), .Q(
        \regArr[5][2] ) );
  DFFRQX1M \regArr_reg[5][1]  ( .D(n83), .CK(CLK), .RN(n422), .Q(
        \regArr[5][1] ) );
  DFFRQX1M \regArr_reg[5][0]  ( .D(n82), .CK(CLK), .RN(n422), .Q(
        \regArr[5][0] ) );
  DFFRQX4M \regArr_reg[2][1]  ( .D(n296), .CK(CLK), .RN(n419), .Q(n414) );
  DFFRQX2M \regArr_reg[0][0]  ( .D(n42), .CK(CLK), .RN(n419), .Q(REG0[0]) );
  DFFSQX2M \regArr_reg[0][1]  ( .D(n43), .CK(CLK), .SN(n417), .Q(n384) );
  DFFRQX2M \regArr_reg[0][2]  ( .D(n44), .CK(CLK), .RN(n417), .Q(n383) );
  DFFRQX2M \regArr_reg[0][3]  ( .D(n45), .CK(CLK), .RN(n419), .Q(n389) );
  DFFRQX2M \regArr_reg[0][4]  ( .D(n46), .CK(CLK), .RN(n419), .Q(n420) );
  DFFRQX2M \regArr_reg[0][5]  ( .D(n47), .CK(CLK), .RN(n417), .Q(REG0[5]) );
  DFFRQX2M \regArr_reg[0][6]  ( .D(n48), .CK(CLK), .RN(n417), .Q(n425) );
  DFFRQX2M \regArr_reg[2][0]  ( .D(n58), .CK(CLK), .RN(n419), .Q(REG2[0]) );
  DFFRQX2M \regArr_reg[2][7]  ( .D(n292), .CK(CLK), .RN(n419), .Q(REG2[7]) );
  DFFRQX2M \regArr_reg[2][5]  ( .D(n17), .CK(CLK), .RN(n419), .Q(REG2[5]) );
  DFFRQX2M \regArr_reg[2][6]  ( .D(n293), .CK(CLK), .RN(n419), .Q(REG2[6]) );
  DFFRQX2M \regArr_reg[2][4]  ( .D(n294), .CK(CLK), .RN(n419), .Q(REG2[4]) );
  DFFSQX2M \regArr_reg[2][2]  ( .D(n14), .CK(CLK), .SN(n417), .Q(REG2[2]) );
  DFFRQX2M \regArr_reg[2][3]  ( .D(n295), .CK(CLK), .RN(n419), .Q(REG2[3]) );
  DFFSQX2M \regArr_reg[1][3]  ( .D(n53), .CK(CLK), .SN(n417), .Q(n385) );
  EDFFHQX2M \RdData_reg[0]  ( .D(N43), .E(n233), .CK(CLK), .Q(n241) );
  EDFFHQX2M \RdData_reg[2]  ( .D(N41), .E(n233), .CK(CLK), .Q(n239) );
  EDFFHQX2M \RdData_reg[7]  ( .D(N36), .E(n233), .CK(CLK), .Q(n234) );
  EDFFHQX2M \RdData_reg[1]  ( .D(N42), .E(n233), .CK(CLK), .Q(n240) );
  EDFFHQX2M \RdData_reg[6]  ( .D(N37), .E(n233), .CK(CLK), .Q(n235) );
  EDFFHQX2M \RdData_reg[5]  ( .D(N38), .E(n233), .CK(CLK), .Q(n236) );
  EDFFHQX2M \RdData_reg[4]  ( .D(N39), .E(n233), .CK(CLK), .Q(n237) );
  EDFFHQX2M \RdData_reg[3]  ( .D(N40), .E(n233), .CK(CLK), .Q(n238) );
  DFFRQX1M \regArr_reg[1][0]  ( .D(n50), .CK(CLK), .RN(n417), .Q(n413) );
  DFFRQX1M \regArr_reg[1][2]  ( .D(n52), .CK(CLK), .RN(n417), .Q(n359) );
  DFFRQX1M \regArr_reg[1][4]  ( .D(n54), .CK(CLK), .RN(n419), .Q(n408) );
  DFFRQX1M \regArr_reg[0][7]  ( .D(n49), .CK(CLK), .RN(n419), .Q(n418) );
  DFFRQX1M \regArr_reg[1][7]  ( .D(n57), .CK(CLK), .RN(n417), .Q(n405) );
  DFFRQX1M \regArr_reg[1][6]  ( .D(n56), .CK(CLK), .RN(n417), .Q(n406) );
  DFFRQX1M \regArr_reg[1][1]  ( .D(n51), .CK(CLK), .RN(n417), .Q(n387) );
  DFFRQX1M \regArr_reg[1][5]  ( .D(n55), .CK(CLK), .RN(RST), .Q(n407) );
  INVX6M U323 ( .A(n329), .Y(REG0[7]) );
  BUFX6M U324 ( .A(n430), .Y(n423) );
  INVXLM U325 ( .A(n407), .Y(n180) );
  INVX6M U326 ( .A(n180), .Y(REG1[5]) );
  INVXLM U327 ( .A(n387), .Y(n290) );
  INVX6M U328 ( .A(n290), .Y(REG1[1]) );
  INVXLM U329 ( .A(n406), .Y(n325) );
  INVX6M U330 ( .A(n325), .Y(REG1[6]) );
  INVXLM U331 ( .A(n405), .Y(n327) );
  INVX6M U332 ( .A(n327), .Y(REG1[7]) );
  INVXLM U333 ( .A(n418), .Y(n329) );
  INVXLM U334 ( .A(n408), .Y(n331) );
  INVX8M U335 ( .A(n331), .Y(REG1[4]) );
  INVXLM U336 ( .A(n359), .Y(n333) );
  INVX8M U337 ( .A(n333), .Y(REG1[2]) );
  INVXLM U338 ( .A(n413), .Y(n335) );
  INVX8M U339 ( .A(n335), .Y(REG1[0]) );
  CLKINVX1M U340 ( .A(n238), .Y(n337) );
  CLKINVX40M U341 ( .A(n337), .Y(RdData[3]) );
  CLKINVX1M U342 ( .A(n237), .Y(n339) );
  CLKINVX40M U343 ( .A(n339), .Y(RdData[4]) );
  CLKINVX1M U344 ( .A(n236), .Y(n341) );
  CLKINVX40M U345 ( .A(n341), .Y(RdData[5]) );
  CLKINVX1M U346 ( .A(n235), .Y(n343) );
  CLKINVX40M U347 ( .A(n343), .Y(RdData[6]) );
  CLKINVX1M U348 ( .A(n240), .Y(n345) );
  CLKINVX40M U349 ( .A(n345), .Y(RdData[1]) );
  CLKINVX1M U350 ( .A(n234), .Y(n347) );
  CLKINVX40M U351 ( .A(n347), .Y(RdData[7]) );
  CLKINVX1M U352 ( .A(n239), .Y(n349) );
  CLKINVX40M U353 ( .A(n349), .Y(RdData[2]) );
  CLKINVX1M U354 ( .A(n241), .Y(n351) );
  CLKINVX40M U355 ( .A(n351), .Y(RdData[0]) );
  BUFX10M U356 ( .A(n385), .Y(REG1[3]) );
  INVX2M U357 ( .A(n373), .Y(n153) );
  NOR2BX4M U358 ( .AN(n202), .B(n404), .Y(n196) );
  NOR2BX4M U359 ( .AN(n202), .B(n410), .Y(n197) );
  AND2X2M U360 ( .A(n401), .B(n202), .Y(n186) );
  BUFX6M U361 ( .A(n189), .Y(n374) );
  BUFX6M U362 ( .A(n185), .Y(n375) );
  AND2X2M U363 ( .A(n412), .B(n202), .Y(n182) );
  NOR2X6M U364 ( .A(Address[1]), .B(Address[2]), .Y(n192) );
  BUFX4M U365 ( .A(n179), .Y(n356) );
  BUFX4M U366 ( .A(n178), .Y(n358) );
  BUFX4M U367 ( .A(n177), .Y(n361) );
  BUFX4M U368 ( .A(n176), .Y(n363) );
  BUFX4M U369 ( .A(n175), .Y(n365) );
  BUFX4M U370 ( .A(n174), .Y(n367) );
  BUFX4M U371 ( .A(n173), .Y(n369) );
  BUFX4M U372 ( .A(n172), .Y(n371) );
  NOR2X4M U373 ( .A(n152), .B(RdEn), .Y(n202) );
  INVX4M U374 ( .A(n392), .Y(n147) );
  INVX4M U375 ( .A(n378), .Y(n144) );
  INVX4M U376 ( .A(n379), .Y(n148) );
  INVX4M U377 ( .A(n382), .Y(n146) );
  INVX4M U378 ( .A(n388), .Y(n150) );
  INVX4M U379 ( .A(n381), .Y(n145) );
  INVX4M U380 ( .A(n391), .Y(n151) );
  INVX4M U381 ( .A(n386), .Y(n149) );
  BUFX4M U382 ( .A(n194), .Y(n394) );
  BUFX4M U383 ( .A(n191), .Y(n396) );
  BUFX4M U384 ( .A(n194), .Y(n393) );
  BUFX4M U385 ( .A(n191), .Y(n395) );
  INVX4M U386 ( .A(n355), .Y(n399) );
  INVX4M U387 ( .A(n355), .Y(n400) );
  INVX4M U388 ( .A(n354), .Y(n376) );
  INVX4M U389 ( .A(n354), .Y(n377) );
  CLKBUFX8M U390 ( .A(n431), .Y(n417) );
  CLKBUFX8M U391 ( .A(n431), .Y(n419) );
  CLKBUFX8M U392 ( .A(n432), .Y(n421) );
  CLKBUFX8M U393 ( .A(n431), .Y(n422) );
  CLKBUFX8M U394 ( .A(n432), .Y(n424) );
  CLKBUFX8M U395 ( .A(n430), .Y(n426) );
  CLKBUFX8M U396 ( .A(n430), .Y(n427) );
  CLKBUFX8M U397 ( .A(n432), .Y(n428) );
  BUFX6M U398 ( .A(n431), .Y(n429) );
  CLKBUFX8M U399 ( .A(n206), .Y(n404) );
  CLKBUFX8M U400 ( .A(n204), .Y(n410) );
  CLKBUFX6M U401 ( .A(n200), .Y(n382) );
  NAND2X2M U402 ( .A(n196), .B(n153), .Y(n200) );
  CLKBUFX6M U403 ( .A(n195), .Y(n392) );
  NAND2X2M U404 ( .A(n196), .B(n374), .Y(n195) );
  CLKBUFX6M U405 ( .A(n198), .Y(n381) );
  NAND2X2M U406 ( .A(n196), .B(n375), .Y(n198) );
  CLKBUFX6M U407 ( .A(n205), .Y(n378) );
  NAND2X2M U408 ( .A(n196), .B(n192), .Y(n205) );
  CLKBUFX6M U409 ( .A(n203), .Y(n379) );
  NAND2X2M U410 ( .A(n192), .B(n197), .Y(n203) );
  CLKBUFX6M U411 ( .A(n199), .Y(n388) );
  NAND2X2M U412 ( .A(n197), .B(n153), .Y(n199) );
  INVX4M U413 ( .A(n192), .Y(n170) );
  CLKBUFX8M U414 ( .A(n190), .Y(n380) );
  NAND2X2M U415 ( .A(n374), .B(n182), .Y(n190) );
  CLKBUFX8M U416 ( .A(n184), .Y(n398) );
  NAND2X2M U417 ( .A(n375), .B(n186), .Y(n184) );
  CLKBUFX8M U418 ( .A(n187), .Y(n390) );
  NAND2X2M U419 ( .A(n375), .B(n182), .Y(n187) );
  CLKBUFX8M U420 ( .A(n204), .Y(n411) );
  CLKBUFX8M U421 ( .A(n206), .Y(n409) );
  CLKBUFX8M U422 ( .A(n201), .Y(n412) );
  CLKBUFX8M U423 ( .A(n207), .Y(n401) );
  BUFX6M U424 ( .A(n207), .Y(n402) );
  BUFX6M U425 ( .A(n201), .Y(n415) );
  NAND2X2M U426 ( .A(n192), .B(n182), .Y(n194) );
  NAND2X2M U427 ( .A(n192), .B(n186), .Y(n191) );
  CLKBUFX6M U428 ( .A(n193), .Y(n391) );
  NAND2X2M U429 ( .A(n374), .B(n197), .Y(n193) );
  CLKBUFX6M U430 ( .A(n183), .Y(n386) );
  NAND2X2M U431 ( .A(n375), .B(n197), .Y(n183) );
  BUFX4M U432 ( .A(n207), .Y(n403) );
  BUFX4M U433 ( .A(n201), .Y(n416) );
  CLKBUFX8M U434 ( .A(n188), .Y(n397) );
  NAND2X2M U435 ( .A(n374), .B(n186), .Y(n188) );
  AND2X2M U436 ( .A(n153), .B(n186), .Y(n354) );
  AND2X2M U437 ( .A(n182), .B(n153), .Y(n355) );
  BUFX2M U438 ( .A(n432), .Y(n431) );
  BUFX2M U439 ( .A(n417), .Y(n430) );
  OAI22X1M U440 ( .A0(n147), .A1(n143), .B0(n356), .B1(n392), .Y(n324) );
  OAI22X1M U441 ( .A0(n147), .A1(n142), .B0(n358), .B1(n392), .Y(n323) );
  OAI22X1M U442 ( .A0(n147), .A1(n141), .B0(n361), .B1(n392), .Y(n322) );
  OAI22X1M U443 ( .A0(n147), .A1(n140), .B0(n363), .B1(n392), .Y(n321) );
  OAI22X1M U444 ( .A0(n147), .A1(n139), .B0(n365), .B1(n392), .Y(n320) );
  OAI22X1M U445 ( .A0(n147), .A1(n138), .B0(n367), .B1(n392), .Y(n4) );
  OAI22X1M U446 ( .A0(n147), .A1(n137), .B0(n369), .B1(n392), .Y(n319) );
  OAI22X1M U447 ( .A0(n147), .A1(n136), .B0(n371), .B1(n392), .Y(n318) );
  OAI22X1M U448 ( .A0(n144), .A1(n127), .B0(n356), .B1(n378), .Y(n106) );
  OAI22X1M U449 ( .A0(n144), .A1(n126), .B0(n358), .B1(n378), .Y(n107) );
  OAI22X1M U450 ( .A0(n144), .A1(n125), .B0(n361), .B1(n378), .Y(n108) );
  OAI22X1M U451 ( .A0(n144), .A1(n124), .B0(n363), .B1(n378), .Y(n109) );
  OAI22X1M U452 ( .A0(n144), .A1(n123), .B0(n365), .B1(n378), .Y(n110) );
  OAI22X1M U453 ( .A0(n144), .A1(n122), .B0(n367), .B1(n378), .Y(n111) );
  OAI22X1M U454 ( .A0(n144), .A1(n76), .B0(n369), .B1(n378), .Y(n112) );
  OAI22X1M U455 ( .A0(n144), .A1(n65), .B0(n371), .B1(n378), .Y(n113) );
  OAI22X1M U456 ( .A0(n148), .A1(n64), .B0(n356), .B1(n379), .Y(n114) );
  OAI22X1M U457 ( .A0(n148), .A1(n63), .B0(n361), .B1(n379), .Y(n116) );
  OAI22X1M U458 ( .A0(n148), .A1(n62), .B0(n358), .B1(n379), .Y(n115) );
  OAI22X1M U459 ( .A0(n148), .A1(n61), .B0(n363), .B1(n379), .Y(n117) );
  OAI22X1M U460 ( .A0(n148), .A1(n60), .B0(n365), .B1(n379), .Y(n118) );
  OAI22X1M U461 ( .A0(n148), .A1(n59), .B0(n369), .B1(n379), .Y(n120) );
  OAI22X1M U462 ( .A0(n148), .A1(n41), .B0(n371), .B1(n379), .Y(n121) );
  OAI22X1M U463 ( .A0(n148), .A1(n40), .B0(n367), .B1(n379), .Y(n119) );
  OAI22X1M U464 ( .A0(n146), .A1(n39), .B0(n356), .B1(n382), .Y(n154) );
  OAI22X1M U465 ( .A0(n146), .A1(n38), .B0(n358), .B1(n382), .Y(n155) );
  OAI22X1M U466 ( .A0(n146), .A1(n37), .B0(n361), .B1(n382), .Y(n156) );
  OAI22X1M U467 ( .A0(n146), .A1(n36), .B0(n363), .B1(n382), .Y(n157) );
  OAI22X1M U468 ( .A0(n146), .A1(n35), .B0(n365), .B1(n382), .Y(n158) );
  OAI22X1M U469 ( .A0(n146), .A1(n34), .B0(n367), .B1(n382), .Y(n159) );
  OAI22X1M U470 ( .A0(n146), .A1(n33), .B0(n369), .B1(n382), .Y(n160) );
  OAI22X1M U471 ( .A0(n146), .A1(n32), .B0(n371), .B1(n382), .Y(n161) );
  OAI22X1M U472 ( .A0(n150), .A1(n31), .B0(n358), .B1(n388), .Y(n163) );
  OAI22X1M U473 ( .A0(n150), .A1(n30), .B0(n363), .B1(n388), .Y(n165) );
  OAI22X1M U474 ( .A0(n150), .A1(n29), .B0(n365), .B1(n388), .Y(n166) );
  OAI22X1M U475 ( .A0(n150), .A1(n28), .B0(n369), .B1(n388), .Y(n168) );
  OAI22X1M U476 ( .A0(n150), .A1(n27), .B0(n371), .B1(n388), .Y(n169) );
  OAI22X1M U477 ( .A0(n150), .A1(n26), .B0(n356), .B1(n388), .Y(n162) );
  OAI22X1M U478 ( .A0(n150), .A1(n25), .B0(n361), .B1(n388), .Y(n164) );
  OAI22X1M U479 ( .A0(n150), .A1(n24), .B0(n367), .B1(n388), .Y(n167) );
  OAI22X1M U480 ( .A0(n145), .A1(n11), .B0(n356), .B1(n381), .Y(n309) );
  OAI22X1M U481 ( .A0(n145), .A1(n10), .B0(n358), .B1(n381), .Y(n308) );
  OAI22X1M U482 ( .A0(n145), .A1(n8), .B0(n361), .B1(n381), .Y(n307) );
  OAI22X1M U483 ( .A0(n145), .A1(n7), .B0(n363), .B1(n381), .Y(n306) );
  OAI22X1M U484 ( .A0(n145), .A1(n6), .B0(n365), .B1(n381), .Y(n305) );
  OAI22X1M U485 ( .A0(n145), .A1(n3), .B0(n367), .B1(n381), .Y(n15) );
  OAI22X1M U486 ( .A0(n145), .A1(n2), .B0(n369), .B1(n381), .Y(n304) );
  OAI22X1M U487 ( .A0(n145), .A1(n1), .B0(n371), .B1(n381), .Y(n303) );
  NAND2X2M U488 ( .A(Address[3]), .B(Address[0]), .Y(n204) );
  NAND2X2M U489 ( .A(Address[3]), .B(n171), .Y(n206) );
  INVX2M U490 ( .A(Address[0]), .Y(n171) );
  NOR2X4M U491 ( .A(n171), .B(Address[3]), .Y(n207) );
  NOR2X4M U492 ( .A(Address[0]), .B(Address[3]), .Y(n201) );
  OAI22X1M U493 ( .A0(n404), .A1(n127), .B0(n410), .B1(n64), .Y(n217) );
  OAI22X1M U494 ( .A0(n404), .A1(n39), .B0(n410), .B1(n26), .Y(n216) );
  OAI22X1M U495 ( .A0(n404), .A1(n126), .B0(n410), .B1(n62), .Y(n226) );
  OAI22X1M U496 ( .A0(n404), .A1(n38), .B0(n410), .B1(n31), .Y(n225) );
  OAI22X1M U497 ( .A0(n404), .A1(n125), .B0(n410), .B1(n63), .Y(n244) );
  OAI22X1M U498 ( .A0(n404), .A1(n37), .B0(n410), .B1(n25), .Y(n243) );
  OAI22X1M U499 ( .A0(n404), .A1(n123), .B0(n410), .B1(n60), .Y(n262) );
  OAI22X1M U500 ( .A0(n404), .A1(n35), .B0(n410), .B1(n29), .Y(n261) );
  OAI22X1M U501 ( .A0(n404), .A1(n65), .B0(n410), .B1(n41), .Y(n289) );
  OAI22X1M U502 ( .A0(n404), .A1(n32), .B0(n410), .B1(n27), .Y(n288) );
  OAI22X1M U503 ( .A0(n404), .A1(n34), .B0(n410), .B1(n24), .Y(n270) );
  OAI22X1M U504 ( .A0(n404), .A1(n124), .B0(n410), .B1(n61), .Y(n253) );
  OAI22X1M U505 ( .A0(n404), .A1(n36), .B0(n410), .B1(n30), .Y(n252) );
  OAI22X1M U506 ( .A0(n409), .A1(n122), .B0(n411), .B1(n40), .Y(n271) );
  OAI22X1M U507 ( .A0(n409), .A1(n76), .B0(n411), .B1(n59), .Y(n280) );
  OAI22X1M U508 ( .A0(n409), .A1(n33), .B0(n411), .B1(n28), .Y(n279) );
  OAI22X1M U509 ( .A0(n151), .A1(n135), .B0(n356), .B1(n391), .Y(n317) );
  OAI22X1M U510 ( .A0(n151), .A1(n134), .B0(n358), .B1(n391), .Y(n316) );
  OAI22X1M U511 ( .A0(n151), .A1(n133), .B0(n361), .B1(n391), .Y(n315) );
  OAI22X1M U512 ( .A0(n151), .A1(n132), .B0(n363), .B1(n391), .Y(n314) );
  OAI22X1M U513 ( .A0(n151), .A1(n131), .B0(n365), .B1(n391), .Y(n313) );
  OAI22X1M U514 ( .A0(n151), .A1(n130), .B0(n367), .B1(n391), .Y(n5) );
  OAI22X1M U515 ( .A0(n151), .A1(n129), .B0(n369), .B1(n391), .Y(n312) );
  OAI22X1M U516 ( .A0(n151), .A1(n128), .B0(n371), .B1(n391), .Y(n311) );
  OAI22X1M U517 ( .A0(n149), .A1(n23), .B0(n367), .B1(n386), .Y(n16) );
  OAI22X1M U518 ( .A0(n149), .A1(n22), .B0(n358), .B1(n386), .Y(n301) );
  OAI22X1M U519 ( .A0(n149), .A1(n21), .B0(n363), .B1(n386), .Y(n300) );
  OAI22X1M U520 ( .A0(n149), .A1(n20), .B0(n365), .B1(n386), .Y(n299) );
  OAI22X1M U521 ( .A0(n149), .A1(n19), .B0(n369), .B1(n386), .Y(n298) );
  OAI22X1M U522 ( .A0(n149), .A1(n18), .B0(n371), .B1(n386), .Y(n297) );
  OAI22X1M U523 ( .A0(n149), .A1(n13), .B0(n356), .B1(n386), .Y(n302) );
  OAI22X1M U524 ( .A0(n149), .A1(n12), .B0(n361), .B1(n386), .Y(n9) );
  NOR2BX2M U525 ( .AN(Address[1]), .B(Address[2]), .Y(n189) );
  NOR2BX2M U526 ( .AN(Address[2]), .B(Address[1]), .Y(n185) );
  CLKBUFX6M U527 ( .A(n208), .Y(n373) );
  NAND2X2M U528 ( .A(Address[2]), .B(Address[1]), .Y(n208) );
  BUFX4M U529 ( .A(n177), .Y(n362) );
  BUFX4M U530 ( .A(n176), .Y(n364) );
  BUFX4M U531 ( .A(n175), .Y(n366) );
  BUFX4M U532 ( .A(n173), .Y(n370) );
  BUFX4M U533 ( .A(n172), .Y(n372) );
  BUFX4M U534 ( .A(n174), .Y(n368) );
  BUFX4M U535 ( .A(n179), .Y(n357) );
  BUFX4M U536 ( .A(n178), .Y(n360) );
  BUFX2M U537 ( .A(RST), .Y(n432) );
  OAI221X1M U538 ( .A0(n204), .A1(n135), .B0(n206), .B1(n143), .C0(n215), .Y(
        n212) );
  AOI22X1M U539 ( .A0(\regArr[3][0] ), .A1(n403), .B0(REG2[0]), .B1(n416), .Y(
        n215) );
  OAI221X1M U540 ( .A0(n411), .A1(n134), .B0(n409), .B1(n142), .C0(n224), .Y(
        n221) );
  AOI22X1M U541 ( .A0(\regArr[3][1] ), .A1(n403), .B0(n414), .B1(n416), .Y(
        n224) );
  OAI221X1M U542 ( .A0(n411), .A1(n128), .B0(n409), .B1(n136), .C0(n287), .Y(
        n284) );
  AOI22X1M U543 ( .A0(\regArr[3][7] ), .A1(n403), .B0(REG2[7]), .B1(n416), .Y(
        n287) );
  OAI221X1M U544 ( .A0(n410), .A1(n13), .B0(n404), .B1(n11), .C0(n214), .Y(
        n213) );
  AOI22X1M U545 ( .A0(\regArr[5][0] ), .A1(n403), .B0(\regArr[4][0] ), .B1(
        n416), .Y(n214) );
  OAI221X1M U546 ( .A0(n411), .A1(n22), .B0(n409), .B1(n10), .C0(n223), .Y(
        n222) );
  AOI22X1M U547 ( .A0(\regArr[5][1] ), .A1(n403), .B0(\regArr[4][1] ), .B1(
        n416), .Y(n223) );
  OAI221X1M U548 ( .A0(n410), .A1(n12), .B0(n404), .B1(n8), .C0(n232), .Y(n231) );
  AOI22X1M U549 ( .A0(\regArr[5][2] ), .A1(n403), .B0(\regArr[4][2] ), .B1(
        n416), .Y(n232) );
  OAI221X1M U550 ( .A0(n411), .A1(n20), .B0(n409), .B1(n6), .C0(n259), .Y(n258) );
  AOI22X1M U551 ( .A0(\regArr[5][4] ), .A1(n402), .B0(\regArr[4][4] ), .B1(
        n415), .Y(n259) );
  OAI221X1M U552 ( .A0(n411), .A1(n18), .B0(n409), .B1(n1), .C0(n286), .Y(n285) );
  AOI22X1M U553 ( .A0(\regArr[5][7] ), .A1(n403), .B0(\regArr[4][7] ), .B1(
        n416), .Y(n286) );
  OAI221X1M U554 ( .A0(n411), .A1(n23), .B0(n409), .B1(n3), .C0(n268), .Y(n267) );
  AOI22X1M U555 ( .A0(\regArr[5][5] ), .A1(n402), .B0(\regArr[4][5] ), .B1(
        n415), .Y(n268) );
  OAI221X1M U556 ( .A0(n411), .A1(n19), .B0(n409), .B1(n2), .C0(n277), .Y(n276) );
  AOI22X1M U557 ( .A0(\regArr[5][6] ), .A1(n402), .B0(\regArr[4][6] ), .B1(
        n415), .Y(n277) );
  OAI221X1M U558 ( .A0(n411), .A1(n21), .B0(n409), .B1(n7), .C0(n250), .Y(n249) );
  AOI22X1M U559 ( .A0(\regArr[5][3] ), .A1(n402), .B0(\regArr[4][3] ), .B1(
        n415), .Y(n250) );
  OAI221X1M U560 ( .A0(n209), .A1(n170), .B0(n210), .B1(n373), .C0(n211), .Y(
        N43) );
  AOI221X2M U561 ( .A0(\regArr[7][0] ), .A1(n401), .B0(\regArr[6][0] ), .B1(
        n412), .C0(n216), .Y(n210) );
  AOI221X2M U562 ( .A0(REG1[0]), .A1(n401), .B0(REG0[0]), .B1(n412), .C0(n217), 
        .Y(n209) );
  AOI22X1M U563 ( .A0(n374), .A1(n212), .B0(n375), .B1(n213), .Y(n211) );
  OAI221X1M U564 ( .A0(n218), .A1(n170), .B0(n219), .B1(n373), .C0(n220), .Y(
        N42) );
  AOI221X2M U565 ( .A0(\regArr[7][1] ), .A1(n401), .B0(\regArr[6][1] ), .B1(
        n412), .C0(n225), .Y(n219) );
  AOI221X2M U566 ( .A0(REG1[1]), .A1(n401), .B0(n384), .B1(n412), .C0(n226), 
        .Y(n218) );
  AOI22X1M U567 ( .A0(n374), .A1(n221), .B0(n375), .B1(n222), .Y(n220) );
  OAI221X1M U568 ( .A0(n227), .A1(n170), .B0(n228), .B1(n373), .C0(n229), .Y(
        N41) );
  AOI221X2M U569 ( .A0(\regArr[7][2] ), .A1(n401), .B0(\regArr[6][2] ), .B1(
        n412), .C0(n243), .Y(n228) );
  AOI221X2M U570 ( .A0(REG1[2]), .A1(n401), .B0(n383), .B1(n412), .C0(n244), 
        .Y(n227) );
  AOI22X1M U571 ( .A0(n374), .A1(n230), .B0(n375), .B1(n231), .Y(n229) );
  OAI221X1M U572 ( .A0(n254), .A1(n170), .B0(n255), .B1(n373), .C0(n256), .Y(
        N39) );
  AOI221X2M U573 ( .A0(\regArr[7][4] ), .A1(n401), .B0(\regArr[6][4] ), .B1(
        n412), .C0(n261), .Y(n255) );
  AOI221X2M U574 ( .A0(REG1[4]), .A1(n401), .B0(n420), .B1(n412), .C0(n262), 
        .Y(n254) );
  AOI22X1M U575 ( .A0(n374), .A1(n257), .B0(n375), .B1(n258), .Y(n256) );
  OAI221X1M U576 ( .A0(n281), .A1(n170), .B0(n282), .B1(n373), .C0(n283), .Y(
        N36) );
  AOI221X2M U577 ( .A0(\regArr[7][7] ), .A1(n402), .B0(\regArr[6][7] ), .B1(
        n415), .C0(n288), .Y(n282) );
  AOI221X2M U578 ( .A0(REG1[7]), .A1(n401), .B0(REG0[7]), .B1(n412), .C0(n289), 
        .Y(n281) );
  AOI22X1M U579 ( .A0(n374), .A1(n284), .B0(n375), .B1(n285), .Y(n283) );
  OAI221X1M U580 ( .A0(n263), .A1(n170), .B0(n264), .B1(n373), .C0(n265), .Y(
        N38) );
  AOI221X2M U581 ( .A0(\regArr[7][5] ), .A1(n401), .B0(\regArr[6][5] ), .B1(
        n412), .C0(n270), .Y(n264) );
  AOI221X2M U582 ( .A0(REG1[5]), .A1(n402), .B0(REG0[5]), .B1(n415), .C0(n271), 
        .Y(n263) );
  AOI22X1M U583 ( .A0(n374), .A1(n266), .B0(n375), .B1(n267), .Y(n265) );
  OAI221X1M U584 ( .A0(n272), .A1(n170), .B0(n273), .B1(n373), .C0(n274), .Y(
        N37) );
  AOI221X2M U585 ( .A0(\regArr[7][6] ), .A1(n402), .B0(\regArr[6][6] ), .B1(
        n415), .C0(n279), .Y(n273) );
  AOI221X2M U586 ( .A0(REG1[6]), .A1(n402), .B0(n425), .B1(n415), .C0(n280), 
        .Y(n272) );
  AOI22X1M U587 ( .A0(n374), .A1(n275), .B0(n375), .B1(n276), .Y(n274) );
  OAI221X1M U588 ( .A0(n245), .A1(n170), .B0(n246), .B1(n373), .C0(n247), .Y(
        N40) );
  AOI221X2M U589 ( .A0(\regArr[7][3] ), .A1(n401), .B0(\regArr[6][3] ), .B1(
        n412), .C0(n252), .Y(n246) );
  AOI221X2M U590 ( .A0(REG1[3]), .A1(n401), .B0(n389), .B1(n412), .C0(n253), 
        .Y(n245) );
  AOI22X1M U591 ( .A0(n374), .A1(n248), .B0(n375), .B1(n249), .Y(n247) );
  OAI221X1M U592 ( .A0(n411), .A1(n133), .B0(n409), .B1(n141), .C0(n242), .Y(
        n230) );
  AOI22X1M U593 ( .A0(\regArr[3][2] ), .A1(n402), .B0(REG2[2]), .B1(n415), .Y(
        n242) );
  OAI221X1M U594 ( .A0(n411), .A1(n131), .B0(n409), .B1(n139), .C0(n260), .Y(
        n257) );
  AOI22X1M U595 ( .A0(\regArr[3][4] ), .A1(n402), .B0(REG2[4]), .B1(n415), .Y(
        n260) );
  OAI221X1M U596 ( .A0(n411), .A1(n130), .B0(n409), .B1(n138), .C0(n269), .Y(
        n266) );
  AOI22X1M U597 ( .A0(\regArr[3][5] ), .A1(n402), .B0(REG2[5]), .B1(n415), .Y(
        n269) );
  OAI221X1M U598 ( .A0(n411), .A1(n129), .B0(n409), .B1(n137), .C0(n278), .Y(
        n275) );
  AOI22X1M U599 ( .A0(\regArr[3][6] ), .A1(n402), .B0(REG2[6]), .B1(n415), .Y(
        n278) );
  OAI221X1M U600 ( .A0(n411), .A1(n132), .B0(n409), .B1(n140), .C0(n251), .Y(
        n248) );
  AOI22X1M U601 ( .A0(\regArr[3][3] ), .A1(n402), .B0(REG2[3]), .B1(n415), .Y(
        n251) );
  OAI2BB2X1M U602 ( .B0(n360), .B1(n380), .A0N(n380), .A1N(n414), .Y(n296) );
  OAI2BB2X1M U603 ( .B0(n364), .B1(n380), .A0N(n380), .A1N(REG2[3]), .Y(n295)
         );
  OAI2BB2X1M U604 ( .B0(n366), .B1(n380), .A0N(n380), .A1N(REG2[4]), .Y(n294)
         );
  OAI2BB2X1M U605 ( .B0(n370), .B1(n380), .A0N(n380), .A1N(REG2[6]), .Y(n293)
         );
  OAI2BB2X1M U606 ( .B0(n368), .B1(n380), .A0N(n380), .A1N(REG2[5]), .Y(n17)
         );
  OAI2BB2X1M U607 ( .B0(n372), .B1(n380), .A0N(n380), .A1N(REG2[7]), .Y(n292)
         );
  OAI2BB2X1M U608 ( .B0(n357), .B1(n380), .A0N(n380), .A1N(REG2[0]), .Y(n58)
         );
  OAI2BB2X1M U609 ( .B0(n357), .B1(n398), .A0N(n398), .A1N(\regArr[5][0] ), 
        .Y(n82) );
  OAI2BB2X1M U610 ( .B0(n360), .B1(n398), .A0N(n398), .A1N(\regArr[5][1] ), 
        .Y(n83) );
  OAI2BB2X1M U611 ( .B0(n362), .B1(n398), .A0N(n398), .A1N(\regArr[5][2] ), 
        .Y(n84) );
  OAI2BB2X1M U612 ( .B0(n364), .B1(n398), .A0N(n398), .A1N(\regArr[5][3] ), 
        .Y(n85) );
  OAI2BB2X1M U613 ( .B0(n366), .B1(n398), .A0N(n398), .A1N(\regArr[5][4] ), 
        .Y(n86) );
  OAI2BB2X1M U614 ( .B0(n368), .B1(n398), .A0N(n398), .A1N(\regArr[5][5] ), 
        .Y(n87) );
  OAI2BB2X1M U615 ( .B0(n370), .B1(n398), .A0N(n398), .A1N(\regArr[5][6] ), 
        .Y(n88) );
  OAI2BB2X1M U616 ( .B0(n372), .B1(n398), .A0N(n398), .A1N(\regArr[5][7] ), 
        .Y(n89) );
  OAI2BB2X1M U617 ( .B0(n357), .B1(n397), .A0N(n397), .A1N(\regArr[3][0] ), 
        .Y(n66) );
  OAI2BB2X1M U618 ( .B0(n360), .B1(n397), .A0N(n397), .A1N(\regArr[3][1] ), 
        .Y(n67) );
  OAI2BB2X1M U619 ( .B0(n362), .B1(n397), .A0N(n397), .A1N(\regArr[3][2] ), 
        .Y(n68) );
  OAI2BB2X1M U620 ( .B0(n364), .B1(n397), .A0N(n397), .A1N(\regArr[3][3] ), 
        .Y(n69) );
  OAI2BB2X1M U621 ( .B0(n366), .B1(n397), .A0N(n397), .A1N(\regArr[3][4] ), 
        .Y(n70) );
  OAI2BB2X1M U622 ( .B0(n368), .B1(n397), .A0N(n397), .A1N(\regArr[3][5] ), 
        .Y(n71) );
  OAI2BB2X1M U623 ( .B0(n370), .B1(n397), .A0N(n397), .A1N(\regArr[3][6] ), 
        .Y(n72) );
  OAI2BB2X1M U624 ( .B0(n372), .B1(n397), .A0N(n397), .A1N(\regArr[3][7] ), 
        .Y(n73) );
  OAI2BB2X1M U625 ( .B0(n368), .B1(n390), .A0N(n390), .A1N(\regArr[4][5] ), 
        .Y(n79) );
  OAI2BB2X1M U626 ( .B0(n357), .B1(n390), .A0N(n390), .A1N(\regArr[4][0] ), 
        .Y(n74) );
  OAI2BB2X1M U627 ( .B0(n360), .B1(n390), .A0N(n390), .A1N(\regArr[4][1] ), 
        .Y(n75) );
  OAI2BB2X1M U628 ( .B0(n362), .B1(n390), .A0N(n390), .A1N(\regArr[4][2] ), 
        .Y(n310) );
  OAI2BB2X1M U629 ( .B0(n364), .B1(n390), .A0N(n390), .A1N(\regArr[4][3] ), 
        .Y(n77) );
  OAI2BB2X1M U630 ( .B0(n366), .B1(n390), .A0N(n390), .A1N(\regArr[4][4] ), 
        .Y(n78) );
  OAI2BB2X1M U631 ( .B0(n370), .B1(n390), .A0N(n390), .A1N(\regArr[4][6] ), 
        .Y(n80) );
  OAI2BB2X1M U632 ( .B0(n372), .B1(n390), .A0N(n390), .A1N(\regArr[4][7] ), 
        .Y(n81) );
  OAI2BB2X1M U633 ( .B0(n366), .B1(n395), .A0N(n396), .A1N(REG1[4]), .Y(n54)
         );
  OAI2BB2X1M U634 ( .B0(n360), .B1(n395), .A0N(n396), .A1N(REG1[1]), .Y(n51)
         );
  OAI2BB2X1M U635 ( .B0(n370), .B1(n395), .A0N(n396), .A1N(REG1[6]), .Y(n56)
         );
  OAI2BB2X1M U636 ( .B0(n370), .B1(n393), .A0N(n394), .A1N(n425), .Y(n48) );
  OAI2BB2X1M U637 ( .B0(n362), .B1(n393), .A0N(n394), .A1N(n383), .Y(n44) );
  OAI2BB2X1M U638 ( .B0(n362), .B1(n395), .A0N(n396), .A1N(REG1[2]), .Y(n52)
         );
  OAI2BB2X1M U639 ( .B0(n357), .B1(n395), .A0N(n396), .A1N(REG1[0]), .Y(n50)
         );
  OAI2BB2X1M U640 ( .B0(n368), .B1(n393), .A0N(n394), .A1N(REG0[5]), .Y(n47)
         );
  OAI2BB2X1M U641 ( .B0(n366), .B1(n393), .A0N(n394), .A1N(n420), .Y(n46) );
  OAI2BB2X1M U642 ( .B0(n364), .B1(n393), .A0N(n394), .A1N(n389), .Y(n45) );
  OAI2BB2X1M U643 ( .B0(n357), .B1(n393), .A0N(n394), .A1N(REG0[0]), .Y(n42)
         );
  OAI2BB2X1M U644 ( .B0(n357), .B1(n399), .A0N(n399), .A1N(\regArr[6][0] ), 
        .Y(n90) );
  OAI2BB2X1M U645 ( .B0(n360), .B1(n400), .A0N(n400), .A1N(\regArr[6][1] ), 
        .Y(n91) );
  OAI2BB2X1M U646 ( .B0(n368), .B1(n395), .A0N(n396), .A1N(REG1[5]), .Y(n55)
         );
  OAI2BB2X1M U647 ( .B0(n372), .B1(n396), .A0N(n396), .A1N(REG1[7]), .Y(n57)
         );
  OAI2BB2X1M U648 ( .B0(n372), .B1(n394), .A0N(n394), .A1N(REG0[7]), .Y(n49)
         );
  OAI2BB2X1M U649 ( .B0(n400), .B1(n368), .A0N(n400), .A1N(\regArr[6][5] ), 
        .Y(n95) );
  OAI2BB2X1M U650 ( .B0(n399), .B1(n362), .A0N(n399), .A1N(\regArr[6][2] ), 
        .Y(n92) );
  OAI2BB2X1M U651 ( .B0(n400), .B1(n364), .A0N(n400), .A1N(\regArr[6][3] ), 
        .Y(n93) );
  OAI2BB2X1M U652 ( .B0(n399), .B1(n366), .A0N(n399), .A1N(\regArr[6][4] ), 
        .Y(n94) );
  OAI2BB2X1M U653 ( .B0(n399), .B1(n370), .A0N(n399), .A1N(\regArr[6][6] ), 
        .Y(n96) );
  OAI2BB2X1M U654 ( .B0(n400), .B1(n372), .A0N(n400), .A1N(\regArr[6][7] ), 
        .Y(n97) );
  OAI2BB2X1M U655 ( .B0(n377), .B1(n368), .A0N(n377), .A1N(\regArr[7][5] ), 
        .Y(n103) );
  OAI2BB2X1M U656 ( .B0(n376), .B1(n357), .A0N(n376), .A1N(\regArr[7][0] ), 
        .Y(n98) );
  OAI2BB2X1M U657 ( .B0(n377), .B1(n360), .A0N(n377), .A1N(\regArr[7][1] ), 
        .Y(n99) );
  OAI2BB2X1M U658 ( .B0(n376), .B1(n362), .A0N(n376), .A1N(\regArr[7][2] ), 
        .Y(n100) );
  OAI2BB2X1M U659 ( .B0(n377), .B1(n364), .A0N(n377), .A1N(\regArr[7][3] ), 
        .Y(n101) );
  OAI2BB2X1M U660 ( .B0(n376), .B1(n366), .A0N(n376), .A1N(\regArr[7][4] ), 
        .Y(n102) );
  OAI2BB2X1M U661 ( .B0(n376), .B1(n370), .A0N(n376), .A1N(\regArr[7][6] ), 
        .Y(n104) );
  OAI2BB2X1M U662 ( .B0(n377), .B1(n372), .A0N(n377), .A1N(\regArr[7][7] ), 
        .Y(n105) );
  OAI2BB2X1M U663 ( .B0(n362), .B1(n380), .A0N(n380), .A1N(REG2[2]), .Y(n14)
         );
  OAI2BB2X1M U664 ( .B0(n364), .B1(n395), .A0N(n396), .A1N(REG1[3]), .Y(n53)
         );
  OAI2BB2X1M U665 ( .B0(n360), .B1(n393), .A0N(n394), .A1N(n384), .Y(n43) );
  INVX2M U666 ( .A(WrEn), .Y(n152) );
  AND3X4M U667 ( .A(n152), .B(n417), .C(RdEn), .Y(n233) );
  INVX2M U668 ( .A(WrData[0]), .Y(n179) );
  INVX2M U669 ( .A(WrData[1]), .Y(n178) );
  INVX2M U670 ( .A(WrData[2]), .Y(n177) );
  INVX2M U671 ( .A(WrData[3]), .Y(n176) );
  INVX2M U672 ( .A(WrData[4]), .Y(n175) );
  INVX2M U673 ( .A(WrData[6]), .Y(n173) );
  INVX2M U674 ( .A(WrData[7]), .Y(n172) );
  INVX2M U675 ( .A(WrData[5]), .Y(n174) );
  INVX2M U676 ( .A(\regArr[9][0] ), .Y(n64) );
  INVX2M U677 ( .A(\regArr[15][0] ), .Y(n26) );
  INVX2M U678 ( .A(\regArr[9][1] ), .Y(n62) );
  INVX2M U679 ( .A(\regArr[15][1] ), .Y(n31) );
  INVX2M U680 ( .A(\regArr[9][2] ), .Y(n63) );
  INVX2M U681 ( .A(\regArr[15][2] ), .Y(n25) );
  INVX2M U682 ( .A(\regArr[9][4] ), .Y(n60) );
  INVX2M U683 ( .A(\regArr[15][4] ), .Y(n29) );
  INVX2M U684 ( .A(\regArr[9][7] ), .Y(n41) );
  INVX2M U685 ( .A(\regArr[15][7] ), .Y(n27) );
  INVX2M U686 ( .A(\regArr[9][5] ), .Y(n40) );
  INVX2M U687 ( .A(\regArr[15][5] ), .Y(n24) );
  INVX2M U688 ( .A(\regArr[9][6] ), .Y(n59) );
  INVX2M U689 ( .A(\regArr[15][6] ), .Y(n28) );
  INVX2M U690 ( .A(\regArr[9][3] ), .Y(n61) );
  INVX2M U691 ( .A(\regArr[15][3] ), .Y(n30) );
  INVX2M U692 ( .A(\regArr[12][0] ), .Y(n11) );
  INVX2M U693 ( .A(\regArr[10][0] ), .Y(n143) );
  INVX2M U694 ( .A(\regArr[12][1] ), .Y(n10) );
  INVX2M U695 ( .A(\regArr[10][1] ), .Y(n142) );
  INVX2M U696 ( .A(\regArr[10][2] ), .Y(n141) );
  INVX2M U697 ( .A(\regArr[12][2] ), .Y(n8) );
  INVX2M U698 ( .A(\regArr[12][4] ), .Y(n6) );
  INVX2M U699 ( .A(\regArr[10][4] ), .Y(n139) );
  INVX2M U700 ( .A(\regArr[12][7] ), .Y(n1) );
  INVX2M U701 ( .A(\regArr[10][7] ), .Y(n136) );
  INVX2M U702 ( .A(\regArr[12][5] ), .Y(n3) );
  INVX2M U703 ( .A(\regArr[10][5] ), .Y(n138) );
  INVX2M U704 ( .A(\regArr[12][6] ), .Y(n2) );
  INVX2M U705 ( .A(\regArr[10][6] ), .Y(n137) );
  INVX2M U706 ( .A(\regArr[12][3] ), .Y(n7) );
  INVX2M U707 ( .A(\regArr[10][3] ), .Y(n140) );
  INVX2M U708 ( .A(\regArr[13][0] ), .Y(n13) );
  INVX2M U709 ( .A(\regArr[13][1] ), .Y(n22) );
  INVX2M U710 ( .A(\regArr[13][2] ), .Y(n12) );
  INVX2M U711 ( .A(\regArr[13][4] ), .Y(n20) );
  INVX2M U712 ( .A(\regArr[13][7] ), .Y(n18) );
  INVX2M U713 ( .A(\regArr[13][5] ), .Y(n23) );
  INVX2M U714 ( .A(\regArr[13][6] ), .Y(n19) );
  INVX2M U715 ( .A(\regArr[13][3] ), .Y(n21) );
  INVX2M U716 ( .A(\regArr[8][0] ), .Y(n127) );
  INVX2M U717 ( .A(\regArr[14][0] ), .Y(n39) );
  INVX2M U718 ( .A(\regArr[8][1] ), .Y(n126) );
  INVX2M U719 ( .A(\regArr[14][1] ), .Y(n38) );
  INVX2M U720 ( .A(\regArr[8][2] ), .Y(n125) );
  INVX2M U721 ( .A(\regArr[14][2] ), .Y(n37) );
  INVX2M U722 ( .A(\regArr[8][4] ), .Y(n123) );
  INVX2M U723 ( .A(\regArr[14][4] ), .Y(n35) );
  INVX2M U724 ( .A(\regArr[8][7] ), .Y(n65) );
  INVX2M U725 ( .A(\regArr[14][7] ), .Y(n32) );
  INVX2M U726 ( .A(\regArr[8][5] ), .Y(n122) );
  INVX2M U727 ( .A(\regArr[14][5] ), .Y(n34) );
  INVX2M U728 ( .A(\regArr[8][6] ), .Y(n76) );
  INVX2M U729 ( .A(\regArr[14][6] ), .Y(n33) );
  INVX2M U730 ( .A(\regArr[8][3] ), .Y(n124) );
  INVX2M U731 ( .A(\regArr[14][3] ), .Y(n36) );
  INVX2M U732 ( .A(\regArr[11][0] ), .Y(n135) );
  INVX2M U733 ( .A(\regArr[11][1] ), .Y(n134) );
  INVX2M U734 ( .A(\regArr[11][2] ), .Y(n133) );
  INVX2M U735 ( .A(\regArr[11][4] ), .Y(n131) );
  INVX2M U736 ( .A(\regArr[11][7] ), .Y(n128) );
  INVX2M U737 ( .A(\regArr[11][5] ), .Y(n130) );
  INVX2M U738 ( .A(\regArr[11][6] ), .Y(n129) );
  INVX2M U739 ( .A(\regArr[11][3] ), .Y(n132) );
endmodule


module ALU_DW01_addsub_0 ( A, B, CI, ADD_SUB, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI, ADD_SUB;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;

  OAI21X4M U29 ( .A0(n18), .A1(n19), .B0(n20), .Y(n15) );
  OAI2BB1X2M U30 ( .A0N(n19), .A1N(n18), .B0(A[1]), .Y(n20) );
  OAI2BB1X2M U31 ( .A0N(n12), .A1N(n13), .B0(n14), .Y(n9) );
  OAI21X2M U32 ( .A0(n13), .A1(n12), .B0(A[3]), .Y(n14) );
  AO22X2M U33 ( .A0(n9), .A1(n10), .B0(n11), .B1(A[4]), .Y(n6) );
  OR2X2M U34 ( .A(n10), .B(n9), .Y(n11) );
  AO22X2M U35 ( .A0(n15), .A1(n16), .B0(n17), .B1(A[2]), .Y(n12) );
  OR2X2M U36 ( .A(n16), .B(n15), .Y(n17) );
  AO22X2M U37 ( .A0(n6), .A1(n7), .B0(n8), .B1(A[5]), .Y(n3) );
  OR2X2M U38 ( .A(n7), .B(n6), .Y(n8) );
  XOR3XLM U39 ( .A(A[6]), .B(n4), .C(n3), .Y(SUM[6]) );
  XOR3XLM U40 ( .A(A[5]), .B(n7), .C(n6), .Y(SUM[5]) );
  XOR3XLM U41 ( .A(A[4]), .B(n10), .C(n9), .Y(SUM[4]) );
  XOR3XLM U42 ( .A(A[1]), .B(n19), .C(n18), .Y(SUM[1]) );
  XOR3XLM U43 ( .A(A[3]), .B(n13), .C(n12), .Y(SUM[3]) );
  XOR3XLM U44 ( .A(A[2]), .B(n16), .C(n15), .Y(SUM[2]) );
  XNOR2X4M U45 ( .A(ADD_SUB), .B(B[1]), .Y(n18) );
  XOR3XLM U46 ( .A(ADD_SUB), .B(n1), .C(n2), .Y(SUM[7]) );
  CLKXOR2X2M U47 ( .A(B[7]), .B(A[7]), .Y(n1) );
  OAI2BB1X2M U48 ( .A0N(n3), .A1N(n4), .B0(n5), .Y(n2) );
  OAI21X2M U49 ( .A0(n4), .A1(n3), .B0(A[6]), .Y(n5) );
  OAI2B2X4M U50 ( .A1N(B[0]), .A0(A[0]), .B0(B[0]), .B1(ADD_SUB), .Y(n19) );
  CLKXOR2X2M U51 ( .A(ADD_SUB), .B(B[2]), .Y(n16) );
  CLKXOR2X2M U52 ( .A(ADD_SUB), .B(B[3]), .Y(n13) );
  CLKXOR2X2M U53 ( .A(ADD_SUB), .B(B[4]), .Y(n10) );
  CLKXOR2X2M U54 ( .A(ADD_SUB), .B(B[5]), .Y(n7) );
  CLKXOR2X2M U55 ( .A(ADD_SUB), .B(B[6]), .Y(n4) );
  XOR2X1M U56 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n1, n3, n4, n5, n8, n9, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n2, n6,
         n7, n10, n146, n147, n148, n149;

  OAI32X4M U5 ( .A0(n30), .A1(b[5]), .A2(n1), .B0(n31), .B1(n32), .Y(n28) );
  OAI211X8M U33 ( .A0(n26), .A1(n66), .B0(n67), .C0(n13), .Y(n25) );
  OAI2BB1X4M U42 ( .A0N(n44), .A1N(n41), .B0(n74), .Y(n37) );
  XNOR2X8M U57 ( .A(n86), .B(n87), .Y(n33) );
  OAI21X8M U61 ( .A0(n91), .A1(n15), .B0(n92), .Y(quotient[2]) );
  OAI2B11X4M U85 ( .A1N(n113), .A0(n18), .B0(n114), .C0(n115), .Y(n100) );
  BUFX2M U150 ( .A(n83), .Y(n2) );
  OAI31X2M U151 ( .A0(n100), .A1(n101), .A2(n149), .B0(n103), .Y(n83) );
  INVX2M U152 ( .A(n10), .Y(quotient[3]) );
  CLKBUFX2M U153 ( .A(n100), .Y(n10) );
  BUFX2M U154 ( .A(n97), .Y(n6) );
  OAI31X2M U155 ( .A0(n120), .A1(n126), .A2(n149), .B0(n128), .Y(n97) );
  BUFX2M U156 ( .A(n123), .Y(n7) );
  OAI31X2M U157 ( .A0(n149), .A1(n135), .A2(n8), .B0(n136), .Y(n123) );
  OAI21X1M U158 ( .A0(n76), .A1(n78), .B0(n20), .Y(n96) );
  CLKINVX1M U159 ( .A(b[0]), .Y(n22) );
  CLKINVX2M U160 ( .A(b[3]), .Y(n19) );
  BUFX4M U161 ( .A(n22), .Y(n149) );
  NOR2X2M U162 ( .A(n14), .B(n142), .Y(quotient[6]) );
  BUFX4M U163 ( .A(n22), .Y(n148) );
  INVX2M U164 ( .A(n33), .Y(n5) );
  NOR3X6M U165 ( .A(quotient[3]), .B(quotient[4]), .C(n112), .Y(n90) );
  AOI31X1M U166 ( .A0(n147), .A1(n142), .A2(n143), .B0(n144), .Y(n140) );
  OAI21X1M U167 ( .A0(b[7]), .A1(n23), .B0(n24), .Y(quotient[0]) );
  INVX4M U168 ( .A(n146), .Y(n147) );
  INVX4M U169 ( .A(b[4]), .Y(n18) );
  INVX2M U170 ( .A(b[5]), .Y(n17) );
  INVX2M U171 ( .A(n53), .Y(n12) );
  INVX2M U172 ( .A(n85), .Y(n11) );
  OAI21X4M U173 ( .A0(n126), .A1(n7), .B0(n134), .Y(n121) );
  OAI2BB1XLM U174 ( .A0N(n7), .A1N(n126), .B0(n21), .Y(n134) );
  OAI21X4M U175 ( .A0(n101), .A1(n6), .B0(n127), .Y(n107) );
  OAI2BB1XLM U176 ( .A0N(n6), .A1N(n101), .B0(n21), .Y(n127) );
  OAI21X4M U177 ( .A0(n149), .A1(n9), .B0(a[6]), .Y(n137) );
  OAI21X4M U178 ( .A0(n4), .A1(n11), .B0(n81), .Y(n50) );
  OAI21X2M U179 ( .A0(n4), .A1(n149), .B0(a[2]), .Y(n81) );
  INVX2M U180 ( .A(quotient[2]), .Y(n4) );
  OAI21X2M U181 ( .A0(n54), .A1(n55), .B0(n56), .Y(n47) );
  OAI21X2M U182 ( .A0(a[0]), .A1(n149), .B0(n21), .Y(n56) );
  AOI21X2M U183 ( .A0(quotient[1]), .A1(n53), .B0(a[1]), .Y(n55) );
  NOR2X2M U184 ( .A(n57), .B(n148), .Y(n54) );
  AOI2BB2X2M U185 ( .B0(quotient[1]), .B1(n12), .A0N(n21), .A1N(a[0]), .Y(n57)
         );
  OAI2BB1X2M U186 ( .A0N(n12), .A1N(n50), .B0(n80), .Y(n61) );
  OAI21X2M U187 ( .A0(n50), .A1(n12), .B0(n21), .Y(n80) );
  INVX2M U188 ( .A(quotient[6]), .Y(n9) );
  NOR2X6M U189 ( .A(n148), .B(a[5]), .Y(n135) );
  NOR2X6M U190 ( .A(n148), .B(a[4]), .Y(n126) );
  NOR2BX4M U191 ( .AN(n90), .B(quotient[2]), .Y(n26) );
  NOR2X6M U192 ( .A(n148), .B(a[3]), .Y(n101) );
  NOR2X4M U193 ( .A(n148), .B(a[2]), .Y(n85) );
  NOR2X4M U194 ( .A(n148), .B(a[1]), .Y(n53) );
  AO21XLM U195 ( .A0(n101), .A1(quotient[3]), .B0(a[3]), .Y(n103) );
  AO21XLM U196 ( .A0(quotient[5]), .A1(n135), .B0(a[5]), .Y(n136) );
  AO21XLM U197 ( .A0(n126), .A1(quotient[4]), .B0(a[4]), .Y(n128) );
  NAND4X2M U198 ( .A(n90), .B(n93), .C(n16), .D(n13), .Y(n92) );
  NOR2X2M U199 ( .A(n90), .B(n93), .Y(n91) );
  OAI21X2M U200 ( .A0(n70), .A1(n72), .B0(n94), .Y(n93) );
  OAI22X4M U201 ( .A0(n87), .A1(n89), .B0(n95), .B1(n19), .Y(n72) );
  AND2X2M U202 ( .A(n89), .B(n87), .Y(n95) );
  OAI21X3M U203 ( .A0(n85), .A1(n2), .B0(n102), .Y(n78) );
  AO21XLM U204 ( .A0(n2), .A1(n85), .B0(n147), .Y(n102) );
  OAI21X4M U205 ( .A0(n5), .A1(n37), .B0(n73), .Y(n65) );
  OAI21X2M U206 ( .A0(n3), .A1(n33), .B0(n18), .Y(n73) );
  OAI2BB1X2M U207 ( .A0N(n107), .A1N(n104), .B0(n122), .Y(n111) );
  OAI21X2M U208 ( .A0(n104), .A1(n107), .B0(n20), .Y(n122) );
  OAI2BB1X2M U209 ( .A0N(n78), .A1N(n76), .B0(n96), .Y(n89) );
  OAI2BB1X2M U210 ( .A0N(n19), .A1N(n45), .B0(n46), .Y(n39) );
  OAI221X1M U211 ( .A0(n20), .A1(n47), .B0(n19), .B1(n45), .C0(n48), .Y(n46)
         );
  CLKXOR2X2M U212 ( .A(n58), .B(n59), .Y(n45) );
  OAI2BB1X2M U213 ( .A0N(n20), .A1N(n47), .B0(n49), .Y(n48) );
  INVX4M U214 ( .A(n25), .Y(quotient[1]) );
  INVX2M U215 ( .A(quotient[5]), .Y(n8) );
  OAI2BB1X2M U216 ( .A0N(n72), .A1N(n70), .B0(n18), .Y(n94) );
  INVX2M U217 ( .A(n120), .Y(quotient[4]) );
  INVX2M U218 ( .A(n37), .Y(n3) );
  OAI21X2M U219 ( .A0(n135), .A1(n137), .B0(n147), .Y(n145) );
  INVX2M U220 ( .A(n34), .Y(n1) );
  XNOR2X4M U221 ( .A(n6), .B(n98), .Y(n76) );
  NOR2X1M U222 ( .A(n99), .B(n10), .Y(n98) );
  XNOR2X2M U223 ( .A(n101), .B(n147), .Y(n99) );
  CLKXOR2X2M U224 ( .A(n82), .B(n2), .Y(n58) );
  NAND2X2M U225 ( .A(n84), .B(quotient[2]), .Y(n82) );
  XNOR2X2M U226 ( .A(n147), .B(n11), .Y(n84) );
  XNOR2X4M U227 ( .A(n137), .B(n138), .Y(n117) );
  NOR2X2M U228 ( .A(n8), .B(n139), .Y(n138) );
  XNOR2X2M U229 ( .A(n135), .B(n147), .Y(n139) );
  INVX4M U230 ( .A(n147), .Y(n21) );
  AOI21X2M U231 ( .A0(n5), .A1(n37), .B0(n38), .Y(n35) );
  OAI32X2M U232 ( .A0(n25), .A1(n5), .A2(n37), .B0(n39), .B1(n17), .Y(n38) );
  INVX2M U233 ( .A(n115), .Y(n15) );
  INVX2M U234 ( .A(n143), .Y(n14) );
  CLKXOR2X2M U235 ( .A(n117), .B(n118), .Y(n108) );
  NOR2X2M U236 ( .A(n119), .B(n120), .Y(n118) );
  XNOR2X2M U237 ( .A(n121), .B(n20), .Y(n119) );
  XNOR2X4M U238 ( .A(n7), .B(n124), .Y(n104) );
  NOR2X2M U239 ( .A(n125), .B(n120), .Y(n124) );
  XNOR2X2M U240 ( .A(n126), .B(n147), .Y(n125) );
  CLKXOR2X2M U241 ( .A(n104), .B(n105), .Y(n87) );
  NOR2X1M U242 ( .A(n106), .B(n100), .Y(n105) );
  XNOR2X2M U243 ( .A(n107), .B(n20), .Y(n106) );
  XNOR2X4M U244 ( .A(n108), .B(n109), .Y(n70) );
  NOR2X1M U245 ( .A(n110), .B(n10), .Y(n109) );
  XNOR2X2M U246 ( .A(n111), .B(n19), .Y(n110) );
  AOI32X1M U247 ( .A0(n33), .A1(n37), .A2(quotient[1]), .B0(n3), .B1(n5), .Y(
        n36) );
  XNOR2X2M U248 ( .A(n50), .B(n51), .Y(n49) );
  NOR2X2M U249 ( .A(n52), .B(n25), .Y(n51) );
  XNOR2X2M U250 ( .A(n53), .B(n147), .Y(n52) );
  NOR2X1M U251 ( .A(n60), .B(n25), .Y(n59) );
  XNOR2X2M U252 ( .A(n61), .B(n20), .Y(n60) );
  CLKXOR2X2M U253 ( .A(n69), .B(n70), .Y(n62) );
  NAND2XLM U254 ( .A(n71), .B(quotient[2]), .Y(n69) );
  XNOR2X2M U255 ( .A(n72), .B(n18), .Y(n71) );
  CLKXOR2X2M U256 ( .A(n62), .B(n63), .Y(n27) );
  NOR2X1M U257 ( .A(n64), .B(n25), .Y(n63) );
  XNOR2X2M U258 ( .A(n65), .B(n17), .Y(n64) );
  INVX2M U259 ( .A(n132), .Y(quotient[7]) );
  OAI22X1M U260 ( .A0(quotient[4]), .A1(n112), .B0(n113), .B1(b[4]), .Y(n114)
         );
  AOI2BB2X2M U261 ( .B0(n111), .B1(n108), .A0N(b[3]), .A1N(n116), .Y(n113) );
  NOR2X2M U262 ( .A(n108), .B(n111), .Y(n116) );
  OAI2BB1X2M U263 ( .A0N(n66), .A1N(n26), .B0(b[6]), .Y(n67) );
  OAI2BB1X2M U264 ( .A0N(n65), .A1N(n62), .B0(n68), .Y(n66) );
  OAI21X2M U265 ( .A0(n62), .A1(n65), .B0(n17), .Y(n68) );
  NOR2X2M U266 ( .A(n18), .B(n39), .Y(n30) );
  OAI22X1M U267 ( .A0(quotient[1]), .A1(n33), .B0(n17), .B1(n34), .Y(n32) );
  OAI22X1M U268 ( .A0(n35), .A1(n18), .B0(b[4]), .B1(n36), .Y(n31) );
  OAI21X1M U269 ( .A0(n41), .A1(n44), .B0(b[3]), .Y(n74) );
  OAI21X4M U270 ( .A0(n58), .A1(n61), .B0(n79), .Y(n44) );
  OAI2BB1X2M U271 ( .A0N(n61), .A1N(n58), .B0(b[2]), .Y(n79) );
  OAI22X4M U272 ( .A0(a[7]), .A1(n21), .B0(a[6]), .B1(n149), .Y(n142) );
  OAI2B2X4M U273 ( .A1N(a[7]), .A0(n140), .B0(n14), .B1(n141), .Y(quotient[5])
         );
  NOR4X1M U274 ( .A(b[4]), .B(b[3]), .C(n15), .D(n141), .Y(n144) );
  OAI2BB1X2M U275 ( .A0N(n137), .A1N(n135), .B0(n145), .Y(n141) );
  OAI2BB1X2M U276 ( .A0N(n18), .A1N(n39), .B0(n40), .Y(n34) );
  CLKXOR2X2M U277 ( .A(n41), .B(n42), .Y(n40) );
  NOR2X1M U278 ( .A(n25), .B(n43), .Y(n42) );
  XNOR2X1M U279 ( .A(b[3]), .B(n44), .Y(n43) );
  NAND3X4M U280 ( .A(n129), .B(n18), .C(n130), .Y(n120) );
  AOI21X2M U281 ( .A0(n131), .A1(n112), .B0(n15), .Y(n130) );
  OAI21X1M U282 ( .A0(n131), .A1(n112), .B0(b[3]), .Y(n129) );
  OAI21X2M U283 ( .A0(n117), .A1(n121), .B0(n133), .Y(n131) );
  OAI2BB1X2M U284 ( .A0N(n121), .A1N(n117), .B0(b[2]), .Y(n133) );
  OAI2B11X1M U285 ( .A1N(n23), .A0(n13), .B0(n25), .C0(n26), .Y(n24) );
  OAI22X2M U286 ( .A0(n27), .A1(n28), .B0(n29), .B1(n16), .Y(n23) );
  AND2X2M U287 ( .A(n28), .B(n27), .Y(n29) );
  NOR4X4M U288 ( .A(n15), .B(b[2]), .C(b[3]), .D(b[4]), .Y(n143) );
  NOR3X4M U289 ( .A(b[6]), .B(b[7]), .C(b[5]), .Y(n115) );
  INVX2M U290 ( .A(b[1]), .Y(n146) );
  CLKXOR2X2M U291 ( .A(n75), .B(n76), .Y(n41) );
  NAND2XLM U292 ( .A(n77), .B(quotient[2]), .Y(n75) );
  XNOR2X1M U293 ( .A(b[2]), .B(n78), .Y(n77) );
  NAND4X4M U294 ( .A(a[7]), .B(n132), .C(n8), .D(n9), .Y(n112) );
  NAND2XLM U295 ( .A(n88), .B(quotient[2]), .Y(n86) );
  XNOR2X1M U296 ( .A(b[3]), .B(n89), .Y(n88) );
  OAI211X4M U297 ( .A0(a[7]), .A1(n149), .B0(n21), .C0(n143), .Y(n132) );
  INVX4M U298 ( .A(b[2]), .Y(n20) );
  INVX2M U299 ( .A(b[7]), .Y(n13) );
  INVX2M U300 ( .A(b[6]), .Y(n16) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107;

  INVX2M U116 ( .A(B[3]), .Y(n14) );
  CLKNAND2X2M U117 ( .A(B[0]), .B(A[6]), .Y(n33) );
  NOR2X4M U118 ( .A(n13), .B(n10), .Y(n76) );
  NOR2X2M U119 ( .A(n14), .B(n11), .Y(n95) );
  NOR2X2M U120 ( .A(n14), .B(n10), .Y(n94) );
  NOR2X2M U121 ( .A(n4), .B(n16), .Y(n84) );
  NAND2X2M U122 ( .A(B[1]), .B(A[2]), .Y(n23) );
  INVX2M U123 ( .A(B[5]), .Y(n12) );
  INVX2M U124 ( .A(n57), .Y(n8) );
  XOR3X2M U125 ( .A(n37), .B(n40), .C(n39), .Y(n34) );
  AOI2BB2X2M U126 ( .B0(n68), .B1(n69), .A0N(n70), .A1N(n71), .Y(n37) );
  NOR2X2M U127 ( .A(n69), .B(n68), .Y(n71) );
  CLKXOR2X2M U128 ( .A(n100), .B(n101), .Y(n103) );
  OAI21X4M U129 ( .A0(n76), .A1(n25), .B0(n57), .Y(n60) );
  XOR3X2M U130 ( .A(n69), .B(n70), .C(n68), .Y(n72) );
  XOR3X2M U131 ( .A(n5), .B(n9), .C(n8), .Y(n49) );
  XOR3X2M U132 ( .A(n81), .B(n84), .C(n82), .Y(n85) );
  INVX2M U133 ( .A(A[0]), .Y(n11) );
  INVX2M U134 ( .A(A[1]), .Y(n10) );
  NAND2X2M U135 ( .A(n100), .B(n94), .Y(n80) );
  NAND2X2M U136 ( .A(n95), .B(n76), .Y(n63) );
  NAND2X2M U137 ( .A(n101), .B(n100), .Y(n96) );
  NAND2X2M U138 ( .A(n76), .B(n25), .Y(n57) );
  AOI21BX2M U139 ( .A0(n81), .A1(n82), .B0N(n83), .Y(n70) );
  OAI21X2M U140 ( .A0(n82), .A1(n81), .B0(n84), .Y(n83) );
  OR2X2M U141 ( .A(n56), .B(n55), .Y(n53) );
  INVX2M U142 ( .A(A[4]), .Y(n3) );
  INVX2M U143 ( .A(A[3]), .Y(n4) );
  INVX2M U144 ( .A(A[2]), .Y(n7) );
  INVX2M U145 ( .A(A[5]), .Y(n2) );
  XNOR3X2M U146 ( .A(n73), .B(n75), .C(n72), .Y(PRODUCT[5]) );
  OAI21X4M U147 ( .A0(n77), .A1(n78), .B0(n79), .Y(n65) );
  AO21XLM U148 ( .A0(n77), .A1(n78), .B0(n80), .Y(n79) );
  XNOR3X2M U149 ( .A(n65), .B(n67), .C(n64), .Y(n68) );
  OAI21X4M U150 ( .A0(n85), .A1(n86), .B0(n87), .Y(n73) );
  OAI2BB1X2M U151 ( .A0N(n86), .A1N(n85), .B0(n88), .Y(n87) );
  OAI21X4M U152 ( .A0(n60), .A1(n61), .B0(n62), .Y(n50) );
  AO21XLM U153 ( .A0(n61), .A1(n60), .B0(n63), .Y(n62) );
  OAI21X4M U154 ( .A0(n64), .A1(n65), .B0(n66), .Y(n56) );
  OAI2BB1X2M U155 ( .A0N(n65), .A1N(n64), .B0(n67), .Y(n66) );
  OAI21X4M U156 ( .A0(n23), .A1(n96), .B0(n97), .Y(n81) );
  AO21XLM U157 ( .A0(n96), .A1(n23), .B0(n98), .Y(n97) );
  OAI2BB2X4M U158 ( .B0(n89), .B1(n90), .A0N(n91), .A1N(n6), .Y(n86) );
  NOR2X2M U159 ( .A(n6), .B(n91), .Y(n89) );
  INVX2M U160 ( .A(n92), .Y(n6) );
  XNOR3X2M U161 ( .A(n54), .B(n56), .C(n55), .Y(n39) );
  XNOR3X2M U162 ( .A(n23), .B(n96), .C(n98), .Y(n91) );
  OAI22X4M U163 ( .A0(n102), .A1(n103), .B0(n104), .B1(n105), .Y(n92) );
  AND2X2M U164 ( .A(n103), .B(n102), .Y(n105) );
  OAI22X4M U165 ( .A0(n72), .A1(n73), .B0(n74), .B1(n75), .Y(n32) );
  AND2X2M U166 ( .A(n73), .B(n72), .Y(n74) );
  XNOR3X2M U167 ( .A(n80), .B(n78), .C(n77), .Y(n82) );
  XOR3X2M U168 ( .A(n50), .B(n52), .C(n49), .Y(n55) );
  NOR2X4M U169 ( .A(n11), .B(n15), .Y(n100) );
  XNOR3X2M U170 ( .A(n63), .B(n61), .C(n60), .Y(n64) );
  NOR2X4M U171 ( .A(n10), .B(n16), .Y(n101) );
  NOR2X4M U172 ( .A(n11), .B(n12), .Y(n25) );
  CLKXOR2X2M U173 ( .A(n35), .B(n36), .Y(n27) );
  NOR2X2M U174 ( .A(n13), .B(n4), .Y(n36) );
  OAI2BB2X1M U175 ( .B0(n37), .B1(n38), .A0N(n39), .A1N(n40), .Y(n35) );
  NOR2X2M U176 ( .A(n40), .B(n39), .Y(n38) );
  INVX2M U177 ( .A(n46), .Y(n9) );
  XOR3XLM U178 ( .A(n41), .B(n42), .C(n43), .Y(n26) );
  CLKXOR2X2M U179 ( .A(n44), .B(n45), .Y(n43) );
  AOI21X2M U180 ( .A0(n49), .A1(n50), .B0(n51), .Y(n42) );
  AOI22X1M U181 ( .A0(n53), .A1(n54), .B0(n55), .B1(n56), .Y(n41) );
  INVX2M U182 ( .A(n47), .Y(n5) );
  AOI2BB1X2M U183 ( .A0N(n49), .A1N(n50), .B0(n52), .Y(n51) );
  XOR3XLM U184 ( .A(n32), .B(n33), .C(n34), .Y(PRODUCT[6]) );
  AND2X2M U185 ( .A(PRODUCT[0]), .B(n101), .Y(n102) );
  NOR2X4M U186 ( .A(n3), .B(n16), .Y(n69) );
  NOR2X4M U187 ( .A(n2), .B(n16), .Y(n40) );
  AOI21X2M U188 ( .A0(n46), .A1(n47), .B0(n48), .Y(n45) );
  AOI21X2M U189 ( .A0(n5), .A1(n9), .B0(n8), .Y(n48) );
  XNOR3X2M U190 ( .A(n85), .B(n88), .C(n86), .Y(PRODUCT[4]) );
  OAI31X2M U191 ( .A0(n12), .A1(n23), .A2(n1), .B0(n24), .Y(n22) );
  OAI22X1M U192 ( .A0(n7), .A1(n12), .B0(n16), .B1(n1), .Y(n24) );
  INVX2M U193 ( .A(A[6]), .Y(n1) );
  NOR2X2M U194 ( .A(n3), .B(n14), .Y(n44) );
  XOR3XLM U195 ( .A(n104), .B(n102), .C(n103), .Y(PRODUCT[2]) );
  XOR3XLM U196 ( .A(n90), .B(n92), .C(n91), .Y(PRODUCT[3]) );
  NOR2X2M U197 ( .A(n2), .B(n15), .Y(n20) );
  CLKXOR2X2M U198 ( .A(n29), .B(n30), .Y(n28) );
  NAND2X2M U199 ( .A(B[7]), .B(A[0]), .Y(n29) );
  AOI2BB2X2M U200 ( .B0(n31), .B1(n32), .A0N(n33), .A1N(n34), .Y(n30) );
  NAND2X2M U201 ( .A(n34), .B(n33), .Y(n31) );
  NAND2X2M U202 ( .A(n63), .B(n93), .Y(n77) );
  AO21XLM U203 ( .A0(A[0]), .A1(B[4]), .B0(n94), .Y(n93) );
  XOR3XLM U204 ( .A(n17), .B(n18), .C(n19), .Y(PRODUCT[7]) );
  NAND2XLM U205 ( .A(B[0]), .B(A[7]), .Y(n19) );
  XOR3XLM U206 ( .A(n20), .B(n21), .C(n22), .Y(n18) );
  XOR3XLM U207 ( .A(n26), .B(n27), .C(n28), .Y(n17) );
  INVX4M U208 ( .A(B[1]), .Y(n16) );
  NAND2X2M U209 ( .A(B[3]), .B(A[2]), .Y(n61) );
  NAND2X2M U210 ( .A(B[2]), .B(A[2]), .Y(n78) );
  CLKINVX2M U211 ( .A(B[2]), .Y(n15) );
  NAND2X1M U212 ( .A(B[4]), .B(A[2]), .Y(n47) );
  CLKINVX2M U213 ( .A(B[4]), .Y(n13) );
  CLKXOR2X2M U214 ( .A(n58), .B(n59), .Y(n46) );
  NAND2X2M U215 ( .A(B[6]), .B(A[0]), .Y(n58) );
  NOR2X2M U216 ( .A(n12), .B(n10), .Y(n59) );
  NAND2X2M U217 ( .A(n80), .B(n99), .Y(n98) );
  AO21XLM U218 ( .A0(B[2]), .A1(A[1]), .B0(n95), .Y(n99) );
  NAND2X1M U219 ( .A(A[3]), .B(B[3]), .Y(n52) );
  NAND2X1M U220 ( .A(A[3]), .B(B[2]), .Y(n67) );
  NOR2BX2M U221 ( .AN(B[0]), .B(n7), .Y(n104) );
  NOR2BX2M U222 ( .AN(B[0]), .B(n11), .Y(PRODUCT[0]) );
  NAND2X1M U223 ( .A(A[3]), .B(B[0]), .Y(n90) );
  NAND2X1M U224 ( .A(A[4]), .B(B[0]), .Y(n88) );
  NAND2X1M U225 ( .A(A[4]), .B(B[2]), .Y(n54) );
  NAND2X1M U226 ( .A(B[0]), .B(A[5]), .Y(n75) );
  NAND3BX2M U227 ( .AN(n25), .B(A[1]), .C(B[6]), .Y(n21) );
  CLKXOR2X2M U228 ( .A(n106), .B(n107), .Y(PRODUCT[1]) );
  NAND2X2M U229 ( .A(A[0]), .B(B[1]), .Y(n107) );
  NAND2XLM U230 ( .A(B[0]), .B(A[1]), .Y(n106) );
endmodule


module ALU ( A, B, ALU_FUN, CLK, RST, Enable, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [7:0] ALU_OUT;
  input CLK, RST, Enable;
  output OUT_VALID;
  wire   n163, n164, n165, n166, n167, n168, n169, n170, n171, N99, N100, N101,
         N102, N103, N104, N105, N106, N107, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N121, N122,
         \U3/U1/Z_0 , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144;
  wire   [7:0] ALU_OUT_Comb;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;
  assign ALU_OUT[7] = n163;
  assign ALU_OUT[6] = n164;
  assign ALU_OUT[5] = n165;
  assign ALU_OUT[4] = n166;
  assign ALU_OUT[3] = n167;
  assign ALU_OUT[2] = n168;
  assign ALU_OUT[1] = n169;
  assign ALU_OUT[0] = n170;
  assign OUT_VALID = n171;

  ALU_DW01_addsub_0 r89 ( .A({A[7], n140, n138, n135, n132, n129, n126, n122}), 
        .B(B), .CI(1'b0), .ADD_SUB(\U3/U1/Z_0 ), .SUM({N106, N105, N104, N103, 
        N102, N101, N100, N99}) );
  ALU_DW_div_uns_0 div_51 ( .a({A[7], n140, n138, n134, n131, n128, n125, n123}), .b(B), .quotient({N122, N121, N120, N119, N118, N117, N116, N115}) );
  ALU_DW02_mult_0 mult_48 ( .A({A[7], n140, n137, n134, n131, n128, n125, n122}), .B(B), .TC(1'b0), .PRODUCT({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, N114, N113, N112, N111, N110, N109, N108, 
        N107}) );
  NOR2BX12M U1 ( .AN(n144), .B(n25), .Y(\U3/U1/Z_0 ) );
  OAI32X4M U77 ( .A0(n110), .A1(n6), .A2(n60), .B0(B[4]), .B1(n5), .Y(n109) );
  DFFRQX2M OUT_VALID_reg ( .D(Enable), .CK(CLK), .RN(RST), .Q(n171) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .CK(CLK), .RN(RST), .Q(n163) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .CK(CLK), .RN(RST), .Q(n164) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .CK(CLK), .RN(RST), .Q(n165) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .CK(CLK), .RN(RST), .Q(n166) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .CK(CLK), .RN(RST), .Q(n167) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .CK(CLK), .RN(RST), .Q(n168) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .CK(CLK), .RN(RST), .Q(n169) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .CK(CLK), .RN(RST), .Q(n170) );
  NAND3X2M U127 ( .A(ALU_FUN[0]), .B(n24), .C(ALU_FUN[3]), .Y(n114) );
  NAND2BX2M U128 ( .AN(ALU_FUN[3]), .B(n120), .Y(n115) );
  NOR2BX8M U129 ( .AN(n117), .B(ALU_FUN[0]), .Y(n41) );
  BUFX4M U130 ( .A(n36), .Y(n118) );
  OAI22X1M U131 ( .A0(n120), .A1(n114), .B0(ALU_FUN[1]), .B1(n115), .Y(n36) );
  BUFX4M U132 ( .A(n38), .Y(n119) );
  OAI22X1M U133 ( .A0(n120), .A1(n114), .B0(n115), .B1(n24), .Y(n38) );
  CLKINVX2M U134 ( .A(B[0]), .Y(n20) );
  CLKBUFX8M U135 ( .A(n39), .Y(n143) );
  CLKBUFX8M U136 ( .A(n37), .Y(n142) );
  NAND4X2M U137 ( .A(ALU_FUN[3]), .B(n25), .C(n24), .D(n23), .Y(n34) );
  NAND4X4M U138 ( .A(ALU_FUN[1]), .B(ALU_FUN[3]), .C(n120), .D(n25), .Y(n49)
         );
  INVX4M U139 ( .A(n124), .Y(n125) );
  INVX4M U140 ( .A(n124), .Y(n126) );
  CLKBUFX6M U141 ( .A(ALU_FUN[2]), .Y(n120) );
  OAI21X2M U142 ( .A0(n95), .A1(n96), .B0(n35), .Y(n91) );
  NOR2BX8M U143 ( .AN(n117), .B(n25), .Y(n40) );
  INVX6M U144 ( .A(n34), .Y(n22) );
  INVX2M U145 ( .A(n116), .Y(n11) );
  AOI221X2M U146 ( .A0(n118), .A1(n123), .B0(n12), .B1(n22), .C0(n142), .Y(
        n116) );
  NOR2X8M U147 ( .A(n114), .B(n23), .Y(n50) );
  INVX2M U148 ( .A(n49), .Y(n21) );
  AO22X1M U149 ( .A0(n142), .A1(n138), .B0(n4), .B1(n143), .Y(n56) );
  INVX2M U150 ( .A(n129), .Y(n8) );
  INVX2M U151 ( .A(n73), .Y(n9) );
  INVX4M U152 ( .A(n132), .Y(n7) );
  INVX4M U153 ( .A(n135), .Y(n5) );
  INVX4M U154 ( .A(n137), .Y(n4) );
  INVX2M U155 ( .A(n141), .Y(n3) );
  INVX2M U156 ( .A(n125), .Y(n10) );
  INVX2M U157 ( .A(n123), .Y(n12) );
  CLKBUFX6M U158 ( .A(n27), .Y(n144) );
  NOR3X2M U159 ( .A(n120), .B(ALU_FUN[3]), .C(ALU_FUN[1]), .Y(n27) );
  INVX4M U160 ( .A(n136), .Y(n138) );
  INVX4M U161 ( .A(n139), .Y(n140) );
  INVX4M U162 ( .A(ALU_FUN[0]), .Y(n25) );
  AOI21X2M U163 ( .A0(n51), .A1(n52), .B0(n26), .Y(ALU_OUT_Comb[5]) );
  AOI221X2M U164 ( .A0(n50), .A1(n141), .B0(N112), .B1(n41), .C0(n56), .Y(n51)
         );
  AOI221X2M U165 ( .A0(N104), .A1(n144), .B0(N120), .B1(n40), .C0(n53), .Y(n52) );
  AOI31X2M U166 ( .A0(n57), .A1(n58), .A2(n59), .B0(n26), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U167 ( .A0(n50), .A1(n138), .B0(N111), .B1(n41), .Y(n57) );
  AOI222X2M U168 ( .A0(n135), .A1(n142), .B0(N119), .B1(n40), .C0(n143), .C1(
        n5), .Y(n58) );
  AOI221X2M U169 ( .A0(n60), .A1(n22), .B0(N103), .B1(n144), .C0(n61), .Y(n59)
         );
  AOI31X2M U170 ( .A0(n77), .A1(n78), .A2(n79), .B0(n26), .Y(ALU_OUT_Comb[1])
         );
  AOI22X1M U171 ( .A0(n129), .A1(n50), .B0(N108), .B1(n41), .Y(n77) );
  AOI221X2M U172 ( .A0(n123), .A1(n21), .B0(N100), .B1(n144), .C0(n80), .Y(n79) );
  AOI222X2M U173 ( .A0(n126), .A1(n142), .B0(N116), .B1(n40), .C0(n143), .C1(
        n10), .Y(n78) );
  AOI31X2M U174 ( .A0(n70), .A1(n71), .A2(n72), .B0(n26), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U175 ( .A0(n132), .A1(n50), .B0(N109), .B1(n41), .Y(n70) );
  AOI222X2M U176 ( .A0(n129), .A1(n142), .B0(N117), .B1(n40), .C0(n143), .C1(
        n8), .Y(n71) );
  AOI221X2M U177 ( .A0(n22), .A1(n73), .B0(N101), .B1(n144), .C0(n74), .Y(n72)
         );
  AOI31X2M U178 ( .A0(n64), .A1(n65), .A2(n66), .B0(n26), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U179 ( .A0(n135), .A1(n50), .B0(N110), .B1(n41), .Y(n64) );
  AOI222X2M U180 ( .A0(n132), .A1(n142), .B0(N118), .B1(n40), .C0(n143), .C1(
        n7), .Y(n65) );
  AOI221X2M U181 ( .A0(n6), .A1(n22), .B0(N102), .B1(n144), .C0(n67), .Y(n66)
         );
  INVX4M U182 ( .A(ALU_FUN[1]), .Y(n24) );
  INVX4M U183 ( .A(n133), .Y(n134) );
  NOR3X4M U184 ( .A(n120), .B(ALU_FUN[3]), .C(n24), .Y(n117) );
  NOR3X2M U185 ( .A(n25), .B(ALU_FUN[1]), .C(n115), .Y(n37) );
  NOR3X2M U186 ( .A(n115), .B(ALU_FUN[0]), .C(n24), .Y(n39) );
  INVX2M U187 ( .A(n120), .Y(n23) );
  AOI2B1X1M U188 ( .A1N(n91), .A0(n93), .B0(ALU_FUN[0]), .Y(n94) );
  NAND4X2M U189 ( .A(ALU_FUN[3]), .B(n120), .C(n90), .D(n91), .Y(n83) );
  NOR2X2M U190 ( .A(ALU_FUN[1]), .B(ALU_FUN[0]), .Y(n90) );
  INVX4M U191 ( .A(n130), .Y(n131) );
  INVX4M U192 ( .A(n127), .Y(n128) );
  XNOR2X4M U193 ( .A(n18), .B(n129), .Y(n73) );
  INVX4M U194 ( .A(n121), .Y(n122) );
  AOI31X2M U195 ( .A0(n126), .A1(n20), .A2(n123), .B0(n19), .Y(n112) );
  INVX6M U196 ( .A(n121), .Y(n123) );
  INVX4M U197 ( .A(n127), .Y(n129) );
  NOR2X4M U198 ( .A(n16), .B(n134), .Y(n60) );
  INVX2M U199 ( .A(n103), .Y(n6) );
  INVX4M U200 ( .A(n130), .Y(n132) );
  INVX4M U201 ( .A(n133), .Y(n135) );
  XNOR2X4M U202 ( .A(n14), .B(n141), .Y(n45) );
  INVX4M U203 ( .A(n136), .Y(n137) );
  INVX4M U204 ( .A(n139), .Y(n141) );
  AOI31X2M U205 ( .A0(n84), .A1(n85), .A2(n86), .B0(n26), .Y(ALU_OUT_Comb[0])
         );
  AOI22X1M U206 ( .A0(n126), .A1(n50), .B0(N107), .B1(n41), .Y(n84) );
  AOI221X2M U207 ( .A0(B[0]), .A1(n11), .B0(N99), .B1(n144), .C0(n87), .Y(n86)
         );
  AOI222X2M U208 ( .A0(n123), .A1(n142), .B0(N115), .B1(n40), .C0(n143), .C1(
        n12), .Y(n85) );
  AOI31X2M U209 ( .A0(n28), .A1(n29), .A2(n30), .B0(n26), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U210 ( .A0(N122), .A1(n40), .B0(n143), .B1(n1), .Y(n29) );
  AOI22X1M U211 ( .A0(n142), .A1(A[7]), .B0(N114), .B1(n41), .Y(n28) );
  AOI221X2M U212 ( .A0(n141), .A1(n21), .B0(N106), .B1(n144), .C0(n31), .Y(n30) );
  INVX2M U213 ( .A(A[5]), .Y(n136) );
  INVX2M U214 ( .A(A[6]), .Y(n139) );
  AOI31X2M U215 ( .A0(n42), .A1(n43), .A2(n44), .B0(n26), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U216 ( .A0(n50), .A1(A[7]), .B0(N113), .B1(n41), .Y(n42) );
  AOI222X2M U217 ( .A0(n142), .A1(n141), .B0(N121), .B1(n40), .C0(n143), .C1(
        n3), .Y(n43) );
  AOI221X2M U218 ( .A0(n22), .A1(n45), .B0(N105), .B1(n144), .C0(n46), .Y(n44)
         );
  OAI222X1M U219 ( .A0(B[3]), .A1(n68), .B0(n69), .B1(n17), .C0(n49), .C1(n8), 
        .Y(n67) );
  AOI21X1M U220 ( .A0(n132), .A1(n118), .B0(n142), .Y(n69) );
  AOI221X2M U221 ( .A0(n132), .A1(n22), .B0(n119), .B1(n7), .C0(n143), .Y(n68)
         );
  OAI222X1M U222 ( .A0(B[4]), .A1(n62), .B0(n63), .B1(n16), .C0(n49), .C1(n7), 
        .Y(n61) );
  AOI21X1M U223 ( .A0(n135), .A1(n118), .B0(n142), .Y(n63) );
  AOI221X2M U224 ( .A0(n135), .A1(n22), .B0(n119), .B1(n5), .C0(n143), .Y(n62)
         );
  OAI222X1M U225 ( .A0(n75), .A1(n18), .B0(B[2]), .B1(n76), .C0(n49), .C1(n10), 
        .Y(n74) );
  AOI21X1M U226 ( .A0(n129), .A1(n118), .B0(n142), .Y(n75) );
  AOI21X1M U227 ( .A0(n119), .A1(n8), .B0(n143), .Y(n76) );
  OAI222X1M U228 ( .A0(n54), .A1(n15), .B0(B[5]), .B1(n55), .C0(n49), .C1(n5), 
        .Y(n53) );
  AOI221X2M U229 ( .A0(n22), .A1(n4), .B0(n137), .B1(n118), .C0(n142), .Y(n54)
         );
  AOI221X2M U230 ( .A0(n137), .A1(n22), .B0(n119), .B1(n4), .C0(n143), .Y(n55)
         );
  OAI222X1M U231 ( .A0(n47), .A1(n14), .B0(B[6]), .B1(n48), .C0(n49), .C1(n4), 
        .Y(n46) );
  AOI21X1M U232 ( .A0(n141), .A1(n118), .B0(n142), .Y(n47) );
  AOI21X1M U233 ( .A0(n119), .A1(n3), .B0(n143), .Y(n48) );
  OAI222X1M U234 ( .A0(B[7]), .A1(n32), .B0(n33), .B1(n13), .C0(n34), .C1(n35), 
        .Y(n31) );
  INVX2M U235 ( .A(B[7]), .Y(n13) );
  AOI21X1M U236 ( .A0(A[7]), .A1(n118), .B0(n142), .Y(n33) );
  AOI221X2M U237 ( .A0(n22), .A1(A[7]), .B0(n119), .B1(n1), .C0(n143), .Y(n32)
         );
  OAI221X1M U238 ( .A0(B[1]), .A1(n81), .B0(n82), .B1(n19), .C0(n83), .Y(n80)
         );
  AOI221X2M U239 ( .A0(n126), .A1(n22), .B0(n119), .B1(n10), .C0(n143), .Y(n81) );
  AOI221X2M U240 ( .A0(n22), .A1(n10), .B0(n126), .B1(n118), .C0(n142), .Y(n82) );
  OAI211X1M U241 ( .A0(B[0]), .A1(n88), .B0(n89), .C0(n83), .Y(n87) );
  NAND3X2M U242 ( .A(ALU_FUN[1]), .B(ALU_FUN[3]), .C(n92), .Y(n89) );
  AOI221X2M U243 ( .A0(n123), .A1(n22), .B0(n119), .B1(n12), .C0(n143), .Y(n88) );
  AOI211X2M U244 ( .A0(ALU_FUN[0]), .A1(n93), .B0(n120), .C0(n94), .Y(n92) );
  INVX2M U245 ( .A(A[4]), .Y(n133) );
  INVX4M U246 ( .A(Enable), .Y(n26) );
  INVX2M U247 ( .A(A[3]), .Y(n130) );
  INVX2M U248 ( .A(A[2]), .Y(n127) );
  INVX2M U249 ( .A(A[1]), .Y(n124) );
  AOI21X2M U250 ( .A0(n132), .A1(n17), .B0(n111), .Y(n110) );
  OAI32X2M U251 ( .A0(n73), .A1(n112), .A2(n113), .B0(B[2]), .B1(n8), .Y(n111)
         );
  AOI21X2M U252 ( .A0(n123), .A1(n20), .B0(n126), .Y(n113) );
  CLKINVX2M U253 ( .A(B[2]), .Y(n18) );
  INVX2M U254 ( .A(A[0]), .Y(n121) );
  NAND2X2M U255 ( .A(n106), .B(n35), .Y(n93) );
  OAI222X1M U256 ( .A0(B[6]), .A1(n3), .B0(n107), .B1(n45), .C0(B[7]), .C1(n1), 
        .Y(n106) );
  AOI22X1M U257 ( .A0(n108), .A1(n15), .B0(n137), .B1(n109), .Y(n107) );
  OR2X2M U258 ( .A(n109), .B(n137), .Y(n108) );
  NOR2X2M U259 ( .A(B[7]), .B(n1), .Y(n96) );
  AOI22X1M U260 ( .A0(n2), .A1(n97), .B0(B[6]), .B1(n3), .Y(n95) );
  INVX2M U261 ( .A(n45), .Y(n2) );
  OAI22X1M U262 ( .A0(n138), .A1(n98), .B0(n99), .B1(n15), .Y(n97) );
  NOR2BX2M U263 ( .AN(n98), .B(n4), .Y(n99) );
  NOR2BX2M U264 ( .AN(n100), .B(n60), .Y(n98) );
  OAI221X1M U265 ( .A0(B[3]), .A1(n7), .B0(B[4]), .B1(n5), .C0(n101), .Y(n100)
         );
  OAI211X2M U266 ( .A0(n129), .A1(n18), .B0(n102), .C0(n103), .Y(n101) );
  OAI211X2M U267 ( .A0(n104), .A1(B[1]), .B0(n105), .C0(n9), .Y(n102) );
  OAI21X2M U268 ( .A0(n123), .A1(n20), .B0(n126), .Y(n105) );
  NOR3X2M U269 ( .A(n20), .B(n125), .C(n122), .Y(n104) );
  INVX2M U270 ( .A(B[1]), .Y(n19) );
  NAND2X1M U271 ( .A(B[3]), .B(n7), .Y(n103) );
  CLKINVX1M U272 ( .A(B[3]), .Y(n17) );
  CLKINVX1M U273 ( .A(B[4]), .Y(n16) );
  INVX4M U274 ( .A(A[7]), .Y(n1) );
  NAND2X2M U275 ( .A(B[7]), .B(n1), .Y(n35) );
  INVX2M U276 ( .A(B[5]), .Y(n15) );
  INVX2M U277 ( .A(B[6]), .Y(n14) );
endmodule


module ClkDiv_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;
  wire   n1, n3, n4, n5, n6, n7;

  NOR3BX4M U4 ( .AN(A[4]), .B(n1), .C(n5), .Y(n4) );
  NAND3X2M U14 ( .A(A[1]), .B(A[0]), .C(A[2]), .Y(n5) );
  CLKXOR2X2M U15 ( .A(A[6]), .B(n3), .Y(SUM[6]) );
  AND2X2M U16 ( .A(n4), .B(A[5]), .Y(n3) );
  XNOR2X2M U17 ( .A(A[2]), .B(n7), .Y(SUM[2]) );
  NAND2X2M U18 ( .A(A[1]), .B(A[0]), .Y(n7) );
  CLKXOR2X2M U19 ( .A(A[4]), .B(n6), .Y(SUM[4]) );
  NOR2X2M U20 ( .A(n5), .B(n1), .Y(n6) );
  XNOR2X2M U21 ( .A(A[3]), .B(n5), .Y(SUM[3]) );
  CLKXOR2X2M U22 ( .A(A[5]), .B(n4), .Y(SUM[5]) );
  XNOR2X2M U23 ( .A(A[1]), .B(SUM[0]), .Y(SUM[1]) );
  INVX2M U24 ( .A(A[3]), .Y(n1) );
  INVX2M U25 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   n56, N16, N17, N18, N19, N20, N21, N22, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n2, n3, n59, n60, n61, n10, n11, n12, n13, n14, n15,
         n16, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n57, n58;
  wire   [6:0] count;
  assign o_div_clk = n56;

  ClkDiv_DW01_inc_0 add_47 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
  AO22X8M U1 ( .A0(n11), .A1(n58), .B0(i_ref_clk), .B1(n15), .Y(n56) );
  NOR3X12M U9 ( .A(n26), .B(n27), .C(n15), .Y(n16) );
  OAI2BB1X4M U15 ( .A0N(n12), .A1N(n31), .B0(i_clk_en), .Y(n15) );
  DFFRX1M div_clk_reg ( .D(n18), .CK(i_ref_clk), .RN(i_rst), .Q(n58) );
  DFFRX1M \count_reg[5]  ( .D(n20), .CK(i_ref_clk), .RN(i_rst), .Q(count[5]), 
        .QN(n60) );
  DFFRX1M \count_reg[3]  ( .D(n22), .CK(i_ref_clk), .RN(i_rst), .Q(count[3]), 
        .QN(n61) );
  DFFRQX4M \count_reg[1]  ( .D(n24), .CK(i_ref_clk), .RN(i_rst), .Q(count[1])
         );
  DFFRX2M \count_reg[4]  ( .D(n21), .CK(i_ref_clk), .RN(i_rst), .Q(count[4]), 
        .QN(n3) );
  DFFRX2M \count_reg[2]  ( .D(n23), .CK(i_ref_clk), .RN(i_rst), .Q(count[2]), 
        .QN(n2) );
  DFFRX2M \count_reg[6]  ( .D(n19), .CK(i_ref_clk), .RN(i_rst), .Q(count[6]), 
        .QN(n59) );
  DFFRQX4M \count_reg[0]  ( .D(n25), .CK(i_ref_clk), .RN(i_rst), .Q(count[0])
         );
  DFFSX2M odd_edge_tog_reg ( .D(n17), .CK(i_ref_clk), .SN(i_rst), .QN(n10) );
  NOR2X2M U49 ( .A(n48), .B(i_div_ratio[4]), .Y(n54) );
  NOR2X2M U50 ( .A(n55), .B(i_div_ratio[6]), .Y(n31) );
  NOR2X2M U51 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n52) );
  INVX4M U52 ( .A(n15), .Y(n11) );
  CLKXOR2X2M U53 ( .A(n10), .B(n30), .Y(n17) );
  NAND2X2M U54 ( .A(n27), .B(n11), .Y(n30) );
  NAND2X2M U55 ( .A(n52), .B(n14), .Y(n48) );
  NAND2X2M U56 ( .A(n54), .B(n13), .Y(n55) );
  CLKXOR2X2M U57 ( .A(n48), .B(n41), .Y(n47) );
  OAI2BB2X1M U58 ( .B0(n59), .B1(n11), .A0N(N22), .A1N(n16), .Y(n19) );
  OAI2BB2X1M U59 ( .B0(n2), .B1(n11), .A0N(N18), .A1N(n16), .Y(n23) );
  OAI2BB2X1M U60 ( .B0(n3), .B1(n11), .A0N(N20), .A1N(n16), .Y(n21) );
  OAI2BB2X1M U61 ( .B0(n61), .B1(n11), .A0N(N19), .A1N(n16), .Y(n22) );
  OAI2BB2X1M U62 ( .B0(n60), .B1(n11), .A0N(N21), .A1N(n16), .Y(n20) );
  XNOR2X2M U63 ( .A(n58), .B(n28), .Y(n18) );
  OAI21X2M U64 ( .A0(n27), .A1(n26), .B0(n11), .Y(n28) );
  AO22XLM U65 ( .A0(n15), .A1(count[1]), .B0(N17), .B1(n16), .Y(n24) );
  AO22XLM U66 ( .A0(n15), .A1(count[0]), .B0(N16), .B1(n16), .Y(n25) );
  CLKXOR2X2M U67 ( .A(n59), .B(n57), .Y(n43) );
  NOR2X2M U68 ( .A(n31), .B(n12), .Y(n57) );
  XNOR2X2M U69 ( .A(n3), .B(n53), .Y(n49) );
  OAI21X2M U70 ( .A0(n54), .A1(n13), .B0(n55), .Y(n53) );
  NOR2X4M U71 ( .A(n29), .B(i_div_ratio[0]), .Y(n26) );
  NAND4X2M U72 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n29) );
  AOI211X2M U73 ( .A0(count[0]), .A1(i_div_ratio[1]), .B0(n46), .C0(n47), .Y(
        n45) );
  XNOR2X2M U74 ( .A(n55), .B(n40), .Y(n42) );
  NOR2X2M U75 ( .A(n49), .B(n50), .Y(n44) );
  INVX2M U76 ( .A(i_div_ratio[3]), .Y(n14) );
  AND2X2M U77 ( .A(i_div_ratio[0]), .B(n32), .Y(n27) );
  OAI22X1M U78 ( .A0(n29), .A1(n10), .B0(n33), .B1(n34), .Y(n32) );
  NAND4X2M U79 ( .A(n39), .B(n40), .C(n41), .D(n10), .Y(n33) );
  NAND4X2M U80 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n34) );
  XNOR2X4M U81 ( .A(count[1]), .B(i_div_ratio[2]), .Y(n36) );
  CLKXOR2X2M U82 ( .A(i_div_ratio[6]), .B(n60), .Y(n40) );
  CLKXOR2X2M U83 ( .A(i_div_ratio[4]), .B(n61), .Y(n41) );
  CLKXOR2X2M U84 ( .A(n59), .B(i_div_ratio[7]), .Y(n39) );
  CLKXOR2X2M U85 ( .A(n3), .B(i_div_ratio[5]), .Y(n38) );
  CLKXOR2X2M U86 ( .A(n2), .B(i_div_ratio[3]), .Y(n37) );
  OAI2B2X1M U87 ( .A1N(n36), .A0(i_div_ratio[1]), .B0(count[0]), .B1(n36), .Y(
        n46) );
  XNOR2X2M U88 ( .A(count[0]), .B(i_div_ratio[1]), .Y(n35) );
  XNOR2X2M U89 ( .A(n2), .B(n51), .Y(n50) );
  OAI21X2M U90 ( .A0(n52), .A1(n14), .B0(n48), .Y(n51) );
  INVX2M U91 ( .A(i_div_ratio[5]), .Y(n13) );
  INVX2M U92 ( .A(i_div_ratio[7]), .Y(n12) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;
  wire   n4, n3;
  assign GATED_CLK = n4;

  TLATNX2M Latch_Out_reg ( .D(CLK_EN), .GN(CLK), .QN(n3) );
  NOR2BX4M U2 ( .AN(CLK), .B(n3), .Y(n4) );
endmodule


module System_Top ( CLKDIV_EN, CLKG_EN, CLK, RST, ALU_FUN, ALU_Enable, WrEn, 
        RdEn, Address, WrData, RdData, ALU_VLD, ALU_OUT );
  input [3:0] ALU_FUN;
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] ALU_OUT;
  input CLKDIV_EN, CLKG_EN, CLK, RST, ALU_Enable, WrEn, RdEn;
  output ALU_VLD;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n19, REG_CLK, ALU_CLK, n1, n3,
         n5, n7, n9, n11, n13, n15, n17, n28, n29, n30;
  wire   [7:0] ALU_A;
  wire   [7:0] ALU_B;
  wire   [7:0] CLKDIV_Config;

  RegFile U0_RegFile ( .CLK(REG_CLK), .RST(RST), .WrEn(WrEn), .RdEn(RdEn), 
        .Address(Address), .WrData(WrData), .RdData(RdData), .REG0(ALU_A), 
        .REG1(ALU_B), .REG2(CLKDIV_Config) );
  ALU U0_ALU ( .A(ALU_A), .B(ALU_B), .ALU_FUN({n30, ALU_FUN[2], n29, n28}), 
        .CLK(ALU_CLK), .RST(RST), .Enable(ALU_Enable), .ALU_OUT({n20, n21, n22, 
        n23, n24, n25, n26, n27}), .OUT_VALID(n19) );
  ClkDiv U0_ClkDiv ( .i_ref_clk(CLK), .i_rst(RST), .i_clk_en(CLKDIV_EN), 
        .i_div_ratio(CLKDIV_Config), .o_div_clk(REG_CLK) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(CLKG_EN), .CLK(CLK), .GATED_CLK(ALU_CLK) );
  BUFX4M U1 ( .A(ALU_FUN[3]), .Y(n30) );
  BUFX4M U2 ( .A(ALU_FUN[1]), .Y(n29) );
  BUFX4M U3 ( .A(ALU_FUN[0]), .Y(n28) );
  CLKINVX1M U4 ( .A(n27), .Y(n1) );
  CLKINVX40M U5 ( .A(n1), .Y(ALU_OUT[0]) );
  CLKINVX1M U6 ( .A(n26), .Y(n3) );
  CLKINVX40M U7 ( .A(n3), .Y(ALU_OUT[1]) );
  CLKINVX1M U8 ( .A(n25), .Y(n5) );
  CLKINVX40M U9 ( .A(n5), .Y(ALU_OUT[2]) );
  CLKINVX1M U10 ( .A(n24), .Y(n7) );
  CLKINVX40M U11 ( .A(n7), .Y(ALU_OUT[3]) );
  CLKINVX1M U12 ( .A(n23), .Y(n9) );
  CLKINVX40M U13 ( .A(n9), .Y(ALU_OUT[4]) );
  CLKINVX1M U14 ( .A(n22), .Y(n11) );
  CLKINVX40M U15 ( .A(n11), .Y(ALU_OUT[5]) );
  CLKINVX1M U16 ( .A(n21), .Y(n13) );
  CLKINVX40M U17 ( .A(n13), .Y(ALU_OUT[6]) );
  CLKINVX1M U18 ( .A(n20), .Y(n15) );
  CLKINVX40M U19 ( .A(n15), .Y(ALU_OUT[7]) );
  CLKINVX1M U20 ( .A(n19), .Y(n17) );
  CLKINVX40M U21 ( .A(n17), .Y(ALU_VLD) );
endmodule

