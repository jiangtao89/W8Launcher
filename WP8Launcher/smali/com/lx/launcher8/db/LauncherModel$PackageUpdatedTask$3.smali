.class Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;

.field private final synthetic val$callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

.field private final synthetic val$removedFinal:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;Lcom/lx/launcher8/db/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask$3;->this$1:Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask$3;->val$callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask$3;->val$removedFinal:Ljava/util/ArrayList;

    .line 1346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1348
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask$3;->this$1:Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;

    #getter for: Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;
    invoke-static {v1}, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->access$0(Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;)Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/lx/launcher8/db/LauncherModel;->access$3(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask$3;->this$1:Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;

    #getter for: Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;
    invoke-static {v1}, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->access$0(Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;)Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/lx/launcher8/db/LauncherModel;->access$3(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    move-object v0, v1

    .line 1349
    .local v0, cb:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask$3;->val$callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 1350
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask$3;->val$callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask$3;->val$removedFinal:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/lx/launcher8/db/LauncherModel$Callbacks;->bindAppsRemoved(Ljava/util/ArrayList;)V

    .line 1352
    :cond_0
    return-void

    .line 1348
    .end local v0           #cb:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
