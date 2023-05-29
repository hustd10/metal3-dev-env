apiVersion: metal3.io/v1alpha1
kind: BareMetalHost
metadata:
  annotations:
    kubectl.kubernetes.io/last-applied-configuration: |
      {"apiVersion":"metal3.io/v1alpha1","kind":"BareMetalHost","metadata":{"annotations":{},"name":"node-0","namespace":"metal3"},"spec":{"bmc":{"address":"ipmi://192.168.111.1:6230","credentialsName":"node-0-bmc-secret"},"bootMACAddress":"00:2a:ec:ab:5f:11","bootMode":"legacy","online":true}}
  creationTimestamp: "2023-05-26T06:35:42Z"
  finalizers:
  - baremetalhost.metal3.io
  generation: 1
  name: node-0
  namespace: metal3
  resourceVersion: "3448"
  uid: 51c2c940-03a3-4dc6-9927-6758ceb48209
spec:
  automatedCleaningMode: metadata
  bmc:
    address: ipmi://192.168.111.1:6230
    credentialsName: node-0-bmc-secret
  bootMACAddress: 00:2a:ec:ab:5f:11
  bootMode: legacy
  online: true
status:
  errorCount: 0
  errorMessage: ""
  goodCredentials:
    credentials:
      name: node-0-bmc-secret
      namespace: metal3
    credentialsVersion: "2666"
  hardware:
    cpu:
      arch: x86_64
      count: 2
      flags:
      - 3dnowprefetch
      - abm
      - adx
      - aes
      - apic
      - arat
      - arch_capabilities
      - arch_perfmon
      - avx
      - avx2
      - avx512_bitalg
      - avx512_vbmi2
      - avx512_vnni
      - avx512_vpopcntdq
      - avx512bw
      - avx512cd
      - avx512dq
      - avx512f
      - avx512ifma
      - avx512vbmi
      - avx512vl
      - bmi1
      - bmi2
      - clflush
      - clflushopt
      - clwb
      - cmov
      - constant_tsc
      - cpuid
      - cpuid_fault
      - cx16
      - cx8
      - de
      - ept
      - ept_ad
      - erms
      - f16c
      - flexpriority
      - fma
      - fpu
      - fsgsbase
      - fsrm
      - fxsr
      - gfni
      - hypervisor
      - ibpb
      - ibrs
      - ibrs_enhanced
      - invpcid
      - invpcid_single
      - la57
      - lahf_lm
      - lm
      - mca
      - mce
      - md_clear
      - mmx
      - movbe
      - msr
      - mtrr
      - nopl
      - nx
      - ospke
      - pae
      - pat
      - pcid
      - pclmulqdq
      - pdcm
      - pdpe1gb
      - pge
      - pku
      - pni
      - popcnt
      - pse
      - pse36
      - rdpid
      - rdrand
      - rdseed
      - rdtscp
      - rep_good
      - sep
      - sha_ni
      - smap
      - smep
      - ss
      - ssbd
      - sse
      - sse2
      - sse4_1
      - sse4_2
      - ssse3
      - stibp
      - syscall
      - tpr_shadow
      - tsc
      - tsc_adjust
      - tsc_deadline_timer
      - tsc_known_freq
      - umip
      - vaes
      - vme
      - vmx
      - vnmi
      - vpclmulqdq
      - vpid
      - wbnoinvd
      - x2apic
      - xgetbv1
      - xsave
      - xsavec
      - xsaveopt
      - xsaves
      - xtopology
      model: Intel(R) Xeon(R) Gold 5318Y CPU @ 2.10GHz
    firmware:
      bios:
        date: 04/01/2014
        vendor: SeaBIOS
        version: 1.15.0-1
    hostname: node-0
    nics:
    - ip: 192.168.111.20
      mac: 00:2a:ec:ab:5f:13
      model: 0x1af4 0x0001
      name: enp2s0
    - ip: fe80::662d:afb1:49d8:d959%enp2s0
      mac: 00:2a:ec:ab:5f:13
      model: 0x1af4 0x0001
      name: enp2s0
    - ip: 172.22.0.71
      mac: 00:2a:ec:ab:5f:11
      model: 0x1af4 0x0001
      name: enp1s0
      pxe: true
    - ip: fe80::e79e:b3a4:3579:4b%enp1s0
      mac: 00:2a:ec:ab:5f:11
      model: 0x1af4 0x0001
      name: enp1s0
      pxe: true
    ramMebibytes: 4096
    storage:
    - hctl: "0:0:0:0"
      model: QEMU HARDDISK
      name: /dev/disk/by-path/pci-0000:03:00.0-scsi-0:0:0:0
      rotational: true
      serialNumber: drive-scsi0-0-0-0
      sizeBytes: 53687091200
      type: HDD
      vendor: QEMU
    systemVendor:
      manufacturer: QEMU
      productName: Standard PC (Q35 + ICH9, 2009)
  hardwareProfile: unknown
  lastUpdated: "2023-05-26T06:39:51Z"
  operationHistory:
    deprovision:
      end: null
      start: null
    inspect:
      end: "2023-05-26T06:39:51Z"
      start: "2023-05-26T06:35:53Z"
    provision:
      end: null
      start: null
    register:
      end: "2023-05-26T06:35:53Z"
      start: "2023-05-26T06:35:42Z"
  operationalStatus: OK
  poweredOn: true
  provisioning:
    ID: a04e3b8e-644d-4af9-a69f-63d919e3e585
    bootMode: legacy
    image:
      url: ""
    rootDeviceHints:
      deviceName: /dev/sda
    state: available
  triedCredentials:
    credentials:
      name: node-0-bmc-secret
      namespace: metal3
    credentialsVersion: "2666"
