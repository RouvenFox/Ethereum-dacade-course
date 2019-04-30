pragma solidity ^0.5.7;

contract memeRegistry {
    
    struct memecert {
        string name;
        string country;
        string state;
        uint timestamp;
    }
    
    mapping (string => memecert) memecerts;
    
    event memecertInfo(      
 	string name,
    string country,
    string state,
       uint timestamp,
       string url
    );
    
    function setMemecert(string _url, string _name, string _country, string _state) public {
        require (bytes(_url).length != 0);
        require (bytes(_name).length != 0);
        require (bytes(_country).length != 0);
        require (bytes(_state).length != 0);
 
        require(memecerts[_url].timestamp == 0);
        
        memecerts[_url] = memecert(_name now, _country now, _state now);
        emit memecertInfo(_name, now, _country now, _state now, _url);
    }
    
    function getMemecert(string _url) view public returns (string, uint) {
        return (memecerts[_url].name, memecerts[_url].timestamp);
    }
}

