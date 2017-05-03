#include <common.h>
#include <watchdog.h>
#include <command.h>
#include <net.h>
#include <miiphy.h>
#include "udp.h"

void
UdpHandler(uchar *pkt, unsigned dest, unsigned src, unsigned len)  //this function is a handle function in order to deal with the receive udp packet
{
    //printf("handler udp packet\n");
    printf("Receive udp packet: %s\n",pkt);
}

void  
udpSend(void)  
{  
    uchar *pkt;
    pkt = (uchar *)NetTxPacket;
    pkt += NetSetEther(pkt, UdpServerEther, PROT_IP);
    NetSetIP (pkt, UdpServerIP, UdpServerPort, UdpOurPort, data_len);
    pkt += IP_HDR_SIZE;
    memcpy(pkt, pkt_data, data_len);
    //(void) eth_send(NetTxPacket, (pkt - NetTxPacket) + data_len);
    NetSendUDPPacket(NetServerEther, UdpServerIP, UdpServerPort, UdpOurPort, data_len);
}

void
UdpStart(const uchar *remoteeth, char *remoteip, int remoteport,int thisport, const char *data, int datalength)
{
    UdpServerEther = remoteeth;
    UdpServerIP = string_to_ip(remoteip);
    UdpServerPort = remoteport;
    UdpOurPort = thisport;
    pkt_data = data;
    data_len = datalength;

    udpSend();
    printf("Send,ready to receive...\n");
}
