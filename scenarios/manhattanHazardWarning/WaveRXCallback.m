% RX callback for all packets

%
% Copyright (C) Vamsi.  2017-18 All rights reserved.
%
% This copyrighted material is made available to anyone wishing to use,
% modify, copy, or redistribute it subject to the terms and conditions
% of the GNU General Public License version 2.
%

function WaveRXCallback(nodeId, pkt, pktSize, protocol)
% disp('WaveRXCallback is working');
% payload = pkt(WSMPTraffic.headerSize+1:end);
% payloadBuf = payload.';
% disp(payloadBuf);
% if(pkt(1) == 1)
%     disp('receive truly works for rsu');
% end
WSMP_PROT_NUM = 35036;
% Check if it is a WSMP packet.
if(protocol ==  WSMP_PROT_NUM)
%     WSMPTraffic.receivePkt(nodeId, pkt, pktSize);
    WSMPTraffic.revreceivePkt(nodeId, pkt, pktSize);
end
%TODO Handle NON-WSMP packets
end
