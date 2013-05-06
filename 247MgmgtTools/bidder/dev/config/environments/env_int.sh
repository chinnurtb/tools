#========================================
# Description of ZAMA Development Integration environment
#========================================

# Performance counter service ports for different components (default (DPP) - 8801)
  ZAMA_STCOL_PERF_PORT=8802
  ZAMA_VLDR_PERF_PORT=8803
  ZAMA_VBKP_PERF_PORT=8804
  ZAMA_GRTB_PERF_PORT=8805

                 # 10.73.49.47
  ZAMA_GRTB_HOSTS=(rtbbid1us2-int1)
  ZAMA_GRTB_HOSTS_NUM=1
# TBRM:  ZAMA_GRTB_PORT=11100

                  # 10.73.49.47
  ZAMA_STCOL_HOSTS=(rtbbid1us2-int1)
# TBRM:  ZAMA_STCOL_PORT=11102
  ZAMA_NEW_STCOL_PORT=11104

  # 5 min
  ZAMA_STCOL_POLL_PERIOD=1000

  ZAMA_STCOL_KEEP_DB_BACKUP="false"

                         # 10.73.49.47
  ZAMA_STCOL_ACCESS_POINT="rtbbid1us2-int1"
# TBRM:  ZAMA_STCOL_ACCESS_POINT_PORT=${ZAMA_STCOL_PORT}
  ZAMA_NEW_STCOL_ACCESS_POINT_PORT=${ZAMA_NEW_STCOL_PORT}


  ZAMA_GPXY_PHYS_HOSTS=("10.73.49.47")
  ZAMA_GPXY_VIRT_HOSTS=("__specify_google_proxy_virt_IP_on_devint_bid01__")

  ZAMA_APXY_PHYS_HOSTS=(${ZAMA_GPXY_PHYS_HOSTS[@]})
  ZAMA_APXY_VIRT_HOSTS=("__specify_appnexus_proxy_virt_IP_on_devint_bid01__")

  ZAMA_CPXY_PHYS_HOSTS=(${ZAMA_GPXY_PHYS_HOSTS[@]})
  ZAMA_CPXY_VIRT_HOSTS=("__specify_contextweb_proxy_virt_IP_on_devint_bid01__")

  ZAMA_FPXY_PHYS_HOSTS=(${ZAMA_GPXY_PHYS_HOSTS[@]})
  ZAMA_FPXY_VIRT_HOSTS=("10.73.49.57")

  ZAMA_MPXY_PHYS_HOSTS=(${ZAMA_GPXY_PHYS_HOSTS[@]})
  ZAMA_MPXY_VIRT_HOSTS=("__specify_admeld_proxy_virt_IP_on_devint_bid01__")

  ZAMA_EPXY_PHYS_HOSTS=(${ZAMA_GPXY_PHYS_HOSTS[@]})
  ZAMA_EPXY_VIRT_HOSTS=("__specify_esmeralda_proxy_virt_IP_on_devint_bid01__")

  ZAMA_RPXY_PHYS_HOSTS=(${ZAMA_GPXY_PHYS_HOSTS[@]})
  ZAMA_RPXY_VIRT_HOSTS=("__specify_rubicon_proxy_virt_IP_on_devint_bid01__")

  ZAMA_YPXY_PHYS_HOSTS=(${ZAMA_GPXY_PHYS_HOSTS[@]})
  ZAMA_YPXY_VIRT_HOSTS=("__specify_yahoo_proxy_virt_IP_on_devint_bid01__")

  ZAMA_OPXY_PHYS_HOSTS=(${ZAMA_GPXY_PHYS_HOSTS[@]})
  ZAMA_OPXY_VIRT_HOSTS=("__specify_openx_proxy_virt_IP_on_devint_bid01__")

  ZAMA_PPXY_PHYS_HOSTS=(${ZAMA_GPXY_PHYS_HOSTS[@]})
  ZAMA_PPXY_VIRT_HOSTS=("__specify_pubmatic_proxy_virt_IP_on_devint_bid01__")

  ZAMA_APIPXY_PHYS_HOSTS=(${ZAMA_GPXY_PHYS_HOSTS[@]})
  ZAMA_APIPXY_VIRT_HOSTS=(${ZAMA_GPXY_PHYS_HOSTS[@]})

  ZAMA_TRACKER_PHYS_HOSTS=(${ZAMA_GPXY_PHYS_HOSTS[@]})
  ZAMA_TRACKER_VIRT_HOSTS=("10.73.49.45")

  ZAMA_CLK_TRACKER_PHYS_HOSTS=(${ZAMA_TRACKER_PHYS_HOSTS[@]})
