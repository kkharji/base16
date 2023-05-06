// Base16 Green Screen
// Scheme: Chris Kempson (http://chriskempson.com)

base00 = '#001100';
base01 = '#003300';
base02 = '#005500';
base03 = '#007700';
base04 = '#009900';
base05 = '#00bb00';
base06 = '#00dd00';
base07 = '#00ff00';
base08 = '#007700';
base09 = '#009900';
base0A = '#007700';
base0B = '#00bb00';
base0C = '#005500';
base0D = '#009900';
base0E = '#00bb00';
base0F = '#005500';

t.prefs_.set('color-palette-overrides', 
                        [base00,
                        base08,
                        base0B,
                        base0A,
                        base0D,
                        base0E,
                        base0C,
                        base05,
                        base03,
                        base08,
                        base0B,
                        base0A,
                        base0D,
                        base0E,
                        base0C,
                        base07,
                        base09,
                        base0F,
                        base01,
                        base02,
                        base04,
                        base06]);

t.prefs_.set('cursor-color', "rgba(0, 187, 0, 0.5)");
t.prefs_.set('foreground-color', base05);
t.prefs_.set('background-color', base00);
