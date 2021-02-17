# Turn off screen brightness control, dimming and sleeping
function movie_on -d "Turn off irritating dimming and focus on the movie"
    echo "Turning off dimming and lockscreen. Call movie_off to return to normal settings"
    xset s off
    xset s noblank
    xset -dpms
end

function movie_off -d "Back to normal workflow. Power and eco friendly"
    echo "Turning on dimming and lockscreen. Call movie_on to turn it off"
    xset s on
    xset s blank
    xset +dpms
end
