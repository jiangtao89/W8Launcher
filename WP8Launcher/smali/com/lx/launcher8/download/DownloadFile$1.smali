.class Lcom/lx/launcher8/download/DownloadFile$1;
.super Ljava/lang/Object;
.source "DownloadFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/download/DownloadFile;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/download/DownloadFile;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/download/DownloadFile;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static {v2}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-nez v2, :cond_4

    .line 106
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    #calls: Lcom/lx/launcher8/download/DownloadFile;->getHttpURLConnection(JJ)Ljava/net/HttpURLConnection;
    invoke-static {v2, v3, v4, v5, v6}, Lcom/lx/launcher8/download/DownloadFile;->access$2(Lcom/lx/launcher8/download/DownloadFile;JJ)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 107
    .local v1, http:Ljava/net/HttpURLConnection;
    if-nez v1, :cond_0

    .line 108
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static {v2}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 143
    .end local v1           #http:Ljava/net/HttpURLConnection;
    :goto_0
    return-void

    .line 112
    .restart local v1       #http:Ljava/net/HttpURLConnection;
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 113
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xce

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static {v2}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/lx/launcher8/download/FileSeed;->setFileSize(J)V

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static {v2}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-nez v2, :cond_3

    .line 117
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #calls: Lcom/lx/launcher8/download/DownloadFile;->sendBroadcast()V
    invoke-static {v2}, Lcom/lx/launcher8/download/DownloadFile;->access$7(Lcom/lx/launcher8/download/DownloadFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    .end local v1           #http:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #calls: Lcom/lx/launcher8/download/DownloadFile;->sendBroadcast()V
    invoke-static {v2}, Lcom/lx/launcher8/download/DownloadFile;->access$7(Lcom/lx/launcher8/download/DownloadFile;)V

    goto :goto_0

    .line 121
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #http:Ljava/net/HttpURLConnection;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static {v3}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v3

    iget-object v4, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static {v4}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/lx/launcher8/db/DBDownload;->updateFileSize(IJ)V

    .line 122
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static {v4}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/db/DBDownload;->getFileInfo(I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v3

    #setter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static {v2, v3}, Lcom/lx/launcher8/download/DownloadFile;->access$8(Lcom/lx/launcher8/download/DownloadFile;Lcom/lx/launcher8/download/FileSeed;)V

    .line 123
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #calls: Lcom/lx/launcher8/download/DownloadFile;->cutFile()V
    invoke-static {v2}, Lcom/lx/launcher8/download/DownloadFile;->access$9(Lcom/lx/launcher8/download/DownloadFile;)V

    .line 126
    .end local v1           #http:Ljava/net/HttpURLConnection;
    :cond_4
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static {v2}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getLoadedSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static {v4}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    .line 127
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #calls: Lcom/lx/launcher8/download/DownloadFile;->sendBroadcast()V
    invoke-static {v2}, Lcom/lx/launcher8/download/DownloadFile;->access$7(Lcom/lx/launcher8/download/DownloadFile;)V

    goto/16 :goto_0

    .line 131
    :cond_5
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileUrl:Ljava/lang/String;
    invoke-static {v4}, Lcom/lx/launcher8/download/DownloadFile;->access$10(Lcom/lx/launcher8/download/DownloadFile;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/db/DBDownload;->getFileInfo(Ljava/lang/String;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v3

    #setter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static {v2, v3}, Lcom/lx/launcher8/download/DownloadFile;->access$8(Lcom/lx/launcher8/download/DownloadFile;Lcom/lx/launcher8/download/FileSeed;)V

    .line 132
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static {v2}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 133
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #calls: Lcom/lx/launcher8/download/DownloadFile;->sendBroadcast()V
    invoke-static {v2}, Lcom/lx/launcher8/download/DownloadFile;->access$7(Lcom/lx/launcher8/download/DownloadFile;)V

    goto/16 :goto_0

    .line 137
    :cond_6
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static {v4}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/db/DBDownload;->getFilePartList(I)Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/lx/launcher8/download/DownloadFile;->mPartList:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/lx/launcher8/download/DownloadFile;->access$11(Lcom/lx/launcher8/download/DownloadFile;Ljava/util/List;)V

    .line 138
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    iget-object v3, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static {v3}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lx/launcher8/download/FileSeed;->getLoadedSize()J

    move-result-wide v3

    #setter for: Lcom/lx/launcher8/download/DownloadFile;->mLoadedSize:J
    invoke-static {v2, v3, v4}, Lcom/lx/launcher8/download/DownloadFile;->access$5(Lcom/lx/launcher8/download/DownloadFile;J)V

    .line 139
    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadFile$1;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    #calls: Lcom/lx/launcher8/download/DownloadFile;->startDownload()V
    invoke-static {v2}, Lcom/lx/launcher8/download/DownloadFile;->access$12(Lcom/lx/launcher8/download/DownloadFile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