#  ZAMA_CLK_TRACKER_VIRT_HOSTS=("__specify_zama_clk_tracker_URI_hostname_for_devint_environment__")
# temporary measure to pass FB tests (10.73.49.56 bound to bid1-int.bidder7.mookie1.com)
  ZAMA_CLK_TRACKER_VIRT_HOSTS=("10.73.49.56")

  ZAMA_CNV_TRACKER_PHYS_HOSTS=(${ZAMA_TRACKER_PHYS_HOSTS[@]})
  ZAMA_CNV_TRACKER_VIRT_HOSTS=("__specify_zama_cnv_tracker_URI_hostname_for_devint_environment__")

  ZAMA_MATCHER_PHYS_HOSTS=(${ZAMA_GPXY_PHYS_HOSTS[@]})
  ZAMA_MATCHER_VIRT_HOSTS=("__specify_zama_matcher_URI_hostname_for_devint_environment__")

  ZAMA_ARTB_URI_HOSTNAME=${ZAMA_APXY_VIRT_HOSTS[0]}
  ZAMA_CRTB_URI_HOSTNAME=${ZAMA_CPXY_VIRT_HOSTS[0]}
  ZAMA_ERTB_URI_HOSTNAME=${ZAMA_EPXY_VIRT_HOSTS[0]}
  ZAMA_FRTB_URI_HOSTNAME=${ZAMA_FPXY_VIRT_HOSTS[0]}
  ZAMA_GRTB_URI_HOSTNAME=${ZAMA_GPXY_VIRT_HOSTS[0]}
  ZAMA_MRTB_URI_HOSTNAME=${ZAMA_MPXY_VIRT_HOSTS[0]}
  ZAMA_ORTB_URI_HOSTNAME=${ZAMA_OPXY_VIRT_HOSTS[0]}
  ZAMA_PRTB_URI_HOSTNAME=${ZAMA_PPXY_VIRT_HOSTS[0]}
  ZAMA_RRTB_URI_HOSTNAME=${ZAMA_RPXY_VIRT_HOSTS[0]}
  ZAMA_YRTB_URI_HOSTNAME=${ZAMA_YPXY_VIRT_HOSTS[0]}

  ZAMA_GTRK_URI_HOSTNAME="tracker1-int.bidder7.mookie1.com"

  ZAMA_CTRK_URI_HOSTNAME=${ZAMA_GTRK_URI_HOSTNAME}
  ZAMA_ETRK_URI_HOSTNAME=${ZAMA_GTRK_URI_HOSTNAME}
  ZAMA_FTRK_URI_HOSTNAME=${ZAMA_GTRK_URI_HOSTNAME}
  ZAMA_MTRK_URI_HOSTNAME=${ZAMA_GTRK_URI_HOSTNAME}
  ZAMA_OTRK_URI_HOSTNAME=${ZAMA_GTRK_URI_HOSTNAME}
  ZAMA_PTRK_URI_HOSTNAME=${ZAMA_GTRK_URI_HOSTNAME}
  ZAMA_RTRK_URI_HOSTNAME=${ZAMA_GTRK_URI_HOSTNAME}
  ZAMA_STRK_URI_HOSTNAME=${ZAMA_GTRK_URI_HOSTNAME}
  ZAMA_YTRK_URI_HOSTNAME=${ZAMA_GTRK_URI_HOSTNAME}

