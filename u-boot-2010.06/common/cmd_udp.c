#include <common.h>
#include <command.h>
#include <net.h>

 char _ctoi(char c)
{
    if(c>='0'&&c<='9')return c-'0';
    if(c>='a'&&c<='f')return c-'a'+10;
    return 0;
}

int _atoi(char* s)
{
    unsigned int  a=0;
    unsigned int  b=0;
    int i=0;
    while(s[i]){
        a*=10;
        a+=_ctoi(s[i]);
        i++;    
    }
    return a;
}

int _atox(char* s)
{
    unsigned int  a=0;
    unsigned int  b=0;
    int i=0;
    while(s[i]){
        a<<=4;
        a|=_ctoi(s[i]);
        i++;    
        if(i>=8)break;
    }
    return a;
}

int _strlen(char*s)
{
    int i=0;
    while(s[i]){
        i++;
    }
    return i;
}

void _getmac(char* s,char* eth)
{
    unsigned char  a=0;
    int i=0;
    while(s[i]){
        a<<=4;
        a|=_ctoi(s[i]);            
        if((i&1)==1){
            eth[i>>1]=a;
            a=0;            
        }
        i++;
    }
}

int do_udp_broadcast(cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
    uchar eth[6]= {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};
    char* UdpServerIP="255.255.255.255";
    //char[6]={0,0,0,0,0,0};
    //char* UdpServerIP=NetServerIP;
    int dest_port = 25500, src_port =25300;
    uchar *str;
    int len;

    switch(argc){
    case 1:
        puts("Params error, try again\nusage: [udp_b] [string] or [udp_b] [dest_port] [src_port] [string]\n");
        return 1;
        break;
    case 2:
        str = argv[1];
        len = strlen(str);
        break;
    case 4:
        dest_port = _atoi(argv[1]);
        src_port = _atoi(argv[2]);
        str = argv[3];
        len = strlen(argv[3]);
        break;
    default:
        return 1;
        break;
    }

    printf("len=%d\n",len);
    show_boot_progress(80);
    if(NetLoop_UDP(eth,UdpServerIP,dest_port,src_port,str,len)<0){
        show_boot_progress(-81);
        return 1;
    }

    return 0;
}

U_BOOT_CMD(
    udp_b, 4, 1, do_udp_broadcast,
    "Send or receive UDP broadcast to/from server using UDP protocol",
    "[udp_b] [string] or [udp_b] [dest_port] [src_port] [string]"
);
