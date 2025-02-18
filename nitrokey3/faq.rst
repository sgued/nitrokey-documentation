Nitrokey 3 FAQ
==================

**Q:** Which Operating Systems are supported?
   Windows, Linux, and Mac OS X. Also some support for Android and iOS.

**Q:** What can I use the Nitrokey for?
   See the `frontpage`_ for an overview of supported use cases.

**Q:** How can I check if my Nitrokey 3 is working?
   On `WebAuthn.io`_ you can check various high-level functionalities, while
   `webautn.bin.coffee`_ provides good developer level details (technical)
   details. 

**Q:** Where is the right spot for NFC on my smartphone?
   Use `nfc.fail`_ to find the right spot!

**Q:** What happens if I lose my device?
   When securing accounts using FIDO (two-factor authentication and
   passwordless login), you should configure another factor in your account as
   a backup. Depending on the service this backup factor can be a phone number,
   an app or even a second Nitrokey FIDO2. If you lose a device, you
   can still log in with the second Nitrokey (or with another second
   factor).

**Q:** How large is the storage capacity?
   The Nitrokey 3 doesn't contain storage capability for ordinary data (it can
   only store cryptographic keys and certificates).

**Q:** When will the OpenPGPCard firmware be available?
   This is very hard to predict at this point. We are aiming for mid of 2022,
   but this is a very rough estimation with lots of uncertainties.

**Q:** Why does the Nitrokey 3 not show up in gnupg/Nitrokey App/nitropy ?
   Currently the Nitrokey 3 does only show up and can be managed in
   ``nitropy``, Nitrokey App and GnuPG will likely be only available once
   the OpenPGPCard firmware update is available.

**Q:** How can I set the PIN for my Nitrokey 3 ?
   You can configure and do basic settings for your Nitrokey 3 using Chrome(ium)
   just visit: `chrome://settings/securityKeys`_ (clicking the link will not work
   for security reasons, please copy&paste it)

**Q:** Is the Nitrokey 3 Common Criteria or FIPS certified?
   The secure element is Common Criteria EAL 6+ security certification up to OS 
   level (See `here`_, click “ICs, Smart Cards and Smart Card-Related Devices and 
   Systems” and search for: "NXP JCOP 4 SE050M”).

.. include:: ../shared-faqs/hyperlinks.rst 

