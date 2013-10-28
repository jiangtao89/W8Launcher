.class public Lcom/lx/launcher8/setting/wp8/LightAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "LightAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;
    }
.end annotation


# instance fields
.field private btnClose:Landroid/widget/Button;

.field private curPower:I

.field private led:Lcom/lx/launcher8/util/LEDManager;

.field private mHandler:Landroid/os/Handler;

.field private mMain:Landroid/widget/RelativeLayout;

.field private powerReceiver:Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;

.field private tvPower:Landroid/widget/TextView;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/LightAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->curPower:I

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/LightAct;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/LightAct;)Lcom/lx/launcher8/util/LEDManager;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->led:Lcom/lx/launcher8/util/LEDManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/LightAct;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LightAct;->setBackground()V

    return-void
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/wp8/LightAct;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->curPower:I

    return v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/wp8/LightAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/LightAct;->setPower(I)V

    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 79
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LightAct;->setContentView(I)V

    .line 81
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LightAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->mMain:Landroid/widget/RelativeLayout;

    .line 82
    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LightAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->btnClose:Landroid/widget/Button;

    .line 83
    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LightAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->tvPower:Landroid/widget/TextView;

    .line 84
    new-instance v0, Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;-><init>(Lcom/lx/launcher8/setting/wp8/LightAct;Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->powerReceiver:Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;

    .line 85
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->btnClose:Landroid/widget/Button;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/LightAct$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/LightAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/LightAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    new-instance v0, Lcom/lx/launcher8/setting/wp8/LightAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/LightAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/LightAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->mHandler:Landroid/os/Handler;

    .line 102
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->powerReceiver:Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/LightAct;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    new-instance v1, Lcom/lx/launcher8/util/LEDManager;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->mHandler:Landroid/os/Handler;

    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LightAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->mMain:Landroid/widget/RelativeLayout;

    invoke-direct {v1, v2, v0, v3}, Lcom/lx/launcher8/util/LEDManager;-><init>(Landroid/os/Handler;Landroid/view/SurfaceView;Landroid/widget/RelativeLayout;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->led:Lcom/lx/launcher8/util/LEDManager;

    .line 105
    invoke-static {}, Lcom/lx/launcher8/util/LEDManager;->isClose()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->mMain:Landroid/widget/RelativeLayout;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 108
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/LightAct;->setPower(I)V

    .line 109
    return-void
.end method

.method private setBackground()V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/lx/launcher8/util/LEDManager;->isClose()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->mMain:Landroid/widget/RelativeLayout;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->mMain:Landroid/widget/RelativeLayout;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setPower(I)V
    .locals 3
    .parameter "p"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->tvPower:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0a0103

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LightAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LightAct;->setResult(I)V

    .line 41
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LightAct;->initView()V

    .line 42
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onPause()V

    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->powerReceiver:Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->powerReceiver:Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LightAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->powerReceiver:Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;->clearAbortBroadcast()V

    .line 65
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onResume()V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LightAct;->setRequestedOrientation(I)V

    .line 49
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LightAct;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 50
    const v1, 0x2000000a

    const-string v2, "MyActivity"

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 51
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 52
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct;->led:Lcom/lx/launcher8/util/LEDManager;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/util/LEDManager;->setLight(Ljava/lang/Boolean;)V

    .line 72
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LightAct;->setBackground()V

    .line 73
    return-void
.end method
