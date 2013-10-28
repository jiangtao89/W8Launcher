.class Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LightAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/LightAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/LightAct;


# direct methods
.method private constructor <init>(Lcom/lx/launcher8/setting/wp8/LightAct;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;->this$0:Lcom/lx/launcher8/setting/wp8/LightAct;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lx/launcher8/setting/wp8/LightAct;Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;-><init>(Lcom/lx/launcher8/setting/wp8/LightAct;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const-string v2, "level"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 142
    .local v0, level:I
    const-string v2, "scale"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, scale:I
    if-nez v1, :cond_1

    .line 144
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;->this$0:Lcom/lx/launcher8/setting/wp8/LightAct;

    #setter for: Lcom/lx/launcher8/setting/wp8/LightAct;->curPower:I
    invoke-static {v2, v4}, Lcom/lx/launcher8/setting/wp8/LightAct;->access$0(Lcom/lx/launcher8/setting/wp8/LightAct;I)V

    .line 149
    :goto_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;->this$0:Lcom/lx/launcher8/setting/wp8/LightAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LightAct;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/LightAct;->access$1(Lcom/lx/launcher8/setting/wp8/LightAct;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;->this$0:Lcom/lx/launcher8/setting/wp8/LightAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LightAct;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/LightAct;->access$1(Lcom/lx/launcher8/setting/wp8/LightAct;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 153
    .end local v0           #level:I
    .end local v1           #scale:I
    :cond_0
    return-void

    .line 146
    .restart local v0       #level:I
    .restart local v1       #scale:I
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LightAct$PowerBroadcastReceiver;->this$0:Lcom/lx/launcher8/setting/wp8/LightAct;

    mul-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v1

    #setter for: Lcom/lx/launcher8/setting/wp8/LightAct;->curPower:I
    invoke-static {v2, v3}, Lcom/lx/launcher8/setting/wp8/LightAct;->access$0(Lcom/lx/launcher8/setting/wp8/LightAct;I)V

    goto :goto_0
.end method
