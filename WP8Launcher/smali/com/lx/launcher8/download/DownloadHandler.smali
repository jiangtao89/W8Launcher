.class public Lcom/lx/launcher8/download/DownloadHandler;
.super Ljava/lang/Object;
.source "DownloadHandler.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mDownloadFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/download/DownloadFile;",
            ">;"
        }
    .end annotation
.end field

.field private static mDownloadHandler:Lcom/lx/launcher8/download/DownloadHandler;

.field private static mSavePath:Ljava/lang/String;


# instance fields
.field private mService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lx/launcher8/download/DownloadHandler;->mDownloadFileList:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_DOWN:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lx/launcher8/download/DownloadHandler;->mSavePath:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget-object v0, p0, Lcom/lx/launcher8/download/DownloadHandler;->mService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 30
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/download/DownloadHandler;->mService:Ljava/util/concurrent/ExecutorService;

    .line 32
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/download/DownloadHandler;Lcom/lx/launcher8/download/DownloadFile;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/download/DownloadHandler;->setData(Lcom/lx/launcher8/download/DownloadFile;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lx/launcher8/download/DownloadHandler;
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    sput-object p0, Lcom/lx/launcher8/download/DownloadHandler;->mContext:Landroid/content/Context;

    .line 42
    sget-object v0, Lcom/lx/launcher8/download/DownloadHandler;->mDownloadHandler:Lcom/lx/launcher8/download/DownloadHandler;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/lx/launcher8/download/DownloadHandler;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/download/DownloadHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lx/launcher8/download/DownloadHandler;->mDownloadHandler:Lcom/lx/launcher8/download/DownloadHandler;

    .line 45
    :cond_0
    sget-object v0, Lcom/lx/launcher8/download/DownloadHandler;->mDownloadHandler:Lcom/lx/launcher8/download/DownloadHandler;

    return-object v0
.end method

.method private setData(Lcom/lx/launcher8/download/DownloadFile;Ljava/lang/String;)V
    .locals 5
    .parameter "instance"
    .parameter "title"

    .prologue
    .line 166
    sget-object v1, Lcom/lx/launcher8/download/DownloadHandler;->mDownloadFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 173
    :goto_0
    invoke-virtual {p1}, Lcom/lx/launcher8/download/DownloadFile;->getFileSeed()Lcom/lx/launcher8/download/FileSeed;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 174
    sget-object v1, Lcom/lx/launcher8/download/DownloadHandler;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lx/launcher8/download/DownloadHandler;->mContext:Landroid/content/Context;

    const v4, 0x7f0a01c0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    :cond_1
    sget-object v1, Lcom/lx/launcher8/download/DownloadHandler;->mDownloadFileList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {p1}, Lcom/lx/launcher8/download/DownloadFile;->download()V

    .line 178
    return-void

    .line 166
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/download/DownloadFile;

    .line 167
    .local v0, file:Lcom/lx/launcher8/download/DownloadFile;
    invoke-virtual {v0}, Lcom/lx/launcher8/download/DownloadFile;->getFileSeed()Lcom/lx/launcher8/download/FileSeed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lx/launcher8/download/DownloadFile;->getFileSeed()Lcom/lx/launcher8/download/FileSeed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lx/launcher8/download/FileSeed;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    sget-object v1, Lcom/lx/launcher8/download/DownloadHandler;->mDownloadFileList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public continueDownload(Lcom/lx/launcher8/download/FileSeed;)V
    .locals 10
    .parameter "fileSeed"

    .prologue
    .line 138
    new-instance v0, Lcom/lx/launcher8/download/DownloadFile;

    sget-object v1, Lcom/lx/launcher8/download/DownloadHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 139
    sget-object v4, Lcom/lx/launcher8/download/DownloadHandler;->mSavePath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getIconUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getPkName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getVsName()Ljava/lang/String;

    move-result-object v8

    .line 140
    iget-object v9, p0, Lcom/lx/launcher8/download/DownloadHandler;->mService:Ljava/util/concurrent/ExecutorService;

    .line 138
    invoke-direct/range {v0 .. v9}, Lcom/lx/launcher8/download/DownloadFile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 141
    .local v0, instance:Lcom/lx/launcher8/download/DownloadFile;
    invoke-virtual {v0}, Lcom/lx/launcher8/download/DownloadFile;->download()V

    .line 142
    return-void
.end method

.method public deleteDownload(Lcom/lx/launcher8/download/FileSeed;)V
    .locals 4
    .parameter "fileSeed"

    .prologue
    .line 116
    sget-object v1, Lcom/lx/launcher8/download/DownloadHandler;->mDownloadFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/download/DownloadHandler;->stopDownload(Lcom/lx/launcher8/download/FileSeed;)V

    .line 124
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/db/DBDownload;->delete(I)V

    .line 125
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 129
    :cond_1
    sget-object v1, Lcom/lx/launcher8/download/DownloadHandler;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/lx/launcher8/download/DownloadHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00e7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    return-void

    .line 116
    .end local v0           #file:Ljava/io/File;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/download/DownloadFile;

    .line 117
    .local v0, file:Lcom/lx/launcher8/download/DownloadFile;
    invoke-virtual {v0}, Lcom/lx/launcher8/download/DownloadFile;->getFileSeed()Lcom/lx/launcher8/download/FileSeed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    sget-object v1, Lcom/lx/launcher8/download/DownloadHandler;->mDownloadFileList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "fileUrl"
    .parameter "fileName"
    .parameter "title"
    .parameter "iconUrl"
    .parameter "packageName"
    .parameter "vsName"

    .prologue
    .line 60
    new-instance v0, Lcom/lx/launcher8/download/DownloadFile;

    sget-object v1, Lcom/lx/launcher8/download/DownloadHandler;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/lx/launcher8/download/DownloadHandler;->mSavePath:Ljava/lang/String;

    .line 61
    iget-object v9, p0, Lcom/lx/launcher8/download/DownloadHandler;->mService:Ljava/util/concurrent/ExecutorService;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 60
    invoke-direct/range {v0 .. v9}, Lcom/lx/launcher8/download/DownloadFile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 63
    .local v0, instance:Lcom/lx/launcher8/download/DownloadFile;
    invoke-virtual {v0}, Lcom/lx/launcher8/download/DownloadFile;->getFileSeed()Lcom/lx/launcher8/download/FileSeed;

    move-result-object v3

    .line 64
    .local v3, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 65
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    sget-object v1, Lcom/lx/launcher8/download/DownloadHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0294

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 68
    .local v10, msg:Ljava/lang/String;
    new-instance v1, Lcom/lx/launcher8/view/PopupDialog;

    sget-object v2, Lcom/lx/launcher8/download/DownloadHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/lx/launcher8/download/DownloadHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f0a01c4

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v7

    .line 69
    sget-object v1, Lcom/lx/launcher8/download/DownloadHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0077

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v1, Lcom/lx/launcher8/download/DownloadHandler$1;

    move-object v2, p0

    move-object v5, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/lx/launcher8/download/DownloadHandler$1;-><init>(Lcom/lx/launcher8/download/DownloadHandler;Lcom/lx/launcher8/download/FileSeed;Ljava/io/File;Lcom/lx/launcher8/download/DownloadFile;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v1}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    .line 76
    sget-object v2, Lcom/lx/launcher8/download/DownloadHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0078

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/lx/launcher8/download/DownloadHandler$2;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/download/DownloadHandler$2;-><init>(Lcom/lx/launcher8/download/DownloadHandler;)V

    invoke-virtual {v1, v2, v5}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    .line 89
    .end local v4           #file:Ljava/io/File;
    .end local v10           #msg:Ljava/lang/String;
    :goto_0
    return-void

    .line 85
    .restart local v4       #file:Ljava/io/File;
    :cond_0
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v1

    invoke-virtual {v3}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/db/DBDownload;->reload(I)V

    .line 88
    .end local v4           #file:Ljava/io/File;
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/lx/launcher8/download/DownloadHandler;->setData(Lcom/lx/launcher8/download/DownloadFile;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFileState(Ljava/lang/String;)I
    .locals 3
    .parameter "fileUrl"

    .prologue
    .line 151
    sget-object v1, Lcom/lx/launcher8/download/DownloadHandler;->mDownloadFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 151
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/download/DownloadFile;

    .line 152
    .local v0, file:Lcom/lx/launcher8/download/DownloadFile;
    invoke-virtual {v0}, Lcom/lx/launcher8/download/DownloadFile;->getFileSeed()Lcom/lx/launcher8/download/FileSeed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/lx/launcher8/download/DownloadFile;->getFileSeed()Lcom/lx/launcher8/download/FileSeed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v1

    goto :goto_0
.end method

.method public stopDownload(Lcom/lx/launcher8/download/FileSeed;)V
    .locals 4
    .parameter "fileSeed"

    .prologue
    .line 97
    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/db/DBDownload;->getFileInfo(I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object p1

    .line 102
    sget-object v1, Lcom/lx/launcher8/download/DownloadHandler;->mDownloadFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/download/DownloadFile;

    .line 103
    .local v0, file:Lcom/lx/launcher8/download/DownloadFile;
    invoke-virtual {v0}, Lcom/lx/launcher8/download/DownloadFile;->getFileSeed()Lcom/lx/launcher8/download/FileSeed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v2

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 104
    invoke-virtual {v0}, Lcom/lx/launcher8/download/DownloadFile;->stopDownload()V

    goto :goto_0
.end method
