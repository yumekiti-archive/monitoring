# PromQL

## cpu使用率
```
rate(node_cpu_seconds_total{mode!="idle"}[1m])
```

## メモリ使用率
```
node_memory_MemTotal_bytes - node_memory_MemAvailable_bytes
```

## ディスク使用率
```
1 - node_filesystem_avail_bytes / node_filesystem_size_bytes
```

## ネットワーク使用率

- 受信
```
rate(node_network_receive_bytes_total[1m])
```

- 送信
```
rate(node_network_transmit_bytes_total[1m])
```

# 負荷テスト
https://go-journey.club/archives/6782

## CPU負荷を掛けたい
stress --cpu 4 --timeout 1m

## メモリへ負荷をかける
```
stress --vm 4 --vm-bytes 1G --timeout 1m
```

## ディスクに負荷を掛けたい
```
stress --hdd 1 --timeout 1m
```