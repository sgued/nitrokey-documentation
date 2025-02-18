Login With EIDAuthenticate on Stand Alone Windows Computers
===========================================================

.. include:: ./product_platform_heading.rst

.. contents:: :local:

1. Download and install the latest version of `OpenSC <https://github.com/OpenSC/OpenSC/wiki>`_. Please install the `OpenPGP-CSP <https://github.com/vletoux/OpenPGP-CSP/releases/tag/1.3>`_ driver **instead** if using Nitrokey Storage 2 or Nitrokey Pro 2.
2. Download and install `EIDAuthenticate <https://www.mysmartlogon.com/eidauthenticate/>`_.

   .. note:: 
      The free community edition is disabled. You may test the enterprise edition instead.

3. Start EIDConfigurationWizard.exe
4. Select “Associate a new certificate”

.. figure:: /pro/images/eidauthenticate/1.png
   :alt: img1



5. Select or generate a Certificate Authority which should issue the
   user’s certificate on the Nitrokey.

.. figure:: /pro/images/eidauthenticate/2.png
   :alt: img2



6. Enter the user PIN which you defined previously in step 4. Wait a
   moment until a new keypair and certificate are generated. In case
   your Nitrokey is not detected you may want to execute “certutil
   -scinfo” for troubleshooting.

.. figure:: /pro/images/eidauthenticate/3.png
   :alt: img3



7. Select the newly generated certificate and press continue.

.. figure:: /pro/images/eidauthenticate/4.png
   :alt: img4



8. All checks should succeed. Press continue.

.. figure:: /pro/images/eidauthenticate/5.png
   :alt: img5



9. Enter the password of your user account.

.. figure:: /pro/images/eidauthenticate/6.png
   :alt: img6



10. Enter the user PIN which you defined previously in step 4.

.. figure:: /pro/images/eidauthenticate/7.png
   :alt: img7



11. The final screen may look like this.

.. figure:: /pro/images/eidauthenticate/8.png
   :alt: img8



You may perform further configurations such as activate the force smart card policy or automatically lock the computer when removing the Nitrokey (by using EIDConfigurationWizardElevated.exe).

From now on, when logging on to your Windows computer you need to connect the Nitrokey and enter your PIN.

.. figure:: /pro/images/eidauthenticate/9.png
   :alt: img9

