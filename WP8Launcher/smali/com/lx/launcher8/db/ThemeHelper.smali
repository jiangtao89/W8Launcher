.class public Lcom/lx/launcher8/db/ThemeHelper;
.super Ljava/lang/Object;
.source "ThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/db/ThemeHelper$CompratorByLastModified;,
        Lcom/lx/launcher8/db/ThemeHelper$Saveable;,
        Lcom/lx/launcher8/db/ThemeHelper$Theme;,
        Lcom/lx/launcher8/db/ThemeHelper$ThemeRecoverListener;
    }
.end annotation


# static fields
.field public static final ACTION_WP8_THEME:Ljava/lang/String; = "com.anall.wp8.theme.VIEW"

.field static final TAG:Ljava/lang/String; = null

.field public static final THEME_FILE_PERFIX:Ljava/lang/String; = ".anall"

.field static final THEME_VERSION:I = 0x8

.field private static mVersionMaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 64
    const-class v0, Lcom/lx/launcher8/db/ThemeHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lx/launcher8/db/ThemeHelper;->TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/lx/launcher8/db/ThemeHelper;->mVersionMaps:Landroid/util/SparseArray;

    .line 71
    sget-object v0, Lcom/lx/launcher8/db/ThemeHelper;->mVersionMaps:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "1.2.0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/lx/launcher8/db/ThemeHelper;->mVersionMaps:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "1.2.2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/lx/launcher8/db/ThemeHelper;->mVersionMaps:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "1.2.4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/lx/launcher8/db/ThemeHelper;->mVersionMaps:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "1.2.5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lcom/lx/launcher8/db/ThemeHelper;->mVersionMaps:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "1.2.7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/lx/launcher8/db/ThemeHelper;->mVersionMaps:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "1.2.9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/lx/launcher8/db/ThemeHelper;->mVersionMaps:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "1.3.1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/lx/launcher8/db/ThemeHelper;->mVersionMaps:Landroid/util/SparseArray;

    const-string v1, "1.3.2"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkState(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 574
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const/4 v0, -0x1

    .line 578
    :goto_0
    return v0

    .line 576
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    const/4 v0, -0x2

    goto :goto_0

    .line 578
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAbsThemePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lx/launcher8/db/ThemeHelper;->getHisThemePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".anall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBaseInfos(Landroid/content/Context;Lcom/lx/launcher8/db/ThemeHelper$Theme;)[Ljava/lang/String;
    .locals 17
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 502
    const/4 v11, 0x4

    new-array v4, v11, [Ljava/lang/String;

    .line 503
    .local v4, infos:[Ljava/lang/String;
    const v11, 0x7f0a01b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 504
    .local v8, unkown:Ljava/lang/String;
    invoke-static {v4, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 505
    const/4 v1, 0x0

    .line 507
    .local v1, dis:Ljava/io/DataInput;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/lx/launcher8/db/ThemeHelper$Theme;->isLocal()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 508
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lx/launcher8/db/ThemeHelper;->getHisThemePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".anall"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, path:Ljava/lang/String;
    const/4 v11, 0x3

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/app/common/utils/UDateTime;->getFormatDate(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    .line 510
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v11, "r"

    invoke-direct {v2, v5, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #dis:Ljava/io/DataInput;
    .local v2, dis:Ljava/io/DataInput;
    move-object v1, v2

    .line 515
    .end local v2           #dis:Ljava/io/DataInput;
    .end local v5           #path:Ljava/lang/String;
    .restart local v1       #dis:Ljava/io/DataInput;
    :goto_0
    if-nez v1, :cond_2

    .line 531
    :cond_0
    :goto_1
    return-object v4

    .line 512
    :cond_1
    const-string v11, "getDataStream"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mResoveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v13, 0x1

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 513
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mIndex:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 512
    move-object/from16 v0, p0

    invoke-static {v0, v11, v12, v13, v14}, Lcom/lx/launcher8/util/ClassLoaderUtil;->executeRemote(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ResolveInfo;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/io/DataInput;

    move-object v1, v0

    goto :goto_0

    .line 517
    :cond_2
    invoke-interface {v1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v6

    .line 518
    .local v6, size:J
    const/4 v11, 0x0

    invoke-static {v6, v7}, Lcom/app/common/utils/UConvert;->ByteToFitFormat(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    .line 519
    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v9

    .line 520
    .local v9, ver:I
    sget-object v11, Lcom/lx/launcher8/db/ThemeHelper;->mVersionMaps:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 521
    .local v10, version:Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 522
    const/4 v11, 0x1

    aput-object v10, v4, v11

    .line 523
    :cond_3
    const/4 v11, 0x2

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v12, v4, v11

    .line 524
    instance-of v11, v1, Ljava/io/Closeable;

    if-eqz v11, :cond_0

    .line 525
    move-object v0, v1

    check-cast v0, Ljava/io/Closeable;

    move-object v11, v0

    invoke-interface {v11}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 527
    .end local v6           #size:J
    .end local v9           #ver:I
    .end local v10           #version:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 528
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getHisThemePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, ""

    invoke-static {v0}, Lcom/lx/launcher8/util/BasePath;->getDataPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSaveBitmap(Landroid/content/Context;Lcom/lx/launcher8/db/ThemeHelper$Theme;IZ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "theme"
    .parameter "type"
    .parameter "scale"

    .prologue
    const/4 v5, 0x1

    .line 405
    invoke-virtual {p1}, Lcom/lx/launcher8/db/ThemeHelper$Theme;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p1, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mLocalPath:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Lcom/lx/launcher8/db/ThemeHelper;->getSaveBitmap(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 408
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "getThemeBitmap"

    iget-object v1, p1, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mResoveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 409
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget v4, p1, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 408
    invoke-static {p0, v0, v1, v5, v2}, Lcom/lx/launcher8/util/ClassLoaderUtil;->executeRemote(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ResolveInfo;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static getSaveBitmap(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "name"
    .parameter "type"
    .parameter "scale"

    .prologue
    .line 425
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lx/launcher8/db/ThemeHelper;->getHisThemePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".anall"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 426
    .local v5, path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 428
    .local v6, ra:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v9, "r"

    invoke-direct {v7, v5, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 429
    .end local v6           #ra:Ljava/io/RandomAccessFile;
    .local v7, ra:Ljava/io/RandomAccessFile;
    const-wide/16 v9, 0x8

    :try_start_1
    invoke-virtual {v7, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 430
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    .line 431
    .local v8, version:I
    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 432
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v3

    .line 433
    .local v3, len:I
    packed-switch p1, :pswitch_data_0

    .line 492
    :cond_0
    if-eqz v7, :cond_1

    .line 493
    :try_start_2
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 436
    :cond_1
    :goto_0
    const/4 v0, 0x0

    move-object v6, v7

    .line 497
    .end local v3           #len:I
    .end local v7           #ra:Ljava/io/RandomAccessFile;
    .end local v8           #version:I
    .restart local v6       #ra:Ljava/io/RandomAccessFile;
    :goto_1
    return-object v0

    .line 435
    .end local v6           #ra:Ljava/io/RandomAccessFile;
    .restart local v3       #len:I
    .restart local v7       #ra:Ljava/io/RandomAccessFile;
    .restart local v8       #version:I
    :pswitch_0
    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 469
    :goto_2
    if-lez v3, :cond_0

    .line 471
    :try_start_3
    new-array v1, v3, [B

    .line 472
    .local v1, buffer:[B
    invoke-virtual {v7, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 473
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 475
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 476
    .local v4, option:Landroid/graphics/BitmapFactory$Options;
    if-eqz p2, :cond_8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    :goto_3
    iput-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 477
    if-nez p2, :cond_2

    const/4 v9, 0x2

    if-ne p1, v9, :cond_3

    .line 478
    :cond_2
    const/4 v9, 0x2

    iput v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 479
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 482
    const/4 v9, 0x0

    :try_start_4
    invoke-static {v1, v9, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-result-object v0

    .line 492
    .local v0, bt:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_4

    .line 493
    :try_start_5
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_4
    move-object v6, v7

    .line 483
    .end local v7           #ra:Ljava/io/RandomAccessFile;
    .restart local v6       #ra:Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 439
    .end local v0           #bt:Landroid/graphics/Bitmap;
    .end local v1           #buffer:[B
    .end local v4           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #ra:Ljava/io/RandomAccessFile;
    .restart local v7       #ra:Ljava/io/RandomAccessFile;
    :pswitch_1
    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    .line 440
    :try_start_6
    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 442
    :cond_5
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    .line 443
    goto :goto_2

    .line 445
    :pswitch_2
    const/4 v9, 0x7

    if-lt v8, v9, :cond_0

    .line 447
    const/4 v9, 0x1

    if-le v8, v9, :cond_6

    .line 448
    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 449
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    .line 451
    :cond_6
    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 452
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    .line 453
    goto :goto_2

    .line 455
    :pswitch_3
    const/4 v9, 0x7

    if-lt v8, v9, :cond_0

    .line 457
    const/4 v9, 0x1

    if-le v8, v9, :cond_7

    .line 458
    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 459
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    .line 461
    :cond_7
    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 462
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    .line 463
    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 464
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    .line 465
    goto :goto_2

    .line 476
    .restart local v1       #buffer:[B
    .restart local v4       #option:Landroid/graphics/BitmapFactory$Options;
    :cond_8
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    .line 484
    :catch_0
    move-exception v2

    .line 485
    .local v2, e:Ljava/lang/OutOfMemoryError;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ThemeHelper getBitmap OutOfMemoryError,it\'s type is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 492
    if-eqz v7, :cond_9

    .line 493
    :try_start_7
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 487
    :cond_9
    :goto_5
    const/4 v0, 0x0

    move-object v6, v7

    .end local v7           #ra:Ljava/io/RandomAccessFile;
    .restart local v6       #ra:Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .line 488
    .end local v1           #buffer:[B
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .end local v3           #len:I
    .end local v4           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #version:I
    :catch_1
    move-exception v2

    .line 489
    .local v2, e:Ljava/io/IOException;
    :goto_6
    :try_start_8
    const-string v9, "ThemeHelper getScaleScreenshoot error"

    invoke-static {v9, v2}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 492
    if-eqz v6, :cond_a

    .line 493
    :try_start_9
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 497
    :cond_a
    :goto_7
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 490
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 492
    :goto_8
    if-eqz v6, :cond_b

    .line 493
    :try_start_a
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 496
    :cond_b
    :goto_9
    throw v9

    .line 494
    .end local v6           #ra:Ljava/io/RandomAccessFile;
    .restart local v3       #len:I
    .restart local v7       #ra:Ljava/io/RandomAccessFile;
    .restart local v8       #version:I
    :catch_2
    move-exception v9

    goto/16 :goto_0

    .restart local v0       #bt:Landroid/graphics/Bitmap;
    .restart local v1       #buffer:[B
    .restart local v4       #option:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v9

    goto :goto_4

    .end local v0           #bt:Landroid/graphics/Bitmap;
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v9

    goto :goto_5

    .end local v1           #buffer:[B
    .end local v3           #len:I
    .end local v4           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v7           #ra:Ljava/io/RandomAccessFile;
    .end local v8           #version:I
    .local v2, e:Ljava/io/IOException;
    .restart local v6       #ra:Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v9

    goto :goto_7

    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v10

    goto :goto_9

    .line 490
    .end local v6           #ra:Ljava/io/RandomAccessFile;
    .restart local v7       #ra:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #ra:Ljava/io/RandomAccessFile;
    .restart local v6       #ra:Ljava/io/RandomAccessFile;
    goto :goto_8

    .line 488
    .end local v6           #ra:Ljava/io/RandomAccessFile;
    .restart local v7       #ra:Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v2

    move-object v6, v7

    .end local v7           #ra:Ljava/io/RandomAccessFile;
    .restart local v6       #ra:Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static showResultInfo(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "result"

    .prologue
    .line 535
    packed-switch p1, :pswitch_data_0

    .line 571
    :goto_0
    :pswitch_0
    return-void

    .line 540
    :pswitch_1
    const-string v0, "theme_save_suc"

    const-string v1, "string"

    invoke-static {p0, v0, v1}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-static {p0, v0}, Lcom/app/common/utils/UMessage;->showTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :pswitch_2
    const-string v0, "theme_unknow_error"

    const-string v1, "string"

    invoke-static {p0, v0, v1}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-static {p0, v0}, Lcom/app/common/utils/UMessage;->showTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :pswitch_3
    const-string v0, "theme_name_notnull"

    const-string v1, "string"

    invoke-static {p0, v0, v1}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-static {p0, v0}, Lcom/app/common/utils/UMessage;->showTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :pswitch_4
    const-string v0, "theme_no_sdcard"

    const-string v1, "string"

    invoke-static {p0, v0, v1}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-static {p0, v0}, Lcom/app/common/utils/UMessage;->showTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :pswitch_5
    const-string v0, "theme_no_file"

    const-string v1, "string"

    invoke-static {p0, v0, v1}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-static {p0, v0}, Lcom/app/common/utils/UMessage;->showTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :pswitch_6
    const-string v0, "theme_file_damage"

    const-string v1, "string"

    invoke-static {p0, v0, v1}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-static {p0, v0}, Lcom/app/common/utils/UMessage;->showTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :pswitch_7
    const-string v0, "theme_version_low"

    const-string v1, "string"

    invoke-static {p0, v0, v1}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 563
    invoke-static {p0, v0}, Lcom/app/common/utils/UMessage;->showTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 568
    :pswitch_8
    const-string v0, "theme_cell_error"

    const-string v1, "string"

    invoke-static {p0, v0, v1}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-static {p0, v0}, Lcom/app/common/utils/UMessage;->showTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeBitmap(Ljava/io/DataOutput;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "dos"
    .parameter "bt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 216
    if-nez p2, :cond_0

    .line 217
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 227
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-static {p2}, Lcom/lx/launcher8/bean/ItemCell;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 221
    .local v0, buffer:[B
    if-nez v0, :cond_1

    .line 222
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0

    .line 224
    :cond_1
    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 225
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0
.end method


# virtual methods
.method public getLocalTheme(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/db/ThemeHelper$Theme;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/db/ThemeHelper$Theme;>;"
    const-string v7, ".anall"

    invoke-direct {p0, v7}, Lcom/lx/launcher8/db/ThemeHelper;->checkState(Ljava/lang/String;)I

    move-result v6

    .line 590
    .local v6, result:I
    if-gez v6, :cond_1

    .line 606
    :cond_0
    return-void

    .line 592
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/lx/launcher8/db/ThemeHelper;->getHisThemePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 594
    .local v3, listFiles:[Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    array-length v7, v3

    if-eqz v7, :cond_0

    .line 596
    new-instance v7, Lcom/lx/launcher8/db/ThemeHelper$CompratorByLastModified;

    invoke-direct {v7, p0}, Lcom/lx/launcher8/db/ThemeHelper$CompratorByLastModified;-><init>(Lcom/lx/launcher8/db/ThemeHelper;)V

    invoke-static {v3, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 597
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v7

    iget-object v5, v7, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    .line 598
    .local v5, recodeInfo:Lcom/app/download/bean/RecodeInfo;
    array-length v8, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v0, v3, v7

    .line 599
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, fileName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, ".anall"

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 601
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/app/download/bean/RecodeInfo;->isLoadingByPath(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 602
    const-string v9, ".anall"

    const-string v10, ""

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 603
    .local v4, path:Ljava/lang/String;
    new-instance v9, Lcom/lx/launcher8/db/ThemeHelper$Theme;

    invoke-direct {v9, v4, v4}, Lcom/lx/launcher8/db/ThemeHelper$Theme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    .end local v4           #path:Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public getPackageTheme(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 10
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/db/ThemeHelper$Theme;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/db/ThemeHelper$Theme;>;"
    const/4 v9, 0x1

    .line 610
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.anall.wp8.theme.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 613
    .local v2, l:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 623
    :cond_0
    return-void

    .line 615
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 616
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    const-string v6, "getThemeNames"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p2, v6, v4, v9, v7}, Lcom/lx/launcher8/util/ClassLoaderUtil;->executeRemote(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ResolveInfo;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 617
    .local v3, names:[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v6, v3

    if-eqz v6, :cond_2

    .line 619
    array-length v6, v3

    add-int/lit8 v0, v6, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 620
    new-instance v6, Lcom/lx/launcher8/db/ThemeHelper$Theme;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[APK]"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v3, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v0, v7}, Lcom/lx/launcher8/db/ThemeHelper$Theme;-><init>(Landroid/content/pm/ResolveInfo;ILjava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getThemes(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/db/ThemeHelper$Theme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/db/ThemeHelper$Theme;>;"
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/db/ThemeHelper;->getLocalTheme(Ljava/util/ArrayList;)V

    .line 584
    invoke-virtual {p0, v0, p1}, Lcom/lx/launcher8/db/ThemeHelper;->getPackageTheme(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 585
    return-object v0
.end method

.method readThemeFromStream(Landroid/content/Context;Ljava/io/DataInput;J)I
    .locals 20
    .parameter "context"
    .parameter "ra"
    .parameter "fileLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-interface/range {p2 .. p2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v6

    .line 302
    .local v6, dataSize:J
    const-wide/16 v18, 0x0

    cmp-long v18, p3, v18

    if-lez v18, :cond_0

    cmp-long v18, p3, v6

    if-eqz v18, :cond_0

    .line 303
    const/16 v18, -0x4

    .line 390
    :goto_0
    return v18

    .line 304
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/io/DataInput;->readInt()I

    move-result v17

    .line 305
    .local v17, version:I
    const/16 v18, 0x8

    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 306
    const/16 v18, -0x5

    goto :goto_0

    .line 307
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/io/DataInput;->readInt()I

    .line 310
    invoke-interface/range {p2 .. p2}, Ljava/io/DataInput;->readInt()I

    move-result v16

    .line 311
    .local v16, size:I
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 313
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/io/DataInput;->skipBytes(I)I

    .line 314
    invoke-interface/range {p2 .. p2}, Ljava/io/DataInput;->readInt()I

    move-result v16

    .line 317
    :cond_2
    if-lez v16, :cond_3

    .line 319
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/io/DataInput;->skipBytes(I)I

    .line 322
    :cond_3
    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    .line 324
    invoke-interface/range {p2 .. p2}, Ljava/io/DataInput;->readInt()I

    move-result v16

    .line 325
    if-lez v16, :cond_4

    .line 326
    move/from16 v0, v16

    new-array v3, v0, [B

    .line 327
    .local v3, buffer:[B
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/io/DataInput;->readFully([B)V

    .line 329
    const/16 v18, 0x0

    :try_start_0
    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 330
    .local v13, paper:Landroid/graphics/Bitmap;
    if-eqz v13, :cond_4

    .line 331
    invoke-static/range {p1 .. p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v3           #buffer:[B
    .end local v13           #paper:Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/io/DataInput;->readInt()I

    move-result v16

    .line 342
    if-lez v16, :cond_5

    .line 343
    move/from16 v0, v16

    new-array v3, v0, [B

    .line 344
    .restart local v3       #buffer:[B
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/io/DataInput;->readFully([B)V

    .line 346
    const/16 v18, 0x0

    :try_start_1
    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 347
    .restart local v13       #paper:Landroid/graphics/Bitmap;
    if-eqz v13, :cond_5

    .line 348
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v18

    const-string v19, "lockbg"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 349
    .local v9, f:Ljava/io/File;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 350
    .local v10, fos:Ljava/io/FileOutputStream;
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x64

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 351
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 352
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 353
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 361
    .end local v3           #buffer:[B
    .end local v9           #f:Ljava/io/File;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v13           #paper:Landroid/graphics/Bitmap;
    :cond_5
    :goto_2
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v15, v0, [Landroid/content/SharedPreferences$Editor;

    .line 362
    .local v15, sets:[Landroid/content/SharedPreferences$Editor;
    new-instance v14, Lcom/lx/launcher8/cfg/DeskSetting;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    .line 363
    .local v14, set:Lcom/lx/launcher8/cfg/BaseSetting;
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/lx/launcher8/cfg/BaseSetting;->read(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/SharedPreferences$Editor;

    aput-object v18, v15, v19

    .line 364
    new-instance v14, Lcom/lx/launcher8/cfg/AppSetting;

    .end local v14           #set:Lcom/lx/launcher8/cfg/BaseSetting;
    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/lx/launcher8/cfg/AppSetting;-><init>(Landroid/content/Context;)V

    .line 365
    .restart local v14       #set:Lcom/lx/launcher8/cfg/BaseSetting;
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/lx/launcher8/cfg/BaseSetting;->read(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/SharedPreferences$Editor;

    aput-object v18, v15, v19

    .line 366
    new-instance v14, Lcom/anall/screenlock/provider/LockSetting;

    .end local v14           #set:Lcom/lx/launcher8/cfg/BaseSetting;
    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    .line 367
    .restart local v14       #set:Lcom/lx/launcher8/cfg/BaseSetting;
    const/16 v19, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/lx/launcher8/cfg/BaseSetting;->read(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/SharedPreferences$Editor;

    aput-object v18, v15, v19

    .line 370
    invoke-interface/range {p2 .. p2}, Ljava/io/DataInput;->readInt()I

    move-result v16

    .line 371
    if-lez v16, :cond_9

    .line 372
    const/4 v4, 0x0

    .line 373
    .local v4, cell:Lcom/lx/launcher8/bean/ItemCell;
    new-instance v12, Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 374
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/ItemCell;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3
    move/from16 v0, v16

    if-lt v11, v0, :cond_6

    .line 383
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/lx/launcher8/db/LauncherModel;->replaceCellsToDatabase(Ljava/util/ArrayList;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 384
    const/16 v18, -0x6

    goto/16 :goto_0

    .line 334
    .end local v4           #cell:Lcom/lx/launcher8/bean/ItemCell;
    .end local v11           #i:I
    .end local v12           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/ItemCell;>;"
    .end local v14           #set:Lcom/lx/launcher8/cfg/BaseSetting;
    .end local v15           #sets:[Landroid/content/SharedPreferences$Editor;
    .restart local v3       #buffer:[B
    :catch_0
    move-exception v8

    .line 335
    .local v8, e:Ljava/lang/OutOfMemoryError;
    const-string v18, "ThemeHelper recover wallpaper OutOfMemoryError"

    invoke-static/range {v18 .. v18}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 355
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v8

    .line 356
    .restart local v8       #e:Ljava/lang/OutOfMemoryError;
    const-string v18, "ThemeHelper recover lock paper OutOfMemoryError"

    invoke-static/range {v18 .. v18}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 375
    .end local v3           #buffer:[B
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    .restart local v4       #cell:Lcom/lx/launcher8/bean/ItemCell;
    .restart local v11       #i:I
    .restart local v12       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/ItemCell;>;"
    .restart local v14       #set:Lcom/lx/launcher8/cfg/BaseSetting;
    .restart local v15       #sets:[Landroid/content/SharedPreferences$Editor;
    :cond_6
    invoke-interface/range {p2 .. p2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    .line 376
    .local v5, cellType:I
    invoke-static {}, Lcom/lx/launcher8/bean/CellFactory;->getInstance()Lcom/lx/launcher8/bean/CellFactory;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/lx/launcher8/bean/CellFactory;->createCellBean(I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v4

    .line 377
    if-eqz v4, :cond_7

    .line 378
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/lx/launcher8/bean/ItemCell;->read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/ItemCell;

    .line 379
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_7
    const/4 v4, 0x0

    .line 374
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 385
    .end local v5           #cellType:I
    :cond_8
    new-instance v2, Landroid/appwidget/AppWidgetHost;

    const/16 v18, 0x100

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-direct {v2, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 386
    .local v2, awh:Landroid/appwidget/AppWidgetHost;
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 388
    .end local v2           #awh:Landroid/appwidget/AppWidgetHost;
    .end local v4           #cell:Lcom/lx/launcher8/bean/ItemCell;
    .end local v11           #i:I
    .end local v12           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/ItemCell;>;"
    :cond_9
    array-length v0, v15

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    .line 390
    const/16 v18, 0x2

    goto/16 :goto_0

    .line 388
    :cond_a
    aget-object v8, v15, v18

    .line 389
    .local v8, e:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 388
    add-int/lit8 v18, v18, 0x1

    goto :goto_4
.end method

.method public recoveryTheme(Landroid/content/Context;Ljava/lang/String;)I
    .locals 12
    .parameter "context"
    .parameter "name"

    .prologue
    .line 271
    invoke-direct {p0, p2}, Lcom/lx/launcher8/db/ThemeHelper;->checkState(Ljava/lang/String;)I

    move-result v8

    .line 272
    .local v8, state:I
    if-gez v8, :cond_0

    .line 297
    .end local v8           #state:I
    :goto_0
    return v8

    .line 274
    .restart local v8       #state:I
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lx/launcher8/db/ThemeHelper;->getHisThemePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".anall"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 278
    const/4 v8, -0x3

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 280
    .local v2, len:J
    const/4 v5, 0x0

    .line 282
    .local v5, ra:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v9, "r"

    invoke-direct {v6, v1, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    .end local v5           #ra:Ljava/io/RandomAccessFile;
    .local v6, ra:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {p0, p1, v6, v2, v3}, Lcom/lx/launcher8/db/ThemeHelper;->readThemeFromStream(Landroid/content/Context;Ljava/io/DataInput;J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v7

    .line 290
    .local v7, result:I
    if-eqz v6, :cond_2

    .line 292
    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move v8, v7

    .line 284
    goto :goto_0

    .line 285
    .end local v6           #ra:Ljava/io/RandomAccessFile;
    .end local v7           #result:I
    .restart local v5       #ra:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    sget-object v9, Lcom/lx/launcher8/db/ThemeHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "recovery theme can\'t found file "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 290
    if-eqz v5, :cond_3

    .line 292
    :try_start_4
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 297
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    const/4 v8, 0x0

    goto :goto_0

    .line 287
    :catch_1
    move-exception v0

    .line 288
    .local v0, e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    sget-object v9, Lcom/lx/launcher8/db/ThemeHelper;->TAG:Ljava/lang/String;

    const-string v10, "recovery theme save data exception "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 290
    if-eqz v5, :cond_3

    .line 292
    :try_start_6
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 293
    :catch_2
    move-exception v9

    goto :goto_3

    .line 289
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 290
    :goto_5
    if-eqz v5, :cond_4

    .line 292
    :try_start_7
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 296
    :cond_4
    :goto_6
    throw v9

    .line 293
    .end local v5           #ra:Ljava/io/RandomAccessFile;
    .restart local v6       #ra:Ljava/io/RandomAccessFile;
    .restart local v7       #result:I
    :catch_3
    move-exception v9

    goto :goto_1

    .end local v6           #ra:Ljava/io/RandomAccessFile;
    .end local v7           #result:I
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v5       #ra:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v9

    goto :goto_3

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v10

    goto :goto_6

    .line 289
    .end local v5           #ra:Ljava/io/RandomAccessFile;
    .restart local v6       #ra:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #ra:Ljava/io/RandomAccessFile;
    .restart local v5       #ra:Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 287
    .end local v5           #ra:Ljava/io/RandomAccessFile;
    .restart local v6       #ra:Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v0

    move-object v5, v6

    .end local v6           #ra:Ljava/io/RandomAccessFile;
    .restart local v5       #ra:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 285
    .end local v5           #ra:Ljava/io/RandomAccessFile;
    .restart local v6       #ra:Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v0

    move-object v5, v6

    .end local v6           #ra:Ljava/io/RandomAccessFile;
    .restart local v5       #ra:Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public recoveryTheme(Landroid/content/Context;Lcom/lx/launcher8/db/ThemeHelper$Theme;Lcom/lx/launcher8/db/ThemeHelper$ThemeRecoverListener;)V
    .locals 7
    .parameter "context"
    .parameter "theme"
    .parameter "l"

    .prologue
    const/4 v6, 0x1

    .line 231
    invoke-virtual {p2}, Lcom/lx/launcher8/db/ThemeHelper$Theme;->isLocal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const-string v0, "getDataStream"

    iget-object v1, p2, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mResoveInfo:Landroid/content/pm/ResolveInfo;

    .line 233
    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v5, p2, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 232
    invoke-static {p1, v0, v1, v6, v2}, Lcom/lx/launcher8/util/ClassLoaderUtil;->executeRemote(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ResolveInfo;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/DataInputStream;

    .line 236
    .local v4, dis:Ljava/io/DataInputStream;
    :goto_0
    new-instance v0, Lcom/lx/launcher8/db/ThemeHelper$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/lx/launcher8/db/ThemeHelper$1;-><init>(Lcom/lx/launcher8/db/ThemeHelper;Lcom/lx/launcher8/db/ThemeHelper$Theme;Landroid/content/Context;Ljava/io/DataInputStream;Lcom/lx/launcher8/db/ThemeHelper$ThemeRecoverListener;)V

    .line 261
    invoke-virtual {v0}, Lcom/lx/launcher8/db/ThemeHelper$1;->start()V

    .line 262
    return-void

    .line 235
    .end local v4           #dis:Ljava/io/DataInputStream;
    :cond_0
    const/4 v4, 0x0

    .restart local v4       #dis:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method public saveTheme(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 31
    .parameter "context"
    .parameter "name"
    .parameter "screenshot"

    .prologue
    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/lx/launcher8/db/ThemeHelper;->checkState(Ljava/lang/String;)I

    move-result v22

    .line 97
    .local v22, state:I
    if-gez v22, :cond_0

    .line 212
    .end local v22           #state:I
    :goto_0
    return v22

    .line 99
    .restart local v22       #state:I
    :cond_0
    const-string v25, ".anall"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 100
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, ".anall"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 102
    :cond_1
    const/16 v18, 0x0

    .line 104
    .local v18, ra:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v19, Ljava/io/RandomAccessFile;

    const-string v25, "rwd"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 105
    .end local v18           #ra:Ljava/io/RandomAccessFile;
    .local v19, ra:Ljava/io/RandomAccessFile;
    const-wide/16 v25, 0x0

    :try_start_1
    move-object/from16 v0, v19

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 106
    const/16 v25, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 107
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 110
    if-nez p3, :cond_b

    .line 111
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 112
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 136
    :goto_1
    const/16 v17, 0x0

    .line 137
    .local v17, paper:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 138
    .local v8, draw:Landroid/graphics/drawable/Drawable;
    invoke-static/range {p1 .. p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v24

    .line 140
    .local v24, wm:Landroid/app/WallpaperManager;
    if-eqz v24, :cond_2

    .line 141
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Landroid/app/WallpaperManager;->peekDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    .line 144
    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    .line 145
    :try_start_3
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8           #draw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    .line 147
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/lx/launcher8/db/ThemeHelper;->writeBitmap(Ljava/io/DataOutput;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 148
    if-eqz v17, :cond_4

    .line 150
    const/16 v17, 0x0

    .line 154
    :cond_4
    const/16 v16, 0x0

    .line 156
    .local v16, offset:I
    :try_start_4
    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v25

    const-string v26, "lockbg"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    .local v10, f:Ljava/io/File;
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 158
    .local v11, fis:Ljava/io/FileInputStream;
    invoke-virtual {v11}, Ljava/io/FileInputStream;->available()I

    move-result v14

    .line 159
    .local v14, len:I
    new-array v4, v14, [B

    .line 160
    .local v4, buffer:[B
    const/4 v6, 0x0

    .line 161
    .local v6, count:I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v14, :cond_5

    move/from16 v0, v16

    invoke-virtual {v11, v4, v0, v14}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v6, v0, :cond_d

    .line 164
    :cond_5
    move/from16 v0, v16

    if-le v0, v14, :cond_6

    .line 165
    move/from16 v16, v14

    .line 166
    :cond_6
    if-lez v16, :cond_7

    .line 167
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 168
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 170
    :cond_7
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 174
    .end local v4           #buffer:[B
    .end local v6           #count:I
    .end local v10           #f:Ljava/io/File;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v14           #len:I
    :goto_4
    if-nez v16, :cond_8

    .line 175
    const/16 v25, 0x0

    :try_start_5
    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 178
    :cond_8
    new-instance v21, Lcom/lx/launcher8/cfg/DeskSetting;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    .line 179
    .local v21, set:Lcom/lx/launcher8/cfg/BaseSetting;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/BaseSetting;->write(Ljava/io/DataOutput;)V

    .line 181
    new-instance v21, Lcom/lx/launcher8/cfg/AppSetting;

    .end local v21           #set:Lcom/lx/launcher8/cfg/BaseSetting;
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;-><init>(Landroid/content/Context;)V

    .line 182
    .restart local v21       #set:Lcom/lx/launcher8/cfg/BaseSetting;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/BaseSetting;->write(Ljava/io/DataOutput;)V

    .line 184
    new-instance v21, Lcom/anall/screenlock/provider/LockSetting;

    .end local v21           #set:Lcom/lx/launcher8/cfg/BaseSetting;
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    .line 185
    .restart local v21       #set:Lcom/lx/launcher8/cfg/BaseSetting;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/BaseSetting;->write(Ljava/io/DataOutput;)V

    .line 189
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/lx/launcher8/db/LauncherModel;->getDeskTopCells()Ljava/util/ArrayList;

    move-result-object v15

    .line 190
    .local v15, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/ItemCell;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 191
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_9

    .line 192
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_e

    .line 196
    :cond_9
    const-wide/16 v25, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 197
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v25

    move-object/from16 v0, v19

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 206
    if-eqz v19, :cond_a

    .line 208
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 198
    :cond_a
    :goto_6
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 115
    .end local v15           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/ItemCell;>;"
    .end local v16           #offset:I
    .end local v17           #paper:Landroid/graphics/Bitmap;
    .end local v21           #set:Lcom/lx/launcher8/cfg/BaseSetting;
    .end local v24           #wm:Landroid/app/WallpaperManager;
    :cond_b
    :try_start_7
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/lx/launcher8/AnallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 116
    .local v7, dm:Landroid/util/DisplayMetrics;
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    .line 117
    .local v23, width:I
    iget v12, v7, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 119
    .local v12, height:I
    :try_start_8
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 120
    .local v20, scale:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 121
    .local v5, canvas:Landroid/graphics/Canvas;
    const/16 v25, 0x0

    new-instance v26, Landroid/graphics/RectF;

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    move/from16 v0, v23

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    move/from16 v0, v30

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-direct/range {v26 .. v30}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v27, 0x0

    .line 121
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/lx/launcher8/db/ThemeHelper;->writeBitmap(Ljava/io/DataOutput;Landroid/graphics/Bitmap;)V

    .line 124
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 125
    const/16 v20, 0x0

    .line 130
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v20           #scale:Landroid/graphics/Bitmap;
    :goto_7
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/lx/launcher8/db/ThemeHelper;->writeBitmap(Ljava/io/DataOutput;Landroid/graphics/Bitmap;)V

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 132
    const/16 p3, 0x0

    goto/16 :goto_1

    .line 126
    :catch_0
    move-exception v9

    .line 127
    .local v9, e:Ljava/lang/OutOfMemoryError;
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_7

    .line 199
    .end local v7           #dm:Landroid/util/DisplayMetrics;
    .end local v9           #e:Ljava/lang/OutOfMemoryError;
    .end local v12           #height:I
    .end local v23           #width:I
    :catch_1
    move-exception v9

    move-object/from16 v18, v19

    .line 200
    .end local v19           #ra:Ljava/io/RandomAccessFile;
    .local v9, e:Ljava/io/FileNotFoundException;
    .restart local v18       #ra:Ljava/io/RandomAccessFile;
    :goto_8
    :try_start_a
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 201
    sget-object v25, Lcom/lx/launcher8/db/ThemeHelper;->TAG:Ljava/lang/String;

    const-string v26, "save theme can\'t found file "

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 206
    if-eqz v18, :cond_c

    .line 208
    :try_start_b
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 212
    .end local v9           #e:Ljava/io/FileNotFoundException;
    :cond_c
    :goto_9
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 162
    .end local v18           #ra:Ljava/io/RandomAccessFile;
    .restart local v4       #buffer:[B
    .restart local v6       #count:I
    .restart local v10       #f:Ljava/io/File;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    .restart local v14       #len:I
    .restart local v16       #offset:I
    .restart local v17       #paper:Landroid/graphics/Bitmap;
    .restart local v19       #ra:Ljava/io/RandomAccessFile;
    .restart local v24       #wm:Landroid/app/WallpaperManager;
    :cond_d
    add-int v16, v16, v6

    goto/16 :goto_3

    .line 171
    .end local v4           #buffer:[B
    .end local v6           #count:I
    .end local v10           #f:Ljava/io/File;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v14           #len:I
    :catch_2
    move-exception v9

    .line 172
    .local v9, e:Ljava/lang/Exception;
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 192
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v15       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/ItemCell;>;"
    .restart local v21       #set:Lcom/lx/launcher8/cfg/BaseSetting;
    :cond_e
    :try_start_c
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lx/launcher8/bean/ItemCell;

    .line 193
    .local v13, info:Lcom/lx/launcher8/bean/ItemCell;
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/lx/launcher8/bean/ItemCell;->write(Ljava/io/DataOutput;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_5

    .line 202
    .end local v13           #info:Lcom/lx/launcher8/bean/ItemCell;
    .end local v15           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/ItemCell;>;"
    .end local v16           #offset:I
    .end local v17           #paper:Landroid/graphics/Bitmap;
    .end local v21           #set:Lcom/lx/launcher8/cfg/BaseSetting;
    .end local v24           #wm:Landroid/app/WallpaperManager;
    :catch_3
    move-exception v9

    move-object/from16 v18, v19

    .line 203
    .end local v19           #ra:Ljava/io/RandomAccessFile;
    .restart local v9       #e:Ljava/lang/Exception;
    .restart local v18       #ra:Ljava/io/RandomAccessFile;
    :goto_a
    :try_start_d
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 204
    sget-object v25, Lcom/lx/launcher8/db/ThemeHelper;->TAG:Ljava/lang/String;

    const-string v26, "save theme save data exception "

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 206
    if-eqz v18, :cond_c

    .line 208
    :try_start_e
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_9

    .line 209
    :catch_4
    move-exception v25

    goto :goto_9

    .line 205
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v25

    .line 206
    :goto_b
    if-eqz v18, :cond_f

    .line 208
    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 211
    :cond_f
    :goto_c
    throw v25

    .line 142
    .end local v18           #ra:Ljava/io/RandomAccessFile;
    .restart local v8       #draw:Landroid/graphics/drawable/Drawable;
    .restart local v17       #paper:Landroid/graphics/Bitmap;
    .restart local v19       #ra:Ljava/io/RandomAccessFile;
    .restart local v24       #wm:Landroid/app/WallpaperManager;
    :catch_5
    move-exception v25

    goto/16 :goto_2

    .line 209
    .end local v8           #draw:Landroid/graphics/drawable/Drawable;
    .restart local v15       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/ItemCell;>;"
    .restart local v16       #offset:I
    .restart local v21       #set:Lcom/lx/launcher8/cfg/BaseSetting;
    :catch_6
    move-exception v25

    goto/16 :goto_6

    .end local v15           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/ItemCell;>;"
    .end local v16           #offset:I
    .end local v17           #paper:Landroid/graphics/Bitmap;
    .end local v19           #ra:Ljava/io/RandomAccessFile;
    .end local v21           #set:Lcom/lx/launcher8/cfg/BaseSetting;
    .end local v24           #wm:Landroid/app/WallpaperManager;
    .local v9, e:Ljava/io/FileNotFoundException;
    .restart local v18       #ra:Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v25

    goto :goto_9

    .end local v9           #e:Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v26

    goto :goto_c

    .line 205
    .end local v18           #ra:Ljava/io/RandomAccessFile;
    .restart local v19       #ra:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v25

    move-object/from16 v18, v19

    .end local v19           #ra:Ljava/io/RandomAccessFile;
    .restart local v18       #ra:Ljava/io/RandomAccessFile;
    goto :goto_b

    .line 202
    :catch_9
    move-exception v9

    goto :goto_a

    .line 199
    :catch_a
    move-exception v9

    goto :goto_8
.end method
