%% Gets recognized configuration profiles
% Note: Use strtrim( sscanf( caption, ' (%[^)])' ) ) to extract config id 
% from the caption.
%
% Filename: @WoP/GetConfigIDs.m
% Revision: 0.3.1
% Date:     2012-03-19
% Author:   Mikica B Kocic

function configIds = GetConfigIDs ()

    configIds = { ...
        '<html><em>Select test profile, then click ''Start''...</em></html>'; ...
        '  (Demo) - 2D piling balls demo'; ...
        '<html><strong style="color:#B00000">The Golf Game:</strong></html>'; ...
        '  (Golf-1.a) - Max distance: In vacuo, C_D = 0, C_M = 0'; ...
        '  (Golf-1.b) - Max distance: Laminar, C_D <> 0, C_M = 0'; ...
        '  (Golf-1.c) - Max distance: Turbulent, C_D <> 0, C_M = 0'; ...
        '  (Golf-1.d) - Max distance: Turbulent, C_D <> 0, C_M <> 0'; ...
        '  (Golf-1.e) - Max distance: #9 iron (41�), 144 km/h, 10800 rpm'; ...
        '<html><strong style="color:#B00000">Energy conservation:</strong></html>'; ...
        '  (1.2.a) - Energy plot: Impulse model, e = 1, Semi-implicit Euler'; ...
        '  (1.2.b) - Energy plot: Impulse model, e = 1, Leapfrog'; ...
        '  (1.2.c) - Energy plot: Spring model, k_d = 0, Semi-implicit Euler'; ...
        '  (1.2.d) - Energy plot: Spring model, k_d = 0, Leapfrog'; ...
        '<html><strong style="color:#B00000">Linear momentum conservation:</strong></html>'; ...
        '  (1.3.a) - Billiard balls: Impulse model, e = 1, Leapfrog'; ...
        '  (1.3.b) - Billiard balls: Impulse model, e < 1, Leapfrog'; ...
        '  (2.1.a) - Billiard balls: Spring model, k_d = 0, Semi-implicit Euler'; ...
        '  (2.1.b) - Billiard balls: Spring model, k_d > 0, Semi-implicit Euler'; ...
        '<html><strong style="color:#B00000">Stability of the method:</strong></html>'; ...
        '  (2.2.a) - Piling particles: Impulse model, e < 1, Leapfrog, h = 0.01'; ...
        '  (2.2.b) - Piling particles: Impulse model, e < 1, Leapfrog, h = 0.005'; ...
        '  (2.3.a) - Piling particles: Spring model, k_s = 4000, k_d > 0, Semi-implicit Euler'; ...
        '  (2.3.b) - Piling particles: Spring model, k_s = 8000, k_d > 0, Semi-implicit Euler'; ...
        '  (2.3.c) - Piling particles: Spring model, k_s = 4000, k_d = 0, Semi-implicit Euler'; ...
        '  (2.3.d) - Piling particles: Spring model, k_s = 8000, k_d = 0, Semi-implicit Euler'; ...
        '  (2.3.e) - Piling particles: Spring model, k_s = 40000, k_d > 0, Semi-implicit Euler'; ...
        '<html><strong style="color:#B00000">2D Sample Simulations:</strong></html>'; ...
        '  (2.4.a) - Piling balls in 2D: Impulse model, Leapfrog'; ...
        '  (2.4.b) - Piling balls in 2D: Spring model, Semi-implicit Euler'; ...
        '<html><strong style="color:#B00000">3D Sample Simulations:</strong></html>'; ...
        '  (2.5.a) - Piling balls in 3D, Impulse model, Leapfrog'; ...
        '  (2.5.b) - Piling balls in 3D, Spring model, Semi-implicit Euler'; ...
        '<html><strong style="color:#B00000">Miscellaneous:</strong></html>'; ...
        '  (Default) - Default parameters'; ...
        '  (Bench) - Benchmark test; N_p = 1000, Semi-Implicit Euler, h = 0.001 s'; ...
    };

    % Just in case; remove html tags from captions if not using java.swing
    if ~usejava( 'swing' )
        for i = 1 : length( configIds )
            configIds{i} = regexprep( configIds{i}, '<(.|\s)*?>', '' );
        end
    end

end % function
