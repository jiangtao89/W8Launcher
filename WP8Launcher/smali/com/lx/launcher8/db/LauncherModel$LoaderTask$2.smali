.class Lcom/lx/launcher8/db/LauncherModel$LoaderTask$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->bindWorkspace(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

.field private final synthetic val$oldCallbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;Lcom/lx/launcher8/db/LauncherModel$Callbacks;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$2;->this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$2;->val$oldCallbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 951
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$2;->this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$2;->val$oldCallbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/lx/launcher8/db/LauncherModel$Callbacks;)Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    move-result-object v0

    .line 952
    .local v0, callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 953
    invoke-interface {v0}, Lcom/lx/launcher8/db/LauncherModel$Callbacks;->startBinding()V

    .line 955
    :cond_0
    return-void
.end method
