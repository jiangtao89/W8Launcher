.class public Lcom/lx/launcher8/task/DownloadWP8ApkTask;
.super Lcom/app/common/task/Task;
.source "DownloadWP8ApkTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;
    }
.end annotation


# instance fields
.field private mAct:Landroid/app/Activity;

.field private mBll:Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;

.field final mCheckUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "act"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/app/common/task/Task;-><init>(Landroid/app/Activity;)V

    .line 18
    const-string v0, "http://client.anall.cn/cpic/update.aspx"

    iput-object v0, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mCheckUrl:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mAct:Landroid/app/Activity;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/task/DownloadWP8ApkTask;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mAct:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    .line 29
    new-instance v1, Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;-><init>(Lcom/lx/launcher8/task/DownloadWP8ApkTask;)V

    iput-object v1, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mBll:Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;

    .line 30
    iget-object v1, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mBll:Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;

    iget-object v1, v1, Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;->mResult:Lcom/app/common/bll/CResult;

    iget-boolean v2, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mDialogShow:Z

    iput-boolean v2, v1, Lcom/app/common/bll/CResult;->mErrorHit:Z

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "vcode=1&check="

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mDialogShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, param:Ljava/lang/String;
    iget-object v1, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mBll:Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;

    iget-object v2, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mAct:Landroid/app/Activity;

    const-string v3, "http://client.anall.cn/cpic/update.aspx"

    invoke-virtual {v1, v2, v3, v0}, Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;->getUpdateInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1}, Lcom/app/common/task/Task;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 31
    .end local v0           #param:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method installDialog(Lcom/app/download/bean/FileSeed;)V
    .locals 4
    .parameter "fileSeed"

    .prologue
    .line 56
    new-instance v0, Lcom/app/common/view/CustomDialog;

    iget-object v1, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/app/common/view/CustomDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a00a3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setCustomTitle(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a00a7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setCustomMsg(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/lx/launcher8/task/DownloadWP8ApkTask$1;

    invoke-direct {v1, p0, p1}, Lcom/lx/launcher8/task/DownloadWP8ApkTask$1;-><init>(Lcom/lx/launcher8/task/DownloadWP8ApkTask;Lcom/app/download/bean/FileSeed;)V

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setOnOKClickListener(Lcom/app/common/view/CustomDialog$CustomDialogCallback;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/lx/launcher8/task/DownloadWP8ApkTask$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/task/DownloadWP8ApkTask$2;-><init>(Lcom/lx/launcher8/task/DownloadWP8ApkTask;)V

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setOnCancelClickListener(Lcom/app/common/view/CustomDialog$CustomDialogCallback;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/app/common/view/CustomDialog;->show()V

    .line 68
    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    .line 38
    invoke-super {p0, p1}, Lcom/app/common/task/Task;->onPostExecute(Ljava/lang/String;)V

    .line 40
    iget-object v2, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mAct:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 41
    iget-object v2, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mBll:Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;

    #getter for: Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;->mDownload:Ljava/lang/String;
    invoke-static {v2}, Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;->access$0(Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mBll:Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;

    #getter for: Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;->updateType:I
    invoke-static {v2}, Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;->access$1(Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;)I

    move-result v2

    if-gt v2, v6, :cond_0

    iget-boolean v2, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mDialogShow:Z

    if-eqz v2, :cond_1

    .line 42
    :cond_0
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    .line 43
    .local v0, dm:Lcom/app/download/bean/DownloadManager;
    iget-object v2, v0, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    iget-object v3, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mBll:Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;

    #getter for: Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;->mDownload:Ljava/lang/String;
    invoke-static {v3}, Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;->access$0(Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/app/download/bean/RecodeInfo;->isExisted(Ljava/lang/String;)Lcom/app/download/bean/FileSeed;

    move-result-object v1

    .line 44
    .local v1, fileSeed:Lcom/app/download/bean/FileSeed;
    if-eqz v1, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mAct:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Lcom/app/download/bean/DownloadManager;->openFile(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    .line 53
    .end local v0           #dm:Lcom/app/download/bean/DownloadManager;
    .end local v1           #fileSeed:Lcom/app/download/bean/FileSeed;
    :cond_1
    :goto_0
    return-void

    .line 47
    .restart local v0       #dm:Lcom/app/download/bean/DownloadManager;
    .restart local v1       #fileSeed:Lcom/app/download/bean/FileSeed;
    :cond_2
    new-instance v1, Lcom/app/download/bean/FileSeed;

    .end local v1           #fileSeed:Lcom/app/download/bean/FileSeed;
    iget-object v2, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mBll:Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;

    #getter for: Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;->mDownload:Ljava/lang/String;
    invoke-static {v2}, Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;->access$0(Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mAct:Landroid/app/Activity;

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mBll:Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;

    #getter for: Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;->mNewVersion:Ljava/lang/String;
    invoke-static {v4}, Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;->access$2(Lcom/lx/launcher8/task/DownloadWP8ApkTask$BllUpdate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/app/download/bean/FileSeed;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .restart local v1       #fileSeed:Lcom/app/download/bean/FileSeed;
    invoke-virtual {v1, v6}, Lcom/app/download/bean/FileSeed;->setOpen(Z)V

    .line 49
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mAct:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1, v6}, Lcom/app/download/bean/DownloadManager;->downLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V

    goto :goto_0
.end method
