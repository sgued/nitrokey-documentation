��    6      �              |  8   }  E   �  6   �  :   3  <   n  S   �  B   �  	   B     L  ]   ^  �   �  `   �     �  Q   
  m   \    �  F   �  *   )	  �   T	  i   $
     �
  -  �
  �   �     d  a   �  a   F    �  #  �  ;  �  
   $  
   /     :     J  j   Y  [   �  �      �   �     �  Y   �     �  H     �   U  �   �  �   �  T   u  ?  �  '  
  Q   2  )   �  �   �  �   C  T     z   b  �  �  A   �  H     5   [  9   �  G   �  ]      6   q      �      �   X   �   �   !  f   �!     `"  B   v"  n   �"  
  (#  M   3$  $   �$  �   �$  `   z%     �%    �%  �   �&  m   �'  b   (  b   v(  )  �(  �  *  ;  �+  	   -  
   -     &-     =-  n   T-  S   �-  �   .  �   �.     P/  D   l/     �/  O   �/  �   0  �   �0  �   _1  Q   @2  "  �2  5  �3  M   �4  -   95  �   g5  �   
6  ]   �6  �   %7   **Q:** Does the Nitrophone work with my carrier network? **Q:** How can I check, if my NitroPhone has been hacked/compromised? **Q:** What is a *Kill Switch* and how to activate it? **Q:** What is and how to activate *PIN Layout Scrambling* **Q:** Where can I get further information about GrapheneOS? **Q:** Why do I get "Warning: Your device is loading a different operating system"? *Long press on the respective app icon -> app info -> permissions* App Store Background Images Backup: The integrated backup (Seedvault) and Nextcloud. Choose Settings -> System -> Backup. Browser: The pre-installed browser Vanadium is hardened and therefore recommended for high security. For better ad blocking, `Bromite <https://github.com/bromite/bromite/releases/latest>`_ browser is recommended instead. By default you have a secure smartphone, already pre-installed with all the most necessary apps. Compatible Apps Contacts and calendar synchronization: DAVx5 supports CalDAV, CardDAV and WebCAL. Download all 5 files from `com.android.vending <https://apps.grapheneos.org/packages/com.android.vending/>`_. Earlier there was a list, but as the Play Service implementation progresses, most of the apps should work, although there are still some not working, a list will be available `here <https://github.com/Peter-Easton/GrapheneOS-Knowledge/tree/master/App%20Incompatibility%20List>`_. Email: K9-mail and OpenKeyChain (for OpenPGP encryption) or FairEmail. For more details, see the following pages: For very high security requirements, you should use as few apps as possible to provide a small attack surface. If instead you want to use the NitroPhone as an everyday smartphone with more apps we recommend: From the home screen, select: *Settings -> Apps -> Google Play services and disable battery optimization* Getting Started Google claims `all major carriers`_ should work with the Pixel phones. Nevertheless there might be exceptions, obviously we cannot check `all` carriers around the world. Best practice, is to check if you find some tests/experience stories about the Pixel 4a together with your planned carrier network. If the apps in F-Droid are not enough for you, open F-Droid and install Aurora Store. In Aurora Store, you can install all apps from Google Play Store. If you want to check the integrity of the operating system, you can use `remote verification <https://attestation.app/about>`_. Install `com.google.android.gms <https://apps.grapheneos.org/packages/com.google.android.gms/>`_. Install `com.google.android.gsf <https://apps.grapheneos.org/packages/com.google.android.gsf/>`_. Install the `F-Droid <https://f-droid.org/F-Droid.apk>`_ App Store. This has exclusively open source apps that do without drastic tracking and without advertising. Here you will find thousands of apps from a wide variety of fields. If you are looking for an app, check F-Droid first. Kill Switches, which erase all the phone's data when triggered, are very risky in practice as they could be triggered unintentionally. Therefore, the NitroPhone instead has the feature to automatically shut down and restart when inactive for a set period of time. This puts the phone in a secure state where all data is encrypted, no data is in RAM, and the phone can only be unlocked with the legitimate PIN or password. To enable, select: *Settings -> Security -> Auto reboot -> select the idle time duration after which the phone should reboot* Many apps work without Google Play Services. However, if you want to use apps that require Google Play Services, you can install `Google Play Services in a sandbox <https://grapheneos.org/usage#sandboxed-play-services>`_ as follows. In the future, an installer will be provided to simplify the installation process. Messenger: NitroPhone NitroPhone Apps NitroPhone FAQ One-time password generator (2FA, OTP): `Aegis Authenticator <https://github.com/beemdevelopment/Aegis>`_. Open F-Droid and install Split APKs Installer (SAI). (Also available from the Aurora Store) Open Split APKs Installer and install all five files you downloaded in step 3. **Note:** The correct base file has probably been renamed to ``base (2).apk``. Open the Google Play Store once and press "Sign in" to start the initialization. You don't have to finish the sign in and a real login is not necessary. This is solely to initialize the software. Permissions of Individual Apps Please familiarize yourself with `using your GrapheneOS <https://grapheneos.org/usage>`_. Recommended Apps Regarding camera app, see `here <https://grapheneos.org/usage#camera>`_. Set up a six-digit PIN to protect the phone. In cooperation with the security chip, this will ensure high security while maintaining good usability. Shortly after the phone is turned on, the warning "Your device is loading a different operating system" is displayed. This warning indicates that no ordinary Google Android is running and can be ignored. The Google Play Store cannot install and update apps due to the sandbox. Instead, always use F-Droid (for open source apps) or Aurora Store (for apps from Google Play Store) to install apps. To check or change the permissions on network access and sensors for a specific app: To make it difficult for strangers to read the PIN when typing it in, you can display the PIN layout in a random order. Additionally, we recommend a `privacy screen <https://shop.nitrokey.com/shop/product/privacyscreen-for-nitrophone-1-194>`_. To enable, select: *Settings -> Security -> PIN scrambling -> Scramble PIN* To prevent some apps from accessing Google Play Services, install Google Play Services in a separate profile. To do this, create a new dedicated user profile and install the Google Play Services there. Using a work profile together with *Shelter* is also possible, but without as much isolation. VPN: Orbot uses the free TOR network. Mullvad VPN and IVPN are paid VPN services. You can use these nice background images: `Briar <https://briarproject.org/>`_ is a peer-to-peer messenger without any server at all, which can be used without internet with contacts nearby. `Element <https://element.io/>`_ does not require a central infrastructure and allows the use of own servers. An own account can be registered for free at `NitroChat <https://nitro.chat>`_ for example. `Here <https://grapheneos.org/faq>`_ you can find further information on GrapheneOS. `Signal <https://signal.org/android/apk/>`_ is secure and now widely used. It can also be downloaded without an app store. Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-01-05 12:32+0100
PO-Revision-Date: 2022-01-10 14:11+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: zh_CN
Language-Team: Chinese (Simplified) <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-nitrophone/zh_Hans/>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 **问：**Nitrophone可以在我的运营商网络中使用吗？ **问：**如何检查我的NitroPhone是否已被黑客攻击/入侵？ **问：**什么是*杀戮开关，如何启动它？ **问：**什么是以及如何激活*PIN布局加扰*？ **问：**我在哪里可以得到有关GrapheneOS的进一步信息？ **问：**为什么我得到"警告。你的设备正在加载一个不同的操作系统"？ *长按相应的应用图标->应用信息->权限*。 应用商店 背景图片 备份。集成备份（Seedvault）和Nextcloud。选择设置->；系统->；备份。 浏览器。预装的浏览器Vanadium是经过加固的，因此建议使用高安全性的浏览器。为了更好地阻止广告，建议使用`Bromite <https://github.com/bromite/bromite/releases/latest>`_浏览器。 默认情况下，你有一个安全的智能手机，已经预装了所有最必要的应用程序。 兼容的应用程序 联系人和日历同步。DAVx5支持CalDAV、CardDAV和WebCAL。 从`com.android.vending <https://apps.grapheneos.org/packages/com.android.vending/>`_下载所有5个文件。 早些时候有一个列表，但随着Play服务实施的进展，大多数应用程序应该可以工作，尽管仍有一些不工作，列表将在`这里<https://github.com/Peter-Easton/GrapheneOS-Knowledge/tree/master/App%20Incompatibility%20List>%20List>`_。 电子邮件。K9-mail和OpenKeyChain（用于OpenPGP加密）或FairEmail。 更多细节，请见以下几页。 对于非常高的安全要求，你应该尽可能少地使用应用程序，以提供一个小的攻击面。如果你想把NitroPhone作为日常智能手机使用，我们建议使用更多的应用程序。 从主屏幕上，选择。*设置 -> 应用程序 -> Google Play服务并禁用电池优化*。 入门 谷歌声称`所有主要运营商`_都应该与Pixel手机合作。然而，可能会有例外，显然，我们无法检查世界各地的`所有`运营商。最好的做法是，检查你是否找到一些关于Pixel 4a和你计划的运营商网络的测试/经验故事。 如果F-Droid中的应用程序对你来说还不够，请打开F-Droid并安装Aurora商店。在Aurora商店中，你可以安装Google Play商店的所有应用程序。 如果你想检查操作系统的完整性，你可以使用`远程验证<https://attestation.app/about>`_。 安装 `com.google.android.gms <https://apps.grapheneos.org/packages/com.google.android.gms/>`_。 安装 `com.google.android.gsf <https://apps.grapheneos.org/packages/com.google.android.gsf/>`_。 安装`F-Droid <https://f-droid.org/F-Droid.apk>`_应用程序商店。这里有专门的开放源码应用程序，没有剧烈的跟踪，也没有广告。在这里，你会发现来自各种领域的成千上万的应用程序。如果你正在寻找一个应用程序，请先查看F-Droid。 杀死开关在被触发后会清除手机的所有数据，在实践中是非常危险的，因为它们可能被无意中触发。因此，NitroPhone具有自动关机的功能，并在设定的时间内不活动时重新启动。这使手机处于安全状态，所有数据都被加密，RAM中没有数据，手机只能用合法的PIN码或密码解锁。要启用，请选择。*设置 -> 安全性 -> 自动重启 -> 选择手机应重启的闲置时间*。 许多应用程序可以在没有Google Play服务的情况下运行。但是，如果你想使用需要Google Play服务的应用程序，你可以在沙盒中安装`Google Play服务<https://grapheneos.org/usage#sandboxed-play-services>`_，如下。在未来，将提供一个安装程序来简化安装过程。 信使。 NitroPhone NitroPhone应用程序 NitroPhone常见问题 一次性密码发生器（2FA，OTP）。`Aegis Authenticator <https://github.com/beemdevelopment/Aegis>`_。 打开F-Droid并安装Split APKs Installer（SAI）。(也可从极光商店获得) 打开Split APKs安装程序，安装你在步骤3中下载的所有五个文件。**注意：**正确的基础文件可能已经重命名为``base (2).apk``。 打开Google Play商店一次，按"登录"开始初始化。你不需要完成登录，也不需要真正登录。这仅仅是为了初始化软件。 单个应用程序的权限 请熟悉`使用你的GrapheneOS <https://grapheneos.org/usage>`_。 推荐的应用程序 关于相机应用程序，见`这里<https://grapheneos.org/usage#camera>`_。 设置一个六位数的密码来保护手机。在与安全芯片的合作中，这将确保高度的安全性，同时保持良好的可用性。 手机开机后不久，就会显示警告"你的设备正在加载一个不同的操作系统"。这个警告表明没有运行普通的谷歌安卓系统，可以忽略不计。 由于沙盒的原因，Google Play商店不能安装和更新应用程序。相反，总是使用F-Droid（用于开源应用程序）或Aurora Store（用于来自Google Play Store的应用程序）来安装应用程序。 要检查或改变一个特定应用程序的网络访问和传感器的权限。 为了让陌生人在输入PIN时难以读懂，你可以以随机顺序显示PIN的布局。此外，我们推荐使用`隐私屏幕<https://shop.nitrokey.com/shop/product/privacyscreen-for-nitrophone-1-194>`_。要启用，请选择。*设置 -> 安全 -> 扰乱密码 -> 扰乱密码*。 要防止一些应用程序访问Google Play服务，请在一个单独的配置文件中安装Google Play服务。要做到这一点，创建一个新的专用用户配置文件，并在那里安装Google Play服务。将工作配置文件与*Shelter*一起使用也是可能的，但没有那么多隔离。 VPN：Orbot使用免费的TOR网络。Mullvad VPN和IVPN是付费VPN服务。 你可以使用这些漂亮的背景图片。 `Briar <https://briarproject.org/>`_是一个完全没有服务器的点对点信使，它可以在没有互联网的情况下与附近的联系人一起使用。 `Element <https://element.io/>`_不需要一个中央基础设施，允许使用自己的服务器。例如，可以在`NitroChat <https://nitro.chat>`_免费注册一个自己的账户。 `在这里 <https://grapheneos.org/faq>`_你可以找到关于GrapheneOS的进一步信息。 `Signal <https://signal.org/android/apk/>`_很安全，现在被广泛使用。它也可以在没有应用商店的情况下下载。 