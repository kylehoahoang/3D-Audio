figure = uifigure('name','telephone');

grid = uigridlayout(figure, [4, 3]);


for row = 1:4
    for col = 1:3
        % Calculate button label (1 to 12)
        buttonLabel = (row - 1) * 3 + col;
        if buttonLabel == 10 
            buttonLabel = '*';
        end
        if buttonLabel == 11
                buttonLabel = '0';
        end
        if buttonLabel == 12 
                buttonLabel = '#'; 
        end

        % Create the button and puts it in grid 
        key = uibutton(grid, 'push', 'Text', num2str(buttonLabel));
        
        %this makes grid correctly with the button 
        key.Layout.Row = row;
        key.Layout.Column = col;

%when button is pressed go to the function below
   key.ButtonPushedFcn = @(src, event) playSound(src, buttonLabel);

    end
end

function playSound(~,buttonLabel)

%sets up some basic information for sin wave
amplitude = 1;
l = 0.5; %seconds
sampleRate = 44100; %samples per second
time = 0:1/sampleRate:l;

c = [1209, 1336, 1477];
r = [697, 770 , 852, 941];

for row = 1:4
    for col = 1:3
temp = (row - 1) * 3 + col; %calculate 1-12

if temp == 10 
            temp = '*';
end
        if temp == 11
                temp = '0';
        end
        if temp == 12 
                temp = '#'; 
        end

if temp == buttonLabel
    %plays sound
    freq1 = r(row);
    freq2 = c(col);
x=amplitude * sin(2*pi*freq1*time);
y=amplitude * sin(2*pi*freq2*time);
%uncomment below to check if correct frequencies are being played
%fprintf('Playing frequencies: %d and %d\n', freq1, freq2);

sound(x,22050);
sound(y,22050);
end
end
end
end



