.class Lcom/lx/launcher8/db/LauncherModel$LoaderTask$6;
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

.field private final synthetic val$callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;Lcom/lx/launcher8/db/LauncherModel$Callbacks;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$6;->this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$6;->val$callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    .line 1035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$6;->val$callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$6;->val$callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    invoke-interface {v0}, Lcom/lx/launcher8/db/LauncherModel$Callbacks;->finishBindingApps()V

    .line 1045
    :goto_0
    return-void

    .line 1043
    :cond_0
    const-string v0, "LauncherModel"

    const-string v1, "not finish cache binding apps: no Launcher activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
