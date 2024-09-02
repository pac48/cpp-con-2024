#include "fast_kinematics.hpp"

namespace fast_fk::internal {
    // sin(t) cos(t)  px py pz R11, R12, R13...
    constexpr int data_size = 2 + 3 + 9+2; // 16

    void forward_kinematics_internal(float *input_data, std::size_t /*size*/) {

        // row major
        constexpr std::array<float, 6* 9> R_all = { -1.0, -0.0, 0.0,
                                                    0.0, -1.0, 0.0,
                                                    0.0, 0.0, 1.0,
                                                    0.9999999999920636, -0.0, 0.0,
                                                    -0.0, -0.0007013484622411433, 0.9999997540472005,
                                                    0.0, -0.999999754055137, -0.0007013484622467095,
                                                    0.9999993163649181, 0.0, -0.001169289425224364,
                                                    -0.0, 0.9999994508798468, 0.0010479601216713834,
                                                    0.001169294705420077, -0.00104795423012248, 0.9999987672701519,
                                                    0.9999999072555382, -1.0253697707014652e-05, 0.00043056216350321623,
                                                    0.0, 0.9999720394582239, 0.0074779845070412285,
                                                    -0.0004306268017444494, -0.007477980785065483, 0.9999719467884766,
                                                    0.9999999999999949, -0.0, -0.0,
                                                    0.0, 0.001812660647159262, 0.9999983571293345,
                                                    0.0, -0.9999983571293396, 0.0018126606471592713,
                                                    0.9999999999999998, 0.0, -0.0,
                                                    -0.0, 0.0011436177325240319, -0.9999993460690269,
                                                    -0.0, 0.9999993460690271, 0.001143617732524032,
        };

        constexpr std::array<float, 6* 3> offset_all = { 0.0, 0.0, 0.1625702965797758,
                                                         0.000182214465989093, 0.0, 0.0,
                                                         -0.4249817627044961, 0.0, 0.0,
                                                         -0.3921666446509172, -0.0009975307642066673, 0.1333919956383524,
                                                         0.0, -0.09959821611958637, 0.0001805380634879481,
                                                         7.603964784130673e-05, 0.09950302422228456, 0.0001137934973534554,
        };

        float tmp1;
        float tmp2;
        float tmp3;


        {
            constexpr std::size_t ind = 0;

            // R_fixed is the rotation from joint_i+1 in frame joint_i (row major)
            const float &R11_fixed = R_all[ind * 9 + 0];
            const float &R21_fixed = R_all[ind * 9 + 1];
            const float &R31_fixed = R_all[ind * 9 + 2];
            const float &R12_fixed = R_all[ind * 9 + 3];
            const float &R22_fixed = R_all[ind * 9 + 4];
            const float &R32_fixed = R_all[ind * 9 + 5];
            const float &R13_fixed = R_all[ind * 9 + 6];
            const float &R23_fixed = R_all[ind * 9 + 7];
            const float &R33_fixed = R_all[ind * 9 + 8];

            // offset is the offset of joint_i+1 in frame joint_i
            const float &offset_x = offset_all[ind * 3 + 0];
            const float &offset_y = offset_all[ind * 3 + 1];
            const float &offset_z = offset_all[ind * 3 + 2];

            // R is the rotation from joint_i+1 in the base frame (row major)
            float &R11 = input_data[ind * data_size + 5];
            float &R12 = input_data[ind * data_size + 6];
            float &R13 = input_data[ind * data_size + 7];
            float &R21 = input_data[ind * data_size + 8];
            float &R22 = input_data[ind * data_size + 9];
            float &R23 = input_data[ind * data_size + 10];
            float &R31 = input_data[ind * data_size + 11];
            float &R32 = input_data[ind * data_size + 12];
            float &R33 = input_data[ind * data_size + 13];


            const float &sin_t = input_data[ind * data_size + 0];
            const float &cos_t = input_data[ind * data_size + 1];

            // apply revolute rotation to R_fixed and store in joint to base rotation R
            R11 = R11_fixed * cos_t + R12_fixed * sin_t;
            R12 = -R11_fixed * sin_t + R12_fixed * cos_t;
            R13 = R13_fixed;
            R21 = R21_fixed * cos_t + R22_fixed * sin_t;
            R22 = -R21_fixed * sin_t + R22_fixed * cos_t;
            R23 = R23_fixed;
            R31 = R31_fixed * cos_t + R32_fixed * sin_t;
            R32 = -R31_fixed * sin_t + R32_fixed * cos_t;
            R33 = R33_fixed;

            // rotate offset to be in base frame
            input_data[ind * data_size + 2] = offset_x;
            input_data[ind * data_size + 3] = offset_y;
            input_data[ind * data_size + 4] = offset_z;




        }

        {
            constexpr std::size_t ind = 1;

            // R_fixed is the rotation from joint_i+1 in frame joint_i (row major)
            const float &R11_fixed = R_all[ind * 9 + 0];
            const float &R21_fixed = R_all[ind * 9 + 1];
            const float &R31_fixed = R_all[ind * 9 + 2];
            const float &R12_fixed = R_all[ind * 9 + 3];
            const float &R22_fixed = R_all[ind * 9 + 4];
            const float &R32_fixed = R_all[ind * 9 + 5];
            const float &R13_fixed = R_all[ind * 9 + 6];
            const float &R23_fixed = R_all[ind * 9 + 7];
            const float &R33_fixed = R_all[ind * 9 + 8];

            // offset is the offset of joint_i+1 in frame joint_i
            const float &offset_x = offset_all[ind * 3 + 0];
            const float &offset_y = offset_all[ind * 3 + 1];
            const float &offset_z = offset_all[ind * 3 + 2];

            // R is the rotation from joint_i+1 in the base frame (row major)
            float &R11 = input_data[ind * data_size + 5];
            float &R12 = input_data[ind * data_size + 6];
            float &R13 = input_data[ind * data_size + 7];
            float &R21 = input_data[ind * data_size + 8];
            float &R22 = input_data[ind * data_size + 9];
            float &R23 = input_data[ind * data_size + 10];
            float &R31 = input_data[ind * data_size + 11];
            float &R32 = input_data[ind * data_size + 12];
            float &R33 = input_data[ind * data_size + 13];


            const float &sin_t = input_data[ind * data_size + 0];
            const float &cos_t = input_data[ind * data_size + 1];

            // R_old is the rotation from joint_i in base frame (column major)
            float &R11_old = input_data[(ind - 1) * data_size + 5];
            float &R12_old = input_data[(ind - 1) * data_size + 6];
            float &R13_old = input_data[(ind - 1) * data_size + 7];
            float &R21_old = input_data[(ind - 1) * data_size + 8];
            float &R22_old = input_data[(ind - 1) * data_size + 9];
            float &R23_old = input_data[(ind - 1) * data_size + 10];
            float &R31_old = input_data[(ind - 1) * data_size + 11];
            float &R32_old = input_data[(ind - 1) * data_size + 12];
            float &R33_old = input_data[(ind - 1) * data_size + 13];

            // R_tmp is the rotation from joint_i+1 in frame joint_i after rotation applied (column major)
            float &R11_tmp = input_data[ind * data_size + 5];
            float &R12_tmp = input_data[ind * data_size + 6];
            float &R13_tmp = input_data[ind * data_size + 7];
            float &R21_tmp = input_data[ind * data_size + 8];
            float &R22_tmp = input_data[ind * data_size + 9];
            float &R23_tmp = input_data[ind * data_size + 10];
            float &R31_tmp = input_data[ind * data_size + 11];
            float &R32_tmp = input_data[ind * data_size + 12];
            float &R33_tmp = input_data[ind * data_size + 13];

            // apply revolute rotation to R11_fixed and store in R11_tmp
            R11_tmp = R11_fixed * cos_t + R12_fixed * sin_t;
            R12_tmp = -R11_fixed * sin_t + R12_fixed * cos_t;
            R13_tmp = R13_fixed;
            R21_tmp = R21_fixed * cos_t + R22_fixed * sin_t;
            R22_tmp = -R21_fixed * sin_t + R22_fixed * cos_t;
            R23_tmp = R23_fixed;
            R31_tmp = R31_fixed * cos_t + R32_fixed * sin_t;
            R32_tmp = -R31_fixed * sin_t + R32_fixed * cos_t;
            R33_tmp = R33_fixed;

            // apply R11_old rotation R11_tmp, to make it in base frame
            tmp1 = R11_old * R11_tmp + R12_old * R21_tmp + R13_old * R31_tmp;
            tmp2 = R21_old * R11_tmp + R22_old * R21_tmp + R23_old * R31_tmp;
            tmp3 = R31_old * R11_tmp + R32_old * R21_tmp + R33_old * R31_tmp;
            R11 = tmp1;
            R21 = tmp2;
            R31 = tmp3;
            tmp1 = R11_old * R12_tmp + R12_old * R22_tmp + R13_old * R32_tmp;
            tmp2 = R21_old * R12_tmp + R22_old * R22_tmp + R23_old * R32_tmp;
            tmp3 = R31_old * R12_tmp + R32_old * R22_tmp + R33_old * R32_tmp;
            R12 = tmp1;
            R22 = tmp2;
            R32 = tmp3;
            tmp1 = R11_old * R13_tmp + R12_old * R23_tmp + R13_old * R33_tmp;
            tmp2 = R21_old * R13_tmp + R22_old * R23_tmp + R23_old * R33_tmp;
            tmp3 = R31_old * R13_tmp + R32_old * R23_tmp + R33_old * R33_tmp;
            R13 = tmp1;
            R23 = tmp2;
            R33 = tmp3;

            // p_old is the position of joint_i in base frame
            const float &px_old = input_data[(ind - 1) * data_size + 2];
            const float &py_old = input_data[(ind - 1) * data_size + 3];
            const float &pz_old = input_data[(ind - 1) * data_size + 4];

            // rotate offset to be in base frame and add p_old
            tmp1 = R11_old * offset_x + R12_old * offset_y + R13_old * offset_z + px_old;
            tmp2 = R21_old * offset_x + R22_old * offset_y + R23_old * offset_z + py_old;
            tmp3 = R31_old * offset_x + R32_old * offset_y + R33_old * offset_z + pz_old;
            input_data[ind * data_size + 2] = tmp1;
            input_data[ind * data_size + 3] = tmp2;
            input_data[ind * data_size + 4] = tmp3;



        }

        {
            constexpr std::size_t ind = 2;

            // R_fixed is the rotation from joint_i+1 in frame joint_i (row major)
            const float &R11_fixed = R_all[ind * 9 + 0];
            const float &R21_fixed = R_all[ind * 9 + 1];
            const float &R31_fixed = R_all[ind * 9 + 2];
            const float &R12_fixed = R_all[ind * 9 + 3];
            const float &R22_fixed = R_all[ind * 9 + 4];
            const float &R32_fixed = R_all[ind * 9 + 5];
            const float &R13_fixed = R_all[ind * 9 + 6];
            const float &R23_fixed = R_all[ind * 9 + 7];
            const float &R33_fixed = R_all[ind * 9 + 8];

            // offset is the offset of joint_i+1 in frame joint_i
            const float &offset_x = offset_all[ind * 3 + 0];
            const float &offset_y = offset_all[ind * 3 + 1];
            const float &offset_z = offset_all[ind * 3 + 2];

            // R is the rotation from joint_i+1 in the base frame (row major)
            float &R11 = input_data[ind * data_size + 5];
            float &R12 = input_data[ind * data_size + 6];
            float &R13 = input_data[ind * data_size + 7];
            float &R21 = input_data[ind * data_size + 8];
            float &R22 = input_data[ind * data_size + 9];
            float &R23 = input_data[ind * data_size + 10];
            float &R31 = input_data[ind * data_size + 11];
            float &R32 = input_data[ind * data_size + 12];
            float &R33 = input_data[ind * data_size + 13];


            const float &sin_t = input_data[ind * data_size + 0];
            const float &cos_t = input_data[ind * data_size + 1];

            // R_old is the rotation from joint_i in base frame (column major)
            float &R11_old = input_data[(ind - 1) * data_size + 5];
            float &R12_old = input_data[(ind - 1) * data_size + 6];
            float &R13_old = input_data[(ind - 1) * data_size + 7];
            float &R21_old = input_data[(ind - 1) * data_size + 8];
            float &R22_old = input_data[(ind - 1) * data_size + 9];
            float &R23_old = input_data[(ind - 1) * data_size + 10];
            float &R31_old = input_data[(ind - 1) * data_size + 11];
            float &R32_old = input_data[(ind - 1) * data_size + 12];
            float &R33_old = input_data[(ind - 1) * data_size + 13];

            // R_tmp is the rotation from joint_i+1 in frame joint_i after rotation applied (column major)
            float &R11_tmp = input_data[ind * data_size + 5];
            float &R12_tmp = input_data[ind * data_size + 6];
            float &R13_tmp = input_data[ind * data_size + 7];
            float &R21_tmp = input_data[ind * data_size + 8];
            float &R22_tmp = input_data[ind * data_size + 9];
            float &R23_tmp = input_data[ind * data_size + 10];
            float &R31_tmp = input_data[ind * data_size + 11];
            float &R32_tmp = input_data[ind * data_size + 12];
            float &R33_tmp = input_data[ind * data_size + 13];

            // apply revolute rotation to R11_fixed and store in R11_tmp
            R11_tmp = R11_fixed * cos_t + R12_fixed * sin_t;
            R12_tmp = -R11_fixed * sin_t + R12_fixed * cos_t;
            R13_tmp = R13_fixed;
            R21_tmp = R21_fixed * cos_t + R22_fixed * sin_t;
            R22_tmp = -R21_fixed * sin_t + R22_fixed * cos_t;
            R23_tmp = R23_fixed;
            R31_tmp = R31_fixed * cos_t + R32_fixed * sin_t;
            R32_tmp = -R31_fixed * sin_t + R32_fixed * cos_t;
            R33_tmp = R33_fixed;

            // apply R11_old rotation R11_tmp, to make it in base frame
            tmp1 = R11_old * R11_tmp + R12_old * R21_tmp + R13_old * R31_tmp;
            tmp2 = R21_old * R11_tmp + R22_old * R21_tmp + R23_old * R31_tmp;
            tmp3 = R31_old * R11_tmp + R32_old * R21_tmp + R33_old * R31_tmp;
            R11 = tmp1;
            R21 = tmp2;
            R31 = tmp3;
            tmp1 = R11_old * R12_tmp + R12_old * R22_tmp + R13_old * R32_tmp;
            tmp2 = R21_old * R12_tmp + R22_old * R22_tmp + R23_old * R32_tmp;
            tmp3 = R31_old * R12_tmp + R32_old * R22_tmp + R33_old * R32_tmp;
            R12 = tmp1;
            R22 = tmp2;
            R32 = tmp3;
            tmp1 = R11_old * R13_tmp + R12_old * R23_tmp + R13_old * R33_tmp;
            tmp2 = R21_old * R13_tmp + R22_old * R23_tmp + R23_old * R33_tmp;
            tmp3 = R31_old * R13_tmp + R32_old * R23_tmp + R33_old * R33_tmp;
            R13 = tmp1;
            R23 = tmp2;
            R33 = tmp3;

            // p_old is the position of joint_i in base frame
            const float &px_old = input_data[(ind - 1) * data_size + 2];
            const float &py_old = input_data[(ind - 1) * data_size + 3];
            const float &pz_old = input_data[(ind - 1) * data_size + 4];

            // rotate offset to be in base frame and add p_old
            tmp1 = R11_old * offset_x + R12_old * offset_y + R13_old * offset_z + px_old;
            tmp2 = R21_old * offset_x + R22_old * offset_y + R23_old * offset_z + py_old;
            tmp3 = R31_old * offset_x + R32_old * offset_y + R33_old * offset_z + pz_old;
            input_data[ind * data_size + 2] = tmp1;
            input_data[ind * data_size + 3] = tmp2;
            input_data[ind * data_size + 4] = tmp3;



        }

        {
            constexpr std::size_t ind = 3;

            // R_fixed is the rotation from joint_i+1 in frame joint_i (row major)
            const float &R11_fixed = R_all[ind * 9 + 0];
            const float &R21_fixed = R_all[ind * 9 + 1];
            const float &R31_fixed = R_all[ind * 9 + 2];
            const float &R12_fixed = R_all[ind * 9 + 3];
            const float &R22_fixed = R_all[ind * 9 + 4];
            const float &R32_fixed = R_all[ind * 9 + 5];
            const float &R13_fixed = R_all[ind * 9 + 6];
            const float &R23_fixed = R_all[ind * 9 + 7];
            const float &R33_fixed = R_all[ind * 9 + 8];

            // offset is the offset of joint_i+1 in frame joint_i
            const float &offset_x = offset_all[ind * 3 + 0];
            const float &offset_y = offset_all[ind * 3 + 1];
            const float &offset_z = offset_all[ind * 3 + 2];

            // R is the rotation from joint_i+1 in the base frame (row major)
            float &R11 = input_data[ind * data_size + 5];
            float &R12 = input_data[ind * data_size + 6];
            float &R13 = input_data[ind * data_size + 7];
            float &R21 = input_data[ind * data_size + 8];
            float &R22 = input_data[ind * data_size + 9];
            float &R23 = input_data[ind * data_size + 10];
            float &R31 = input_data[ind * data_size + 11];
            float &R32 = input_data[ind * data_size + 12];
            float &R33 = input_data[ind * data_size + 13];


            const float &sin_t = input_data[ind * data_size + 0];
            const float &cos_t = input_data[ind * data_size + 1];

            // R_old is the rotation from joint_i in base frame (column major)
            float &R11_old = input_data[(ind - 1) * data_size + 5];
            float &R12_old = input_data[(ind - 1) * data_size + 6];
            float &R13_old = input_data[(ind - 1) * data_size + 7];
            float &R21_old = input_data[(ind - 1) * data_size + 8];
            float &R22_old = input_data[(ind - 1) * data_size + 9];
            float &R23_old = input_data[(ind - 1) * data_size + 10];
            float &R31_old = input_data[(ind - 1) * data_size + 11];
            float &R32_old = input_data[(ind - 1) * data_size + 12];
            float &R33_old = input_data[(ind - 1) * data_size + 13];

            // R_tmp is the rotation from joint_i+1 in frame joint_i after rotation applied (column major)
            float &R11_tmp = input_data[ind * data_size + 5];
            float &R12_tmp = input_data[ind * data_size + 6];
            float &R13_tmp = input_data[ind * data_size + 7];
            float &R21_tmp = input_data[ind * data_size + 8];
            float &R22_tmp = input_data[ind * data_size + 9];
            float &R23_tmp = input_data[ind * data_size + 10];
            float &R31_tmp = input_data[ind * data_size + 11];
            float &R32_tmp = input_data[ind * data_size + 12];
            float &R33_tmp = input_data[ind * data_size + 13];

            // apply revolute rotation to R11_fixed and store in R11_tmp
            R11_tmp = R11_fixed * cos_t + R12_fixed * sin_t;
            R12_tmp = -R11_fixed * sin_t + R12_fixed * cos_t;
            R13_tmp = R13_fixed;
            R21_tmp = R21_fixed * cos_t + R22_fixed * sin_t;
            R22_tmp = -R21_fixed * sin_t + R22_fixed * cos_t;
            R23_tmp = R23_fixed;
            R31_tmp = R31_fixed * cos_t + R32_fixed * sin_t;
            R32_tmp = -R31_fixed * sin_t + R32_fixed * cos_t;
            R33_tmp = R33_fixed;

            // apply R11_old rotation R11_tmp, to make it in base frame
            tmp1 = R11_old * R11_tmp + R12_old * R21_tmp + R13_old * R31_tmp;
            tmp2 = R21_old * R11_tmp + R22_old * R21_tmp + R23_old * R31_tmp;
            tmp3 = R31_old * R11_tmp + R32_old * R21_tmp + R33_old * R31_tmp;
            R11 = tmp1;
            R21 = tmp2;
            R31 = tmp3;
            tmp1 = R11_old * R12_tmp + R12_old * R22_tmp + R13_old * R32_tmp;
            tmp2 = R21_old * R12_tmp + R22_old * R22_tmp + R23_old * R32_tmp;
            tmp3 = R31_old * R12_tmp + R32_old * R22_tmp + R33_old * R32_tmp;
            R12 = tmp1;
            R22 = tmp2;
            R32 = tmp3;
            tmp1 = R11_old * R13_tmp + R12_old * R23_tmp + R13_old * R33_tmp;
            tmp2 = R21_old * R13_tmp + R22_old * R23_tmp + R23_old * R33_tmp;
            tmp3 = R31_old * R13_tmp + R32_old * R23_tmp + R33_old * R33_tmp;
            R13 = tmp1;
            R23 = tmp2;
            R33 = tmp3;

            // p_old is the position of joint_i in base frame
            const float &px_old = input_data[(ind - 1) * data_size + 2];
            const float &py_old = input_data[(ind - 1) * data_size + 3];
            const float &pz_old = input_data[(ind - 1) * data_size + 4];

            // rotate offset to be in base frame and add p_old
            tmp1 = R11_old * offset_x + R12_old * offset_y + R13_old * offset_z + px_old;
            tmp2 = R21_old * offset_x + R22_old * offset_y + R23_old * offset_z + py_old;
            tmp3 = R31_old * offset_x + R32_old * offset_y + R33_old * offset_z + pz_old;
            input_data[ind * data_size + 2] = tmp1;
            input_data[ind * data_size + 3] = tmp2;
            input_data[ind * data_size + 4] = tmp3;



        }

        {
            constexpr std::size_t ind = 4;

            // R_fixed is the rotation from joint_i+1 in frame joint_i (row major)
            const float &R11_fixed = R_all[ind * 9 + 0];
            const float &R21_fixed = R_all[ind * 9 + 1];
            const float &R31_fixed = R_all[ind * 9 + 2];
            const float &R12_fixed = R_all[ind * 9 + 3];
            const float &R22_fixed = R_all[ind * 9 + 4];
            const float &R32_fixed = R_all[ind * 9 + 5];
            const float &R13_fixed = R_all[ind * 9 + 6];
            const float &R23_fixed = R_all[ind * 9 + 7];
            const float &R33_fixed = R_all[ind * 9 + 8];

            // offset is the offset of joint_i+1 in frame joint_i
            const float &offset_x = offset_all[ind * 3 + 0];
            const float &offset_y = offset_all[ind * 3 + 1];
            const float &offset_z = offset_all[ind * 3 + 2];

            // R is the rotation from joint_i+1 in the base frame (row major)
            float &R11 = input_data[ind * data_size + 5];
            float &R12 = input_data[ind * data_size + 6];
            float &R13 = input_data[ind * data_size + 7];
            float &R21 = input_data[ind * data_size + 8];
            float &R22 = input_data[ind * data_size + 9];
            float &R23 = input_data[ind * data_size + 10];
            float &R31 = input_data[ind * data_size + 11];
            float &R32 = input_data[ind * data_size + 12];
            float &R33 = input_data[ind * data_size + 13];


            const float &sin_t = input_data[ind * data_size + 0];
            const float &cos_t = input_data[ind * data_size + 1];

            // R_old is the rotation from joint_i in base frame (column major)
            float &R11_old = input_data[(ind - 1) * data_size + 5];
            float &R12_old = input_data[(ind - 1) * data_size + 6];
            float &R13_old = input_data[(ind - 1) * data_size + 7];
            float &R21_old = input_data[(ind - 1) * data_size + 8];
            float &R22_old = input_data[(ind - 1) * data_size + 9];
            float &R23_old = input_data[(ind - 1) * data_size + 10];
            float &R31_old = input_data[(ind - 1) * data_size + 11];
            float &R32_old = input_data[(ind - 1) * data_size + 12];
            float &R33_old = input_data[(ind - 1) * data_size + 13];

            // R_tmp is the rotation from joint_i+1 in frame joint_i after rotation applied (column major)
            float &R11_tmp = input_data[ind * data_size + 5];
            float &R12_tmp = input_data[ind * data_size + 6];
            float &R13_tmp = input_data[ind * data_size + 7];
            float &R21_tmp = input_data[ind * data_size + 8];
            float &R22_tmp = input_data[ind * data_size + 9];
            float &R23_tmp = input_data[ind * data_size + 10];
            float &R31_tmp = input_data[ind * data_size + 11];
            float &R32_tmp = input_data[ind * data_size + 12];
            float &R33_tmp = input_data[ind * data_size + 13];

            // apply revolute rotation to R11_fixed and store in R11_tmp
            R11_tmp = R11_fixed * cos_t + R12_fixed * sin_t;
            R12_tmp = -R11_fixed * sin_t + R12_fixed * cos_t;
            R13_tmp = R13_fixed;
            R21_tmp = R21_fixed * cos_t + R22_fixed * sin_t;
            R22_tmp = -R21_fixed * sin_t + R22_fixed * cos_t;
            R23_tmp = R23_fixed;
            R31_tmp = R31_fixed * cos_t + R32_fixed * sin_t;
            R32_tmp = -R31_fixed * sin_t + R32_fixed * cos_t;
            R33_tmp = R33_fixed;

            // apply R11_old rotation R11_tmp, to make it in base frame
            tmp1 = R11_old * R11_tmp + R12_old * R21_tmp + R13_old * R31_tmp;
            tmp2 = R21_old * R11_tmp + R22_old * R21_tmp + R23_old * R31_tmp;
            tmp3 = R31_old * R11_tmp + R32_old * R21_tmp + R33_old * R31_tmp;
            R11 = tmp1;
            R21 = tmp2;
            R31 = tmp3;
            tmp1 = R11_old * R12_tmp + R12_old * R22_tmp + R13_old * R32_tmp;
            tmp2 = R21_old * R12_tmp + R22_old * R22_tmp + R23_old * R32_tmp;
            tmp3 = R31_old * R12_tmp + R32_old * R22_tmp + R33_old * R32_tmp;
            R12 = tmp1;
            R22 = tmp2;
            R32 = tmp3;
            tmp1 = R11_old * R13_tmp + R12_old * R23_tmp + R13_old * R33_tmp;
            tmp2 = R21_old * R13_tmp + R22_old * R23_tmp + R23_old * R33_tmp;
            tmp3 = R31_old * R13_tmp + R32_old * R23_tmp + R33_old * R33_tmp;
            R13 = tmp1;
            R23 = tmp2;
            R33 = tmp3;

            // p_old is the position of joint_i in base frame
            const float &px_old = input_data[(ind - 1) * data_size + 2];
            const float &py_old = input_data[(ind - 1) * data_size + 3];
            const float &pz_old = input_data[(ind - 1) * data_size + 4];

            // rotate offset to be in base frame and add p_old
            tmp1 = R11_old * offset_x + R12_old * offset_y + R13_old * offset_z + px_old;
            tmp2 = R21_old * offset_x + R22_old * offset_y + R23_old * offset_z + py_old;
            tmp3 = R31_old * offset_x + R32_old * offset_y + R33_old * offset_z + pz_old;
            input_data[ind * data_size + 2] = tmp1;
            input_data[ind * data_size + 3] = tmp2;
            input_data[ind * data_size + 4] = tmp3;



        }

        {
            constexpr std::size_t ind = 5;

            // R_fixed is the rotation from joint_i+1 in frame joint_i (row major)
            const float &R11_fixed = R_all[ind * 9 + 0];
            const float &R21_fixed = R_all[ind * 9 + 1];
            const float &R31_fixed = R_all[ind * 9 + 2];
            const float &R12_fixed = R_all[ind * 9 + 3];
            const float &R22_fixed = R_all[ind * 9 + 4];
            const float &R32_fixed = R_all[ind * 9 + 5];
            const float &R13_fixed = R_all[ind * 9 + 6];
            const float &R23_fixed = R_all[ind * 9 + 7];
            const float &R33_fixed = R_all[ind * 9 + 8];

            // offset is the offset of joint_i+1 in frame joint_i
            const float &offset_x = offset_all[ind * 3 + 0];
            const float &offset_y = offset_all[ind * 3 + 1];
            const float &offset_z = offset_all[ind * 3 + 2];

            // R is the rotation from joint_i+1 in the base frame (row major)
            float &R11 = input_data[ind * data_size + 5];
            float &R12 = input_data[ind * data_size + 6];
            float &R13 = input_data[ind * data_size + 7];
            float &R21 = input_data[ind * data_size + 8];
            float &R22 = input_data[ind * data_size + 9];
            float &R23 = input_data[ind * data_size + 10];
            float &R31 = input_data[ind * data_size + 11];
            float &R32 = input_data[ind * data_size + 12];
            float &R33 = input_data[ind * data_size + 13];


            const float &sin_t = input_data[ind * data_size + 0];
            const float &cos_t = input_data[ind * data_size + 1];

            // R_old is the rotation from joint_i in base frame (column major)
            float &R11_old = input_data[(ind - 1) * data_size + 5];
            float &R12_old = input_data[(ind - 1) * data_size + 6];
            float &R13_old = input_data[(ind - 1) * data_size + 7];
            float &R21_old = input_data[(ind - 1) * data_size + 8];
            float &R22_old = input_data[(ind - 1) * data_size + 9];
            float &R23_old = input_data[(ind - 1) * data_size + 10];
            float &R31_old = input_data[(ind - 1) * data_size + 11];
            float &R32_old = input_data[(ind - 1) * data_size + 12];
            float &R33_old = input_data[(ind - 1) * data_size + 13];

            // R_tmp is the rotation from joint_i+1 in frame joint_i after rotation applied (column major)
            float &R11_tmp = input_data[ind * data_size + 5];
            float &R12_tmp = input_data[ind * data_size + 6];
            float &R13_tmp = input_data[ind * data_size + 7];
            float &R21_tmp = input_data[ind * data_size + 8];
            float &R22_tmp = input_data[ind * data_size + 9];
            float &R23_tmp = input_data[ind * data_size + 10];
            float &R31_tmp = input_data[ind * data_size + 11];
            float &R32_tmp = input_data[ind * data_size + 12];
            float &R33_tmp = input_data[ind * data_size + 13];

            // apply revolute rotation to R11_fixed and store in R11_tmp
            R11_tmp = R11_fixed * cos_t + R12_fixed * sin_t;
            R12_tmp = -R11_fixed * sin_t + R12_fixed * cos_t;
            R13_tmp = R13_fixed;
            R21_tmp = R21_fixed * cos_t + R22_fixed * sin_t;
            R22_tmp = -R21_fixed * sin_t + R22_fixed * cos_t;
            R23_tmp = R23_fixed;
            R31_tmp = R31_fixed * cos_t + R32_fixed * sin_t;
            R32_tmp = -R31_fixed * sin_t + R32_fixed * cos_t;
            R33_tmp = R33_fixed;

            // apply R11_old rotation R11_tmp, to make it in base frame
            tmp1 = R11_old * R11_tmp + R12_old * R21_tmp + R13_old * R31_tmp;
            tmp2 = R21_old * R11_tmp + R22_old * R21_tmp + R23_old * R31_tmp;
            tmp3 = R31_old * R11_tmp + R32_old * R21_tmp + R33_old * R31_tmp;
            R11 = tmp1;
            R21 = tmp2;
            R31 = tmp3;
            tmp1 = R11_old * R12_tmp + R12_old * R22_tmp + R13_old * R32_tmp;
            tmp2 = R21_old * R12_tmp + R22_old * R22_tmp + R23_old * R32_tmp;
            tmp3 = R31_old * R12_tmp + R32_old * R22_tmp + R33_old * R32_tmp;
            R12 = tmp1;
            R22 = tmp2;
            R32 = tmp3;
            tmp1 = R11_old * R13_tmp + R12_old * R23_tmp + R13_old * R33_tmp;
            tmp2 = R21_old * R13_tmp + R22_old * R23_tmp + R23_old * R33_tmp;
            tmp3 = R31_old * R13_tmp + R32_old * R23_tmp + R33_old * R33_tmp;
            R13 = tmp1;
            R23 = tmp2;
            R33 = tmp3;

            // p_old is the position of joint_i in base frame
            const float &px_old = input_data[(ind - 1) * data_size + 2];
            const float &py_old = input_data[(ind - 1) * data_size + 3];
            const float &pz_old = input_data[(ind - 1) * data_size + 4];

            // rotate offset to be in base frame and add p_old
            tmp1 = R11_old * offset_x + R12_old * offset_y + R13_old * offset_z + px_old;
            tmp2 = R21_old * offset_x + R22_old * offset_y + R23_old * offset_z + py_old;
            tmp3 = R31_old * offset_x + R32_old * offset_y + R33_old * offset_z + pz_old;
            input_data[ind * data_size + 2] = tmp1;
            input_data[ind * data_size + 3] = tmp2;
            input_data[ind * data_size + 4] = tmp3;



        }

    }

}


