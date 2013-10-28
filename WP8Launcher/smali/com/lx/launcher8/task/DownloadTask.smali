.class public Lcom/lx/launcher8/task/DownloadTask;
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
.field private final MAX_BUFFER_SIZE:I

.field private mContext:Landroid/content/Context;

.field private mFileSeed:Lcom/lx/launcher8/download/FileSeed;

.field private mHttp:Lcom/app/common/net/UHttp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lx/launcher8/download/FileSeed;)V
    .locals 1
    .parameter "context"
    .parameter "fileSeed"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    const/16 v0, 0x1000

    iput v0, p0, Lcom/lx/launcher8/task/DownloadTask;->MAX_BUFFER_SIZE:I

    .line 27
    new-instance v0, Lcom/app/common/net/UHttp;

    invoke-direct {v0}, Lcom/app/common/net/UHttp;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/task/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    .line 33
    iput-object p1, p0, Lcom/lx/launcher8/task/DownloadTask;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/task/DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 36
    return-void
.end method

.method private getHttpURLConnection(J)Ljava/net/HttpURLConnection;
    .locals 10
    .parameter "startPos"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 178
    iget-object v6, p0, Lcom/lx/launcher8/task/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    iget-object v7, p0, Lcom/lx/launcher8/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/app/common/net/UHttp;->checkNetwork(Landroid/content/Context;)V

    .line 179
    iget-object v6, p0, Lcom/lx/launcher8/task/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    iget-boolean v6, v6, Lcom/app/common/net/UHttp;->mHaveNet:Z

    if-nez v6, :cond_0

    .line 180
    iget-object v6, p0, Lcom/lx/launcher8/task/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    invoke-virtual {v6, v8}, Lcom/app/common/net/UHttp;->setError(Z)V

    .line 181
    iget-object v6, p0, Lcom/lx/launcher8/task/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    const-string v7, "\u6ca1\u6709\u7f51\u7edc"

    invoke-virtual {v6, v7}, Lcom/app/common/net/UHttp;->setErrorMsg(Ljava/lang/String;)V

    .line 182
    new-array v6, v8, [Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/lx/launcher8/task/DownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 183
    iget-object v6, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 184
    invoke-direct {p0}, Lcom/lx/launcher8/task/DownloadTask;->sendBroadcast()V

    move-object v0, v5

    .line 205
    :goto_0
    return-object v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    .line 188
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 191
    .local v3, url:Ljava/net/URL;
    :try_start_0
    iget-object v6, p0, Lcom/lx/launcher8/task/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    invoke-virtual {v6}, Lcom/app/common/net/UHttp;->isCmwapType()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 193
    new-instance v4, Ljava/net/URL;

    iget-object v6, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v6}, Lcom/lx/launcher8/download/FileSeed;->getFileUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
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

    .line 195
    .local v2, proxy:Ljava/net/Proxy;
    invoke-virtual {v4, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v0       #conn:Ljava/net/HttpURLConnection;
    move-object v3, v4

    .line 203
    .end local v2           #proxy:Ljava/net/Proxy;
    .end local v4           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :goto_1
    const/16 v5, 0x4e20

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 204
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

    goto :goto_0

    .line 197
    :cond_1
    :try_start_2
    new-instance v4, Ljava/net/URL;

    iget-object v6, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v6}, Lcom/lx/launcher8/download/FileSeed;->getFileUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 198
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

    .line 200
    :catch_0
    move-exception v1

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    move-object v0, v5

    .line 201
    goto :goto_0

    .line 200
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
    .line 156
    iget-object v1, p0, Lcom/lx/launcher8/task/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    iget-object v2, p0, Lcom/lx/launcher8/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/app/common/net/UHttp;->checkNetwork(Landroid/content/Context;)V

    .line 159
    iget-object v1, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v1}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/task/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    iget-boolean v1, v1, Lcom/app/common/net/UHttp;->mHaveNet:Z

    if-nez v1, :cond_0

    .line 160
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 175
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 162
    .restart local v0       #i:I
    :cond_1
    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_2
    iget-object v1, p0, Lcom/lx/launcher8/task/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    iget-object v2, p0, Lcom/lx/launcher8/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/app/common/net/UHttp;->checkNetwork(Landroid/content/Context;)V

    .line 167
    iget-object v1, p0, Lcom/lx/launcher8/task/DownloadTask;->mHttp:Lcom/app/common/net/UHttp;

    iget-boolean v1, v1, Lcom/app/common/net/UHttp;->mHaveNet:Z

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 169
    invoke-direct {p0}, Lcom/lx/launcher8/task/DownloadTask;->sendBroadcast()V

    .line 170
    invoke-virtual {p0}, Lcom/lx/launcher8/task/DownloadTask;->InitLoad()V

    goto :goto_1

    .line 160
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private sendBroadcast()V
    .locals 3

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "download_broadcast_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "FileSeed"

    iget-object v2, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/lx/launcher8/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 212
    return-void
.end method


# virtual methods
.method public InitFile()V
    .locals 5

    .prologue
    .line 44
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, mFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 48
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 51
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    iget-object v2, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/lx/launcher8/download/FileSeed;->setLoadedSize(J)V

    .line 61
    :goto_1
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "downloadTask initFile error, msg :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v3}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 59
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    iget-object v2, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/lx/launcher8/download/FileSeed;->setLoadedSize(J)V

    goto :goto_1
.end method

