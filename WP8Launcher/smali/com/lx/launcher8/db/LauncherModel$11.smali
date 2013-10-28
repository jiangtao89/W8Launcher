.class Lcom/lx/launcher8/db/LauncherModel$11;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/db/LauncherModel;->freshApps(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/db/LauncherModel;

.field private final synthetic val$callback:Ljava/lang/Runnable;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/LauncherModel;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel$11;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    iput-object p2, p0, Lcom/lx/launcher8/db/LauncherModel$11;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/lx/launcher8/db/LauncherModel$11;->val$callback:Ljava/lang/Runnable;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 503
    new-instance v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$11;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$11;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;-><init>(Lcom/lx/launcher8/db/LauncherModel;Landroid/content/Context;Z)V

    #calls: Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->loadAllAppsByBatch()V
    invoke-static {v0}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->access$1(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;)V

    .line 504
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$11;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$11;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mHandler:Lcom/lx/launcher8/db/DeferredHandler;
    invoke-static {v0}, Lcom/lx/launcher8/db/LauncherModel;->access$2(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DeferredHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$11;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/db/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 506
    :cond_0
    return-void
.end method
