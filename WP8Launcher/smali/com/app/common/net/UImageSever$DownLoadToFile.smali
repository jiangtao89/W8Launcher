.class public Lcom/app/common/net/UImageSever$DownLoadToFile;
.super Ljava/lang/Object;
.source "UImageSever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/common/net/UImageSever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownLoadToFile"
.end annotation


# instance fields
.field private mIsLetGo:Z

.field final synthetic this$0:Lcom/app/common/net/UImageSever;


# direct methods
.method public constructor <init>(Lcom/app/common/net/UImageSever;)V
    .locals 1
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/app/common/net/UImageSever$DownLoadToFile;->this$0:Lcom/app/common/net/UImageSever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/common/net/UImageSever$DownLoadToFile;->mIsLetGo:Z

    return-void
.end method


# virtual methods
.method public isLetGo()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/app/common/net/UImageSever$DownLoadToFile;->mIsLetGo:Z

    return v0
.end method

.method public load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "context"
    .parameter "urlStr"
    .parameter "absPath"

    .prologue
    .line 165
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v4, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 169
    .local v2, distBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    .line 172
    :try_start_0
    new-instance v10, Lcom/app/common/net/UHttp;

    invoke-direct {v10}, Lcom/app/common/net/UHttp;-><init>()V

    const/4 v11, 0x0

    invoke-static {p1, p2, v10, v11}, Lcom/app/common/net/UHttp;->getHttpURLConnection(Landroid/content/Context;Ljava/lang/String;Lcom/app/common/net/UHttp;Z)Ljava/net/HttpURLConnection;

    move-result-object v9

    .line 174
    .local v9, urlConn:Ljava/net/HttpURLConnection;
    if-nez v9, :cond_0

    .line 175
    const/4 v10, 0x0

    .line 242
    .end local v9           #urlConn:Ljava/net/HttpURLConnection;
    :goto_0
    return v10

    .line 177
    .restart local v9       #urlConn:Ljava/net/HttpURLConnection;
    :cond_0
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 179
    .local v5, inputStream:Ljava/io/InputStream;
    iget-object v10, p0, Lcom/app/common/net/UImageSever$DownLoadToFile;->this$0:Lcom/app/common/net/UImageSever;

    #getter for: Lcom/app/common/net/UImageSever;->mIsCreadNail:Z
    invoke-static {v10}, Lcom/app/common/net/UImageSever;->access$8(Lcom/app/common/net/UImageSever;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_3

    .line 186
    :try_start_1
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 187
    if-eqz v2, :cond_1

    .line 188
    invoke-static {v2, p3}, Lcom/app/common/utils/UFile;->bitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 208
    .local v8, resCode:I
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 210
    invoke-virtual {p0}, Lcom/app/common/net/UImageSever$DownLoadToFile;->isLetGo()Z

    move-result v10

    if-nez v10, :cond_6

    .line 211
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 242
    :cond_2
    :goto_2
    const/4 v10, 0x1

    goto :goto_0

    .line 193
    .end local v8           #resCode:I
    :cond_3
    const/16 v0, 0x1000

    .line 194
    .local v0, BUFSIZE:I
    const/16 v10, 0x1000

    new-array v1, v10, [B

    .line 196
    .local v1, buffer:[B
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 197
    .local v6, output:Ljava/io/OutputStream;
    const/4 v7, 0x0

    .line 198
    .local v7, readed:I
    :goto_3
    invoke-virtual {p0}, Lcom/app/common/net/UImageSever$DownLoadToFile;->isLetGo()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_5

    .line 203
    :cond_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 204
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 237
    .end local v0           #BUFSIZE:I
    .end local v1           #buffer:[B
    .end local v5           #inputStream:Ljava/io/InputStream;
    .end local v6           #output:Ljava/io/OutputStream;
    .end local v7           #readed:I
    .end local v9           #urlConn:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v3

    .line 239
    .local v3, e:Ljava/io/IOException;
    const/4 v10, 0x0

    goto :goto_0

    .line 199
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #BUFSIZE:I
    .restart local v1       #buffer:[B
    .restart local v5       #inputStream:Ljava/io/InputStream;
    .restart local v6       #output:Ljava/io/OutputStream;
    .restart local v7       #readed:I
    .restart local v9       #urlConn:Ljava/net/HttpURLConnection;
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v6, v1, v10, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    .line 212
    .end local v0           #BUFSIZE:I
    .end local v1           #buffer:[B
    .end local v6           #output:Ljava/io/OutputStream;
    .end local v7           #readed:I
    .restart local v8       #resCode:I
    :cond_6
    const/16 v10, 0xc8

    if-eq v10, v8, :cond_2

    .line 235
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 190
    .end local v8           #resCode:I
    :catch_1
    move-exception v10

    goto :goto_1

    .line 189
    :catch_2
    move-exception v10

    goto :goto_1
.end method

.method public setLetGo(Z)V
    .locals 0
    .parameter "isLetGo"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/app/common/net/UImageSever$DownLoadToFile;->mIsLetGo:Z

    .line 156
    return-void
.end method
