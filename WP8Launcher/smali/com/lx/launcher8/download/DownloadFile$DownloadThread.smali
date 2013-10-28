.class Lcom/lx/launcher8/download/DownloadFile$DownloadThread;
.super Ljava/lang/Thread;
.source "DownloadFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/download/DownloadFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadThread"
.end annotation


# instance fields
.field public mFilePart:Lcom/lx/launcher8/download/FilePart;

.field final synthetic this$0:Lcom/lx/launcher8/download/DownloadFile;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/download/DownloadFile;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 263
    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->mFilePart:Lcom/lx/launcher8/download/FilePart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lx/launcher8/download/FilePart;->getEndPos()J

    move-result-wide v5

    .line 268
    .local v5, endPos:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->mFilePart:Lcom/lx/launcher8/download/FilePart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lx/launcher8/download/FilePart;->getStartPos()J

    move-result-wide v16

    .line 269
    .local v16, startPos:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->mFilePart:Lcom/lx/launcher8/download/FilePart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lx/launcher8/download/FilePart;->getLoadedSize()J

    move-result-wide v10

    .line 270
    .local v10, loadedSize:J
    const/4 v14, 0x0

    .line 271
    .local v14, randomAccessFile:Ljava/io/RandomAccessFile;
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->mFilePart:Lcom/lx/launcher8/download/FilePart;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lx/launcher8/download/FilePart;->getSavePath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->mFilePart:Lcom/lx/launcher8/download/FilePart;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lx/launcher8/download/FilePart;->getFileName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 273
    .local v12, localPath:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_0

    .line 276
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 277
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v19, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static/range {v19 .. v19}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->mFilePart:Lcom/lx/launcher8/download/FilePart;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lx/launcher8/download/FilePart;->getPartId()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lcom/lx/launcher8/db/DBDownload;->updateFileSize(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->mFilePart:Lcom/lx/launcher8/download/FilePart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lx/launcher8/download/FilePart;->getLoadedSize()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_1

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->mFilePart:Lcom/lx/launcher8/download/FilePart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lx/launcher8/download/FilePart;->getStartPos()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->mFilePart:Lcom/lx/launcher8/download/FilePart;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lx/launcher8/download/FilePart;->getLoadedSize()J

    move-result-wide v20

    add-long v16, v18, v20

    .line 287
    :cond_1
    :try_start_1
    new-instance v15, Ljava/io/RandomAccessFile;

    const-string v18, "rwd"

    move-object/from16 v0, v18

    invoke-direct {v15, v7, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 292
    .end local v14           #randomAccessFile:Ljava/io/RandomAccessFile;
    .local v15, randomAccessFile:Ljava/io/RandomAccessFile;
    const/4 v9, 0x0

    .line 294
    .local v9, inStream:Ljava/io/InputStream;
    const-wide/16 v18, 0xa

    :try_start_2
    invoke-static/range {v18 .. v19}, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->sleep(J)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    #calls: Lcom/lx/launcher8/download/DownloadFile;->getHttpURLConnection(JJ)Ljava/net/HttpURLConnection;
    invoke-static {v0, v1, v2, v5, v6}, Lcom/lx/launcher8/download/DownloadFile;->access$2(Lcom/lx/launcher8/download/DownloadFile;JJ)Ljava/net/HttpURLConnection;

    move-result-object v8

    .line 297
    .local v8, http:Ljava/net/HttpURLConnection;
    if-nez v8, :cond_2

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v18

    const/16 v19, 0x10

    invoke-virtual/range {v18 .. v19}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mThreadList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$1(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v14, v15

    .line 367
    .end local v8           #http:Ljava/net/HttpURLConnection;
    .end local v9           #inStream:Ljava/io/InputStream;
    .end local v15           #randomAccessFile:Ljava/io/RandomAccessFile;
    .restart local v14       #randomAccessFile:Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v4

    .line 279
    .local v4, e:Ljava/io/IOException;
    goto :goto_0

    .line 288
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 289
    .local v4, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 302
    .end local v4           #e:Ljava/io/FileNotFoundException;
    .end local v14           #randomAccessFile:Ljava/io/RandomAccessFile;
    .restart local v8       #http:Ljava/net/HttpURLConnection;
    .restart local v9       #inStream:Ljava/io/InputStream;
    .restart local v15       #randomAccessFile:Ljava/io/RandomAccessFile;
    :cond_2
    :try_start_3
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 303
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    const/16 v19, 0xce

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 304
    :cond_3
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 306
    const/4 v13, 0x0

    .line 307
    .local v13, offset:I
    const/16 v18, 0x1000

    move/from16 v0, v18

    new-array v3, v0, [B

    .line 308
    .local v3, buffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v18

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 309
    :cond_4
    :goto_1
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 333
    :cond_5
    :goto_2
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V

    .line 336
    .end local v3           #buffer:[B
    .end local v13           #offset:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5

    .line 341
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->mFilePart:Lcom/lx/launcher8/download/FilePart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lx/launcher8/download/FilePart;->getFileSize()J

    move-result-wide v18

    cmp-long v18, v10, v18

    if-nez v18, :cond_8

    .line 342
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->mFilePart:Lcom/lx/launcher8/download/FilePart;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lx/launcher8/download/FilePart;->getPartId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/lx/launcher8/db/DBDownload;->finishFilePart(I)V

    .line 344
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLoadedSize:J
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$4(Lcom/lx/launcher8/download/DownloadFile;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v20, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static/range {v20 .. v20}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-lez v18, :cond_9

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v19, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static/range {v19 .. v19}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v19

    #setter for: Lcom/lx/launcher8/download/DownloadFile;->mLoadedSize:J
    invoke-static/range {v18 .. v20}, Lcom/lx/launcher8/download/DownloadFile;->access$5(Lcom/lx/launcher8/download/DownloadFile;J)V

    .line 347
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLoadedSize:J
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$4(Lcom/lx/launcher8/download/DownloadFile;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v20, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static/range {v20 .. v20}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-nez v18, :cond_a

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #calls: Lcom/lx/launcher8/download/DownloadFile;->finishDownload()V
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$6(Lcom/lx/launcher8/download/DownloadFile;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #calls: Lcom/lx/launcher8/download/DownloadFile;->sendBroadcast()V
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$7(Lcom/lx/launcher8/download/DownloadFile;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 353
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    if-eqz v18, :cond_b

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 357
    :cond_b
    :goto_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mThreadList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$1(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .end local v8           #http:Ljava/net/HttpURLConnection;
    :goto_4
    move-object v14, v15

    .line 367
    .end local v15           #randomAccessFile:Ljava/io/RandomAccessFile;
    .restart local v14       #randomAccessFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 310
    .end local v14           #randomAccessFile:Ljava/io/RandomAccessFile;
    .restart local v3       #buffer:[B
    .restart local v8       #http:Ljava/net/HttpURLConnection;
    .restart local v13       #offset:I
    .restart local v15       #randomAccessFile:Ljava/io/RandomAccessFile;
    :cond_c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    if-eqz v18, :cond_d

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 315
    :cond_d
    :try_start_7
    invoke-virtual {v15, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 316
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v3, v0, v13}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 317
    int-to-long v0, v13

    move-wide/from16 v18, v0

    add-long v10, v10, v18

    .line 319
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v19, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mFileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static/range {v19 .. v19}, Lcom/lx/launcher8/download/DownloadFile;->access$0(Lcom/lx/launcher8/download/DownloadFile;)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->mFilePart:Lcom/lx/launcher8/download/FilePart;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lx/launcher8/download/FilePart;->getPartId()I

    move-result v20

    .line 320
    int-to-long v0, v13

    move-wide/from16 v21, v0

    .line 319
    invoke-virtual/range {v18 .. v22}, Lcom/lx/launcher8/db/DBDownload;->updateFileSize(IIJ)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLoadedSize:J
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$4(Lcom/lx/launcher8/download/DownloadFile;)J

    move-result-wide v19

    int-to-long v0, v13

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    #setter for: Lcom/lx/launcher8/download/DownloadFile;->mLoadedSize:J
    invoke-static/range {v18 .. v20}, Lcom/lx/launcher8/download/DownloadFile;->access$5(Lcom/lx/launcher8/download/DownloadFile;J)V

    .line 322
    int-to-long v0, v13

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->mFilePart:Lcom/lx/launcher8/download/FilePart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lx/launcher8/download/FilePart;->getFileSize()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-wide v18

    cmp-long v18, v10, v18

    if-nez v18, :cond_f

    .line 328
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_2

    .line 359
    .end local v3           #buffer:[B
    .end local v8           #http:Ljava/net/HttpURLConnection;
    .end local v13           #offset:I
    :catch_2
    move-exception v4

    .line 360
    .local v4, e:Ljava/net/UnknownHostException;
    :try_start_9
    invoke-virtual {v4}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mThreadList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$1(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 326
    .end local v4           #e:Ljava/net/UnknownHostException;
    .restart local v3       #buffer:[B
    .restart local v8       #http:Ljava/net/HttpURLConnection;
    .restart local v13       #offset:I
    :catch_3
    move-exception v18

    .line 328
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    .line 361
    .end local v3           #buffer:[B
    .end local v8           #http:Ljava/net/HttpURLConnection;
    .end local v13           #offset:I
    :catch_4
    move-exception v4

    .line 362
    .local v4, e:Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mThreadList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$1(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 327
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #buffer:[B
    .restart local v8       #http:Ljava/net/HttpURLConnection;
    .restart local v13       #offset:I
    :catchall_0
    move-exception v18

    .line 328
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v19, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v19 .. v19}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v19

    if-eqz v19, :cond_e

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v19, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v19 .. v19}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 331
    :cond_e
    throw v18
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_5

    .line 363
    .end local v3           #buffer:[B
    .end local v8           #http:Ljava/net/HttpURLConnection;
    .end local v13           #offset:I
    :catch_5
    move-exception v18

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mThreadList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$1(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 328
    .restart local v3       #buffer:[B
    .restart local v8       #http:Ljava/net/HttpURLConnection;
    .restart local v13       #offset:I
    :cond_f
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_1

    .line 364
    .end local v3           #buffer:[B
    .end local v8           #http:Ljava/net/HttpURLConnection;
    .end local v13           #offset:I
    :catchall_1
    move-exception v18

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v19, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mThreadList:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/lx/launcher8/download/DownloadFile;->access$1(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 366
    throw v18

    .line 351
    .restart local v8       #http:Ljava/net/HttpURLConnection;
    :catch_6
    move-exception v18

    .line 353
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    if-eqz v18, :cond_b

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v18, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_3

    .line 352
    :catchall_2
    move-exception v18

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v19, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v19 .. v19}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v19

    if-eqz v19, :cond_10

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/download/DownloadFile$DownloadThread;->this$0:Lcom/lx/launcher8/download/DownloadFile;

    move-object/from16 v19, v0

    #getter for: Lcom/lx/launcher8/download/DownloadFile;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v19 .. v19}, Lcom/lx/launcher8/download/DownloadFile;->access$3(Lcom/lx/launcher8/download/DownloadFile;)Ljava/util/concurrent/locks/Lock;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 356
    :cond_10
    throw v18
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_5
.end method