.method public InitLoad()V
    .locals 11

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/lx/launcher8/task/DownloadTask;->InitFile()V

    .line 87
    iget-object v7, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v7}, Lcom/lx/launcher8/download/FileSeed;->getLoadedSize()J

    move-result-wide v5

    .line 89
    .local v5, startPos:J
    const/4 v1, 0x0

    .line 90
    .local v1, file:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 92
    .local v4, inStream:Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, v5, v6}, Lcom/lx/launcher8/task/DownloadTask;->getHttpURLConnection(J)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 93
    .local v3, http:Ljava/net/HttpURLConnection;
    if-nez v3, :cond_1

    .line 94
    iget-object v7, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 95
    invoke-direct {p0}, Lcom/lx/launcher8/task/DownloadTask;->sendBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 143
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 144
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 145
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    .end local v3           #http:Ljava/net/HttpURLConnection;
    :cond_0
    :goto_1
    return-void

    .line 147
    .restart local v3       #http:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v0

    .line 148
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

    goto :goto_1

    .line 98
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 99
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0x1a0

    if-ne v7, v8, :cond_2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    if-nez v7, :cond_2

    .line 100
    iget-object v7, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v7, v5, v6}, Lcom/lx/launcher8/download/FileSeed;->setFileSize(J)V

    .line 101
    iget-object v7, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 102
    invoke-direct {p0}, Lcom/lx/launcher8/task/DownloadTask;->sendBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 132
    .end local v3           #http:Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v0

    .line 134
    .local v0, e:Ljava/net/SocketException;
    :try_start_3
    iget-object v7, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 135
    invoke-direct {p0}, Lcom/lx/launcher8/task/DownloadTask;->sendBroadcast()V

    .line 136
    invoke-direct {p0}, Lcom/lx/launcher8/task/DownloadTask;->inspection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 144
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 145
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 147
    :catch_2
    move-exception v0

    .line 148
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

    goto :goto_1

    .line 105
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #http:Ljava/net/HttpURLConnection;
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xce

    if-eq v7, v8, :cond_3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_6

    .line 106
    :cond_3
    iget-object v7, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v5

    invoke-virtual {v7, v8, v9}, Lcom/lx/launcher8/download/FileSeed;->setFileSize(J)V

    .line 108
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 109
    invoke-static {}, Lcom/app/common/config/BasePath;->getInternalPath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v8}, Lcom/lx/launcher8/download/FileSeed;->getSavePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 110
    iget-object v7, p0, Lcom/lx/launcher8/task/DownloadTask;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v8}, Lcom/lx/launcher8/download/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 118
    :goto_2
    invoke-virtual {p0, v1, v4}, Lcom/lx/launcher8/task/DownloadTask;->loading(Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 120
    iget-object v7, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v7}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v7}, Lcom/lx/launcher8/download/FileSeed;->getLoadedSize()J

    move-result-wide v7

    iget-object v9, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v9}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_5

    .line 121
    iget-object v7, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 122
    invoke-direct {p0}, Lcom/lx/launcher8/task/DownloadTask;->sendBroadcast()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 143
    :goto_3
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 144
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 145
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 147
    :catch_3
    move-exception v0

    .line 148
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

    goto/16 :goto_1

    .line 112
    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    :try_start_7
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v7}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v2, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .end local v1           #file:Ljava/io/FileOutputStream;
    .local v2, file:Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2           #file:Ljava/io/FileOutputStream;
    .restart local v1       #file:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 125
    :cond_5
    iget-object v7, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 126
    invoke-direct {p0}, Lcom/lx/launcher8/task/DownloadTask;->sendBroadcast()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 137
    .end local v3           #http:Ljava/net/HttpURLConnection;
    :catch_4
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    iget-object v7, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 140
    invoke-direct {p0}, Lcom/lx/launcher8/task/DownloadTask;->sendBroadcast()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 143
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 144
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 145
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_1

    .line 147
    :catch_5
    move-exception v0

    .line 148
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

    goto/16 :goto_1

    .line 129
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #http:Ljava/net/HttpURLConnection;
    :cond_6
    :try_start_a
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 141
    .end local v3           #http:Ljava/net/HttpURLConnection;
    :catchall_0
    move-exception v7

    .line 143
    if-eqz v1, :cond_7

    if-eqz v4, :cond_7

    .line 144
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 145
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 151
    :cond_7
    :goto_4
    throw v7

    .line 147
    :catch_6
    move-exception v0

    .line 148
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

    goto :goto_4
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "params"

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/lx/launcher8/task/DownloadTask;->InitLoad()V

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lx/launcher8/task/DownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public loading(Ljava/io/FileOutputStream;Ljava/io/InputStream;)V
    .locals 7
    .parameter "file"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 69
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 70
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 71
    .local v3, offset:I
    iget-object v4, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v4}, Lcom/lx/launcher8/download/FileSeed;->getLoadedSize()J

    move-result-wide v1

    .line 72
    .local v1, loadedSize:J
    iget-object v4, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v4, v6}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 73
    invoke-direct {p0}, Lcom/lx/launcher8/task/DownloadTask;->sendBroadcast()V

    .line 74
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v4}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 82
    return-void

    .line 75
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 76
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 78
    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 79
    iget-object v4, p0, Lcom/lx/launcher8/task/DownloadTask;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v4, v1, v2}, Lcom/lx/launcher8/download/FileSeed;->setLoadedSize(J)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 223
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/lx/launcher8/task/DownloadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 228
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/lx/launcher8/task/DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
