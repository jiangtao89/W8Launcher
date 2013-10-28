.class Lcom/lx/launcher8/setting/wp8/LightAct$2;
.super Landroid/os/Handler;
.source "LightAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/LightAct;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/LightAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LightAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LightAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LightAct;

    .line 92
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LightAct;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LightAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LightAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LightAct;->curPower:I
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LightAct;->access$4(Lcom/lx/launcher8/setting/wp8/LightAct;)I

    move-result v1

    #calls: Lcom/lx/launcher8/setting/wp8/LightAct;->setPower(I)V
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/LightAct;->access$5(Lcom/lx/launcher8/setting/wp8/LightAct;I)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LightAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LightAct;->led:Lcom/lx/launcher8/util/LEDManager;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/LightAct;->access$2(Lcom/lx/launcher8/setting/wp8/LightAct;)Lcom/lx/launcher8/util/LEDManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/util/LEDManager;->setLight(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
