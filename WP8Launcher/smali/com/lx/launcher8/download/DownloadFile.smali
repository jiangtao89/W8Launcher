.class public Lcom/lx/launcher8/download/DownloadFile;
.super Ljava/lang/Object;
.source "DownloadFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/download/DownloadFile$DownloadThread;
    }
.end annotation


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0x1000

.field private static final THREAD_COUNT:I = 0x5


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileSeed:Lcom/lx/launcher8/download/FileSeed;

.field private mFileUrl:Ljava/lang/String;

.field private mHttp:Lcom/app/common/net/UHttp;

.field private volatile mLoadedSize:J

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private mPartList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/download/FilePart;",
            ">;"
        }
    .end annotation
.end field

.field private mSavePath:Ljava/lang/String;

.field private mService:Ljava/util/concurrent/ExecutorService;

.field private mThreadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/download/DownloadFile$DownloadThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 5
    .parameter "context"
    .parameter "fileUrl"
    .parameter "fileName"
    .parameter "savePath"
    .parameter "title"
    .parameter "iconUrl"
    .parameter "packageName"
    .parameter "vsName"
    .parameter "service"

    .prologue
    const-wide/16 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileUrl:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/lx/launcher8/download/DownloadFile;->mSavePath:Ljava/lang/String;

    .line 68
    iput-object p9, p0, Lcom/lx/launcher8/download/DownloadFile;->mService:Ljava/util/concurrent/ExecutorService;

    .line 69
    iput-object p1, p0, Lcom/lx/launcher8/download/DownloadFile;->mContext:Landroid/content/Context;

    .line 70
    new-instance v1, Lcom/app/common/net/UHttp;

    invoke-direct {v1}, Lcom/app/common/net/UHttp;-><init>()V

    iput-object v1, p0, Lcom/lx/launcher8/download/DownloadFile;->mHttp:Lcom/app/common/net/UHttp;

    .line 71
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lx/launcher8/download/DownloadFile;->mThreadList:Ljava/util/List;

    .line 74
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/lx/launcher8/db/DBDownload;->getFileInfo(Ljava/lang/String;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    .line 75
    iget-object v1, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v1}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v1}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 76
    :cond_0
    new-instance v0, Lcom/lx/launcher8/download/FileSeed;

    invoke-direct {v0}, Lcom/lx/launcher8/download/FileSeed;-><init>()V

    .line 77
    .local v0, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static {p2, p3}, Lcom/lx/launcher8/util/Utils;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/download/FileSeed;->setFileName(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p2}, Lcom/lx/launcher8/download/FileSeed;->setFileUrl(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v3, v4}, Lcom/lx/launcher8/download/FileSeed;->setLoadedSize(J)V

    .line 80
    invoke-virtual {v0, v3, v4}, Lcom/lx/launcher8/download/FileSeed;->setFileSize(J)V

    .line 81
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 82
    invoke-virtual {v0, p4}, Lcom/lx/launcher8/download/FileSeed;->setSavePath(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p5}, Lcom/lx/launcher8/download/FileSeed;->setTitle(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, p6}, Lcom/lx/launcher8/download/FileSeed;->setIconUrl(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p7}, Lcom/lx/launcher8/download/FileSeed;->setPkName(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p8}, Lcom/lx/launcher8/download/FileSeed;->setVsName(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/db/DBDownload;->insert(Lcom/lx/launcher8/download/FileSeed;)V

    .line 90
    .end local v0           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :cond_1
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/lx/launcher8/db/DBDownload;->getFileInfo(Ljava/lang/String;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    .line 91
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/download/DownloadFile;->mThreadList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lx/launcher8/download/DownloadFile;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lx/launcher8/download/DownloadFile;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lx/launcher8/download/DownloadFile;->mPartList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$12(Lcom/lx/launcher8/download/DownloadFile;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/lx/launcher8/download/DownloadFile;->startDownload()V

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/download/DownloadFile;JJ)Ljava/net/HttpURLConnection;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 482
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lx/launcher8/download/DownloadFile;->getHttpURLConnection(JJ)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/download/DownloadFile;)J
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/lx/launcher8/download/DownloadFile;->mLoadedSize:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/download/DownloadFile;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/lx/launcher8/download/DownloadFile;->mLoadedSize:J

    return-void
.end method

.method static synthetic access$6(Lcom/lx/launcher8/download/DownloadFile;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/lx/launcher8/download/DownloadFile;->finishDownload()V

    return-void
.end method

.method static synthetic access$7(Lcom/lx/launcher8/download/DownloadFile;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/lx/launcher8/download/DownloadFile;->sendBroadcast()V

    return-void
.end method

.method static synthetic access$8(Lcom/lx/launcher8/download/DownloadFile;Lcom/lx/launcher8/download/FileSeed;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    return-void
.end method

.method static synthetic access$9(Lcom/lx/launcher8/download/DownloadFile;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/lx/launcher8/download/DownloadFile;->cutFile()V

    return-void
.end method

.method private cutFile()V
    .locals 14

    .prologue
    .line 181
    const-wide/16 v1, 0x0

    .line 182
    .local v1, end:J
    const-wide/16 v6, 0x0

    .line 183
    .local v6, start:J
    iget-object v10, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v10}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v10

    const-wide/16 v12, 0x5

    div-long v8, v10, v12

    .line 185
    .local v8, temp:J
    invoke-direct {p0}, Lcom/lx/launcher8/download/DownloadFile;->getRand()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, dir:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/4 v10, 0x5

    if-lt v4, v10, :cond_0

    .line 223
    return-void

    .line 187
    :cond_0
    int-to-long v10, v4

    mul-long v6, v10, v8

    .line 188
    add-int/lit8 v10, v4, 0x1

    int-to-long v10, v10

    mul-long/2addr v10, v8

    const-wide/16 v12, 0x1

    sub-long v1, v10, v12

    .line 190
    new-instance v5, Lcom/lx/launcher8/download/FilePart;

    invoke-direct {v5}, Lcom/lx/launcher8/download/FilePart;-><init>()V

    .line 191
    .local v5, part:Lcom/lx/launcher8/download/FilePart;
    const/4 v10, 0x4

    if-ne v4, v10, :cond_3

    .line 192
    iget-object v10, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v10}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    invoke-virtual {v5, v10, v11}, Lcom/lx/launcher8/download/FilePart;->setEndPos(J)V

    .line 193
    iget-object v10, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v10}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v5, v10, v11}, Lcom/lx/launcher8/download/FilePart;->setFileSize(J)V

    .line 198
    :goto_1
    invoke-virtual {v5, v6, v7}, Lcom/lx/launcher8/download/FilePart;->setStartPos(J)V

    .line 199
    const-wide/16 v10, 0x0

    invoke-virtual {v5, v10, v11}, Lcom/lx/launcher8/download/FilePart;->setLoadedSize(J)V

    .line 200
    iget-object v10, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v10}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/lx/launcher8/download/FilePart;->setFileId(I)V

    .line 201
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/lx/launcher8/download/FilePart;->setStatus(I)V

    .line 202
    invoke-virtual {v5, v4}, Lcom/lx/launcher8/download/FilePart;->setNumber(I)V

    .line 203
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/lx/launcher8/download/FilePart;->setPartId(I)V

    .line 204
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/lx/launcher8/download/DownloadFile;->mSavePath:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/temp/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/lx/launcher8/download/FilePart;->setSavePath(Ljava/lang/String;)V

    .line 205
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/lx/launcher8/download/DownloadFile;->getRand()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/lx/launcher8/download/FilePart;->setFileName(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/lx/launcher8/db/DBDownload;->insert(Lcom/lx/launcher8/download/FilePart;)V

    .line 210
    new-instance v3, Ljava/io/File;

    invoke-virtual {v5}, Lcom/lx/launcher8/download/FilePart;->getSavePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v3, file:Ljava/io/File;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 212
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 215
    :cond_1
    new-instance v3, Ljava/io/File;

    .end local v3           #file:Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/lx/launcher8/download/FilePart;->getSavePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/lx/launcher8/download/FilePart;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .restart local v3       #file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 218
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 195
    .end local v3           #file:Ljava/io/File;
    :cond_3
    invoke-virtual {v5, v1, v2}, Lcom/lx/launcher8/download/FilePart;->setEndPos(J)V

    .line 196
    sub-long v10, v1, v6

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    invoke-virtual {v5, v10, v11}, Lcom/lx/launcher8/download/FilePart;->setFileSize(J)V

    goto/16 :goto_1

    .line 219
    .restart local v3       #file:Ljava/io/File;
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method private deleteFiles(Ljava/lang/String;)V
    .locals 5
    .parameter "filePath"

    .prologue
    .line 458
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 460
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_1

    .line 461
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 473
    :cond_0
    return-void

    .line 463
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 464
    .local v0, delFile:[Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v2, v4

    .line 465
    .local v2, i:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 466
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 467
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lx/launcher8/download/DownloadFile;->deleteFiles(Ljava/lang/String;)V

    .line 469
    :cond_2
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 465
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private finishDownload()V
    .locals 9

    .prologue
    .line 374
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v6

    iget-object v7, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v7}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/db/DBDownload;->getFileInfo(I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v6

    iput-object v6, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    .line 375
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v6

    iget-object v7, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v7}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/db/DBDownload;->getFilePartList(I)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/lx/launcher8/download/DownloadFile;->mPartList:Ljava/util/List;

    .line 377
    const/4 v3, 0x0

    .line 379
    .local v3, outputStream:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v6}, Lcom/lx/launcher8/download/FileSeed;->getSavePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v7}, Lcom/lx/launcher8/download/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 381
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 383
    :cond_0
    iget-object v6, p0, Lcom/lx/launcher8/download/DownloadFile;->mPartList:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v8}, Lcom/lx/launcher8/download/FileSeed;->getSavePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v8}, Lcom/lx/launcher8/download/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/lx/launcher8/download/DownloadFile;->mergeFiles(Ljava/util/List;Ljava/lang/String;)V

    .line 386
    const-string v5, ""

    .line 387
    .local v5, path:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/lx/launcher8/download/DownloadFile;->mPartList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_3

    .line 393
    const-string v6, ""

    if-eq v5, v6, :cond_1

    .line 394
    invoke-direct {p0, v5}, Lcom/lx/launcher8/download/DownloadFile;->deleteFiles(Ljava/lang/String;)V

    .line 397
    :cond_1
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v6

    iget-object v7, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v7}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/db/DBDownload;->finishFile(I)V

    .line 398
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v6

    iget-object v7, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v7}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v7

    const/16 v8, 0x8

    invoke-virtual {v6, v7, v8}, Lcom/lx/launcher8/db/DBDownload;->updateState(II)V

    .line 399
    iget-object v6, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 406
    if-eqz v3, :cond_2

    .line 407
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 413
    .end local v1           #file:Ljava/io/File;
    .end local v2           #i:I
    .end local v5           #path:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 388
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #i:I
    .restart local v5       #path:Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/lx/launcher8/download/DownloadFile;->mPartList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/download/FilePart;

    .line 389
    .local v4, part:Lcom/lx/launcher8/download/FilePart;
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/lx/launcher8/download/FilePart;->getSavePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/lx/launcher8/download/FilePart;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 391
    invoke-virtual {v4}, Lcom/lx/launcher8/download/FilePart;->getSavePath()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    .end local v1           #file:Ljava/io/File;
    .end local v2           #i:I
    .end local v4           #part:Lcom/lx/launcher8/download/FilePart;
    .end local v5           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 401
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 406
    if-eqz v3, :cond_2

    .line 407
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 409
    :catch_1
    move-exception v0

    .line 410
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 402
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 403
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 406
    if-eqz v3, :cond_2

    .line 407
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 409
    :catch_3
    move-exception v0

    .line 410
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 404
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 406
    if-eqz v3, :cond_4

    .line 407
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 412
    :cond_4
    :goto_2
    throw v6

    .line 409
    :catch_4
    move-exception v0

    .line 410
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 409
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #i:I
    .restart local v5       #path:Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 410
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private getHttpURLConnection(JJ)Ljava/net/HttpURLConnection;
    .locals 10
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    const/4 v5, 0x0

    .line 483
    iget-object v6, p0, Lcom/lx/launcher8/download/DownloadFile;->mHttp:Lcom/app/common/net/UHttp;

    iget-object v7, p0, Lcom/lx/launcher8/download/DownloadFile;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/app/common/net/UHttp;->checkNetwork(Landroid/content/Context;)V

    .line 484
    iget-object v6, p0, Lcom/lx/launcher8/download/DownloadFile;->mHttp:Lcom/app/common/net/UHttp;

    iget-boolean v6, v6, Lcom/app/common/net/UHttp;->mHaveNet:Z

    if-nez v6, :cond_0

    .line 485
    iget-object v6, p0, Lcom/lx/launcher8/download/DownloadFile;->mHttp:Lcom/app/common/net/UHttp;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/app/common/net/UHttp;->setError(Z)V

    .line 486
    iget-object v6, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    move-object v0, v5

    .line 515
    :goto_0
    return-object v0

    .line 490
    :cond_0
    const/4 v3, 0x0

    .line 491
    .local v3, url:Ljava/net/URL;
    const/4 v0, 0x0

    .line 493
    .local v0, conn:Ljava/net/HttpURLConnection;
    :try_start_0
    iget-object v6, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v6}, Lcom/lx/launcher8/download/FileSeed;->getPkName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v6}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 494
    new-instance v4, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v7}, Lcom/lx/launcher8/download/FileSeed;->getFileUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v3           #url:Ljava/net/URL;
    .local v4, url:Ljava/net/URL;
    move-object v3, v4

    .line 499
    .end local v4           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :goto_1
    iget-object v6, p0, Lcom/lx/launcher8/download/DownloadFile;->mHttp:Lcom/app/common/net/UHttp;

    invoke-virtual {v6}, Lcom/app/common/net/UHttp;->isCmwapType()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 500
    new-instance v2, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v7, Ljava/net/InetSocketAddress;

    const-string v8, "10.0.0.172"

    const/16 v9, 0x50

    invoke-direct {v7, v8, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v6, v7}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 501
    .local v2, proxy:Ljava/net/Proxy;
    invoke-virtual {v3, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v2           #proxy:Ljava/net/Proxy;
    .restart local v0       #conn:Ljava/net/HttpURLConnection;
    :goto_2
    const/16 v5, 0x4e20

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 510
    cmp-long v5, p3, p1

    if-lez v5, :cond_3

    .line 511
    const-string v5, "Range"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bytes="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_1
    :try_start_1
    new-instance v4, Ljava/net/URL;

    iget-object v6, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v6}, Lcom/lx/launcher8/download/FileSeed;->getFileUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v3           #url:Ljava/net/URL;
    .restart local v4       #url:Ljava/net/URL;
    move-object v3, v4

    .end local v4           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    goto :goto_1

    .line 503
    :cond_2
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0       #conn:Ljava/net/HttpURLConnection;
    goto :goto_2

    .line 505
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move-object v0, v5

    .line 506
    goto/16 :goto_0

    .line 513
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #conn:Ljava/net/HttpURLConnection;
    :cond_3
    const-string v5, "Range"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bytes="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getRand()Ljava/lang/String;
    .locals 7

    .prologue
    .line 519
    const-string v3, ""

    .line 520
    .local v3, str:Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 521
    .local v0, date:Ljava/util/Date;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 523
    .local v1, defloc:Ljava/util/Locale;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddhhmmssSSS"

    invoke-direct {v2, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 524
    .local v2, df:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 526
    return-object v3
.end method

.method private mergeFiles(Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter "saveFileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/download/FilePart;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/download/FilePart;>;"
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 428
    :cond_0
    const/4 v5, 0x0

    .line 429
    .local v5, fileChannel:Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 431
    .local v0, inFileChannel:Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 432
    const/4 v8, 0x0

    .local v8, i:I
    move-object v7, v6

    .end local v6           #file:Ljava/io/File;
    .local v7, file:Ljava/io/File;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/lx/launcher8/download/DownloadFile;->mPartList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-lt v8, v1, :cond_4

    .line 443
    if-eqz v5, :cond_1

    .line 444
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 446
    :cond_1
    if-eqz v0, :cond_2

    .line 447
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    move-object v6, v7

    .line 450
    .end local v7           #file:Ljava/io/File;
    .end local v8           #i:I
    .restart local v6       #file:Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 433
    .end local v6           #file:Ljava/io/File;
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #i:I
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/lx/launcher8/download/DownloadFile;->mPartList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lx/launcher8/download/FilePart;

    .line 434
    .local v9, part:Lcom/lx/launcher8/download/FilePart;
    new-instance v6, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/lx/launcher8/download/FilePart;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/lx/launcher8/download/FilePart;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 435
    .end local v7           #file:Ljava/io/File;
    .restart local v6       #file:Ljava/io/File;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 436
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 437
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 438
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 432
    :cond_5
    add-int/lit8 v8, v8, 0x1

    move-object v7, v6

    .end local v6           #file:Ljava/io/File;
    .restart local v7       #file:Ljava/io/File;
    goto :goto_0

    .line 441
    .end local v7           #file:Ljava/io/File;
    .end local v8           #i:I
    .end local v9           #part:Lcom/lx/launcher8/download/FilePart;
    .restart local v6       #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 443
    :goto_2
    if-eqz v5, :cond_6

    .line 444
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 446
    :cond_6
    if-eqz v0, :cond_3

    .line 447
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_1

    .line 442
    :catchall_0
    move-exception v1

    .line 443
    :goto_3
    if-eqz v5, :cond_7

    .line 444
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 446
    :cond_7
    if-eqz v0, :cond_8

    .line 447
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 449
    :cond_8
    throw v1

    .line 442
    .end local v6           #file:Ljava/io/File;
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #i:I
    :catchall_1
    move-exception v1

    move-object v6, v7

    .end local v7           #file:Ljava/io/File;
    .restart local v6       #file:Ljava/io/File;
    goto :goto_3

    .line 441
    .end local v6           #file:Ljava/io/File;
    .restart local v7       #file:Ljava/io/File;
    :catch_1
    move-exception v1

    move-object v6, v7

    .end local v7           #file:Ljava/io/File;
    .restart local v6       #file:Ljava/io/File;
    goto :goto_2
.end method

.method private sendBroadcast()V
    .locals 3

    .prologue
    .line 533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "app_download_broadcast_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "FileSeed"

    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 535
    iget-object v1, p0, Lcom/lx/launcher8/download/DownloadFile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 536
    return-void
.end method

.method private startDownload()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 229
    iget-object v5, p0, Lcom/lx/launcher8/download/DownloadFile;->mContext:Landroid/content/Context;

    .line 230
    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 231
    .local v0, cwjManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 232
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 233
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 234
    invoke-direct {p0}, Lcom/lx/launcher8/download/DownloadFile;->sendBroadcast()V

    .line 257
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v5, p0, Lcom/lx/launcher8/download/DownloadFile;->mPartList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 239
    iget-object v5, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 240
    invoke-direct {p0}, Lcom/lx/launcher8/download/DownloadFile;->sendBroadcast()V

    goto :goto_0

    .line 244
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/lx/launcher8/download/DownloadFile;->mPartList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_3

    .line 254
    iget-object v5, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v5, v9}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 255
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v6}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v6

    invoke-virtual {v5, v6, v9}, Lcom/lx/launcher8/db/DBDownload;->updateState(II)V

    .line 256
    invoke-direct {p0}, Lcom/lx/launcher8/download/DownloadFile;->sendBroadcast()V

    goto :goto_0

    .line 245
    :cond_3
    iget-object v5, p0, Lcom/lx/launcher8/download/DownloadFile;->mPartList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/download/FilePart;

    .line 246
    .local v3, part:Lcom/lx/launcher8/download/FilePart;
    invoke-virtual {v3}, Lcom/lx/launcher8/download/FilePart;->getLoadedSize()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/lx/launcher8/download/FilePart;->getFileSize()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    .line 247
    new-instance v4, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;-><init>(Lcom/lx/launcher8/download/DownloadFile;)V

    .line 248
    .local v4, thread:Lcom/lx/launcher8/download/DownloadFile$DownloadThread;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->setDaemon(Z)V

    .line 249
    iput-object v3, v4, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->mFilePart:Lcom/lx/launcher8/download/FilePart;

    .line 250
    iget-object v5, p0, Lcom/lx/launcher8/download/DownloadFile;->mThreadList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v5, p0, Lcom/lx/launcher8/download/DownloadFile;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 244
    .end local v4           #thread:Lcom/lx/launcher8/download/DownloadFile$DownloadThread;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public download()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v0}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lx/launcher8/download/DownloadFile$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/download/DownloadFile$1;-><init>(Lcom/lx/launcher8/download/DownloadFile;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 144
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getFileSeed()Lcom/lx/launcher8/download/FileSeed;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    return-object v0
.end method

.method public stopDownload()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 151
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile;->mThreadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/lx/launcher8/download/DownloadFile;->sendBroadcast()V

    .line 165
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v3}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/lx/launcher8/db/DBDownload;->updateState(II)V

    .line 166
    return-void

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile;->mThreadList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;

    .line 154
    .local v1, thread:Lcom/lx/launcher8/download/DownloadFile$DownloadThread;
    if-eqz v1, :cond_1

    .line 156
    :try_start_0
    invoke-virtual {v1}, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->interrupt()V

    .line 157
    const/4 v1, 0x0

    .line 158
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile;->mThreadList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :catch_0
    move-exception v2

    goto :goto_1
.end method
