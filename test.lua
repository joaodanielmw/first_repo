-->VARIABLES<--

--Private
local modem = peripheral.find("modem") or error("Connection failed: Modem not found")

--Public

-->METHODS<--

--Private
local function sortByType(type)
    local names = modem.getNamesRemote()
    local sorted = {}

    for i = 1, #names do
        local n = names[i]
        if peripheral.getType(n) == type then
            sorted[n] = n
        end
    end

    return sorted
end

--Public
function getNetworkConnected()
    local network = {["monitors"] = sortByType("monitors")}

    return network
end

-->RETURN<--
return {getNetworkConnected = getNetworkConnected}
