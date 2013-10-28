.class public Lcom/app/download/bean/DownloadTask;
.super Landroid/os/AsyncTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final LOAD_BUUFER_SIZE:I

.field private final MAX_BUFFER_SIZE:I

.field private coding:I

.field private mContext:Landroid/content/Context;

.field private mFileSeed:Lcom/app/download/bean/FileSeed;

.field private mHttp:Lcom/app/common/net/UHttp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Lcom/app/download/bean/RecodeInfo;)V
    .locals 1
    .parameter "context"
    .parameter "fileSeed"
    .parameter "mRecodeInfo"

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    const/16 v0, 0x1000

    iput v0, p0, Lcom/app/download/bean/DownloadTask;->MAX_BUFFER_SIZE:I

    .line 32
    const v0, 0xa000

    iput v0, p0, Lcom/app/download/bean/DownloadTask;->LOAD_BUUFER_SIZE:I

    .line 34
    new-instance v0, Lcom/app/common/net/UHttp;

    invoke-direct {v0}, Lcom/app/common/net/UHttp;-><init>()V

    iput-object v0, p0, Lcom/app/download/bean/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    .line 39
    iput-object p1, p0, Lcom/app/download/bean/DownloadTask;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    .line 41
    iput-object p1, p0, Lcom/app/download/bean/DownloadTask;->mContext:Landroid/content/Context;

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/app/download/bean/DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 43
    return-void
.end method

.method private getHttpURLConnection(J)Ljava/net/HttpURLConnection;
    .locals 10
    .parameter "startPos"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 203
    iget-object v6, p0, Lcom/app/download/bean/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/app/common/net/UHttp;->checkNetwork(Landroid/content/Context;)V

    .line 204
    iget-object v6, p0, Lcom/app/download/bean/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    iget-boolean v6, v6, Lcom/app/common/net/UHttp;->mHaveNet:Z

    if-nez v6, :cond_0

    .line 205
    iget-object v6, p0, Lcom/app/download/bean/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    invoke-virtual {v6, v8}, Lcom/app/common/net/UHttp;->setError(Z)V

    .line 206
    iget-object v6, p0, Lcom/app/download/bean/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    const-string v7, "\u6ca1\u6709\u7f51\u7edc"

    invoke-virtual {v6, v7}, Lcom/app/common/net/UHttp;->setErrorMsg(Ljava/lang/String;)V

    .line 207
    new-array v6, v8, [Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/app/download/bean/DownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 208
    iget-object v6, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/app/download/bean/FileSeed;->setState(I)V

    move-object v0, v5

    .line 235
    :goto_0
    return-object v0

    .line 211
    :cond_0
    const/4 v0, 0x0

    .line 212
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 215
    .local v3, url:Ljava/net/URL;
    :try_start_0
    iget-object v6, p0, Lcom/app/download/bean/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    invoke-virtual {v6}, Lcom/app/common/net/UHttp;->isCmwapType()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 223
    new-instance v4, Ljava/net/URL;

    iget-object v6, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v6}, Lcom/app/download/bean/FileSeed;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v3           #url:Ljava/net/URL;
    .local v4, url:Ljava/net/URL;
    :try_start_1
    new-instance v2, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v7, Ljava/net/InetSocketAddress;

    const-string v8, "10.0.0.172"

    const/16 v9, 0x50

    invoke-direct {v7, v8, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v6, v7}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 225
    .local v2, proxy:Ljava/net/Proxy;
    invoke-virtual {v4, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v0       #conn:Ljava/net/HttpURLConnection;
    move-object v3, v4

    .line 233
    .end local v2           #proxy:Ljava/net/Proxy;
    .end local v4           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :goto_1
    const/16 v5, 0x4e20

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 234
    const-string v5, "RANGE"

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

    goto :goto_0

    .line 227
    :cond_1
    :try_start_2
    new-instance v4, Ljava/net/URL;

    iget-object v6, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v6}, Lcom/app/download/bean/FileSeed;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 228
    .end local v3           #url:Ljava/net/URL;
    .restart local v4       #url:Ljava/net/URL;
    :try_start_3
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v0       #conn:Ljava/net/HttpURLConnection;
    move-object v3, v4

    .end local v4           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    goto :goto_1

    .line 230
    :catch_0
    move-exception v1

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    move-object v0, v5

    .line 231
    goto :goto_0

    .line 230
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #url:Ljava/net/URL;
    .restart local v4       #url:Ljava/net/URL;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    goto :goto_2
