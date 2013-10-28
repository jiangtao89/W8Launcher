.class public Lcom/lx/launcher8/util/LEDManager;
.super Ljava/lang/Object;
.source "LEDManager.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static mBrand:Ljava/lang/String;

.field private static mCamera:Landroid/hardware/Camera;

.field private static mMain:Landroid/widget/RelativeLayout;

.field private static mModel:Ljava/lang/String;

.field private static mStatus:Z


# instance fields
.field private close:[B

.field private mCellInfo:Lcom/lx/launcher8/bean/LightCell;

.field private mHandler:Landroid/os/Handler;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mMode:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mSCView:Lcom/lx/launcher8/view/SimpleCellView;

.field private mSony:Ljava/lang/String;

.field private open:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "/sys/class/leds/blue/brightness"

    iput-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->mSony:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->mPath:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->mMode:Ljava/lang/String;

    .line 30
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->close:[B

    .line 31
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->open:[B

    .line 36
    return-void

    .line 30
    nop

    :array_0
    .array-data 0x1
        0x30t
        0x30t
        0x30t
    .end array-data

    .line 31
    :array_1
    .array-data 0x1
        0x31t
        0x30t
        0x30t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/view/SurfaceView;)V
    .locals 1
    .parameter "handler"
    .parameter "sv"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lx/launcher8/util/LEDManager;-><init>(Landroid/os/Handler;Landroid/view/SurfaceView;Landroid/widget/RelativeLayout;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/view/SurfaceView;Landroid/widget/RelativeLayout;)V
    .locals 2
    .parameter "handler"
    .parameter "sv"
    .parameter "ly"

    .prologue
    const/4 v1, 0x3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "/sys/class/leds/blue/brightness"

    iput-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->mSony:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->mPath:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->mMode:Ljava/lang/String;

    .line 30
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->close:[B

    .line 31
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->open:[B

    .line 43
    sput-object p3, Lcom/lx/launcher8/util/LEDManager;->mMain:Landroid/widget/RelativeLayout;

    .line 44
    iput-object p1, p0, Lcom/lx/launcher8/util/LEDManager;->mHandler:Landroid/os/Handler;

    .line 45
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/AnallApp;->getSCView()Lcom/lx/launcher8/view/SimpleCellView;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->mSCView:Lcom/lx/launcher8/view/SimpleCellView;

    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->mSCView:Lcom/lx/launcher8/view/SimpleCellView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/SimpleCellView;->getCellInfo()Lcom/lx/launcher8/bean/AppCell;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bean/LightCell;

    iput-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->mCellInfo:Lcom/lx/launcher8/bean/LightCell;

    .line 47
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/lx/launcher8/util/LEDManager;->mBrand:Ljava/lang/String;

    .line 48
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/lx/launcher8/util/LEDManager;->mModel:Ljava/lang/String;

    .line 50
    const-string v0, "Sony Ericsson"

    sget-object v1, Lcom/lx/launcher8/util/LEDManager;->mBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->mSony:Ljava/lang/String;

    iput-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->mPath:Ljava/lang/String;

    .line 58
    :goto_0
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->mHolder:Landroid/view/SurfaceHolder;

    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 60
    return-void

    .line 52
    :cond_0
    sget-object v0, Lcom/lx/launcher8/util/LEDManager;->mModel:Ljava/lang/String;

    const-string v1, "MEIZU MX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const-string v0, "on"

    iput-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->mMode:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "torch"

    iput-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->mMode:Ljava/lang/String;

    goto :goto_0

    .line 30
    :array_0
    .array-data 0x1
        0x30t
        0x30t
        0x30t
    .end array-data

    .line 31
    :array_1
    .array-data 0x1
        0x31t
        0x30t
        0x30t
    .end array-data
.end method

.method private closeLight()V
    .locals 4

    .prologue
    .line 137
    iget-object v2, p0, Lcom/lx/launcher8/util/LEDManager;->mPath:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_3

    .line 139
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/lx/launcher8/util/LEDManager;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 140
    .local v0, localFileOutputStream:Ljava/io/FileOutputStream;
    iget-object v2, p0, Lcom/lx/launcher8/util/LEDManager;->close:[B

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 141
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0           #localFileOutputStream:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lx/launcher8/util/LEDManager;->mStatus:Z

    .line 154
    iget-object v2, p0, Lcom/lx/launcher8/util/LEDManager;->mSCView:Lcom/lx/launcher8/view/SimpleCellView;

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/lx/launcher8/util/LEDManager;->mSCView:Lcom/lx/launcher8/view/SimpleCellView;

    iget-object v3, p0, Lcom/lx/launcher8/util/LEDManager;->mCellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/LightCell;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/SimpleCellView;->setImageIcon(Landroid/graphics/Bitmap;)V

    .line 157
    :cond_1
    sget-object v2, Lcom/lx/launcher8/util/LEDManager;->mMain:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    .line 158
    sget-object v2, Lcom/lx/launcher8/util/LEDManager;->mMain:Landroid/widget/RelativeLayout;

    const v3, 0x7f0200c5

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 160
    :cond_2
    return-void

    .line 144
    :cond_3
    sget-object v2, Lcom/lx/launcher8/util/LEDManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 145
    sget-object v2, Lcom/lx/launcher8/util/LEDManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 146
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 147
    sget-object v2, Lcom/lx/launcher8/util/LEDManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 148
    sget-object v2, Lcom/lx/launcher8/util/LEDManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 149
    sget-object v2, Lcom/lx/launcher8/util/LEDManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 150
    const/4 v2, 0x0

    sput-object v2, Lcom/lx/launcher8/util/LEDManager;->mCamera:Landroid/hardware/Camera;

    goto :goto_0

    .line 142
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isClose()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/lx/launcher8/util/LEDManager;->mStatus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private openLight(Landroid/view/SurfaceHolder;)V
    .locals 7
    .parameter "holder"

    .prologue
    const/4 v6, 0x0

    .line 92
    const/4 v4, 0x1

    :try_start_0
    sput-boolean v4, Lcom/lx/launcher8/util/LEDManager;->mStatus:Z

    .line 93
    iget-object v4, p0, Lcom/lx/launcher8/util/LEDManager;->mSCView:Lcom/lx/launcher8/view/SimpleCellView;

    iget-object v5, p0, Lcom/lx/launcher8/util/LEDManager;->mCellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v5, v5, Lcom/lx/launcher8/bean/LightCell;->icon2:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/SimpleCellView;->setImageIcon(Landroid/graphics/Bitmap;)V

    .line 95
    iget-object v4, p0, Lcom/lx/launcher8/util/LEDManager;->mPath:Ljava/lang/String;

    const-string v5, ""

    if-eq v4, v5, :cond_1

    .line 96
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/lx/launcher8/util/LEDManager;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 97
    .local v0, localFileOutputStream:Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/lx/launcher8/util/LEDManager;->open:[B

    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 98
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v0           #localFileOutputStream:Ljava/io/FileOutputStream;
    :goto_0
    const-wide/16 v1, 0x0

    .line 111
    .local v1, mis:J
    iget-object v4, p0, Lcom/lx/launcher8/util/LEDManager;->mCellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v4, v4, Lcom/lx/launcher8/bean/LightCell;->lightLong:I

    packed-switch v4, :pswitch_data_0

    .line 127
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/lx/launcher8/util/LEDManager;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 128
    iget-object v4, p0, Lcom/lx/launcher8/util/LEDManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object v4, p0, Lcom/lx/launcher8/util/LEDManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 131
    :cond_0
    return-void

    .line 100
    .end local v1           #mis:J
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v4

    sput-object v4, Lcom/lx/launcher8/util/LEDManager;->mCamera:Landroid/hardware/Camera;

    .line 101
    sget-object v4, Lcom/lx/launcher8/util/LEDManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 102
    .local v3, parameters:Landroid/hardware/Camera$Parameters;
    iget-object v4, p0, Lcom/lx/launcher8/util/LEDManager;->mMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 103
    sget-object v4, Lcom/lx/launcher8/util/LEDManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 104
    sget-object v4, Lcom/lx/launcher8/util/LEDManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 105
    sget-object v4, Lcom/lx/launcher8/util/LEDManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 107
    .end local v3           #parameters:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 113
    .restart local v1       #mis:J
    :pswitch_0
    const-wide/16 v1, 0x7530

    .line 114
    goto :goto_1

    .line 116
    :pswitch_1
    const-wide/32 v1, 0xea60

    .line 117
    goto :goto_1

    .line 119
    :pswitch_2
    const-wide/32 v1, 0x2bf20

    .line 120
    goto :goto_1

    .line 122
    :pswitch_3
    const-wide/32 v1, 0x493e0

    .line 123
    goto :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public setLight(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "isClose"

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lx/launcher8/util/LEDManager;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/lx/launcher8/util/LEDManager;->mStatus:Z

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/lx/launcher8/util/LEDManager;->closeLight()V

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/util/LEDManager;->mHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/util/LEDManager;->openLight(Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 164
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 168
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 172
    return-void
.end method
