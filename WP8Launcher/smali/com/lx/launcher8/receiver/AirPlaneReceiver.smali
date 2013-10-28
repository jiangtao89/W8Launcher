.class public Lcom/lx/launcher8/receiver/AirPlaneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AirPlaneReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/receiver/AirPlaneReceiver$OnAirplaneModeChange;
    }
.end annotation


# instance fields
.field private mListener:Lcom/lx/launcher8/receiver/AirPlaneReceiver$OnAirplaneModeChange;

.field private mRegisteFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public isAirOpen(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 58
    .local v0, mode:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public listen(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    iget-boolean v1, p0, Lcom/lx/launcher8/receiver/AirPlaneReceiver;->mRegisteFlag:Z

    if-nez v1, :cond_0

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lx/launcher8/receiver/AirPlaneReceiver;->mRegisteFlag:Z

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/receiver/AirPlaneReceiver;->isAirOpen(Landroid/content/Context;)Z

    move-result v1

    .line 33
    .local v1, enable:Z
    iget-object v2, p0, Lcom/lx/launcher8/receiver/AirPlaneReceiver;->mListener:Lcom/lx/launcher8/receiver/AirPlaneReceiver$OnAirplaneModeChange;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lx/launcher8/receiver/AirPlaneReceiver;->mListener:Lcom/lx/launcher8/receiver/AirPlaneReceiver$OnAirplaneModeChange;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/lx/launcher8/receiver/AirPlaneReceiver$OnAirplaneModeChange;->onAirplaneChanged(ZZ)V

    .line 35
    .end local v1           #enable:Z
    :cond_0
    return-void
.end method

.method public setOnAirListener(Lcom/lx/launcher8/receiver/AirPlaneReceiver$OnAirplaneModeChange;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lx/launcher8/receiver/AirPlaneReceiver;->mListener:Lcom/lx/launcher8/receiver/AirPlaneReceiver$OnAirplaneModeChange;

    .line 39
    return-void
.end method

.method public unListen(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/lx/launcher8/receiver/AirPlaneReceiver;->mRegisteFlag:Z

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/receiver/AirPlaneReceiver;->mRegisteFlag:Z

    .line 52
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    :cond_0
    return-void
.end method
