


class Motors:

    def __init__(self):

        self.nominal_voltage    = []
        self.no_load_speed      = []
        self.stall_torque       = []
        self.description        = []


        #some of Pololu micro metal gear motors

        self.add_motor(6.0, 6500, 0.09, "POLOLU 5:1 HPCB 6V")
        self.add_motor(6.0, 3300, 0.17, "POLOLU 10:1 HPCB 6V")
        self.add_motor(6.0, 2100, 0.26, "POLOLU 15:1 HPCB 6V")
        self.add_motor(6.0, 1100, 0.45, "POLOLU 30:1 HPCB 6V")
        self.add_motor(6.0, 650, 0.74, "POLOLU 50:1 HPCB 6V")
        self.add_motor(6.0, 430, 1.1, "POLOLU 75:1 HPCB 6V")
        self.add_motor(6.0, 330, 1.6, "POLOLU 100:1 HPCB 6V")
        self.add_motor(6.0, 220, 2.0, "POLOLU 150:1 HPCB 6V")


        self.add_motor(6.0, 6100, 0.11, "POLOLU 5:1 HP 6V")
        self.add_motor(6.0, 3100, 0.22, "POLOLU 10:1 HP 6V")
        self.add_motor(6.0, 2000, 0.30, "POLOLU 15:1 HP 6V")
        self.add_motor(6.0, 1000, 0.57, "POLOLU 30:1 HP 6V")
        self.add_motor(6.0, 590, 0.86, "POLOLU 50:1 HP 6V")
        self.add_motor(6.0, 410, 1.3, "POLOLU 75:1 HP 6V")
        self.add_motor(6.0, 310, 1.7, "POLOLU 100:1 HP 6V")
        self.add_motor(6.0, 210, 2.4, "POLOLU 150:1 HP 6V")

          
    def get_motor_params(self, idx):
        return self.nominal_voltage[idx], self.no_load_speed[idx], self.stall_torque[idx], self.description[idx]

    def get_motor_params_by_descritpion(self, description):
        for i in range(self.get_count()):
            if self.description[i] == description:
                return self.get_motor_params(i)

        return None, None, None, None

    def get_count(self):
        return len(self.description)

    def _print(self):
        print("ID \t nominal_voltage[V] \t no_load_speed [rad/s] \t stall_torque [Nm] \t description")
        for i in range(self.get_count()):
            nominal_voltage, no_load_speed, stall_torque, description = self.get_motor_params(i)
            print(i, "\t", round(nominal_voltage,2), "\t\t\t", round(no_load_speed, 3), "\t\t", round(stall_torque, 4), "\t\t", description)
        print("\n")

    def add_motor(self, nominal_voltage_V, no_load_speed_rpm, stall_torque_kg_cm, description = "generic motor"):
        self.nominal_voltage.append(nominal_voltage_V)
        self.no_load_speed.append(no_load_speed_rpm*2.0*3.141592654/60.0)
        self.stall_torque.append(stall_torque_kg_cm*0.0980665)
        self.description.append(description)



if __name__ == '__main__':
    motors = Motors()
    motors._print()