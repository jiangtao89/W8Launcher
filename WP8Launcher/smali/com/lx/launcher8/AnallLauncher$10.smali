.class Lcom/lx/launcher8/AnallLauncher$10;
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
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$10;->this$0:Lcom/lx/launcher8/AnallLauncher;

    .line 2168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher$10;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #calls: Lcom/lx/launcher8/AnallLauncher;->launcherNetCheck()V
    invoke-static {v0}, Lcom/lx/launcher8/AnallLauncher;->access$12(Lcom/lx/launcher8/AnallLauncher;)V

    .line 2172
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher$10;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lx/launcher8/AnallLauncher;->access$9(Lcom/lx/launcher8/AnallLauncher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$10;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mNetCheckRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lx/launcher8/AnallLauncher;->access$13(Lcom/lx/launcher8/AnallLauncher;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2173
    return-void
.end method
