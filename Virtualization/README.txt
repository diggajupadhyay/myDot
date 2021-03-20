I will be using something like VirtInst which is a Virtualization technology and the package contains different tools such as virt-install, virt-viewer, virish, etc. 

virt-install:
# dnf group install --with-optional @virtualization
# virt-install -n fedora_test -r 4096 \
--disk path=/home/$USER/VM/fedora_test.qcow2,bus=virtio,size=50 \
-c /home/$USER/Downloads/Fedora-Workstation-Live-x86_64-34_Beta-1.3.iso \
--network network=default,module=virtio \
--video=vmvga --graphics vnc,listen=0.0.0.0 --noautoconsole -v -vcpus=2

OR

# virt-install --name Fedora34 \
--description 'Fedora 34 Workstation' \
--ram 4096 \
--vcpus 2 \
--disk path=/var/lib/libvirt/images/Fedora-Workstation-33/Fedora-Workstation-34.qcow2,size=50 \
--os-type linux \
--os-variant fedora34 \
--network bridge=virbr0 \
--graphics vnc,listen=127.0.0.1,port=5901 \
--cdrom /home/$USER/Downloads/Fedora-Workstation-Live-x86-64-34-Beta.iso \
--noautoconsole


virt-clone:
virt-clone --auto-clone --original fedora-test
