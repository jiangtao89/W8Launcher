.class Lcom/lx/launcher8/db/LauncherModel$LoaderTask$3;
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

.field private final synthetic val$chunkSize:I

.field private final synthetic val$oldCallbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

.field private final synthetic val$start:I

.field private final synthetic val$workspaceItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;Lcom/lx/launcher8/db/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$3;->this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$3;->val$oldCallbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$3;->val$workspaceItems:Ljava/util/ArrayList;

    iput p4, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$3;->val$start:I

    iput p5, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$3;->val$chunkSize:I

    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 968
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$3;->this$1:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$3;->val$oldCallbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/lx/launcher8/db/LauncherModel$Callbacks;)Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    move-result-object v0

    .line 969
    .local v0, callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 970
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$3;->val$workspaceItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$3;->val$start:I

    iget v3, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$3;->val$start:I

    iget v4, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$3;->val$chunkSize:I

    add-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/lx/launcher8/db/LauncherModel$Callbacks;->bindCell(Ljava/util/ArrayList;II)V

    .line 972
    :cond_0
    return-void
.end method
