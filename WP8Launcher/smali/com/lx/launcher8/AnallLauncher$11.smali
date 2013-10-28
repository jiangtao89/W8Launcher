.class Lcom/lx/launcher8/AnallLauncher$11;
.super Landroid/os/Handler;
.source "AnallLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/AnallLauncher;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/AnallLauncher;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/AnallLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$11;->this$0:Lcom/lx/launcher8/AnallLauncher;

    .line 233
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 236
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher$11;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->led:Lcom/lx/launcher8/util/LEDManager;
    invoke-static {v0}, Lcom/lx/launcher8/AnallLauncher;->access$14(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/util/LEDManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher$11;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->led:Lcom/lx/launcher8/util/LEDManager;
    invoke-static {v0}, Lcom/lx/launcher8/AnallLauncher;->access$14(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/util/LEDManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/util/LEDManager;->setLight(Ljava/lang/Boolean;)V

    .line 241
    :cond_0
    return-void
.end method
