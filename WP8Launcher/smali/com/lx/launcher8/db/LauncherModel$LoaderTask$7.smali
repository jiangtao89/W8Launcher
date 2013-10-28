.class Lcom/lx/launcher8/db/LauncherModel$LoaderTask$7;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->loadPackageApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

.field private final synthetic val$added:Ljava/util/ArrayList;

.field private final synthetic val$callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

.field private final synthetic val$first:Z


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;Lcom/lx/launcher8/db/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$7;->this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$7;->val$callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    iput-boolean p3, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$7;->val$first:Z

    iput-object p4, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$7;->val$added:Ljava/util/ArrayList;

    .line 1176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1178
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1179
    .local v0, t:J
    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$7;->val$callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    if-eqz v2, :cond_1

    .line 1180
    iget-boolean v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$7;->val$first:Z

    if-eqz v2, :cond_0

    .line 1181
    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$7;->val$callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    iget-object v3, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$7;->val$added:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/lx/launcher8/db/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    .line 1192
    :goto_0
    return-void

    .line 1183
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$7;->val$callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    iget-object v3, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$7;->val$added:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/lx/launcher8/db/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 1190
    :cond_1
    const-string v2, "LauncherModel"

    const-string v3, "not binding apps: no Launcher activity"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
