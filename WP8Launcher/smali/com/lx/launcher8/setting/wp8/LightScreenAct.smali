.class public Lcom/lx/launcher8/setting/wp8/LightScreenAct;
.super Landroid/app/Activity;
.source "LightScreenAct.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mLightLong:I

.field private mainLayout:Landroid/widget/LinearLayout;

.field private sysLight:F

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getScreenBrightness()I
    .locals 3

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, value:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "screen_brightness"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 133
    :goto_0
    return v1

    .line 130
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 63
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->setContentView(I)V

    .line 65
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->mainLayout:Landroid/widget/LinearLayout;

    .line 66
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->imageView:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/LightScreenAct$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/LightScreenAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/LightScreenAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->mainLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 74
    new-instance v0, Lcom/lx/launcher8/setting/wp8/LightScreenAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/LightScreenAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/LightScreenAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->mHandler:Landroid/os/Handler;

    .line 82
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lightLong_int"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->mLightLong:I

    .line 83
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->getScreenBrightness()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->sysLight:F

    .line 85
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->setBright(F)V

    .line 86
    new-instance v0, Lcom/lx/launcher8/util/LEDManager;

    invoke-direct {v0}, Lcom/lx/launcher8/util/LEDManager;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/util/LEDManager;->setLight(Ljava/lang/Boolean;)V

    .line 87
    return-void
.end method

.method private setBright(F)V
    .locals 5
    .parameter "light"

    .prologue
    const/16 v4, 0x65

    .line 95
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->setScreenBrightness(F)V

    .line 97
    const-wide/16 v0, 0x0

    .line 98
    .local v0, mis:J
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->mLightLong:I

    packed-switch v2, :pswitch_data_0

    .line 114
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 118
    :cond_0
    return-void

    .line 100
    :pswitch_0
    const-wide/16 v0, 0x7530

    .line 101
    goto :goto_0

    .line 103
    :pswitch_1
    const-wide/32 v0, 0xea60

    .line 104
    goto :goto_0

    .line 106
    :pswitch_2
    const-wide/32 v0, 0x2bf20

    .line 107
    goto :goto_0

    .line 109
    :pswitch_3
    const-wide/32 v0, 0x493e0

    .line 110
    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setScreenBrightness(F)V
    .locals 2
    .parameter "light"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 143
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 144
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 145
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->initView()V

    .line 38
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 53
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 56
    :cond_0
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->sysLight:F

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->setScreenBrightness(F)V

    .line 57
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 44
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 45
    const v1, 0x2000000a

    const-string v2, "MyActivity"

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 47
    return-void
.end method
