theta = 0:0.01:pi;
eps = linspace(0, 1, 101);
cx = [0;100];
cy = [1 1 1;1 0.5 0];
cmap = interp1(x,y,linspace(0,100,101));
f = @(x, y) (3 .* sin(x).^2 + 2 * y) ./ (4 * (1 + y));
hold on
for n = 1:101
    plot(cos(theta), f(theta, eps(n)), 'color', cmap(n,:))
end
hold on
plot(cos(theta), f(theta, eps(1)), 'color', 'black', 'linewidth', 1.2)
xlabel('$\cos(\theta)$', 'Interpreter', 'latex')
ylabel('$\frac{1}{\Gamma} \frac{d\Gamma}{d\cos{\theta}}$', 'Interpreter', 'latex', 'FontSize', 12)
set(gcf, 'Colormap', cmap);
hcb = colorbar;
title(hcb, '$\epsilon$', 'Interpreter', 'latex','FontSize', 12)