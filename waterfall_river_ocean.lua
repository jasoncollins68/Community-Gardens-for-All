--Create a Community Garden for All

--Initial Setup
--Create a local variable for the garden space
local garden_space = {}

--Create a variable to store the number of plots in the garden
local num_plots = 0

--Function to add a new plot to the garden
function garden_space:addPlot(width, length)
 local plot = {width = width, length = length}
 table.insert(garden_space, plot)
 num_plots = num_plots + 1
end

--Function to remove a plot from the garden
function garden_space:removePlot(plot_number)
 table.remove(garden_space, plot_number)
 num_plots = num_plots - 1
end

--Function to calculate the total area of the garden
function garden_space:calculateTotalArea()
 local total_area = 0
 
 for i = 1, num_plots do
  plot = garden_space[i]
  total_area = total_area + (plot.width * plot.length)
 end
 
 return total_area
end

--Function to assign a plot to a gardener
function garden_space:assignGardener(plot_number, gardener_name)
 garden_space[plot_number].gardener = gardener_name
end

--Function to unassign a gardener from a plot
function garden_space:unassignGardener(plot_number)
 garden_space[plot_number].gardener = nil
end

--Function to assign a plot to a community group
function garden_space:assignGroup(plot_number, group_name)
 garden_space[plot_number].group = group_name
end

--Function to unassign a group from a plot
function garden_space:unassignGroup(plot_number)
 garden_space[plot_number].group = nil
end

--Function to find an available plot
function garden_space:findAvailablePlot()
 for i = 1, num_plots do
  plot = garden_space[i]
  if plot.gardener == nil and plot.group == nil then
   return i
  end
 end
 return 0
end

--Function to list all the plots and their status
function garden_space:listPlots()
 for i = 1, num_plots do
  plot = garden_space[i]
  local status = "Available"
  if plot.gardener ~= nil then
   status = "Assigned to " .. plot.gardener
  elseif plot.group ~= nil then
   status = "Assigned to " .. plot.group
  end
  print("Plot " .. tostring(i) .. ": " .. status)
 end
end

return garden_space