.class Lcom/lx/launcher8/AnallLauncher$24;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/AnallLauncher;->onCallReceive(ILjava/lang/String;)V
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
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$24;->this$0:Lcom/lx/launcher8/AnallLauncher;

    .line 1862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1865
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$24;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v1, v1, Lcom/lx/launcher8/AnallLauncher;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    invoke-virtual {v1}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->getMissedCall()I

    move-result v0

    .line 1866
    .local v0, mc:I
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$24;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #calls: Lcom/lx/launcher8/AnallLauncher;->setFunDialNum(I)V
    invoke-static {v1, v0}, Lcom/lx/launcher8/AnallLauncher;->access$20(Lcom/lx/launcher8/AnallLauncher;I)V

    .line 1867
    return-void
.end method