namespace fast_fk::internal {
    constexpr float axis_scale = 1;

    float InverseKinematics::operator()(const Eigen::VectorX<float> &q, Eigen::VectorX<float> &grad) {
        // construct input_data from q
        float tmp1;
        float tmp2;


        tmp1 = q[0];
        tmp2 = q[0];
        joint_data[0][0] = std::sin(tmp1);
        joint_data[0][1] = std::cos(tmp2);
        tmp1 = q[1];
        tmp2 = q[1];
        joint_data[1][0] = std::sin(tmp1);
        joint_data[1][1] = std::cos(tmp2);
        tmp1 = q[2];
        tmp2 = q[2];
        joint_data[2][0] = std::sin(tmp1);
        joint_data[2][1] = std::cos(tmp2);
        tmp1 = q[3];
        tmp2 = q[3];
        joint_data[3][0] = std::sin(tmp1);
        joint_data[3][1] = std::cos(tmp2);
        tmp1 = q[4];
        tmp2 = q[4];
        joint_data[4][0] = std::sin(tmp1);
        joint_data[4][1] = std::cos(tmp2);
        tmp1 = q[5];
        tmp2 = q[5];
        joint_data[5][0] = std::sin(tmp1);
        joint_data[5][1] = std::cos(tmp2);

        float *input_data = joint_data.data()->data();
        internal::forward_kinematics_internal(input_data, data_size * 6);

        Eigen::Vector3<float> target_x_axis_ = target_rot_.block<3, 1>(0, 0);
        Eigen::Vector3<float> target_y_axis_ = target_rot_.block<3, 1>(0, 1);
        Eigen::Vector3<float> target_z_axis_ = target_rot_.block<3, 1>(0, 2);
        Eigen::Vector3<float> target_x_ = target_pose_ + axis_scale * target_x_axis_;
        Eigen::Vector3<float> target_y_ = target_pose_ + axis_scale * target_y_axis_;
        Eigen::Vector3<float> target_z_ = target_pose_ + axis_scale * target_z_axis_;


        Eigen::Vector<float, 3> ee_pose;
        ee_pose << input_data[(6 - 1) *data_size + 2], input_data[(6 - 1)
                                                                  *data_size + 3], input_data[(6 - 1) *data_size + 4];

        // x point
        Eigen::Vector<float, 3> x_axis;
        x_axis << input_data[(6 - 1) *data_size + 5], input_data[(6 - 1)
                                                                 *data_size + 8], input_data[(6 - 1) *data_size + 11];
        Eigen::Vector<float, 3> current_x = ee_pose + x_axis;

        // y point
        Eigen::Vector<float, 3> y_axis;
        y_axis << input_data[(6 - 1) *data_size + 6], input_data[(6 - 1)
                                                                 *data_size + 9], input_data[(6 - 1) *data_size + 12];
        Eigen::Vector<float, 3> current_y = ee_pose + y_axis;

        // z point
        Eigen::Vector<float, 3> z_axis;
        z_axis << input_data[(6 - 1) *data_size + 7], input_data[(6 - 1)
                                                                 *data_size + 10], input_data[(6 - 1) *data_size + 13];
        Eigen::Vector<float, 3> current_z = ee_pose + z_axis;

        float fx = 0.0;
        Eigen::Vector3<float> delta_x = target_x_.array() - current_x.array();
        Eigen::Vector3<float> delta_y = target_y_.array() - current_y.array();
        Eigen::Vector3<float> delta_z = target_z_.array() - current_z.array();
        fx += (delta_x.array() * delta_x.array()).sum();
        fx += (delta_y.array() * delta_y.array()).sum();
        fx += (delta_z.array() * delta_z.array()).sum();

        // J =  (delta_x)^2
        //    + (delta_y)^2
        //    + (delta_z)^2

        // dJ/dq = dJ1/dq + dJ2/dq + dJ3/dq

        // dJ1/dq = dJ/ddelta_x * ddelta_x/dq
        // dJ2/dq = dJ/ddelta_y * ddelta_y/dq
        // dJ3/dq = dJ/ddelta_z * ddelta_z/dq

        // dJ/ddelta_x : 1x3 2*(x_target - x_current)
        // dJ/ddelta_y : 1x3 2*(y_target - y_current)
        // dJ/ddelta_z : 1x3 2*(z_target - z_current)

        // ddelta_x/dq: 3 x dofs J_{:3,:} + dofs J_{3:,:} x x_axis
        // ddelta_y/dq: 3 x dofs J_{:3,:} + dofs J_{3:,:} x y_axis
        // ddelta_z/dq: 3 x dofs J_{:3,:} + dofs J_{3:,:} x z_axis


        // gradient
        grad *= 0;
        Eigen::Vector3<float> dJ_ddelta_x = 2 * delta_x;
        Eigen::Vector3<float> dJ_ddelta_y = 2 * delta_y;
        Eigen::Vector3<float> dJ_ddelta_z = 2 * delta_z;

        Eigen::Vector<float, 3> joint_pose;
        Eigen::Vector<float, 3> delta;
        Eigen::Vector<float, 3> joint_axis;
        Eigen::Vector<float, 3> jac_linear;
        Eigen::Vector<float, 3> jac_angular;
        Eigen::Vector3<float> ddelta_x_dq_ind;
        Eigen::Vector3<float> ddelta_y_dq_ind;
        Eigen::Vector3<float> ddelta_z_dq_ind;


        {
            constexpr std::size_t ind = 0;

            joint_pose[0] = input_data[ind * data_size + 2];
            joint_pose[1] = input_data[ind * data_size + 3];
            joint_pose[2] = input_data[ind * data_size + 4];
            delta = ee_pose - joint_pose;
            joint_axis[0] = input_data[ind * data_size + 7];
            joint_axis[1] = input_data[ind * data_size + 10];
            joint_axis[2] = input_data[ind * data_size + 13];
            jac_linear = joint_axis.cross(delta);
            jac_angular = joint_axis;

            // x point
            ddelta_x_dq_ind = jac_linear + jac_angular.cross(axis_scale * x_axis);
            grad[ind] -= dJ_ddelta_x.dot(ddelta_x_dq_ind);

            // y point
            ddelta_y_dq_ind = jac_linear + jac_angular.cross(axis_scale * y_axis);
            grad[ind] -= dJ_ddelta_y.dot(ddelta_y_dq_ind);

            // z point
            ddelta_z_dq_ind = jac_linear + jac_angular.cross(axis_scale * z_axis);
            grad[ind] -= dJ_ddelta_z.dot(ddelta_z_dq_ind);


        }

        {
            constexpr std::size_t ind = 1;

            joint_pose[0] = input_data[ind * data_size + 2];
            joint_pose[1] = input_data[ind * data_size + 3];
            joint_pose[2] = input_data[ind * data_size + 4];
            delta = ee_pose - joint_pose;
            joint_axis[0] = input_data[ind * data_size + 7];
            joint_axis[1] = input_data[ind * data_size + 10];
            joint_axis[2] = input_data[ind * data_size + 13];
            jac_linear = joint_axis.cross(delta);
            jac_angular = joint_axis;

            // x point
            ddelta_x_dq_ind = jac_linear + jac_angular.cross(axis_scale * x_axis);
            grad[ind] -= dJ_ddelta_x.dot(ddelta_x_dq_ind);

            // y point
            ddelta_y_dq_ind = jac_linear + jac_angular.cross(axis_scale * y_axis);
            grad[ind] -= dJ_ddelta_y.dot(ddelta_y_dq_ind);

            // z point
            ddelta_z_dq_ind = jac_linear + jac_angular.cross(axis_scale * z_axis);
            grad[ind] -= dJ_ddelta_z.dot(ddelta_z_dq_ind);


        }

        {
            constexpr std::size_t ind = 2;

            joint_pose[0] = input_data[ind * data_size + 2];
            joint_pose[1] = input_data[ind * data_size + 3];
            joint_pose[2] = input_data[ind * data_size + 4];
            delta = ee_pose - joint_pose;
            joint_axis[0] = input_data[ind * data_size + 7];
            joint_axis[1] = input_data[ind * data_size + 10];
            joint_axis[2] = input_data[ind * data_size + 13];
            jac_linear = joint_axis.cross(delta);
            jac_angular = joint_axis;

            // x point
            ddelta_x_dq_ind = jac_linear + jac_angular.cross(axis_scale * x_axis);
            grad[ind] -= dJ_ddelta_x.dot(ddelta_x_dq_ind);

            // y point
            ddelta_y_dq_ind = jac_linear + jac_angular.cross(axis_scale * y_axis);
            grad[ind] -= dJ_ddelta_y.dot(ddelta_y_dq_ind);

            // z point
            ddelta_z_dq_ind = jac_linear + jac_angular.cross(axis_scale * z_axis);
            grad[ind] -= dJ_ddelta_z.dot(ddelta_z_dq_ind);


        }

        {
            constexpr std::size_t ind = 3;

            joint_pose[0] = input_data[ind * data_size + 2];
            joint_pose[1] = input_data[ind * data_size + 3];
            joint_pose[2] = input_data[ind * data_size + 4];
            delta = ee_pose - joint_pose;
            joint_axis[0] = input_data[ind * data_size + 7];
            joint_axis[1] = input_data[ind * data_size + 10];
            joint_axis[2] = input_data[ind * data_size + 13];
            jac_linear = joint_axis.cross(delta);
            jac_angular = joint_axis;

            // x point
            ddelta_x_dq_ind = jac_linear + jac_angular.cross(axis_scale * x_axis);
            grad[ind] -= dJ_ddelta_x.dot(ddelta_x_dq_ind);

            // y point
            ddelta_y_dq_ind = jac_linear + jac_angular.cross(axis_scale * y_axis);
            grad[ind] -= dJ_ddelta_y.dot(ddelta_y_dq_ind);

            // z point
            ddelta_z_dq_ind = jac_linear + jac_angular.cross(axis_scale * z_axis);
            grad[ind] -= dJ_ddelta_z.dot(ddelta_z_dq_ind);


        }

        {
            constexpr std::size_t ind = 4;

            joint_pose[0] = input_data[ind * data_size + 2];
            joint_pose[1] = input_data[ind * data_size + 3];
            joint_pose[2] = input_data[ind * data_size + 4];
            delta = ee_pose - joint_pose;
            joint_axis[0] = input_data[ind * data_size + 7];
            joint_axis[1] = input_data[ind * data_size + 10];
            joint_axis[2] = input_data[ind * data_size + 13];
            jac_linear = joint_axis.cross(delta);
            jac_angular = joint_axis;

            // x point
            ddelta_x_dq_ind = jac_linear + jac_angular.cross(axis_scale * x_axis);
            grad[ind] -= dJ_ddelta_x.dot(ddelta_x_dq_ind);

            // y point
            ddelta_y_dq_ind = jac_linear + jac_angular.cross(axis_scale * y_axis);
            grad[ind] -= dJ_ddelta_y.dot(ddelta_y_dq_ind);

            // z point
            ddelta_z_dq_ind = jac_linear + jac_angular.cross(axis_scale * z_axis);
            grad[ind] -= dJ_ddelta_z.dot(ddelta_z_dq_ind);


        }

        {
            constexpr std::size_t ind = 5;

            joint_pose[0] = input_data[ind * data_size + 2];
            joint_pose[1] = input_data[ind * data_size + 3];
            joint_pose[2] = input_data[ind * data_size + 4];
            delta = ee_pose - joint_pose;
            joint_axis[0] = input_data[ind * data_size + 7];
            joint_axis[1] = input_data[ind * data_size + 10];
            joint_axis[2] = input_data[ind * data_size + 13];
            jac_linear = joint_axis.cross(delta);
            jac_angular = joint_axis;

            // x point
            ddelta_x_dq_ind = jac_linear + jac_angular.cross(axis_scale * x_axis);
            grad[ind] -= dJ_ddelta_x.dot(ddelta_x_dq_ind);

            // y point
            ddelta_y_dq_ind = jac_linear + jac_angular.cross(axis_scale * y_axis);
            grad[ind] -= dJ_ddelta_y.dot(ddelta_y_dq_ind);

            // z point
            ddelta_z_dq_ind = jac_linear + jac_angular.cross(axis_scale * z_axis);
            grad[ind] -= dJ_ddelta_z.dot(ddelta_z_dq_ind);


        }


        return fx;
    }


}