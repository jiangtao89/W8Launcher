.class public Lcom/app/common/bll/BllObject;
.super Ljava/lang/Object;
.source "BllObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;
    .locals 9
    .parameter "bllobj"
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "page"

    .prologue
    const/4 v6, 0x0

    .line 35
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, v6

    move v8, v6

    invoke-static/range {v0 .. v8}, Lcom/app/common/bll/BllObject;->request(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;Ljava/lang/String;ZZZ)Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    return-object v0
.end method

.method public static Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;Ljava/lang/String;ZZ)Lcom/app/common/bll/BllXmlPull;
    .locals 9
    .parameter "bllobj"
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "page"
    .parameter "absPath"
    .parameter "isReadFile"
    .parameter "isWriteFile"

    .prologue
    .line 23
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/app/common/bll/BllObject;->request(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;Ljava/lang/String;ZZZ)Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    return-object v0
.end method

.method public static Post(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;
    .locals 9
    .parameter "bllobj"
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "page"

    .prologue
    const/4 v6, 0x0

    .line 39
    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, v6

    invoke-static/range {v0 .. v8}, Lcom/app/common/bll/BllObject;->request(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;Ljava/lang/String;ZZZ)Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    return-object v0
.end method

.method public static Post(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;Ljava/lang/String;ZZZ)Lcom/app/common/bll/BllXmlPull;
    .locals 9
    .parameter "bllobj"
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "page"
    .parameter "absPath"
    .parameter "isReadFile"
    .parameter "isWriteFile"
    .parameter "IsPost"

    .prologue
    .line 28
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/app/common/bll/BllObject;->request(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;Ljava/lang/String;ZZZ)Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    return-object v0
.end method

.method public static PostFiles(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/app/common/net/UHttp$OnPostedListener;)Lcom/app/common/bll/BllXmlPull;
    .locals 5
    .parameter "bllpull"
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "filePathArray"
    .parameter "postedListener"

    .prologue
    const/4 v2, 0x0

    .line 133
    if-nez p0, :cond_1

    move-object p0, v2

    .line 155
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 136
    .restart local p0
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/app/common/net/UHttp;->postFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/app/common/net/UHttp$OnPostedListener;)Lcom/app/common/net/UHttp;

    move-result-object v1

    .line 139
    .local v1, http:Lcom/app/common/net/UHttp;
    :try_start_0
    iget-object v3, v1, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    iput-object v3, p0, Lcom/app/common/bll/BllXmlPull;->mInStream:Ljava/io/InputStream;

    .line 140
    invoke-virtual {p0, v1}, Lcom/app/common/bll/BllXmlPull;->setResult(Lcom/app/common/net/UHttp;)V

    .line 141
    invoke-virtual {p0}, Lcom/app/common/bll/BllXmlPull;->read()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_1
    iget-object v3, p0, Lcom/app/common/bll/BllXmlPull;->mResult:Lcom/app/common/bll/CResult;

    iget-object v4, p0, Lcom/app/common/bll/BllXmlPull;->mLanguage:Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lcom/app/common/bll/CResult;->isSuccess(Landroid/content/Context;Lcom/app/common/bll/CResult;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object p0, v2

    .line 148
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0, p2}, Lcom/app/common/bll/BllXmlPull;->setError(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static request(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;Ljava/lang/String;ZZZ)Lcom/app/common/bll/BllXmlPull;
    .locals 7
    .parameter "bllobj"
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "page"
    .parameter "absPath"
    .parameter "isReadFile"
    .parameter "isWriteFile"
    .parameter "IsPost"

    .prologue
    .line 47
    if-eqz p6, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/app/common/bll/CPage;->getP()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 48
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 50
    invoke-static {p5}, Lcom/app/common/utils/UObjectIO;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/app/common/bll/BllXmlPull;

    .line 51
    .local v3, tmp:Lcom/app/common/bll/BllXmlPull;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/app/common/bll/BllXmlPull;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 52
    const-string v5, "bllobject read from file"

    invoke-static {v5}, Lcom/app/common/utils/ULog;->d(Ljava/lang/String;)V

    .line 53
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/app/common/bll/BllXmlPull;->mReadFile:Z

    .line 128
    .end local v1           #file:Ljava/io/File;
    .end local v3           #tmp:Lcom/app/common/bll/BllXmlPull;
    :goto_0
    return-object v3

    .line 58
    :cond_1
    if-nez p0, :cond_2

    .line 59
    const/4 v3, 0x0

    goto :goto_0

    .line 61
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/app/common/bll/BllXmlPull;->mReadFile:Z

    .line 62
    if-nez p4, :cond_9

    .line 63
    new-instance p4, Lcom/app/common/bll/CPage;

    .end local p4
    invoke-direct {p4}, Lcom/app/common/bll/CPage;-><init>()V

    .line 71
    .restart local p4
    :cond_3
    invoke-virtual {p4}, Lcom/app/common/bll/CPage;->getP()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p4, v5}, Lcom/app/common/bll/CPage;->setP(I)V

    .line 73
    const/4 v2, 0x0

    .line 75
    .local v2, http:Lcom/app/common/net/UHttp;
    if-eqz p8, :cond_a

    .line 76
    invoke-static {p1, p4, p2, p3}, Lcom/app/common/bll/BllHttp;->getHttpPost(Landroid/content/Context;Lcom/app/common/bll/CPage;Ljava/lang/String;Ljava/lang/String;)Lcom/app/common/net/UHttp;

    move-result-object v2

    .line 82
    :goto_1
    :try_start_0
    iget-object v5, v2, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    iput-object v5, p0, Lcom/app/common/bll/BllXmlPull;->mInStream:Ljava/io/InputStream;

    .line 83
    invoke-virtual {p0, v2}, Lcom/app/common/bll/BllXmlPull;->setResult(Lcom/app/common/net/UHttp;)V

    .line 84
    invoke-virtual {p0}, Lcom/app/common/bll/BllXmlPull;->read()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/app/common/bll/BllXmlPull;->mInStream:Ljava/io/InputStream;

    .line 93
    iget-object v5, v2, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    if-eqz v5, :cond_4

    .line 95
    :try_start_1
    iget-object v5, v2, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 99
    :goto_2
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    .line 112
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/app/common/bll/BllXmlPull;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 113
    iget-object v5, p0, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v5}, Lcom/app/common/bll/CPage;->getP()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_8

    .line 114
    if-nez p6, :cond_5

    if-eqz p7, :cond_6

    :cond_5
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    new-instance v5, Ljava/io/File;

    .line 115
    invoke-direct {v5, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 116
    :cond_7
    iget-object v5, p0, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v5}, Lcom/app/common/bll/CPage;->getTotal()I

    move-result v4

    .line 118
    .local v4, total:I
    invoke-static {p0, p5}, Lcom/app/common/utils/UObjectIO;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 119
    iget-object v5, p0, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v5, v4}, Lcom/app/common/bll/CPage;->setTotal(I)V

    .line 124
    .end local v4           #total:I
    :cond_8
    iget-object v5, p0, Lcom/app/common/bll/BllXmlPull;->mResult:Lcom/app/common/bll/CResult;

    iget-object v6, p0, Lcom/app/common/bll/BllXmlPull;->mLanguage:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lcom/app/common/bll/CResult;->isSuccess(Landroid/content/Context;Lcom/app/common/bll/CResult;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 125
    const/4 v3, 0x0

    goto :goto_0

    .line 65
    .end local v2           #http:Lcom/app/common/net/UHttp;
    :cond_9
    invoke-virtual {p4}, Lcom/app/common/bll/CPage;->hasNextPage()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p4}, Lcom/app/common/bll/CPage;->getIndex()I

    move-result v5

    if-eqz v5, :cond_3

    .line 66
    iget-object v5, p0, Lcom/app/common/bll/BllXmlPull;->mLanguage:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/app/common/utils/Language;->showPage(Landroid/content/Context;Ljava/lang/String;I)V

    .line 67
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 78
    .restart local v2       #http:Lcom/app/common/net/UHttp;
    :cond_a
    invoke-static {p1, p4, p2, p3}, Lcom/app/common/bll/BllHttp;->getHttp(Landroid/content/Context;Lcom/app/common/bll/CPage;Ljava/lang/String;Ljava/lang/String;)Lcom/app/common/net/UHttp;

    move-result-object v2

    goto :goto_1

    .line 85
    :catch_0
    move-exception v5

    .line 92
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/app/common/bll/BllXmlPull;->mInStream:Ljava/io/InputStream;

    .line 93
    iget-object v5, v2, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    if-eqz v5, :cond_4

    .line 95
    :try_start_2
    iget-object v5, v2, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 99
    :goto_4
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    goto :goto_3

    .line 87
    :catch_1
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p0, v0, p2}, Lcom/app/common/bll/BllXmlPull;->setError(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http error,msg "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/app/common/utils/ULog;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/app/common/bll/BllXmlPull;->mInStream:Ljava/io/InputStream;

    .line 93
    iget-object v5, v2, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    if-eqz v5, :cond_4

    .line 95
    :try_start_4
    iget-object v5, v2, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 99
    :goto_5
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    goto/16 :goto_3

    .line 91
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 92
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/app/common/bll/BllXmlPull;->mInStream:Ljava/io/InputStream;

    .line 93
    iget-object v6, v2, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    if-eqz v6, :cond_b

    .line 95
    :try_start_5
    iget-object v6, v2, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 99
    :goto_6
    const/4 v6, 0x0

    iput-object v6, v2, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    .line 101
    :cond_b
    throw v5

    :cond_c
    move-object v3, p0

    .line 128
    goto/16 :goto_0

    .line 96
    :catch_2
    move-exception v5

    goto/16 :goto_2

    :catch_3
    move-exception v6

    goto :goto_6

    .restart local v0       #e:Ljava/lang/Exception;
    :catch_4
    move-exception v5

    goto :goto_5

    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v5

    goto :goto_4
.end method
