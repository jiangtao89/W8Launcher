.class Lcom/lx/launcher8/AnallLauncher$9;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/AnallLauncher;
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
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$9;->this$0:Lcom/lx/launcher8/AnallLauncher;

    .line 2157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2159
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$9;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mWorkspace:Lcom/lx/launcher8/view/Workspace;
    invoke-static {v1}, Lcom/lx/launcher8/AnallLauncher;->access$7(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/view/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/view/Workspace;->hasWindowFocus()Z

    move-result v0

    .line 2160
    .local v0, fouse:Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$9;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mPaused:Z
    invoke-static {v1}, Lcom/lx/launcher8/AnallLauncher;->access$8(Lcom/lx/launcher8/AnallLauncher;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2161
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$9;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lx/launcher8/AnallLauncher;->access$9(Lcom/lx/launcher8/AnallLauncher;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher$9;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mStateBarHideRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/lx/launcher8/AnallLauncher;->access$10(Lcom/lx/launcher8/AnallLauncher;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2165
    :goto_0
    return-void

    .line 2163
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$9;->this$0:Lcom/lx/launcher8/AnallLauncher;

    const/4 v2, 0x0

    #calls: Lcom/lx/launcher8/AnallLauncher;->changeNotificationStatus(Z)V
    invoke-static {v1, v2}, Lcom/lx/launcher8/AnallLauncher;->access$11(Lcom/lx/launcher8/AnallLauncher;Z)V

    goto :goto_0
.end method
