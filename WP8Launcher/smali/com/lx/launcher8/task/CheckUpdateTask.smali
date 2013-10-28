.class public Lcom/lx/launcher8/task/CheckUpdateTask;
.super Lcom/app/common/task/Task;
.source "CheckUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;
    }
.end annotation


# instance fields
.field private mAct:Landroid/app/Activity;

.field private mBll:Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;

.field final mCheckUrl:Ljava/lang/String;

.field private mSettings:Lcom/lx/launcher8/cfg/DeskSetting;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "act"
    .parameter "softId"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lx/launcher8/task/CheckUpdateTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2
    .parameter "act"
    .parameter "softId"
    .parameter "showMessage"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/app/common/task/Task;-><init>(Landroid/app/Activity;)V

    .line 26
    const-string v0, "http://client.anall.cn/cpic/update.aspx"

    iput-object v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mCheckUrl:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    .line 37
    iget-object v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/lx/launcher8/task/CheckUpdateTask;->setDialog(ZLjava/lang/String;)Lcom/app/common/task/Task;

    .line 38
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v0, p1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/task/CheckUpdateTask;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/task/CheckUpdateTask;)Lcom/lx/launcher8/cfg/DeskSetting;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    return-object v0
.end method

.method private upgradeDialog(Lcom/app/download/bean/FileSeed;IZI)V
    .locals 5
    .parameter "softSeed"
    .parameter "downloadState"
    .parameter "forece"
    .parameter "version"

    .prologue
    .line 120
    new-instance v1, Lcom/lx/launcher8/view/PopupDialog;

    iget-object v2, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a00a4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a00a5

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mBll:Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;

    #getter for: Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->mMsg:Ljava/lang/String;
    invoke-static {v3}, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->access$3(Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a00a6

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0077

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lx/launcher8/task/CheckUpdateTask$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/lx/launcher8/task/CheckUpdateTask$3;-><init>(Lcom/lx/launcher8/task/CheckUpdateTask;Lcom/app/download/bean/FileSeed;I)V

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0078

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lx/launcher8/task/CheckUpdateTask$4;

    invoke-direct {v3, p0, p3}, Lcom/lx/launcher8/task/CheckUpdateTask$4;-><init>(Lcom/lx/launcher8/task/CheckUpdateTask;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 139
    .local v0, pd:Lcom/lx/launcher8/view/PopupDialog;
    new-instance v1, Lcom/lx/launcher8/task/CheckUpdateTask$5;

    invoke-direct {v1, p0, p4}, Lcom/lx/launcher8/task/CheckUpdateTask$5;-><init>(Lcom/lx/launcher8/task/CheckUpdateTask;I)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 145
    invoke-virtual {v0}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    .line 146
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    .line 43
    new-instance v1, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;-><init>(Lcom/lx/launcher8/task/CheckUpdateTask;)V

    iput-object v1, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mBll:Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;

    .line 44
    iget-object v1, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mBll:Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;

    iget-object v1, v1, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->mResult:Lcom/app/common/bll/CResult;

    iget-boolean v2, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mDialogShow:Z

    iput-boolean v2, v1, Lcom/app/common/bll/CResult;->mErrorHit:Z

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vcode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/task/CheckUpdateTask;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&check="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mDialogShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, param:Ljava/lang/String;
    iget-object v1, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mBll:Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;

    iget-object v2, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    const-string v3, "http://client.anall.cn/cpic/update.aspx"

    invoke-virtual {v1, v2, v3, v0}, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->getUpdateInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1}, Lcom/app/common/task/Task;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 45
    .end local v0           #param:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getVersionCode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 52
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method installDialog(Lcom/app/download/bean/FileSeed;)V
    .locals 4
    .parameter "fileSeed"

    .prologue
    .line 104
    new-instance v0, Lcom/app/common/view/CustomDialog;

    iget-object v1, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/app/common/view/CustomDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a00a3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setCustomTitle(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a00a7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setCustomMsg(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/lx/launcher8/task/CheckUpdateTask$1;

    invoke-direct {v1, p0, p1}, Lcom/lx/launcher8/task/CheckUpdateTask$1;-><init>(Lcom/lx/launcher8/task/CheckUpdateTask;Lcom/app/download/bean/FileSeed;)V

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setOnOKClickListener(Lcom/app/common/view/CustomDialog$CustomDialogCallback;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/lx/launcher8/task/CheckUpdateTask$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/task/CheckUpdateTask$2;-><init>(Lcom/lx/launcher8/task/CheckUpdateTask;)V

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setOnCancelClickListener(Lcom/app/common/view/CustomDialog$CustomDialogCallback;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/app/common/view/CustomDialog;->show()V

    .line 116
    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 12
    .parameter "result"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 60
    invoke-super {p0, p1}, Lcom/app/common/task/Task;->onPostExecute(Ljava/lang/String;)V

    .line 61
    const/4 v4, 0x0

    .line 63
    .local v4, version:I
    :try_start_0
    iget-object v7, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mBll:Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;

    #getter for: Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->mNewVersion:Ljava/lang/String;
    invoke-static {v7}, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->access$0(Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 67
    :goto_0
    iget-object v7, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mBll:Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;

    iget-object v7, v7, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->mResult:Lcom/app/common/bll/CResult;

    iget-boolean v7, v7, Lcom/app/common/bll/CResult;->mHaveNet:Z

    if-eqz v7, :cond_0

    .line 68
    iget-object v7, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/lx/launcher8/cfg/DeskSetting;->setLastNetCheck(J)V

    .line 70
    :cond_0
    iget-object v7, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v7, v4}, Lcom/lx/launcher8/cfg/DeskSetting;->setVersion(I)V

    .line 71
    iget-object v7, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_3

    .line 72
    iget-object v7, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mBll:Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;

    #getter for: Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->mDownload:Ljava/lang/String;
    invoke-static {v7}, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->access$1(Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-boolean v7, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mDialogShow:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mBll:Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;

    #getter for: Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->updateType:I
    invoke-static {v7}, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->access$2(Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;)I

    move-result v7

    if-gtz v7, :cond_2

    .line 73
    :cond_1
    iget-boolean v7, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mDialogShow:Z

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v7}, Lcom/lx/launcher8/cfg/DeskSetting;->getHitVersion()I

    move-result v7

    if-eq v4, v7, :cond_9

    .line 74
    :cond_2
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    .line 75
    .local v0, dm:Lcom/app/download/bean/DownloadManager;
    iget-object v7, v0, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    iget-object v8, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mBll:Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;

    #getter for: Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->mDownload:Ljava/lang/String;
    invoke-static {v8}, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->access$1(Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/app/download/bean/RecodeInfo;->isExisted(Ljava/lang/String;)Lcom/app/download/bean/FileSeed;

    move-result-object v2

    .line 76
    .local v2, fileSeed:Lcom/app/download/bean/FileSeed;
    iget-object v7, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mBll:Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;

    #getter for: Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->updateType:I
    invoke-static {v7}, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->access$2(Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;)I

    move-result v7

    if-ne v7, v11, :cond_4

    move v3, v5

    .line 86
    .local v3, force:Z
    :goto_1
    if-eqz v2, :cond_5

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 87
    invoke-direct {p0, v2, v5, v3, v4}, Lcom/lx/launcher8/task/CheckUpdateTask;->upgradeDialog(Lcom/app/download/bean/FileSeed;IZI)V

    .line 101
    .end local v0           #dm:Lcom/app/download/bean/DownloadManager;
    .end local v2           #fileSeed:Lcom/app/download/bean/FileSeed;
    .end local v3           #force:Z
    :cond_3
    :goto_2
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "update parse version NumberFormatException"

    invoke-static {v7}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #dm:Lcom/app/download/bean/DownloadManager;
    .restart local v2       #fileSeed:Lcom/app/download/bean/FileSeed;
    :cond_4
    move v3, v6

    .line 76
    goto :goto_1

    .line 88
    .restart local v3       #force:Z
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2, v10}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 89
    invoke-direct {p0, v2, v10, v3, v4}, Lcom/lx/launcher8/task/CheckUpdateTask;->upgradeDialog(Lcom/app/download/bean/FileSeed;IZI)V

    goto :goto_2

    .line 90
    :cond_6
    if-eqz v2, :cond_7

    const/16 v7, 0x10

    invoke-virtual {v2, v7}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 91
    invoke-direct {p0, v2, v11, v3, v4}, Lcom/lx/launcher8/task/CheckUpdateTask;->upgradeDialog(Lcom/app/download/bean/FileSeed;IZI)V

    goto :goto_2

    .line 92
    :cond_7
    if-eqz v2, :cond_8

    .line 93
    const/4 v5, 0x4

    invoke-direct {p0, v2, v5, v3, v4}, Lcom/lx/launcher8/task/CheckUpdateTask;->upgradeDialog(Lcom/app/download/bean/FileSeed;IZI)V

    goto :goto_2

    .line 95
    :cond_8
    new-instance v2, Lcom/app/download/bean/FileSeed;

    .end local v2           #fileSeed:Lcom/app/download/bean/FileSeed;
    iget-object v7, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mBll:Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;

    #getter for: Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->mDownload:Ljava/lang/String;
    invoke-static {v7}, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->access$1(Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a0001

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mBll:Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;

    #getter for: Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->mNewVersion:Ljava/lang/String;
    invoke-static {v9}, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->access$0(Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".apk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Lcom/app/download/bean/FileSeed;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .restart local v2       #fileSeed:Lcom/app/download/bean/FileSeed;
    invoke-virtual {v2, v5}, Lcom/app/download/bean/FileSeed;->setOpen(Z)V

    .line 97
    invoke-direct {p0, v2, v6, v3, v4}, Lcom/lx/launcher8/task/CheckUpdateTask;->upgradeDialog(Lcom/app/download/bean/FileSeed;IZI)V

    goto :goto_2

    .line 99
    .end local v0           #dm:Lcom/app/download/bean/DownloadManager;
    .end local v2           #fileSeed:Lcom/app/download/bean/FileSeed;
    .end local v3           #force:Z
    :cond_9
    iget-object v5, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mBll:Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;

    iget-object v5, v5, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->mResult:Lcom/app/common/bll/CResult;

    iget-boolean v5, v5, Lcom/app/common/bll/CResult;->mIsError:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mDialogShow:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    iget-object v6, p0, Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a0047

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method
