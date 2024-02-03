workspace_count=$(swaymsg -t get_workspaces | jq length)
focused_workspace=$(swaymsg -t get_workspaces | jq -r '.[] | select(.focused == true).name')

if [ $workspace_count -eq $focused_workspace ]; then
    swaymsg workspace 1
else
    next_workspace="swaymsg workspace"" "$((focused_workspace + 1))
    $next_workspace
    test=$(swaymsg -t get_workspaces) | jq.length
fi
dunstify -a "workspaces" -t 2000 -r 1 -u critical $(swaymsg -t get_workspaces | jq -r '.[] | select(.focused == true).name')