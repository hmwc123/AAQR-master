function startup
persistent done

if isempty(done)
    clear global
    userpath(pwd)
    
    addpath(pwd, genpath([pwd, '\util']));
    ezPath method VIF matlabPyrTools-master
    
    savepath
    
    dbstop if error
    done = 1;
end