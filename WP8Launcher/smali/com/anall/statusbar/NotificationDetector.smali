.class public Lcom/anall/statusbar/NotificationDetector;
.super Ljava/util/Observable;
.source "NotificationDetector.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;
    }
.end annotation


# instance fields
.field private hideRun:Ljava/lang/Runnable;

.field public isHideView:I

.field public isObservered:Z

.field private mBroadcast:Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field public mHideTime:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLocation:Landroid/location/LocationManager;

.field private mSdf:Ljava/text/SimpleDateFormat;

.field private mTimeRunnable:Ljava/lang/Runnable;

.field private singalListener:Landroid/telephony/PhoneStateListener;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "con"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 39
    iput-boolean v1, p0, Lcom/anall/statusbar/NotificationDetector;->isObservered:Z

    .line 178
    new-instance v0, Lcom/anall/statusbar/NotificationDetector$1;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/NotificationDetector$1;-><init>(Lcom/anall/statusbar/NotificationDetector;)V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->singalListener:Landroid/telephony/PhoneStateListener;

    .line 326
    iput v1, p0, Lcom/anall/statusbar/NotificationDetector;->isHideView:I

    .line 327
    const/16 v0, 0xa

    iput v0, p0, Lcom/anall/statusbar/NotificationDetector;->mHideTime:I

    .line 339
    new-instance v0, Lcom/anall/statusbar/NotificationDetector$2;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/NotificationDetector$2;-><init>(Lcom/anall/statusbar/NotificationDetector;)V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mTimeRunnable:Ljava/lang/Runnable;

    .line 384
    new-instance v0, Lcom/anall/statusbar/NotificationDetector$3;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/NotificationDetector$3;-><init>(Lcom/anall/statusbar/NotificationDetector;)V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->hideRun:Ljava/lang/Runnable;

    .line 42
    iput-object p1, p0, Lcom/anall/statusbar/NotificationDetector;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/anall/statusbar/NotificationDetector;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/anall/statusbar/NotificationDetector;->callChanged(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1(Lcom/anall/statusbar/NotificationDetector;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/anall/statusbar/NotificationDetector;->watchSignal(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/anall/statusbar/NotificationDetector;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mSdf:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$3(Lcom/anall/statusbar/NotificationDetector;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/anall/statusbar/NotificationDetector;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/anall/statusbar/NotificationDetector;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mTimeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/anall/statusbar/NotificationDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationDetector;->initAirMode()V

    return-void
.end method

.method static synthetic access$7(Lcom/anall/statusbar/NotificationDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationDetector;->initBluetooth()V

    return-void
.end method

.method static synthetic access$8(Lcom/anall/statusbar/NotificationDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationDetector;->detectNetWork()V

    return-void
.end method

.method private callChanged(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationDetector;->setChanged()V

    .line 301
    invoke-virtual {p0, p1}, Lcom/anall/statusbar/NotificationDetector;->notifyObservers(Ljava/lang/Object;)V

    .line 303
    :cond_0
    return-void
.end method

.method private detectNetWork()V
    .locals 5

    .prologue
    .line 192
    iget-object v3, p0, Lcom/anall/statusbar/NotificationDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 193
    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 192
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 194
    .local v0, manager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 197
    .local v2, networkinfo:Landroid/net/NetworkInfo;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 198
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x18

    iput v3, v1, Landroid/os/Message;->what:I

    .line 199
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 200
    :cond_1
    const/4 v3, -0x1

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 201
    invoke-direct {p0, v1}, Lcom/anall/statusbar/NotificationDetector;->callChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 205
    invoke-direct {p0, v1}, Lcom/anall/statusbar/NotificationDetector;->callChanged(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private initAirMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 130
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x14

    iput v2, v1, Landroid/os/Message;->what:I

    .line 131
    iget-object v2, p0, Lcom/anall/statusbar/NotificationDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 132
    const-string v3, "airplane_mode_on"

    .line 131
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 133
    .local v0, air:I
    if-nez v0, :cond_0

    .line 134
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 139
    :goto_0
    invoke-direct {p0, v1}, Lcom/anall/statusbar/NotificationDetector;->callChanged(Landroid/os/Message;)V

    .line 140
    return-void

    .line 136
    :cond_0
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method

.method private initBluetooth()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xa

    .line 110
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 111
    .local v0, blue:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    .line 115
    .local v2, state:I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 116
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x17

    iput v3, v1, Landroid/os/Message;->what:I

    .line 117
    if-ne v2, v4, :cond_2

    .line 118
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 122
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/anall/statusbar/NotificationDetector;->callChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 119
    :cond_2
    if-ne v2, v5, :cond_1

    .line 120
    iput v5, v1, Landroid/os/Message;->arg1:I

    goto :goto_1
.end method

.method private onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 286
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mBroadcast:Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/anall/statusbar/NotificationDetector;->mBroadcast:Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/anall/statusbar/NotificationDetector;->singalListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 289
    iput-object v3, p0, Lcom/anall/statusbar/NotificationDetector;->mBroadcast:Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mLocation:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mLocation:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 293
    iput-object v3, p0, Lcom/anall/statusbar/NotificationDetector;->mLocation:Landroid/location/LocationManager;

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anall/statusbar/NotificationDetector;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mBroadcast:Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v0, Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;-><init>(Lcom/anall/statusbar/NotificationDetector;)V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mBroadcast:Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    .line 52
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/anall/statusbar/NotificationDetector;->mBroadcast:Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;

    iget-object v2, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    .line 60
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/anall/statusbar/NotificationDetector;->mBroadcast:Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;

    iget-object v2, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    .line 67
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/anall/statusbar/NotificationDetector;->mBroadcast:Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;

    iget-object v2, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    .line 72
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/anall/statusbar/NotificationDetector;->mBroadcast:Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;

    iget-object v2, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    .line 78
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/anall/statusbar/NotificationDetector;->mBroadcast:Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;

    iget-object v2, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    .line 83
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/anall/statusbar/NotificationDetector;->mBroadcast:Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;

    iget-object v2, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    .line 89
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/anall/statusbar/NotificationDetector;->mBroadcast:Lcom/anall/statusbar/NotificationDetector$NotifyBroadcast;

    iget-object v2, p0, Lcom/anall/statusbar/NotificationDetector;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mLocation:Landroid/location/LocationManager;

    .line 94
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mLocation:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    goto/16 :goto_0
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 330
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mHandler:Landroid/os/Handler;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mSdf:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_1

    .line 334
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy#MM#dd#HH:mm#ss"

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mSdf:Ljava/text/SimpleDateFormat;

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anall/statusbar/NotificationDetector;->mTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    return-void
.end method

.method private watchSignal(Z)V
    .locals 9
    .parameter "listener"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 146
    iget-object v2, p0, Lcom/anall/statusbar/NotificationDetector;->mContext:Landroid/content/Context;

    .line 147
    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 146
    iput-object v2, p0, Lcom/anall/statusbar/NotificationDetector;->tm:Landroid/telephony/TelephonyManager;

    .line 148
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 149
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x12

    iput v2, v0, Landroid/os/Message;->what:I

    .line 150
    iget-object v2, p0, Lcom/anall/statusbar/NotificationDetector;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v8, :cond_5

    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget-object v2, p0, Lcom/anall/statusbar/NotificationDetector;->tm:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/anall/statusbar/NotificationDetector;->singalListener:Landroid/telephony/PhoneStateListener;

    .line 153
    const/16 v4, 0x100

    .line 152
    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/anall/statusbar/NotificationDetector;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 156
    .local v1, type:I
    if-eq v1, v7, :cond_1

    .line 157
    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 158
    if-eq v1, v8, :cond_1

    .line 159
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 160
    :cond_1
    iput v7, v0, Landroid/os/Message;->arg1:I

    .line 172
    .end local v1           #type:I
    :goto_0
    invoke-direct {p0, v0}, Lcom/anall/statusbar/NotificationDetector;->callChanged(Landroid/os/Message;)V

    .line 173
    return-void

    .line 161
    .restart local v1       #type:I
    :cond_2
    if-eq v1, v5, :cond_3

    .line 162
    if-eq v1, v6, :cond_3

    .line 163
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 164
    :cond_3
    iput v6, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 166
    :cond_4
    iput v5, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 170
    .end local v1           #type:I
    :cond_5
    const/4 v2, -0x1

    iput v2, v0, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 307
    invoke-super {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 308
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationDetector;->registerReceiver()V

    .line 309
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationDetector;->onStart()V

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anall/statusbar/NotificationDetector;->isObservered:Z

    .line 311
    return-void
.end method

.method public autoHideNotification(Z)V
    .locals 2
    .parameter "isAnima"

    .prologue
    .line 367
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 368
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 369
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 370
    invoke-direct {p0, v0}, Lcom/anall/statusbar/NotificationDetector;->callChanged(Landroid/os/Message;)V

    .line 371
    invoke-virtual {p0}, Lcom/anall/statusbar/NotificationDetector;->hideView()V

    .line 372
    return-void
.end method

.method public declared-synchronized deleteObserver(Ljava/util/Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 317
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationDetector;->onDestroy()V

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anall/statusbar/NotificationDetector;->isObservered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hideView()V
    .locals 4

    .prologue
    .line 375
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anall/statusbar/NotificationDetector;->hideRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    iget v0, p0, Lcom/anall/statusbar/NotificationDetector;->mHideTime:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 377
    const/4 v0, 0x0

    iput v0, p0, Lcom/anall/statusbar/NotificationDetector;->isHideView:I

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/anall/statusbar/NotificationDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anall/statusbar/NotificationDetector;->hideRun:Ljava/lang/Runnable;

    iget v2, p0, Lcom/anall/statusbar/NotificationDetector;->mHideTime:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onGpsStatusChanged(I)V
    .locals 2
    .parameter "event"

    .prologue
    .line 397
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 398
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 399
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 400
    invoke-direct {p0, v0}, Lcom/anall/statusbar/NotificationDetector;->callChanged(Landroid/os/Message;)V

    .line 401
    return-void

    .line 399
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/anall/statusbar/NotificationDetector;->watchSignal(Z)V

    .line 100
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationDetector;->initAirMode()V

    .line 101
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationDetector;->initBluetooth()V

    .line 102
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationDetector;->updateTime()V

    .line 103
    invoke-direct {p0}, Lcom/anall/statusbar/NotificationDetector;->detectNetWork()V

    .line 104
    return-void
.end method
