![](../img/BestMan_logo.png)

# 💻 Hand-Eye Calibration

:shamrock: Install Hand-Eye
```
chmod 777 $HOME/BestMan_Real/install/camera/install_easy_handeye.sh
bash $HOME/BestMan_Real/install/camera/install_easy_handeye.sh
‵‵‵

:shamrock: Edit aruco_start_realsense_sdk.launch

```
python3 $HOME/BestMan_Real/tool/get_info_realsense.py
<arg name="image_width"      default="640"/>
<arg name="image_height"     default="480"/>
<arg name="markerId"        default="25"/>
<arg name="markerSize"      default="0.150"/>
```