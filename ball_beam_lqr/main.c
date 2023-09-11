

#define TS  0.0005
#define float f32


f32 theta,
    theta_p,
    theta_dot;

f32 dis,
    dis_p,
    dis_dot;

f32 u_t;

f32 k_m[4] = {-2.012, -0.922, 2.473, 0.589};

// timer call back 20MHz
void TIM_IRQ(void){
    theta = sensor_read_theta();
    theta_dot = (theta - theta_p)/TS;
    theta_p = theta;

    dis = sensor_read_dis();
    dis_dot = (dis - dis_p)/TS;
    dis_p = dis;

    u_t = -(k_m[0]*dis + k_m[1]*dis_dot + k_m[2]*theta + k_m[3]*theta_dot);

    motor_load_control(u_t);
}

int main(){
    
}