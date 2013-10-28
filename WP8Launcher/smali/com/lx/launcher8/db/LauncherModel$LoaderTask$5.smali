.class Lcom/lx/launcher8/db/LauncherModel$LoaderTask$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->onlyBindAllApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

.field private final synthetic val$list:Ljava/util/ArrayList;

.field private final synthetic val$oldCallbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;Lcom/lx/launcher8/db/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$5;->this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$5;->val$oldCallbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$5;->val$list:Ljava/util/ArrayList;

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1023
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1024
    .local v1, t:J
    iget-object v3, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$5;->this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    iget-object v4, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$5;->val$oldCallbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/lx/launcher8/db/LauncherModel$Callbacks;)Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    move-result-object v0

    .line 1025
    .local v0, callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1026
    iget-object v3, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$5;->val$list:Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Lcom/lx/launcher8/db/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    .line 1032
    :cond_0
    return-void
.end method