#  ZAMA_CLTRK_URI_HOSTNAME=${ZAMA_CLK_TRACKER_VIRT_HOSTS[0]}
# temporary measure to pass FB tests
  ZAMA_CLTRK_URI_HOSTNAME="bid1-int.bidder7.mookie1.com"
  ZAMA_CVTRK_URI_HOSTNAME=${ZAMA_CNV_TRACKER_VIRT_HOSTS[0]}

  ZAMA_MATCHER_URI_HOSTNAME=${ZAMA_MATCHER_VIRT_HOSTS[0]}

  ZAMA_AMTCH_URI_HOSTNAME=${ZAMA_MATCHER_URI_HOSTNAME}
  ZAMA_CMTCH_URI_HOSTNAME=${ZAMA_MATCHER_URI_HOSTNAME}
  ZAMA_EMTCH_URI_HOSTNAME=${ZAMA_MATCHER_URI_HOSTNAME}
  ZAMA_FMTCH_URI_HOSTNAME=${ZAMA_MATCHER_URI_HOSTNAME}
  ZAMA_GMTCH_URI_HOSTNAME=${ZAMA_MATCHER_URI_HOSTNAME}
  ZAMA_MMTCH_URI_HOSTNAME=${ZAMA_MATCHER_URI_HOSTNAME}
  ZAMA_OMTCH_URI_HOSTNAME=${ZAMA_MATCHER_URI_HOSTNAME}
  ZAMA_PMTCH_URI_HOSTNAME=${ZAMA_MATCHER_URI_HOSTNAME}
  ZAMA_RMTCH_URI_HOSTNAME=${ZAMA_MATCHER_URI_HOSTNAME}
  ZAMA_YMTCH_URI_HOSTNAME=${ZAMA_MATCHER_URI_HOSTNAME}

  ZWF_DEFAULT_PORT=11200

                 # rtbbid1us2-int1
  ZWF_LGRDR_HOSTS=(10.73.49.47)
  ZWF_LGRDR_PORT=${ZWF_DEFAULT_PORT}

                 # rtbbid1us2-int1
  ZWF_SCFDR_HOSTS=(10.73.49.47)
  ZWF_SCFDR_PORT=${ZWF_DEFAULT_PORT}

  ZWF_FCFDR_HOSTS=${ZWF_LGRDR_HOSTS}
  ZWF_FCFDR_PORT=11202

  ZWF_BID_FILTERING_TYPE=""

  ZAMA_COMMON_LOG_LEVEL=info
  ZAMA_GRTB_PROXY_TIMEOUT=2000

  ZAMA_GRTB_STALE_SLEEP_PERIOD_SEC=1
  ZAMA_GRTB_MAX_STALE_BIDS=4000000000

  ZAMA_GRTB_LOG_FLAGS="LOG_GEO LOG_EXCHANGE_INFO"

  ZAMA_GRTB_VENDOR_IDS_TO_MATCH="87"

  ZAMA_GRTB_CC_LOG_FILE="not_used"

  ZAMA_PRIMARY_DB_HOST="10.73.47.34"
  ZAMA_PRIMARY_DB_SVCNAME="S2ZAPLP"
  ZAMA_PRIMARY_DB_USER="zap_bidder_pressuser"
  ZAMA_PRIMARY_DB_PSWD="zap_bidder_pressuser"

# TBRM:  ZAMA_ASM_DEF_EXPIRATION_SEC=0

  ZAMA_VHOST_SSL_ENGINE_STATE="on"

  ZAMA_OBE_ENABLED="true"

  ZAMA_PRESS_LOG_ALL_CAMPAIGNS="true"

  ZAMA_GRTB_EXCLUDED_AGENT_STRINGS='<excluded_agent>\n    <substring>AppleWebKit</substring>\n    <substring>Safari</substring>\n    <substring negated="true">Chrome</substring>\n  </excluded_agent>'

  ZAMA_VDB_READER_ACCESS_POINT=rtbmdb1us1-qa1.dc.ash.247realmedia.com
  ZAMA_VDB_READER_ACCESS_POINT_PORT_MIN=30210
  ZAMA_VDB_READER_ACCESS_POINT_PORT_MAX=30239

  ZAMA_VDB_WRITER_ACCESS_POINT=${ZAMA_VDB_READER_ACCESS_POINT}
  ZAMA_VDB_WRITER_ACCESS_POINT_PORT_MIN=${ZAMA_VDB_READER_ACCESS_POINT_PORT_MIN}
  ZAMA_VDB_WRITER_ACCESS_POINT_PORT_MAX=${ZAMA_VDB_READER_ACCESS_POINT_PORT_MAX}

  ZAMA_VDB_DEF_TIMEOUT_R_MSEC=50
  ZAMA_VDB_DEF_TIMEOUT_W_MSEC=500
  ZAMA_GRTB_VDB_TIMEOUT=1

  ZAMA_VDB_ADMIN_ACCESS_POINT=${ZAMA_VDB_READER_ACCESS_POINT}
  ZAMA_VDB_ADMIN_ACCESS_POINT_PORT_MIN=30300
  ZAMA_VDB_ADMIN_ACCESS_POINT_PORT_MAX=${ZAMA_VDB_ADMIN_ACCESS_POINT_PORT_MIN}

  ZAMA_VDB_SVC_CONFIGS=(qa_vdb_svc_config.xml@rtbmdb1us1-qa1)

  ZAMA_VLDR_UPLOADER_THREADS=2
  # '0' - disables throttling
  ZAMA_VLDR_THROTTLE_ON_READ_IPS=0

  ZAMA_COMMON_DEF_PROTO_LOGGING="Off"
