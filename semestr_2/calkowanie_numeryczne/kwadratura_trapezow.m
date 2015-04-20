function [ pole ] = kwadratura_trapezow( m )
% Kwadratura trapezów używająca m przedziałów dla funkcji cos²(x/2)

pole = 0;
przedzialy = 0:1/m:1;

for i = 1:m
    a = przedzialy(i);
    b = przedzialy(i+1);
    f_a = cos(a/2) * cos(a/2);
    f_b = cos(b/2) * cos(b/2);
    pole = pole + (b-a)/2 * (f_a + f_b);
end

end

