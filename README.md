# A Benchmark Dataset for WSN
The dataset is for our paper on PE-WASUN 2018.

In summary, the dataset includes about a month data for a testbed of 73 nodes, including both link level information and the full routing path of each packet. 

The dataset file is a PostgreSQL dumped file generated using `pg_dump`. It can be restored to another PostgreSQL DB by running the `db_restore.sh` script. 

The dataset includes a single database with three tables. The tables have the same schema as described below:

Column Name | Data Example | Description
---|---|---
*timestamp* | "2017-08-19 09:59:09.081" | The timestamp at the base station when the packet is received
*cycle_idx* | 300 | The cycle number the packet belongs to. Packets should be grouped based on the cycle idx.
*packet_type* | 239 | The type of the packet. i.e., Type I (239), II (205), or III (222)
*original* | 1 | 1: this an original packet of this cycle. 0: this is a supplement packet to fill this cycle
*motetype* | 2 | The node platform. MicaZ (0), IRIS (1), TelosB (2)
*ctp_parent* | 60731 | The primary parent of the source node
*eer_psetsize* | 3 | The parent set size of the source node
*eer_retxs* | 2 | The nubmber of link retries from the source node to *parent_id*, the actual parent
*etx* | 10 | The ETX between the source node to the *ctp_parent*
*stats_petx* | 40 | The path ETX of the source node 
*stats_letx* | 12 | The ETX between the source node to the *parent_id*
*stats_raw_frssi* | -62 | Uplink RSSI sensed at the *parent_id* during packet reception, in dBm
*stats_raw_brssi* | -57 | Downlink RSSI sensed at the source node during link estimation, in dBm
*thl*| 8 | Time has lived. The hop count from the souce node to the sink.
*node_id* | 61831 | The ID of the node that originates the packet
*parent_id* | 61131 | The actual parent that forwards this packet
*rest of the path* | 31301, ..., 1 | The rest node IDs along the path from the source node to the sink

For more details please refer to our paper: [placeholder for the paper link]
