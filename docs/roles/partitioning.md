# Partitioning role

This role creates an additional partition on the hard disk and configures LVM
volumes.

**WARNING** This procedure might destroy some of your data. If you can control
the installation process of your server it is better to set it up with the correct
partitioning in place.

The role adds one single LVM partition at the end of the disk and allocates all the
remaining space.

The volume groups, logical volumes and filesystems are configurable in the `lvm`
variable.

As some of the target directories may already exist and contain some data you
must start your target host in a rescue mode where you can mount and modify the
existing partitions.

Short process description:

1. Read disk information of `lvm.device`
2. Create a new LVM partition on `lvm.device`
3. Create a volume group `lvm.vgname`
4. Create logical volumes `lvm.volumes`
5. Format logical volumes
6. Mount existing root and boot volumes under `/mnt`
7. Create mount points for new volumes `lvm.volumes[x].mount`
8. Add volume mounts to fstab
9. Temporary mount `/home` and `/var`
10. Move existing data to new volumes
11. Reboot system

## Configuration

### Variables

| name                  | purpose                                                    | default value | remark                              |
| --------------------- | ---------------------------------------------------------- | ------------- | ----------------------------------- |
| lvm                   | Description how to set up lvm on the target host           | n/a           | See example and documentation below |
| lvm.vg_name           | The name of the volume group to be created                 |               |                                     |
| lvm.device            | The device used to create the new volume group and volumes |               |                                     |
| lvm.volumes           | The description of volumes to be created                   |               |                                     |
| lvm.volumes[x].name   | The name of the volume                                     |               |                                     |
| lvm.volumes[x].size   | The size of the volume                                     |               |                                     |
| lvm.volumes[x].fstype | The filesystem type of the volume                          |               |                                     |
| lvm.volumes[x].mount  | The mount point of the volume                              |               |                                     |
| lvm.volumes[x].opts   | Mount options for the volume                               |               |                                     |

#### Example

```yaml
lvm:
  device: /dev/vda
  vg_name: vg_data
  volumes:
    - name: home
      size: 1G
      fstype: ext4
      mount: /home
      opts: nodev, nosuid
    - name: var
      size: 10G
      fstype: ext4
      mount: /var
      opts: nodev, nosuid
    - name: var_lib_docker
      size: 50G
      fstype: ext4
      mount: /var/lib/docker
    - name: data
      size: +100%FREE
      fstype: ext4
      mount: /data
```
