.class Lcom/lx/launcher8/db/LauncherModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->waitForIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$1;->this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 589
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$1;->this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    monitor-enter v1

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$1;->this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    const/4 v2, 0x1

    #setter for: Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z
    invoke-static {v0, v2}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->access$0(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;Z)V

    .line 594
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$1;->this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 589
    monitor-exit v1

    .line 596
    return-void

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
