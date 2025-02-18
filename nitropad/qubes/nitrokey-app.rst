Nitrokey App Installation
======================


1. Set in the "Qubes Settings" of sys-usb "Networking" to default and "Apply" the changes.


.. figure:: ./images/install-nitrokey-app-images/Settings-sys-usb.png
   :alt: img1

2. Set in the "Qubes Settings" of fedora template "Networking" to default and "Apply" the changes.

.. figure:: ./images/install-nitrokey-app-images/Settings-fedora.png
   :alt: img2

3. Open the terminal of the fedora template and run ``sudo dnf install nitrokey-app``.

.. figure:: ./images/install-nitrokey-app-images/fedora-terminal.png
   :alt: img3

4. Shut down the template. 

5. Restart all qubes based on the template. 

6. Go to "Application" of sys-usb and select the Nitrokey App.

.. figure:: ./images/install-nitrokey-app-images/Settings-sys-usb_2.png
   :alt: img5

7. Click the arrow pointing to the right side to move it to the shortcuts and "Apply" the changes.

.. figure:: ./images/install-nitrokey-app-images/Settings-sys-usb_3.png
   :alt: img6

8. Now you can access the Nitrokey App by clicking on sys-usb.

.. figure:: ./images/install-nitrokey-app-images/sys-usb-nitrokey-app.png
   :alt: img7