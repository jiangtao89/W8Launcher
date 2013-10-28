.class public Lcom/app/download/task/CheckUpdateTask;
.super Lcom/app/common/task/Task;
.source "CheckUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/download/task/CheckUpdateTask$BllUpdate;
    }
.end annotation


# instance fields
.field private mBll:Lcom/app/download/task/CheckUpdateTask$BllUpdate;

.field final mCheckUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "act"
    .parameter "softId"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/app/download/task/CheckUpdateTask;-><init>(Landroid/app/Activity;Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "act"
    .parameter "showMessage"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/app/common/task/Task;-><init>(Landroid/app/Activity;)V

    .line 25
    const-string v0, "http://rrsee.net/cpic/update.aspx"

    iput-object v0, p0, Lcom/app/download/task/CheckUpdateTask;->mCheckUrl:Ljava/lang/String;

    .line 33
    const-string v0, "\u6b63\u5728\u68c0\u6d4b\u00b7\u00b7\u00b7"

    invoke-virtual {p0, p2, v0}, Lcom/app/download/task/CheckUpdateTask;->setDialog(ZLjava/lang/String;)Lcom/app/common/task/Task;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/app/download/task/CheckUpdateTask;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private upgradeDialog(Lcom/app/download/bean/FileSeed;ZZ)V
    .locals 3
    .parameter "softSeed"
    .parameter "isExit"
    .parameter "forece"

    .prologue
    .line 88
    new-instance v0, Lcom/app/common/view/CustomDialog;

    iget-object v1, p0, Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/app/common/view/CustomDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5347\u7ea7\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setCustomTitle(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65b0\u7248\u672c\u4fe1\u606f:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/app/download/task/CheckUpdateTask;->mBll:Lcom/app/download/task/CheckUpdateTask$BllUpdate;

    #getter for: Lcom/app/download/task/CheckUpdateTask$BllUpdate;->mMsg:Ljava/lang/String;
    invoke-static {v2}, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->access$3(Lcom/app/download/task/CheckUpdateTask$BllUpdate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u4f60\u662f\u5426\u8981\u5347\u7ea7?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setCustomMsg(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/app/download/task/CheckUpdateTask$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/app/download/task/CheckUpdateTask$3;-><init>(Lcom/app/download/task/CheckUpdateTask;ZLcom/app/download/bean/FileSeed;)V

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setOnOKClickListener(Lcom/app/common/view/CustomDialog$CustomDialogCallback;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/app/download/task/CheckUpdateTask$4;

    invoke-direct {v1, p0, p3}, Lcom/app/download/task/CheckUpdateTask$4;-><init>(Lcom/app/download/task/CheckUpdateTask;Z)V

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setOnCancelClickListener(Lcom/app/common/view/CustomDialog$CustomDialogCallback;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/app/common/view/CustomDialog;->show()V

    .line 115
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    .line 38
    new-instance v1, Lcom/app/download/task/CheckUpdateTask$BllUpdate;

    invoke-direct {v1, p0}, Lcom/app/download/task/CheckUpdateTask$BllUpdate;-><init>(Lcom/app/download/task/CheckUpdateTask;)V

    iput-object v1, p0, Lcom/app/download/task/CheckUpdateTask;->mBll:Lcom/app/download/task/CheckUpdateTask$BllUpdate;

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vcode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/app/download/task/CheckUpdateTask;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&check="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/app/download/task/CheckUpdateTask;->mDialogShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, param:Ljava/lang/String;
    iget-object v1, p0, Lcom/app/download/task/CheckUpdateTask;->mBll:Lcom/app/download/task/CheckUpdateTask$BllUpdate;

    iget-object v2, p0, Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;

    const-string v3, "http://rrsee.net/cpic/update.aspx"

    invoke-virtual {v1, v2, v3, v0}, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->getUpdateInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-super {p0, p1}, Lcom/app/common/task/Task;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 39
    .end local v0           #param:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getVersionCode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method installDialog(Lcom/app/download/bean/FileSeed;)V
    .locals 6
    .parameter "fileSeed"

    .prologue
    .line 72
    new-instance v0, Lcom/app/common/view/CustomDialog;

    iget-object v1, p0, Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/app/common/view/CustomDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5b89\u88c5\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setCustomTitle(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;

    const-string v4, "app_name"

    const-string v5, "string"

    invoke-static {v3, v4, v5}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5df1\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u5b89\u88c5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setCustomMsg(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/app/download/task/CheckUpdateTask$1;

    invoke-direct {v1, p0, p1}, Lcom/app/download/task/CheckUpdateTask$1;-><init>(Lcom/app/download/task/CheckUpdateTask;Lcom/app/download/bean/FileSeed;)V

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setOnOKClickListener(Lcom/app/common/view/CustomDialog$CustomDialogCallback;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/app/download/task/CheckUpdateTask$2;

    invoke-direct {v1, p0}, Lcom/app/download/task/CheckUpdateTask$2;-><init>(Lcom/app/download/task/CheckUpdateTask;)V

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setOnCancelClickListener(Lcom/app/common/view/CustomDialog$CustomDialogCallback;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/app/common/view/CustomDialog;->show()V

    .line 84
    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 10
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 54
    invoke-super {p0, p1}, Lcom/app/common/task/Task;->onPostExecute(Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 57
    iget-object v3, p0, Lcom/app/download/task/CheckUpdateTask;->mBll:Lcom/app/download/task/CheckUpdateTask$BllUpdate;

    #getter for: Lcom/app/download/task/CheckUpdateTask$BllUpdate;->mDownload:Ljava/lang/String;
    invoke-static {v3}, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->access$0(Lcom/app/download/task/CheckUpdateTask$BllUpdate;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/app/download/task/CheckUpdateTask;->mBll:Lcom/app/download/task/CheckUpdateTask$BllUpdate;

    #getter for: Lcom/app/download/task/CheckUpdateTask$BllUpdate;->updateType:I
    invoke-static {v3}, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->access$1(Lcom/app/download/task/CheckUpdateTask$BllUpdate;)I

    move-result v3

    if-gt v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/app/download/task/CheckUpdateTask;->mDialogShow:Z

    if-eqz v3, :cond_4

    .line 58
    :cond_0
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    .line 59
    .local v0, dm:Lcom/app/download/bean/DownloadManager;
    iget-object v3, v0, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    iget-object v6, p0, Lcom/app/download/task/CheckUpdateTask;->mBll:Lcom/app/download/task/CheckUpdateTask$BllUpdate;

    #getter for: Lcom/app/download/task/CheckUpdateTask$BllUpdate;->mDownload:Ljava/lang/String;
    invoke-static {v6}, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->access$0(Lcom/app/download/task/CheckUpdateTask$BllUpdate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/app/download/bean/RecodeInfo;->isExisted(Ljava/lang/String;)Lcom/app/download/bean/FileSeed;

    move-result-object v1

    .line 60
    .local v1, fileSeed:Lcom/app/download/bean/FileSeed;
    iget-object v3, p0, Lcom/app/download/task/CheckUpdateTask;->mBll:Lcom/app/download/task/CheckUpdateTask$BllUpdate;

    #getter for: Lcom/app/download/task/CheckUpdateTask$BllUpdate;->updateType:I
    invoke-static {v3}, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->access$1(Lcom/app/download/task/CheckUpdateTask$BllUpdate;)I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    move v2, v4

    .line 61
    .local v2, force:Z
    :goto_0
    if-eqz v1, :cond_3

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 62
    invoke-direct {p0, v1, v4, v2}, Lcom/app/download/task/CheckUpdateTask;->upgradeDialog(Lcom/app/download/bean/FileSeed;ZZ)V

    .line 69
    .end local v0           #dm:Lcom/app/download/bean/DownloadManager;
    .end local v1           #fileSeed:Lcom/app/download/bean/FileSeed;
    .end local v2           #force:Z
    :cond_1
    :goto_1
    return-void

    .restart local v0       #dm:Lcom/app/download/bean/DownloadManager;
    .restart local v1       #fileSeed:Lcom/app/download/bean/FileSeed;
    :cond_2
    move v2, v5

    .line 60
    goto :goto_0

    .line 64
    .restart local v2       #force:Z
    :cond_3
    new-instance v1, Lcom/app/download/bean/FileSeed;

    .end local v1           #fileSeed:Lcom/app/download/bean/FileSeed;
    iget-object v3, p0, Lcom/app/download/task/CheckUpdateTask;->mBll:Lcom/app/download/task/CheckUpdateTask$BllUpdate;

    #getter for: Lcom/app/download/task/CheckUpdateTask$BllUpdate;->mDownload:Ljava/lang/String;
    invoke-static {v3}, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->access$0(Lcom/app/download/task/CheckUpdateTask$BllUpdate;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;

    const-string v8, "app_name"

    const-string v9, "string"

    invoke-static {v7, v8, v9}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/app/download/task/CheckUpdateTask;->mBll:Lcom/app/download/task/CheckUpdateTask$BllUpdate;

    #getter for: Lcom/app/download/task/CheckUpdateTask$BllUpdate;->mNewVersion:Ljava/lang/String;
    invoke-static {v6}, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->access$2(Lcom/app/download/task/CheckUpdateTask$BllUpdate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".apk"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/app/download/bean/FileSeed;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .restart local v1       #fileSeed:Lcom/app/download/bean/FileSeed;
    invoke-direct {p0, v1, v5, v2}, Lcom/app/download/task/CheckUpdateTask;->upgradeDialog(Lcom/app/download/bean/FileSeed;ZZ)V

    goto :goto_1

    .line 67
    .end local v0           #dm:Lcom/app/download/bean/DownloadManager;
    .end local v1           #fileSeed:Lcom/app/download/bean/FileSeed;
    .end local v2           #force:Z
    :cond_4
    iget-object v3, p0, Lcom/app/download/task/CheckUpdateTask;->mBll:Lcom/app/download/task/CheckUpdateTask$BllUpdate;

    iget-object v3, v3, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->mResult:Lcom/app/common/bll/CResult;

    iget-boolean v3, v3, Lcom/app/common/bll/CResult;->mIsError:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/app/download/task/CheckUpdateTask;->mDialogShow:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;

    const-string v4, "\u5df1\u662f\u6700\u65b0\u7248\u672c"

    invoke-static {v3, v4}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
