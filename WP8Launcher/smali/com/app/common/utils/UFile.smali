.class public Lcom/app/common/utils/UFile;
.super Ljava/lang/Object;
.source "UFile.java"


# static fields
.field public static final TYPE_APK:I = 0x7

.field public static final TYPE_AUDIO:I = 0x4

.field public static final TYPE_DIR:I = 0x0

.field public static final TYPE_IMAGE:I = 0x6

.field public static final TYPE_NUKNOW:I = 0x1

.field public static final TYPE_PACKAGE:I = 0x3

.field public static final TYPE_TEXT:I = 0x2

.field public static final TYPE_VIDIO:I = 0x5

.field public static final gAudioSuffix:[Ljava/lang/String;

.field public static final gImageSuffix:[Ljava/lang/String;

.field public static final gPackageSuffix:[Ljava/lang/String;

.field public static final gVideoSuffix:[Ljava/lang/String;

.field public static final gWebTextSuffix:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".png"

    aput-object v1, v0, v2

    const-string v1, ".gif"

    aput-object v1, v0, v3

    const-string v1, ".jpg"

    aput-object v1, v0, v4

    const-string v1, ".jpeg"

    aput-object v1, v0, v5

    const-string v1, ".bmp"

    aput-object v1, v0, v6

    sput-object v0, Lcom/app/common/utils/UFile;->gImageSuffix:[Ljava/lang/String;

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".mp3"

    aput-object v1, v0, v2

    const-string v1, ".wav"

    aput-object v1, v0, v3

    const-string v1, ".ogg"

    aput-object v1, v0, v4

    const-string v1, ".midi"

    aput-object v1, v0, v5

    const-string v1, ".wma"

    aput-object v1, v0, v6

    sput-object v0, Lcom/app/common/utils/UFile;->gAudioSuffix:[Ljava/lang/String;

    .line 89
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, ".html"

    aput-object v1, v0, v2

    const-string v1, ".htm"

    aput-object v1, v0, v3

    const-string v1, ".php"

    aput-object v1, v0, v4

    sput-object v0, Lcom/app/common/utils/UFile;->gWebTextSuffix:[Ljava/lang/String;

    .line 90
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, ".jar"

    aput-object v1, v0, v2

    const-string v1, ".zip"

    aput-object v1, v0, v3

    const-string v1, ".rar"

    aput-object v1, v0, v4

    const-string v1, ".gz"

    aput-object v1, v0, v5

    sput-object v0, Lcom/app/common/utils/UFile;->gPackageSuffix:[Ljava/lang/String;

    .line 91
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".mp4"

    aput-object v1, v0, v2

    const-string v1, ".rm"

    aput-object v1, v0, v3

    const-string v1, ".mpg"

    aput-object v1, v0, v4

    const-string v1, ".avi"

    aput-object v1, v0, v5

    const-string v1, ".mpeg"

    aput-object v1, v0, v6

    sput-object v0, Lcom/app/common/utils/UFile;->gVideoSuffix:[Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3
    .parameter "bitmap"
    .parameter "absPath"

    .prologue
    .line 223
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 224
    .local v0, cf:Landroid/graphics/Bitmap$CompressFormat;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 227
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/app/common/utils/UFile;->bitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v1

    return v1
.end method

.method public static bitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z
    .locals 7
    .parameter "bitmap"
    .parameter "absPath"
    .parameter "format"

    .prologue
    const/4 v4, 0x0

    .line 195
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v4

    .line 197
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, parent:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 203
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 204
    .local v2, fos:Ljava/io/FileOutputStream;
    const/16 v5, 0x64

    invoke-virtual {p0, p2, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 205
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 206
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    const/4 v4, 0x1

    goto :goto_0

    .line 207
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FileUtil save bitmap error,msg "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)J
    .locals 9
    .parameter "srcFile"
    .parameter "destDir"
    .parameter "newFileName"

    .prologue
    .line 318
    const-wide/16 v6, 0x0

    .line 320
    .local v6, copySizes:J
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 321
    :cond_0
    const-wide/16 v6, -0x1

    .line 324
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 325
    .local v0, fcin:Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 326
    .local v5, fcout:Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v6

    .line 327
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 328
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 334
    .end local v0           #fcin:Ljava/nio/channels/FileChannel;
    .end local v5           #fcout:Ljava/nio/channels/FileChannel;
    :goto_0
    return-wide v6

    .line 329
    :catch_0
    move-exception v8

    .line 330
    .local v8, e:Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FileUtil cope file not found file,msg "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v8

    .line 332
    .local v8, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FileUtil cope file error,msg "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static creatEmptyFile(Ljava/io/File;)Z
    .locals 5
    .parameter "file"

    .prologue
    .line 341
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 342
    const/4 v1, 0x1

    .line 347
    :goto_0
    return v1

    .line 344
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FileUtil create empty file error,msg "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    .line 347
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 292
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 301
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 303
    :cond_1
    return-void

    .line 295
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 297
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 298
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/app/common/utils/UFile;->deleteFile(Ljava/io/File;)V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static downFile(Landroid/content/Context;Ljava/lang/String;Lcom/app/common/net/UHttp;)Z
    .locals 10
    .parameter "context"
    .parameter "absPath"
    .parameter "http"

    .prologue
    const/4 v7, 0x0

    .line 370
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    .line 372
    if-eqz p2, :cond_0

    iget-boolean v8, p2, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    if-eqz v8, :cond_1

    .line 396
    :cond_0
    :goto_0
    return v7

    .line 374
    :cond_1
    const/16 v0, 0x1000

    .line 375
    .local v0, BUFSIZE:I
    const/16 v8, 0x1000

    :try_start_0
    new-array v1, v8, [B

    .line 376
    .local v1, buffer:[B
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 377
    .local v5, output:Ljava/io/OutputStream;
    iget-object v4, p2, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    .line 378
    .local v4, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 379
    .local v6, readed:I
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_2

    .line 383
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 384
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v1           #buffer:[B
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #output:Ljava/io/OutputStream;
    .end local v6           #readed:I
    :goto_2
    invoke-virtual {p2}, Lcom/app/common/net/UHttp;->isLetGo()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 391
    const/16 v8, 0xc8

    iget v9, p2, Lcom/app/common/net/UHttp;->mRespondCode:I

    if-ne v8, v9, :cond_3

    .line 392
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 393
    const/4 v7, 0x1

    goto :goto_0

    .line 381
    .restart local v1       #buffer:[B
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #output:Ljava/io/OutputStream;
    .restart local v6       #readed:I
    :cond_2
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v5, v1, v8, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 385
    .end local v1           #buffer:[B
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #output:Ljava/io/OutputStream;
    .end local v6           #readed:I
    :catch_0
    move-exception v2

    .line 386
    .local v2, e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "UFile download File error, msg "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 395
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static getExCardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fileName"

    .prologue
    const/4 v1, 0x0

    .line 358
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-object v1

    .line 360
    :cond_1
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 361
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v2, v0, :cond_0

    if-eqz v0, :cond_0

    .line 364
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isExCardExist()Z
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isImage(Ljava/lang/String;)Z
    .locals 1
    .parameter "absPath"

    .prologue
    .line 116
    sget-object v0, Lcom/app/common/utils/UFile;->gImageSuffix:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/app/common/utils/UFile;->isWithSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWithSuffix(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "src"
    .parameter "suffixArray"

    .prologue
    const/4 v1, 0x0

    .line 102
    array-length v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 106
    :goto_1
    return v1

    .line 102
    :cond_0
    aget-object v0, p1, v2

    .line 103
    .local v0, suffix:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    const/4 v1, 0x1

    goto :goto_1

    .line 102
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static openFile(Landroid/content/Context;Ljava/io/File;I)V
    .locals 3
    .parameter "context"
    .parameter "file"
    .parameter "type"

    .prologue
    .line 128
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const/4 v1, 0x6

    if-ne v1, p2, :cond_3

    .line 134
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 135
    :cond_3
    const/4 v1, 0x4

    if-ne v1, p2, :cond_4

    .line 136
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 137
    :cond_4
    const/4 v1, 0x5

    if-ne v1, p2, :cond_2

    .line 138
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static openOrCreatDir(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 161
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 166
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static saveFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 7
    .parameter "inputStream"
    .parameter "file"

    .prologue
    .line 173
    const/4 v3, 0x0

    .line 174
    .local v3, output:Ljava/io/OutputStream;
    const/16 v0, 0x1000

    .line 176
    .local v0, FILESIZE:I
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    .end local v3           #output:Ljava/io/OutputStream;
    .local v4, output:Ljava/io/OutputStream;
    const/16 v5, 0x1000

    :try_start_1
    new-array v1, v5, [B

    .line 178
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 181
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 182
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 188
    const/4 v5, 0x1

    move-object v3, v4

    .end local v1           #buffer:[B
    .end local v4           #output:Ljava/io/OutputStream;
    .restart local v3       #output:Ljava/io/OutputStream;
    :goto_1
    return v5

    .line 179
    .end local v3           #output:Ljava/io/OutputStream;
    .restart local v1       #buffer:[B
    .restart local v4       #output:Ljava/io/OutputStream;
    :cond_0
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 183
    .end local v1           #buffer:[B
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 184
    .end local v4           #output:Ljava/io/OutputStream;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #output:Ljava/io/OutputStream;
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FileUtil saveFile from inputstream error, msg "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    .line 185
    const/4 v5, 0x0

    goto :goto_1

    .line 183
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static toLines(Ljava/io/InputStream;)Ljava/util/List;
    .locals 6
    .parameter "is"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 269
    .local v3, lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 270
    .local v1, in:Ljava/io/BufferedReader;
    const-string v2, ""

    .line 272
    .local v2, line:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 278
    :goto_1
    return-object v3

    .line 273
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FileUtil read stream to lines error, msg "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static toStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "str"

    .prologue
    .line 234
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 235
    .local v0, stream:Ljava/io/ByteArrayInputStream;
    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "is"

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/app/common/utils/UFile;->toString(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;Z)Ljava/lang/String;
    .locals 6
    .parameter "is"
    .parameter "needALF"

    .prologue
    .line 252
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 253
    .local v2, in:Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 254
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v3, ""

    .line 256
    .local v3, line:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_1

    .line 264
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 257
    :cond_1
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    if-eqz p1, :cond_0

    .line 259
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FileUtil read stream to string error, msg "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method
