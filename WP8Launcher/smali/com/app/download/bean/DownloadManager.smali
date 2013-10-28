.class public Lcom/app/download/bean/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static mDownloadManager:Lcom/app/download/bean/DownloadManager;


# instance fields
.field private mDownloadStateChange:Lcom/app/download/bean/OnDownloadStateChange;

.field private mManagerAct:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

.field private manager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/app/common/config/BasePath;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    .line 28
    new-instance v0, Lcom/app/download/bean/DownloadManager;

    invoke-direct {v0}, Lcom/app/download/bean/DownloadManager;-><init>()V

    sput-object v0, Lcom/app/download/bean/DownloadManager;->mDownloadManager:Lcom/app/download/bean/DownloadManager;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/download/bean/DownloadManager;->manager:Landroid/app/NotificationManager;

    .line 32
    invoke-static {}, Lcom/app/download/bean/RecodeInfo;->getInstance()Lcom/app/download/bean/RecodeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    .line 35
    const-class v0, Lcom/app/download/DownloadManagerAct;

    invoke-virtual {p0, v0}, Lcom/app/download/bean/DownloadManager;->setManagerAct(Ljava/lang/Class;)V

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/app/download/bean/DownloadManager;Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3}, Lcom/app/download/bean/DownloadManager;->downloadTask(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/app/download/bean/DownloadManager;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/app/download/bean/DownloadManager;->manager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/app/download/bean/DownloadManager;)Ljava/lang/Class;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/app/download/bean/DownloadManager;->mManagerAct:Ljava/lang/Class;

    return-object v0
.end method

