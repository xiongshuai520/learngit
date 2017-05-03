#ifndef __UDP_H__
#define __UDP_H__

static uchar *UdpServerEther;
static IPaddr_t UdpServerIP;
static int UdpServerPort;/* The UDP port at their end
*/
static int UdpOurPort;/* The UDP port at our end
*/
static uchar *pkt_data;
static int data_len;

void UdpHandler(uchar *pkt, unsigned dest, unsigned src, unsigned len);

#endif
