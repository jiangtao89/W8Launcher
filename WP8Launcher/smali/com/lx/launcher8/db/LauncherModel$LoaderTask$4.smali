.class Lcom/lx/launcher8/db/LauncherModel$LoaderTask$4;
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

.field private final synthetic val$t:J


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;Lcom/lx/launcher8/db/LauncherModel$Callbacks;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$4;->this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$4;->val$oldCallbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    iput-wide p3, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$4;->val$t:J

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 978
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$4;->this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$4;->val$oldCallbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/lx/launcher8/db/LauncherModel$Callbacks;)Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    move-result-object v0

    .line 979
    .local v0, callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 980
    invoke-interface {v0}, Lcom/lx/launcher8/db/LauncherModel$Callbacks;->finishBindingCell()V

    .line 988
    :cond_0
    return-void
.end method
