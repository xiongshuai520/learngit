CONFIG_CMD_FAT=y
CONFIG_USB_OHCI=y
CONFIG_BOOTM_NETBSD=y
CONFIG_SYS_MAX_NAND_DEVICE=y
CONFIG_SYS_GBL_DATA_SIZE=128
CONFIG_VERSION_VARIABLE=y
CONFIG_SYS_LOAD_ADDR="(CFG_DDR_PHYS_OFFSET + 0x08000)"
CONFIG_SYS_MEMTEST_SCRATCH="CFG_DDR_PHYS_OFFSET"
CONFIG_BOOTDELAY=y
CONFIG_SYS_NAND_BASE="NAND_MEM_BASE"
CONFIG_SYS_HELP_CMD_WIDTH=8
CONFIG_NR_DRAM_BANKS=y
CONFIG_BOOTM_RTEMS=y
CONFIG_SYS_CBSIZE=1024
CONFIG_ETHADDR="00:00:23:34:45:66"
CONFIG_BOOTM_LINUX=y
CONFIG_CMD_UDP=y
CONFIG_BOOTROM_SUPPORT=y
CONFIG_MAX_IRQ=96
CONFIG_START_MAGIC="(0x444f574e)"
CONFIG_PL011_CLOCK="(CFG_CLK_BUS/4)"
CONFIG_ZERO_BOOTDELAY_CHECK=y
CONFIG_MISC_INIT_R=y
CONFIG_ENV_OFFSET="0x80000"
CONFIG_RELOC_FIXUP_WORKS=y
CONFIG_SPI_SUPPORT=y
CONFIG_ENV_OVERWRITE=y
CONFIG_CMD_NET=y
CONFIG_ENV_SIZE="0x40000"
CONFIG_CMD_PING=y
CONFIG_SYS_MALLOC_LEN="(CONFIG_ENV_SIZE + 128*1024)"
CONFIG_INITRD_TAG=y
CONFIG_ENV_NAND_ADDR="(CONFIG_ENV_OFFSET)"
CONFIG_HINFC610_MAX_CHIP="CONFIG_SYS_MAX_NAND_DEVICE"
CONFIG_CMD_SAVEENV=y
CONFIG_ENV_SECT_SIZE="CONFIG_ENV_SIZE"
CONFIG_CMD_NAND=y
CONFIG_SPI_FLASH_HISFC350=y
CONFIG_BOOTARGS="mem=96M console=ttyAMA0,115200"
CONFIG_ENV_SPI_ADDR="(CONFIG_ENV_OFFSET)"
CONFIG_AUTOBOOT_DELAY_STR="hilinux"
CONFIG_CMD_MEMORY=y
CONFIG_SYS_MAXARGS=32
CONFIG_PL011_SERIAL=y
CONFIG_IPADDR="192.168.1.10"
CONFIG_SYS_PBSIZE="(CONFIG_SYS_CBSIZE+sizeof(CONFIG_SYS_PROMPT)+16)"
CONFIG_BOARDDIR="board/hi3516a"
CONFIG_HINFC610_BUFFER_BASE_ADDRESS="NAND_MEM_BASE"
CONFIG_AUTOBOOT_PROMPT="Press CTRL-C to abort autoboot in %2d seconds\n"
CONFIG_CMDLINE_EDITING=y
CONFIG_CMD_USB=y
CONFIG_GMAC_NUMS=y
CONFIG_BOOTCOMMAND="bootm 0x82000000"
CONFIG_NET_RETRY_COUNT=50
CONFIG_SYS_NAND_MAX_CHIPS=2
CONFIG_ZLIB=y
CONFIG_HI3516A=y
CONFIG_AUTO_COMPLETE=y
CONFIG_SYS_HZ="(CFG_TIMER_CLK/256)"
CONFIG_DOS_PARTITION=y
CONFIG_GZIP=y
CONFIG_CMD_SF=y
CONFIG_PRODUCTNAME="hi3516a"
CONFIG_DDR_TRAINING_HI3516A=y
CONFIG_CUR_UART_BASE="CFG_SERIAL0"
CONFIG_SYS_BAUDRATE_TABLE="{ 9600, 19200, 38400, 57600, 115200 }"
CONFIG_NAND_FLASH_HINFC610=y
CONFIG_HISFC350_BUFFER_BASE_ADDRESS="SFC_MEM_BASE"
CONFIG_CMD_DHCP=y
CONFIG_ENV_IS_IN_NAND=y
CONFIG_CMD_SPI_BLOCK_PROTECTION=y
CONFIG_HIGMAC_PHY1_ADDR=y
CONFIG_BOOTFILE="uImage"
CONFIG_TFTP_TSIZE=y
CONFIG_BAUDRATE=115200
CONFIG_DDR_DATAEYE_TRAINING_STARTUP=y
CONFIG_ENV_IS_IN_SPI_FLASH=y
CONFIG_NETMASK="255.255.255.0"
CONFIG_CMDLINE_TAG=y
CONFIG_AUTOBOOT_STOP_STR="\x03"
CONFIG_LEGACY_USB_INIT_SEQ=y
CONFIG_SYS_DEF_EEPROM_ADDR=0
CONFIG_SYS_MEMTEST_END="(CFG_DDR_PHYS_OFFSET + CFG_DDR_SIZE)"
CONFIG_HISFC350_REG_BASE_ADDRESS="SFC_REG_BASE"
CONFIG_SYS_NO_FLASH=y
CONFIG_ARP_TIMEOUT="50000UL"
CONFIG_DDR_TRAINING_V300=y
CONFIG_HISFC350_PERIPHERY_REGBASE="CRG_REG_BASE"
CONFIG_NET_HIGMACV300=y
CONFIG_SYS_PROMPT="hisilicon # "
CONFIG_USB_STORAGE=y
CONFIG_SETUP_MEMORY_TAGS=y
CONFIG_SYS_FAULT_ECHO_LINK_DOWN=y
CONFIG_SYS_MEMTEST_START="(CFG_DDR_PHYS_OFFSET + sizeof(unsigned long))"
CONFIG_CMD_LOADB=y
CONFIG_NAND_SUPPORT=y
CONFIG_HISFC350_CHIP_NUM=2
CONFIG_CONS_INDEX=0
CONFIG_ARM=y
CONFIG_SVB_ENABLE=y
CONFIG_AUTOBOOT_KEYED=y
CONFIG_SERVERIP="192.168.1.2"
CONFIG_HINFC610_REG_BASE_ADDRESS="NANDC_REG_BASE"
CONFIG_HIGMAC_PHY1_INTERFACE_MODE=2
CONFIG_CMD_MII=y
CONFIG_PL01x_PORTS="{(void *)UART0_REG_BASE, (void *)UART1_REG_BASE, (void *)UART2_REG_BASE, (void *)UART3_REG_BASE}"
