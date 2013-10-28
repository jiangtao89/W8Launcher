.class Lcom/app/download/task/CheckUpdateTask$3;
.super Ljava/lang/Object;
.source "CheckUpdateTask.java"

# interfaces
.implements Lcom/app/common/view/CustomDialog$CustomDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/download/task/CheckUpdateTask;->upgradeDialog(Lcom/app/download/bean/FileSeed;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/download/task/CheckUpdateTask;

.field private final synthetic val$isExit:Z

.field private final synthetic val$softSeed:Lcom/app/download/bean/FileSeed;


# direct methods
.method constructor <init>(Lcom/app/download/task/CheckUpdateTask;ZLcom/app/download/bean/FileSeed;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/download/task/CheckUpdateTask$3;->this$0:Lcom/app/download/task/CheckUpdateTask;

    iput-boolean p2, p0, Lcom/app/download/task/CheckUpdateTask$3;->val$isExit:Z

    iput-object p3, p0, Lcom/app/download/task/CheckUpdateTask$3;->val$softSeed:Lcom/app/download/bean/FileSeed;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/String;)V
    .locals 4
    .parameter "textInputed"

    .prologue
    const/4 v3, 0x1

    .line 92
    iget-boolean v0, p0, Lcom/app/download/task/CheckUpdateTask$3;->val$isExit:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/app/download/task/CheckUpdateTask$3;->this$0:Lcom/app/download/task/CheckUpdateTask;

    #getter for: Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/app/download/task/CheckUpdateTask;->access$0(Lcom/app/download/task/CheckUpdateTask;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/app/download/task/CheckUpdateTask$3;->val$softSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v2}, Lcom/app/download/bean/DownloadManager;->openFile(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/app/download/task/CheckUpdateTask$3;->val$softSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v3}, Lcom/app/download/bean/FileSeed;->setOpen(Z)V

    .line 97
    const-string v0, "llf"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/app/download/task/CheckUpdateTask$3;->val$softSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v2}, Lcom/app/download/bean/FileSeed;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/app/download/task/CheckUpdateTask$3;->this$0:Lcom/app/download/task/CheckUpdateTask;

    #getter for: Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/app/download/task/CheckUpdateTask;->access$0(Lcom/app/download/task/CheckUpdateTask;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/app/download/task/CheckUpdateTask$3;->val$softSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v2, v3}, Lcom/app/download/bean/DownloadManager;->downLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V

    goto :goto_0
.end method
