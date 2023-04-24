
class Kalman_filter:
    def __init__(self, r, q , p0 ):
        self.r = r  # covariance of mesurement
        self.q = q  # Process Noise Variance. 
        self.p0 = p0 # Covariance Extrapolation Equation
    def Update(self, x0, z):
        # z is mesurement from sensor
        K = self.p0/( self.p0+ self.r)
        x = x0 + K*(z - x0)
        self.p0 =  (1 - K)*self.p0 + self.q
        return x
    

if __name__ == "__main__":
    Kal = Kalman_filter(0.01, 0.0001, 100)
    x0 = 60
    try:
        while True:
            z = float(input("enter z: "))
            x = Kal.Update(x0, z)
            x0 = x 
            print("estimate :", x)

    except KeyboardInterrupt:
        print("Typed Ctrl + C. End program.")