.end method

.method private inspection()V
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/app/download/bean/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    iget-object v2, p0, Lcom/app/download/bean/DownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/app/common/net/UHttp;->checkNetwork(Landroid/content/Context;)V

    .line 182
    iget-object v1, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/app/download/bean/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    iget-boolean v1, v1, Lcom/app/common/net/UHttp;->mHaveNet:Z

    if-nez v1, :cond_0

    .line 183
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 200
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 185
    .restart local v0       #i:I
    :cond_1
    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_2
    iget-object v1, p0, Lcom/app/download/bean/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    iget-object v2, p0, Lcom/app/download/bean/DownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/app/common/net/UHttp;->checkNetwork(Landroid/content/Context;)V

    .line 190
    iget v1, p0, Lcom/app/download/bean/DownloadTask;->coding:I

    iget-object v2, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v2}, Lcom/app/download/bean/FileSeed;->getCoding()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 193
    iget-object v1, p0, Lcom/app/download/bean/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    iget-boolean v1, v1, Lcom/app/common/net/UHttp;->mHaveNet:Z

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/app/download/bean/FileSeed;->setState(I)V

    .line 195
    invoke-virtual {p0}, Lcom/app/download/bean/DownloadTask;->InitLoad()V

    goto :goto_1

    .line 183
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public InitFile()V
    .locals 5

    .prologue
    .line 59
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v2}, Lcom/app/download/bean/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, mFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 63
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 66
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    iget-object v2, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/app/download/bean/FileSeed;->setLoadedSize(J)V

    .line 76
    :goto_1
    iget-object v2, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v2}, Lcom/app/download/bean/FileSeed;->getCoding()I

    move-result v2

    iput v2, p0, Lcom/app/download/bean/DownloadTask;->coding:I

    .line 77
    iget-object v2, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/app/download/bean/FileSeed;->setSpeed(D)V

    .line 78
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "downloadTask initFile error, msg :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v3}, Lcom/app/download/bean/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 74
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    iget-object v2, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/app/download/bean/FileSeed;->setLoadedSize(J)V

    goto :goto_1
.end method