.method private downLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V
    .locals 1
    .parameter "context"
    .parameter "fileSeed"

    .prologue
    .line 157
    if-nez p2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    if-eqz p1, :cond_0

    .line 164
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/app/download/bean/DownloadManager;->downloadTask(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V

    goto :goto_0
.end method

.method private downloadTask(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V
    .locals 3
    .parameter "context"
    .parameter "fileSeed"
    .parameter "isShowNotification"

    .prologue
    .line 171
    iget-object v1, p0, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v1, p2}, Lcom/app/download/bean/RecodeInfo;->downloadFileSeed(Lcom/app/download/bean/FileSeed;)Lcom/app/download/bean/FileSeed;

    move-result-object v0

    .line 172
    .local v0, fs:Lcom/app/download/bean/FileSeed;
    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 178
    :cond_0
    if-eqz p3, :cond_1

    .line 179
    invoke-virtual {p0, v0}, Lcom/app/download/bean/DownloadManager;->showNotification(Lcom/app/download/bean/FileSeed;)V

    .line 182
    :cond_1
    new-instance v1, Lcom/app/download/bean/DownloadTask;

    iget-object v2, p0, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-direct {v1, p1, v0, v2}, Lcom/app/download/bean/DownloadTask;-><init>(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Lcom/app/download/bean/RecodeInfo;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/app/download/bean/DownloadManager;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/app/download/bean/DownloadManager;->mDownloadManager:Lcom/app/download/bean/DownloadManager;

    return-object v0
.end method


# virtual methods
.method public deleteFile(Lcom/app/download/bean/FileSeed;Z)V
    .locals 2
    .parameter "fileSeed"
    .parameter "isBothLocalFile"

    .prologue
    .line 109
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/app/download/bean/FileSeed;->setState(I)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v0, p1}, Lcom/app/download/bean/RecodeInfo;->remove(Lcom/app/download/bean/FileSeed;)V

    .line 115
    if-eqz p2, :cond_1

    .line 116
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 118
    :cond_1
    return-void
.end method

.method public deleteFileDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V
    .locals 4
    .parameter "context"
    .parameter "fileSeed"

    .prologue
    .line 97
    new-instance v0, Lcom/app/common/view/CustomDialog;

    invoke-direct {v0, p1}, Lcom/app/common/view/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, customDialog:Lcom/app/common/view/CustomDialog;
    const-string v1, "\u5220\u9664\u4efb\u52a1"

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setCustomTitle(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v1

    const-string v2, "\u786e\u5b9a\u5220\u9664\u6587\u4ef6?"

    invoke-virtual {v1, v2}, Lcom/app/common/view/CustomDialog;->setCustomMsg(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v1

    const-string v2, "\u540c\u65f6\u5220\u9664\u539f\u6587\u4ef6"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/app/common/view/CustomDialog;->setCustomCheckBox(Ljava/lang/String;Z)Lcom/app/common/view/CustomDialog;

    move-result-object v1

    .line 99
    new-instance v2, Lcom/app/download/bean/DownloadManager$3;

    invoke-direct {v2, p0, p2}, Lcom/app/download/bean/DownloadManager$3;-><init>(Lcom/app/download/bean/DownloadManager;Lcom/app/download/bean/FileSeed;)V

    invoke-virtual {v1, v2}, Lcom/app/common/view/CustomDialog;->setOnOKClickListener(Lcom/app/common/view/CustomDialog$CustomDialogCallback;)Lcom/app/common/view/CustomDialog;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/app/common/view/CustomDialog;->show()V

    .line 105
    return-void
.end method

.method public downLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V
    .locals 0
    .parameter "context"
    .parameter "fileSeed"
    .parameter "isShowNotification"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/app/download/bean/DownloadManager;->downloadTask(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V

    .line 45
    return-void
.end method

.method public downLoad(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "url"

    .prologue
    .line 48
    new-instance v0, Lcom/app/download/bean/FileSeed;

    invoke-direct {v0, p2}, Lcom/app/download/bean/FileSeed;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, mFileSeed:Lcom/app/download/bean/FileSeed;
    new-instance v1, Lcom/app/common/view/CustomDialog;

    invoke-direct {v1, p1}, Lcom/app/common/view/CustomDialog;-><init>(Landroid/content/Context;)V

    const-string v2, "\u4e0b\u8f7d\u63d0\u793a"

    invoke-virtual {v1, v2}, Lcom/app/common/view/CustomDialog;->setCustomTitle(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v1

    const-string v2, "\u8f93\u5165\u4e0b\u8f7d\u540e\u7684\u6587\u4ef6\u540d\u79f0\n"

    invoke-virtual {v1, v2}, Lcom/app/common/view/CustomDialog;->setCustomMsg(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v1

    .line 50
    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/app/common/view/CustomDialog;->setEditTextAShow(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v1

    .line 51
    new-instance v2, Lcom/app/download/bean/DownloadManager$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/app/download/bean/DownloadManager$1;-><init>(Lcom/app/download/bean/DownloadManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/app/common/view/CustomDialog;->setOnOKClickListener(Lcom/app/common/view/CustomDialog$CustomDialogCallback;)Lcom/app/common/view/CustomDialog;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/app/common/view/CustomDialog;->show()V

    .line 60
    return-void
.end method

.method public downLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "fileName"

    .prologue
    .line 63
    new-instance v0, Lcom/app/download/bean/FileSeed;

    invoke-direct {v0, p2, p3}, Lcom/app/download/bean/FileSeed;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/app/download/bean/DownloadManager;->downLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    .line 64
    return-void
.end method

.method public fileInfoDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V
    .locals 4
    .parameter "context"
    .parameter "fileSeed"

    .prologue
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6587\u4ef6\u540d :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u603b\u5927\u5c0f :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/app/download/bean/FileSeed;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u5df2\u4e0b\u8f7d :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    invoke-virtual {p2}, Lcom/app/download/bean/FileSeed;->getLoadedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u8def   \u5f84 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/app/download/bean/FileSeed;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, info:Ljava/lang/String;
    new-instance v1, Lcom/app/common/view/CustomDialog;

    invoke-direct {v1, p1}, Lcom/app/common/view/CustomDialog;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6587\u4ef6\u4fe1\u606f"

    invoke-virtual {v1, v2}, Lcom/app/common/view/CustomDialog;->setCustomTitle(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/app/common/view/CustomDialog;->setCustomMsg(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/app/common/view/CustomDialog;->show()V

    .line 153
    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/app/common/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadStateChange()Lcom/app/download/bean/OnDownloadStateChange;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/app/download/bean/DownloadManager;->mDownloadStateChange:Lcom/app/download/bean/OnDownloadStateChange;

    return-object v0
.end method

.method public getManagerAct()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/app/download/bean/DownloadManager;->mManagerAct:Ljava/lang/Class;

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "suffix"

    .prologue
    const/4 v0, 0x0

    .line 187
    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-object v0

    .line 190
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 191
    const-string v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    const-string v0, "application/vnd.android.package-archive"

    goto :goto_0

    .line 194
    :cond_2
    const-string v1, ".jpg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".bmp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    :cond_3
    const-string v0, "image/*"

    goto :goto_0

    .line 197
    :cond_4
    const-string v1, ".mp3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".wma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 198
    :cond_5
    const-string v0, "audio/*"

    goto :goto_0

    .line 200
    :cond_6
    const-string v1, ".mp4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, ".3gp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    :cond_7
    const-string v0, "video/*"

    goto :goto_0
.end method

.method public newDownloadTask(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v1}, Lcom/app/download/bean/RecodeInfo;->resumeOneWatingFileSeed()Lcom/app/download/bean/FileSeed;

    move-result-object v0

    .line 85
    .local v0, fs:Lcom/app/download/bean/FileSeed;
    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0, v0}, Lcom/app/download/bean/DownloadManager;->showNotification(Lcom/app/download/bean/FileSeed;)V

    .line 92
    new-instance v1, Lcom/app/download/bean/DownloadTask;

    iget-object v2, p0, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-direct {v1, p1, v0, v2}, Lcom/app/download/bean/DownloadTask;-><init>(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Lcom/app/download/bean/RecodeInfo;)V

    goto :goto_0
.end method

.method public onDownloadFinished(Lcom/app/download/bean/FileSeed;)V
    .locals 1
    .parameter "fileSeed"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/app/download/bean/DownloadManager;->mDownloadStateChange:Lcom/app/download/bean/OnDownloadStateChange;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/download/bean/DownloadManager;->mDownloadStateChange:Lcom/app/download/bean/OnDownloadStateChange;

    invoke-interface {v0, p1}, Lcom/app/download/bean/OnDownloadStateChange;->loadFinished(Lcom/app/download/bean/FileSeed;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    :cond_0
    return-void
.end method

.method public openFile(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V
    .locals 5
    .parameter "context"
    .parameter "fileSeed"

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 139
    invoke-virtual {p2}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/app/download/bean/FileSeed;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, suffix:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/app/download/bean/DownloadManager;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, type:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/app/download/bean/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method public openFileDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V
    .locals 4
    .parameter "context"
    .parameter "fileSeed"

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/app/common/view/CustomDialog;

    invoke-direct {v0, p1}, Lcom/app/common/view/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, customDialog:Lcom/app/common/view/CustomDialog;
    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setCustomTitle(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n\u5df2\u7ecf\u4e0b\u8f7d\u5b8c\u6210!\u662f\u5426\u6253\u5f00\u6b64\u6587\u4ef6\uff1f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/app/common/view/CustomDialog;->setCustomMsg(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v1

    .line 126
    new-instance v2, Lcom/app/download/bean/DownloadManager$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/app/download/bean/DownloadManager$4;-><init>(Lcom/app/download/bean/DownloadManager;Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    invoke-virtual {v1, v2}, Lcom/app/common/view/CustomDialog;->setOnOKClickListener(Lcom/app/common/view/CustomDialog$CustomDialogCallback;)Lcom/app/common/view/CustomDialog;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/app/common/view/CustomDialog;->show()V

    goto :goto_0
.end method

.method public reLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V
    .locals 5
    .parameter "context"
    .parameter "fileSeed"

    .prologue
    .line 68
    new-instance v0, Lcom/app/common/view/CustomDialog;

    invoke-direct {v0, p1}, Lcom/app/common/view/CustomDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "\u91cd\u65b0\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setCustomTitle(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    .line 69
    const-string v1, "\u786e\u5b9a\u91cd\u65b0\u4e0b\u8f7d \"%s\"?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setCustomMsg(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/app/download/bean/DownloadManager$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/app/download/bean/DownloadManager$2;-><init>(Lcom/app/download/bean/DownloadManager;Lcom/app/download/bean/FileSeed;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setOnOKClickListener(Lcom/app/common/view/CustomDialog$CustomDialogCallback;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/app/common/view/CustomDialog;->show()V

    .line 80
    return-void
.end method

.method public rename(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V
    .locals 2
    .parameter "context"
    .parameter "fileSeed"

    .prologue
    .line 208
    new-instance v0, Lcom/app/common/view/CustomDialog;

    invoke-direct {v0, p1}, Lcom/app/common/view/CustomDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6587\u4ef6\u91cd\u547d\u540d"

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setCustomTitle(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    invoke-virtual {p2}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setEditTextAShow(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/app/download/bean/DownloadManager$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/app/download/bean/DownloadManager$5;-><init>(Lcom/app/download/bean/DownloadManager;Lcom/app/download/bean/FileSeed;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/app/common/view/CustomDialog;->setOnOKClickListener(Lcom/app/common/view/CustomDialog$CustomDialogCallback;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcom/app/common/view/CustomDialog;->show()V

    .line 237
    return-void
.end method

.method public setManagerAct(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, managerAct:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/app/download/bean/DownloadManager;->mManagerAct:Ljava/lang/Class;

    .line 319
    return-void
.end method

.method public setOnDownloadStateChange(Lcom/app/download/bean/OnDownloadStateChange;)V
    .locals 0
    .parameter "downloadStateChange"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/app/download/bean/DownloadManager;->mDownloadStateChange:Lcom/app/download/bean/OnDownloadStateChange;

    .line 327
    return-void
.end method

.method public showNotification(Lcom/app/download/bean/FileSeed;)V
    .locals 14
    .parameter "fileSeed"

    .prologue
    const/16 v13, 0x64

    const/4 v12, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/app/download/bean/DownloadManager;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 253
    .local v7, context:Landroid/content/Context;
    if-nez v7, :cond_0

    .line 315
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/app/download/bean/DownloadManager;->manager:Landroid/app/NotificationManager;

    if-nez v1, :cond_1

    .line 257
    const-string v1, "notification"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/app/download/bean/DownloadManager;->manager:Landroid/app/NotificationManager;

    .line 259
    :cond_1
    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 260
    .local v5, NOTIFICATION_ID:I
    sget-object v1, Lcom/app/download/config/Resources;->down_state_ing:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 261
    .local v9, iconId:I
    new-instance v6, Landroid/app/Notification;

    const-string v1, "\u4e0b\u8f7d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v6, v9, v1, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 262
    .local v6, notification:Landroid/app/Notification;
    iput v9, v6, Landroid/app/Notification;->icon:I

    .line 265
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v10, Lcom/app/download/config/Resources;->notification_layout:Ljava/lang/String;

    const-string v11, "layout"

    invoke-static {v7, v10, v11}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-direct {v1, v2, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 266
    iget-object v1, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v2, "progress"

    const-string v10, "id"

    invoke-static {v7, v2, v10}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v13, v12, v12}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 267
    iget-object v1, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v2, "text_title"

    const-string v10, "id"

    invoke-static {v7, v2, v10}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 268
    iget-object v1, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v2, "text1"

    const-string v10, "id"

    invoke-static {v7, v2, v10}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v10, "0%"

    invoke-virtual {v1, v2, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 269
    iget v1, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v6, Landroid/app/Notification;->flags:I

    .line 271
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/download/bean/DownloadManager;->getManagerAct()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    const/high16 v2, 0x800

    .line 271
    invoke-static {v7, v13, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 274
    iget-object v1, p0, Lcom/app/download/bean/DownloadManager;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 278
    .local v3, nTime:J
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    .line 279
    .local v8, mHandler:Landroid/os/Handler;
    new-instance v0, Lcom/app/download/bean/DownloadManager$6;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/app/download/bean/DownloadManager$6;-><init>(Lcom/app/download/bean/DownloadManager;Lcom/app/download/bean/FileSeed;JILandroid/app/Notification;Landroid/content/Context;Landroid/os/Handler;)V

    .line 313
    .local v0, mUpdateTimeTask:Ljava/lang/Runnable;
    invoke-virtual {v8, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 314
    const-wide/16 v1, 0x64

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
