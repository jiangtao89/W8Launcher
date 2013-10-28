.class Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "NotificationDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/NotificationDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotifyBroadcast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/statusbar/NotificationDetector;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/NotificationDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;->this$0:Lcom/anall/statusbar/NotificationDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 214
    const-string v8, "status"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 215
    .local v5, status:I
    const-string v8, "level"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 216
    .local v2, level:I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 217
    .local v4, msg:Landroid/os/Message;
    const/16 v8, 0x10

    iput v8, v4, Landroid/os/Message;->what:I

    .line 218
    const/4 v8, 0x2

    if-ne v5, v8, :cond_1

    .line 219
    const/4 v8, -0x1

    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 220
    iput v2, v4, Landroid/os/Message;->arg2:I

    .line 224
    :goto_0
    iget-object v8, p0, Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;->this$0:Lcom/anall/statusbar/NotificationDetector;

    #calls: Lcom/anall/statusbar/NotificationDetector;->callChanged(Landroid/os/Message;)V
    invoke-static {v8, v4}, Lcom/anall/statusbar/NotificationDetector;->access$0(Lcom/anall/statusbar/NotificationDetector;Landroid/os/Message;)V

    .line 278
    .end local v2           #level:I
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #status:I
    :cond_0
    :goto_1
    return-void

    .line 222
    .restart local v2       #level:I
    .restart local v4       #msg:Landroid/os/Message;
    .restart local v5       #status:I
    :cond_1
    iput v2, v4, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 225
    .end local v2           #level:I
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #status:I
    :cond_2
    const-string v8, "android.net.wifi."

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 226
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 227
    .restart local v4       #msg:Landroid/os/Message;
    const/16 v8, 0x15

    iput v8, v4, Landroid/os/Message;->what:I

    .line 229
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 230
    const-string v8, "wifi_state"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 231
    .local v7, wifiState:I
    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 232
    const/4 v8, 0x3

    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 237
    .end local v7           #wifiState:I
    :cond_3
    :goto_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 238
    const/4 v8, 0x3

    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 241
    :cond_4
    iget-object v8, p0, Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;->this$0:Lcom/anall/statusbar/NotificationDetector;

    #getter for: Lcom/anall/statusbar/NotificationDetector;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/anall/statusbar/NotificationDetector;->access$3(Lcom/anall/statusbar/NotificationDetector;)Landroid/content/Context;

    move-result-object v8

    .line 242
    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 241
    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 243
    .local v6, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 244
    .local v1, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v8

    const/4 v9, 0x5

    invoke-static {v8, v9}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 245
    .restart local v2       #level:I
    iput v2, v4, Landroid/os/Message;->arg2:I

    .line 247
    iget-object v8, p0, Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;->this$0:Lcom/anall/statusbar/NotificationDetector;

    #calls: Lcom/anall/statusbar/NotificationDetector;->callChanged(Landroid/os/Message;)V
    invoke-static {v8, v4}, Lcom/anall/statusbar/NotificationDetector;->access$0(Lcom/anall/statusbar/NotificationDetector;Landroid/os/Message;)V

    goto :goto_1

    .line 234
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    .end local v2           #level:I
    .end local v6           #wifiManager:Landroid/net/wifi/WifiManager;
    .restart local v7       #wifiState:I
    :cond_5
    const/4 v8, 0x1

    iput v8, v4, Landroid/os/Message;->arg1:I

    goto :goto_2

    .line 248
    .end local v4           #msg:Landroid/os/Message;
    .end local v7           #wifiState:I
    :cond_6
    const-string v8, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 249
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 250
    .restart local v4       #msg:Landroid/os/Message;
    const/16 v8, 0x16

    iput v8, v4, Landroid/os/Message;->what:I

    .line 251
    iget-object v8, p0, Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;->this$0:Lcom/anall/statusbar/NotificationDetector;

    #getter for: Lcom/anall/statusbar/NotificationDetector;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/anall/statusbar/NotificationDetector;->access$3(Lcom/anall/statusbar/NotificationDetector;)Landroid/content/Context;

    move-result-object v8

    .line 252
    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 251
    check-cast v3, Landroid/media/AudioManager;

    .line 253
    .local v3, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 254
    const/4 v8, 0x1

    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 260
    :goto_3
    iget-object v8, p0, Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;->this$0:Lcom/anall/statusbar/NotificationDetector;

    #calls: Lcom/anall/statusbar/NotificationDetector;->callChanged(Landroid/os/Message;)V
    invoke-static {v8, v4}, Lcom/anall/statusbar/NotificationDetector;->access$0(Lcom/anall/statusbar/NotificationDetector;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 255
    :cond_7
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    if-nez v8, :cond_8

    .line 256
    const/4 v8, 0x2

    iput v8, v4, Landroid/os/Message;->arg1:I

    goto :goto_3

    .line 258
    :cond_8
    const/4 v8, 0x3

    iput v8, v4, Landroid/os/Message;->arg1:I

    goto :goto_3

    .line 261
    .end local v3           #mAudioManager:Landroid/media/AudioManager;
    .end local v4           #msg:Landroid/os/Message;
    :cond_9
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 262
    iget-object v8, p0, Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;->this$0:Lcom/anall/statusbar/NotificationDetector;

    #calls: Lcom/anall/statusbar/NotificationDetector;->initAirMode()V
    invoke-static {v8}, Lcom/anall/statusbar/NotificationDetector;->access$6(Lcom/anall/statusbar/NotificationDetector;)V

    goto/16 :goto_1

    .line 263
    :cond_a
    const-string v8, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 264
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 265
    .restart local v4       #msg:Landroid/os/Message;
    const/16 v8, 0x13

    iput v8, v4, Landroid/os/Message;->what:I

    .line 266
    const-string v8, "state"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 267
    const/4 v8, 0x1

    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 271
    :goto_4
    iget-object v8, p0, Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;->this$0:Lcom/anall/statusbar/NotificationDetector;

    #calls: Lcom/anall/statusbar/NotificationDetector;->callChanged(Landroid/os/Message;)V
    invoke-static {v8, v4}, Lcom/anall/statusbar/NotificationDetector;->access$0(Lcom/anall/statusbar/NotificationDetector;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 269
    :cond_b
    const/4 v8, 0x0

    iput v8, v4, Landroid/os/Message;->arg1:I

    goto :goto_4

    .line 272
    .end local v4           #msg:Landroid/os/Message;
    :cond_c
    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 273
    iget-object v8, p0, Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;->this$0:Lcom/anall/statusbar/NotificationDetector;

    #calls: Lcom/anall/statusbar/NotificationDetector;->initBluetooth()V
    invoke-static {v8}, Lcom/anall/statusbar/NotificationDetector;->access$7(Lcom/anall/statusbar/NotificationDetector;)V

    goto/16 :goto_1

    .line 274
    :cond_d
    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 275
    iget-object v8, p0, Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;->this$0:Lcom/anall/statusbar/NotificationDetector;

    #calls: Lcom/anall/statusbar/NotificationDetector;->detectNetWork()V
    invoke-static {v8}, Lcom/anall/statusbar/NotificationDetector;->access$8(Lcom/anall/statusbar/NotificationDetector;)V

    goto/16 :goto_1
.end method
