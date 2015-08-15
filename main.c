/***author: tianfy , yz_android@163.com**/

#include "discovery.h"


int main (int argc,char * * argv) {
	PPPoEConnection *conn;

    	conn = malloc(sizeof(PPPoEConnection));
	printf("##_____%s____%d___##\n",__FUNCTION__, __LINE__);
	conn->ifName = strdup("eth2.2");
	conn->discoverySocket = -1;
    	conn->sessionSocket = -1;
    	conn->printACNames = 1;
	printf("##_____%s____%d___##\n",__FUNCTION__, __LINE__);
	discovery(conn);	

	return 1;
}	