.method public InitLoad()V
    .locals 11

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/app/download/bean/DownloadTask;->InitFile()V

    .line 120
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v7}, Lcom/app/download/bean/FileSeed;->getLoadedSize()J

    move-result-wide v5

    .line 122
    .local v5, startPos:J
    const/4 v1, 0x0

    .line 123
    .local v1, file:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 125
    .local v4, inStream:Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, v5, v6}, Lcom/app/download/bean/DownloadTask;->getHttpURLConnection(J)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 126
    .local v3, http:Ljava/net/HttpURLConnection;
    if-nez v3, :cond_1

    .line 127
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lcom/app/download/bean/FileSeed;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 166
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 167
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 168
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    .end local v3           #http:Ljava/net/HttpURLConnection;
    :cond_0
    :goto_0
    return-void

    .line 170
    .restart local v3       #http:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "downloadTask initload error,msg "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 131
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xce

    if-eq v7, v8, :cond_2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_6

    .line 132
    :cond_2
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v5

    invoke-virtual {v7, v8, v9}, Lcom/app/download/bean/FileSeed;->setFileSize(J)V

    .line 134
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 135
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v7}, Lcom/app/download/bean/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v2, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 139
    .end local v1           #file:Ljava/io/FileOutputStream;
    .local v2, file:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {p0, v2, v4}, Lcom/app/download/bean/DownloadTask;->loading(Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 141
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v7}, Lcom/app/download/bean/FileSeed;->getLoadedSize()J

    move-result-wide v7

    iget-object v9, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v9}, Lcom/app/download/bean/FileSeed;->getFileSize()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_4

    .line 142
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/app/download/bean/FileSeed;->setState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 166
    :cond_3
    :goto_1
    if-eqz v2, :cond_9

    if-eqz v4, :cond_9

    .line 167
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 168
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-object v1, v2

    .end local v2           #file:Ljava/io/FileOutputStream;
    .restart local v1       #file:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 144
    .end local v1           #file:Ljava/io/FileOutputStream;
    .restart local v2       #file:Ljava/io/FileOutputStream;
    :cond_4
    :try_start_5
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v7}, Lcom/app/download/bean/FileSeed;->getCoding()I

    move-result v7

    iget v8, p0, Lcom/app/download/bean/DownloadTask;->coding:I

    if-ne v7, v8, :cond_3

    .line 146
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lcom/app/download/bean/FileSeed;->setState(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_1

    .line 153
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 155
    .end local v2           #file:Ljava/io/FileOutputStream;
    .end local v3           #http:Ljava/net/HttpURLConnection;
    .local v0, e:Ljava/net/SocketException;
    .restart local v1       #file:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_6
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v7}, Lcom/app/download/bean/FileSeed;->getCoding()I

    move-result v7

    iget v8, p0, Lcom/app/download/bean/DownloadTask;->coding:I

    if-ne v7, v8, :cond_5

    .line 156
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lcom/app/download/bean/FileSeed;->setState(I)V

    .line 157
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    iget v8, p0, Lcom/app/download/bean/DownloadTask;->coding:I

    invoke-virtual {v7, v8}, Lcom/app/download/bean/FileSeed;->setCoding(I)V

    .line 158
    invoke-direct {p0}, Lcom/app/download/bean/DownloadTask;->inspection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 166
    :cond_5
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 167
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 168
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 170
    :catch_2
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "downloadTask initload error,msg "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #http:Ljava/net/HttpURLConnection;
    :cond_6
    :try_start_8
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 153
    .end local v3           #http:Ljava/net/HttpURLConnection;
    :catch_3
    move-exception v0

    goto :goto_2

    .line 160
    :catch_4
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v7}, Lcom/app/download/bean/FileSeed;->getCoding()I

    move-result v7

    iget v8, p0, Lcom/app/download/bean/DownloadTask;->coding:I

    if-ne v7, v8, :cond_7

    .line 163
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lcom/app/download/bean/FileSeed;->setState(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 166
    :cond_7
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 167
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 168
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    .line 170
    :catch_5
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "downloadTask initload error,msg "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 166
    :goto_4
    if-eqz v1, :cond_8

    if-eqz v4, :cond_8

    .line 167
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 168
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 174
    :cond_8
    :goto_5
    throw v7

    .line 170
    :catch_6
    move-exception v0

    .line 171
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "downloadTask initload error,msg "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto :goto_5

    .line 170
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/FileOutputStream;
    .restart local v2       #file:Ljava/io/FileOutputStream;
    .restart local v3       #http:Ljava/net/HttpURLConnection;
    :catch_7
    move-exception v0

    .line 171
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "downloadTask initload error,msg "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    .end local v0           #e:Ljava/io/IOException;
    :cond_9
    move-object v1, v2

    .end local v2           #file:Ljava/io/FileOutputStream;
    .restart local v1       #file:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 164
    .end local v1           #file:Ljava/io/FileOutputStream;
    .restart local v2       #file:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #file:Ljava/io/FileOutputStream;
    .restart local v1       #file:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 160
    .end local v1           #file:Ljava/io/FileOutputStream;
    .restart local v2       #file:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/FileOutputStream;
    .restart local v1       #file:Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "params"

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/app/download/bean/DownloadTask;->InitLoad()V

    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/app/download/bean/DownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getmFileSeed()Lcom/app/download/bean/FileSeed;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    return-object v0
.end method

.method public loading(Ljava/io/FileOutputStream;Ljava/io/InputStream;)V
    .locals 18
    .parameter "file"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const/16 v12, 0x1000

    new-array v1, v12, [B

    .line 87
    .local v1, buffer:[B
    const/4 v9, 0x0

    .line 88
    .local v9, offset:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v12}, Lcom/app/download/bean/FileSeed;->getLoadedSize()J

    move-result-wide v3

    .line 91
    .local v3, loadedSize:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 92
    .local v10, oldTime:J
    const/4 v2, 0x0

    .line 93
    .local v2, bufferLoad:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    const-wide/16 v13, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/app/download/bean/FileSeed;->setSpeed(D)V

    .line 94
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v12, v10, v11}, Lcom/app/download/bean/FileSeed;->setuTime(J)V

    .line 95
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v12, -0x1

    if-eq v9, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v12}, Lcom/app/download/bean/FileSeed;->getCoding()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/app/download/bean/DownloadTask;->coding:I

    if-eq v12, v13, :cond_1

    .line 114
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->flush()V

    .line 115
    return-void

    .line 97
    :cond_1
    add-int/2addr v2, v9

    .line 99
    const v12, 0xa000

    if-lt v2, v12, :cond_2

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 101
    .local v7, newTime:J
    int-to-double v12, v2

    sub-long v14, v7, v10

    long-to-double v14, v14

    const-wide v16, 0x408f400000000000L

    div-double v14, v14, v16

    div-double v5, v12, v14

    .line 102
    .local v5, mSpeed:D
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v12, v5, v6}, Lcom/app/download/bean/FileSeed;->setSpeed(D)V

    .line 103
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v12, v7, v8}, Lcom/app/download/bean/FileSeed;->setuTime(J)V

    .line 104
    move-wide v10, v7

    .line 105
    const/4 v2, 0x0

    .line 108
    .end local v5           #mSpeed:D
    .end local v7           #newTime:J
    :cond_2
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 109
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->flush()V

    .line 111
    int-to-long v12, v9

    add-long/2addr v3, v12

    .line 112
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v12, v3, v4}, Lcom/app/download/bean/FileSeed;->setLoadedSize(J)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 11
    .parameter "result"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 253
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/app/download/config/Resources;->notification_icon:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 256
    .local v1, dowloadIcon:I
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v5

    .line 257
    .local v5, manager:Lcom/app/download/bean/DownloadManager;
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/app/download/bean/DownloadManager;->newDownloadTask(Landroid/content/Context;)V

    .line 258
    iget-object v7, v5, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v7}, Lcom/app/download/bean/RecodeInfo;->saveToFile()V

    .line 260
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v7}, Lcom/app/download/bean/FileSeed;->getState()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 303
    :goto_0
    return-void

    .line 262
    :sswitch_0
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v5, v7}, Lcom/app/download/bean/DownloadManager;->onDownloadFinished(Lcom/app/download/bean/FileSeed;)V

    .line 263
    iget-object v7, v5, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    iget-object v8, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v7, v8}, Lcom/app/download/bean/RecodeInfo;->removeToFinished(Lcom/app/download/bean/FileSeed;)V

    .line 264
    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 266
    .local v2, finishStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v7}, Lcom/app/download/bean/FileSeed;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 267
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v5, v7, v8}, Lcom/app/download/bean/DownloadManager;->openFile(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    .line 268
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v7, v9}, Lcom/app/download/bean/FileSeed;->setOpen(Z)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v7}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 270
    sget-object v7, Lcom/app/common/Activity;->mCurActivity:Lcom/app/common/Activity;

    if-eqz v7, :cond_1

    .line 271
    sget-object v7, Lcom/app/common/Activity;->mCurActivity:Lcom/app/common/Activity;

    iget-object v8, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v5, v7, v8}, Lcom/app/download/bean/DownloadManager;->openFileDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    goto :goto_0

    .line 273
    :cond_1
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v8

    .line 274
    invoke-virtual {v8}, Lcom/app/download/bean/DownloadManager;->getManagerAct()Ljava/lang/Class;

    move-result-object v8

    .line 273
    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "FileSeed"

    iget-object v8, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 276
    const-string v7, "boolean"

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v7, v9, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 280
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 281
    .local v4, mNotificationManager:Landroid/app/NotificationManager;
    new-instance v6, Landroid/app/Notification;

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 281
    invoke-direct {v6, v1, v2, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 283
    .local v6, notification:Landroid/app/Notification;
    iget v7, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 284
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v9}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 284
    invoke-virtual {v6, v7, v2, v8, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 287
    invoke-virtual {v4, v10, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 290
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #mNotificationManager:Landroid/app/NotificationManager;
    .end local v6           #notification:Landroid/app/Notification;
    :cond_2
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v9}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 296
    .end local v2           #finishStr:Ljava/lang/String;
    :sswitch_1
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v9}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "  \u4e0b\u8f7d\u6682\u505c"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :sswitch_2
    iget-object v7, p0, Lcom/app/download/bean/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v9}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "  \u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/app/download/bean/DownloadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/app/download/bean/DownloadTask;->mContext:Landroid/content/Context;

    const-string v1, "\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5"

    invoke-static {v0, v1}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/app/download/bean/DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setmFileSeed(Lcom/app/download/bean/FileSeed;)V
    .locals 0
    .parameter "mFileSeed"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/app/download/bean/DownloadTask;->mFileSeed:Lcom/app/download/bean/FileSeed;

    .line 51
    return-void
.end method
