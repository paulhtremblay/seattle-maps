import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import savgol_filter as savitzky_golay

def smooth(y, window_len, order):
    yhat = savitzky_golay(y, window_len, order) # window size 51, polynomial order 3
    return yhat

def data_from_map():
    s1 = '-122.4250664 47.6632049, -122.4254633 47.6630242, -122.4258388 47.6627394, -122.4263646 47.662569, -122.4265791 47.6623378, -122.4269117 47.6621571, -122.4270512 47.6620343, -122.4272336 47.6616947, -122.4273838 47.6614851, -122.4274803 47.6613623, -122.4275018 47.6611166, -122.4275233 47.6609576, -122.4277593 47.6608203'
    s2 = '-122.4248947 47.6630531, -122.4250556 47.6630098, -122.4253668 47.6628364, -122.4257423 47.6625401, -122.4258925 47.6625112, -122.4262894 47.6624462, -122.4264182 47.6622077, -122.4266113 47.6619909, -122.4268688 47.6620271, -122.4270059 47.6616617, -122.4270941 47.6614201, -122.4272336 47.6613189, -122.4272443 47.6611238, -122.427255 47.6610082, -122.427416 47.6608131, -122.4275984 47.6607192'
    def make_points(s):
        final = []
        pairs = s.split(',')
        for i in pairs:
            values = i.split()
            final.append((float(values[0]), float(values[1])))
        return final
    data = make_points(s = s1)
    data.extend(make_points(s = s2))
    data = sorted(data, key = lambda x: x[0])
    x = [x[0] for x in data]
    y = [x[1] for x in data]
    return x, y

 

def get_test_data():
    x = np.linspace(0,2*np.pi,100)
    y = np.sin(x) + np.random.random(100) * 0.2
    return x, y

def test():
    x, y = get_test_data()
    x, y = data_from_map()
    y_hat = smooth(y, window_len = 20, order = 3)
    #plot_it(x = x, y = y, y_hat =y_hat)
    write_it(x =x, y_hat = y_hat)

def write_it(x, y_hat):
    line1 = 'WKT,name,description'
    line2 = '"LINESTRING (-122.4250664 47.6632049, -122.4254633 47.6630242, -122.4258388 47.6627394, -122.4263646 47.662569, -122.4265791 47.6623378, -122.4269117 47.6621571, -122.4270512 47.6620343, -122.4272336 47.6616947, -122.4273838 47.6614851, -122.4274803 47.6613623, -122.4275018 47.6611166, -122.4275233 47.6609576, -122.4277593 47.6608203)",Line 1,'
    line3 = '"LINESTRING (-122.4248947 47.6630531, -122.4250556 47.6630098, -122.4253668 47.6628364, -122.4257423 47.6625401, -122.4258925 47.6625112, -122.4262894 47.6624462, -122.4264182 47.6622077, -122.4266113 47.6619909, -122.4268688 47.6620271, -122.4270059 47.6616617, -122.4270941 47.6614201, -122.4272336 47.6613189, -122.4272443 47.6611238, -122.427255 47.6610082, -122.427416 47.6608131, -122.4275984 47.6607192)",Line 2,'
    points = []
    for counter, i in enumerate(x):
        points.append(f'{i} {y_hat[counter]}')
    line_new = '"LINESTRING (' + ','.join(points) + ')",' + 'Line New'
    with open('/home/henry/Downloads/smooth_out.csv', 'w') as write_obj:
        write_obj.write(f'{line1}\n')
        write_obj.write(f'{line2}\n')
        write_obj.write(f'{line3}\n')
        write_obj.write(f'{line_new}\n')

def plot_it(x,y, y_hat):
    plt.plot(x,y)
    plt.plot(x,y_hat, color='red')
    plt.show()

if __name__ == '__main__':
    test()
