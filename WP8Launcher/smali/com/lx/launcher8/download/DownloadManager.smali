.class public Lcom/lx/launcher8/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static final DOWNLOAD_PATH:Ljava/lang/String;

.field private static mDownloadManger:Lcom/lx/launcher8/download/DownloadManager;


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lx/launcher8/download/FileSeed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_DOWN:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "download.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lx/launcher8/download/DownloadManager;->DOWNLOAD_PATH:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/lx/launcher8/download/DownloadManager;->mDownloadManger:Lcom/lx/launcher8/download/DownloadManager;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/download/DownloadManager;->map:Ljava/util/Map;

    .line 38
    invoke-direct {p0}, Lcom/lx/launcher8/download/DownloadManager;->readFromFile()V

    .line 39
    return-void
.end method

.method private getHttpURLConnection(Ljava/lang/String;J)Ljava/net/HttpURLConnection;
    .locals 11
    .parameter "path"
    .parameter "startPos"

    .prologue
    const/4 v6, 0x0

    .line 189
    new-instance v2, Lcom/app/common/net/UHttp;

    invoke-direct {v2}, Lcom/app/common/net/UHttp;-><init>()V

    .line 190
    .local v2, mHttp:Lcom/app/common/net/UHttp;
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/app/common/net/UHttp;->checkNetwork(Landroid/content/Context;)V

    .line 191
    iget-boolean v7, v2, Lcom/app/common/net/UHttp;->mHaveNet:Z

    if-nez v7, :cond_0

    .line 192
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/app/common/net/UHttp;->setError(Z)V

    .line 193
    const-string v7, "\u6ca1\u6709\u7f51\u7edc"

    invoke-virtual {v2, v7}, Lcom/app/common/net/UHttp;->setErrorMsg(Ljava/lang/String;)V

    move-object v0, v6

    .line 214
    :goto_0
    return-object v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    .line 197
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 200
    .local v4, url:Ljava/net/URL;
    :try_start_0
    invoke-virtual {v2}, Lcom/app/common/net/UHttp;->isCmwapType()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 202
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v4           #url:Ljava/net/URL;
    .local v5, url:Ljava/net/URL;
    :try_start_1
    new-instance v3, Ljava/net/Proxy;

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v8, Ljava/net/InetSocketAddress;

    const-string v9, "10.0.0.172"

    const/16 v10, 0x50

    invoke-direct {v8, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v3, v7, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 204
    .local v3, proxy:Ljava/net/Proxy;
    invoke-virtual {v5, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v0       #conn:Ljava/net/HttpURLConnection;
    move-object v4, v5

    .line 212
    .end local v3           #proxy:Ljava/net/Proxy;
    .end local v5           #url:Ljava/net/URL;
    .restart local v4       #url:Ljava/net/URL;
    :goto_1
    const/16 v6, 0x1388

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 213
    const-string v6, "Range"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bytes="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_1
    :try_start_2
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 207
    .end local v4           #url:Ljava/net/URL;
    .restart local v5       #url:Ljava/net/URL;
    :try_start_3
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v0       #conn:Ljava/net/HttpURLConnection;
    move-object v4, v5

    .end local v5           #url:Ljava/net/URL;
    .restart local v4       #url:Ljava/net/URL;
    goto :goto_1

    .line 209
    :catch_0
    move-exception v1

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    move-object v0, v6

    .line 210
    goto :goto_0

    .line 209
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #url:Ljava/net/URL;
    .restart local v5       #url:Ljava/net/URL;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5           #url:Ljava/net/URL;
    .restart local v4       #url:Ljava/net/URL;
    goto :goto_2
.end method

.method public static getInstance()Lcom/lx/launcher8/download/DownloadManager;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/lx/launcher8/download/DownloadManager;->mDownloadManger:Lcom/lx/launcher8/download/DownloadManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lx/launcher8/download/DownloadManager;

    invoke-direct {v0}, Lcom/lx/launcher8/download/DownloadManager;-><init>()V

    sput-object v0, Lcom/lx/launcher8/download/DownloadManager;->mDownloadManger:Lcom/lx/launcher8/download/DownloadManager;

    .line 43
    :cond_0
    sget-object v0, Lcom/lx/launcher8/download/DownloadManager;->mDownloadManger:Lcom/lx/launcher8/download/DownloadManager;

    return-object v0
.end method

.method private declared-synchronized readFromFile()V
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/lx/launcher8/download/DownloadManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/app/common/utils/UObjectIO;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/lx/launcher8/download/DownloadManager;->map:Ljava/util/Map;

    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/download/DownloadManager;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/download/DownloadManager;->map:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public download(Landroid/content/Context;Lcom/lx/launcher8/download/FileSeed;Z)V
    .locals 2
    .parameter "context"
    .parameter "fileSeed"
    .parameter "isShowNotification"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lx/launcher8/download/DownloadManager;->map:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/lx/launcher8/download/FileSeed;->getFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/lx/launcher8/download/DownloadManager;->map:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/lx/launcher8/download/FileSeed;->getFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    new-instance v0, Lcom/lx/launcher8/task/DownloadTask;

    invoke-direct {v0, p1, p2}, Lcom/lx/launcher8/task/DownloadTask;-><init>(Landroid/content/Context;Lcom/lx/launcher8/download/FileSeed;)V

    .line 127
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/download/DownloadManager;->showNotification(Landroid/content/Context;Lcom/lx/launcher8/download/FileSeed;)V

    .line 128
    :cond_1
    return-void
.end method

.method public getDownloadState(Lcom/lx/launcher8/setting/bean/VO;I)I
    .locals 13
    .parameter "vo"
    .parameter "paperType"

    .prologue
    const/16 v12, 0x10

    const/4 v6, 0x0

    const/16 v11, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x2

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/download/DownloadManager;->getFileSeed(Lcom/lx/launcher8/setting/bean/VO;I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v2

    .line 92
    .local v2, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    if-nez v2, :cond_1

    const/4 v4, -0x1

    .line 120
    :cond_0
    :goto_0
    return v4

    .line 93
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    move v4, v6

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v7

    if-ne v7, v11, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 97
    :cond_4
    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v7

    if-ne v7, v5, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    .line 98
    :cond_5
    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_6

    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v7

    if-ne v7, v12, :cond_7

    :cond_6
    move v4, v5

    goto :goto_0

    .line 99
    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_a

    .line 100
    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getFileUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct {p0, v7, v8, v9}, Lcom/lx/launcher8/download/DownloadManager;->getHttpURLConnection(Ljava/lang/String;J)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 101
    .local v3, http:Ljava/net/HttpURLConnection;
    if-eqz v3, :cond_a

    .line 103
    :try_start_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 104
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0x1a0

    if-ne v7, v8, :cond_8

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    if-nez v7, :cond_8

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/lx/launcher8/download/FileSeed;->setFileSize(J)V

    .line 106
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/lx/launcher8/download/FileSeed;->setFileSize(J)V

    .line 115
    invoke-virtual {v2, v11}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    goto/16 :goto_0

    .line 108
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xce

    if-eq v7, v8, :cond_9

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_a

    .line 109
    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Lcom/lx/launcher8/download/FileSeed;->setFileSize(J)V

    .line 110
    const/16 v6, 0x10

    invoke-virtual {v2, v6}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v5

    .line 111
    goto/16 :goto_0

    .end local v3           #http:Ljava/net/HttpURLConnection;
    :cond_a
    move v4, v6

    .line 120
    goto/16 :goto_0
.end method

.method public getFileSeed(Lcom/lx/launcher8/setting/bean/VO;I)Lcom/lx/launcher8/download/FileSeed;
    .locals 9
    .parameter "vo"
    .parameter "paperType"

    .prologue
    .line 61
    const/4 v3, 0x0

    .line 62
    .local v3, mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    instance-of v7, p1, Lcom/lx/launcher8/setting/bean/PaperInfo;

    if-eqz v7, :cond_1

    move-object v6, p1

    .line 63
    check-cast v6, Lcom/lx/launcher8/setting/bean/PaperInfo;

    .line 64
    .local v6, pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    iget-object v7, p0, Lcom/lx/launcher8/download/DownloadManager;->map:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 65
    iget-object v7, p0, Lcom/lx/launcher8/download/DownloadManager;->map:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    check-cast v3, Lcom/lx/launcher8/download/FileSeed;

    .line 66
    .restart local v3       #mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    if-eqz v3, :cond_0

    move-object v7, v3

    .line 82
    .end local v6           #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    :goto_0
    return-object v7

    .restart local v6       #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    :cond_0
    move-object v4, v3

    .line 69
    .end local v3           #mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    .local v4, mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    :try_start_0
    invoke-virtual {v6}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, mUrl:Ljava/lang/String;
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, mFileName:Ljava/lang/String;
    invoke-static {p2}, Lcom/lx/launcher8/util/CachePathUtil;->getDownloadPaperPath(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, absPath:Ljava/lang/String;
    new-instance v3, Lcom/lx/launcher8/download/FileSeed;

    invoke-direct {v3}, Lcom/lx/launcher8/download/FileSeed;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v4           #mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    .restart local v3       #mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    :try_start_1
    invoke-virtual {v3, v5}, Lcom/lx/launcher8/download/FileSeed;->setFileUrl(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3, v2}, Lcom/lx/launcher8/download/FileSeed;->setFileName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3, v0}, Lcom/lx/launcher8/download/FileSeed;->setSavePath(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3, p1}, Lcom/lx/launcher8/download/FileSeed;->setVo(Lcom/lx/launcher8/setting/bean/VO;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #absPath:Ljava/lang/String;
    .end local v2           #mFileName:Ljava/lang/String;
    .end local v5           #mUrl:Ljava/lang/String;
    .end local v6           #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    :cond_1
    move-object v7, v3

    .line 82
    goto :goto_0

    .line 77
    .end local v3           #mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    .restart local v4       #mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    .restart local v6       #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 78
    .end local v4           #mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    .local v1, e:Ljava/lang/Exception;
    .restart local v3       #mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    const/4 v7, 0x0

    goto :goto_0

    .line 77
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #absPath:Ljava/lang/String;
    .restart local v2       #mFileName:Ljava/lang/String;
    .restart local v5       #mUrl:Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public declared-synchronized saveToFile()V
    .locals 2

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/download/DownloadManager;->map:Ljava/util/Map;

    sget-object v1, Lcom/lx/launcher8/download/DownloadManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/app/common/utils/UObjectIO;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/lx/launcher8/download/DownloadManager;->mDownloadManger:Lcom/lx/launcher8/download/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showNotification(Landroid/content/Context;Lcom/lx/launcher8/download/FileSeed;)V
    .locals 13
    .parameter "context"
    .parameter "fileSeed"

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 135
    .local v5, mNotificationManager:Landroid/app/NotificationManager;
    invoke-virtual {p2}, Lcom/lx/launcher8/download/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    .line 136
    .local v6, NOTIFICATION_ID:I
    const v10, 0x7f0200bd

    .line 137
    .local v10, iconId:I
    new-instance v8, Landroid/app/Notification;

    const v1, 0x7f0200bd

    const v2, 0x7f0a01cc

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v8, v1, v2, v11, v12}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 138
    .local v8, notification:Landroid/app/Notification;
    const v1, 0x7f0200bd

    iput v1, v8, Landroid/app/Notification;->icon:I

    .line 141
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v7, 0x7f03002f

    invoke-direct {v1, v2, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 142
    iget-object v1, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f0900df

    const/16 v7, 0x64

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v2, v7, v11, v12}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 143
    iget-object v1, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f0900be

    invoke-virtual {p2}, Lcom/lx/launcher8/download/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 144
    iget-object v1, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f0900de

    const-string v7, "0%"

    invoke-virtual {v1, v2, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 145
    iget v1, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v8, Landroid/app/Notification;->flags:I

    .line 147
    const/16 v1, 0x64

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 148
    const/high16 v7, 0x800

    .line 147
    invoke-static {p1, v1, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 150
    invoke-virtual {v5, v6, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 154
    .local v3, nTime:J
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    .line 155
    .local v9, mHandler:Landroid/os/Handler;
    new-instance v0, Lcom/lx/launcher8/download/DownloadManager$1;

    move-object v1, p0

    move-object v2, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/lx/launcher8/download/DownloadManager$1;-><init>(Lcom/lx/launcher8/download/DownloadManager;Lcom/lx/launcher8/download/FileSeed;JLandroid/app/NotificationManager;ILandroid/content/Context;Landroid/app/Notification;Landroid/os/Handler;)V

    .line 184
    .local v0, mUpdateTimeTask:Ljava/lang/Runnable;
    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    const-wide/16 v1, 0x64

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
