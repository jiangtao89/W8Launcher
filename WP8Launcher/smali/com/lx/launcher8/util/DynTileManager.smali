.class public Lcom/lx/launcher8/util/DynTileManager;
.super Ljava/lang/Object;
.source "DynTileManager.java"


# static fields
.field public static final EXTEND_DATA_CONTACT:Ljava/lang/String; = "contacts"

.field public static final EXTEND_DATA_GALLERY:Ljava/lang/String; = "gallery"

.field private static final EXTEND_GALLERY_PRE:Ljava/lang/String; = ".g"

.field public static final EXTEND_GALLERY_SMALL:Ljava/lang/String; = "s"

.field private static mDynTileManager:Lcom/lx/launcher8/util/DynTileManager;


# instance fields
.field private mGalleryDefalut:Z

.field private mGalleryMaxWidth:I

.field private mGalleryPath:Ljava/lang/String;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/util/DynTileManager;->map:Ljava/util/Map;

    .line 171
    return-void
.end method

.method private static declared-synchronized computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 13
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v12, -0x1

    .line 96
    const-class v7, Lcom/lx/launcher8/util/DynTileManager;

    monitor-enter v7

    :try_start_0
    iget v8, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v8

    .line 97
    .local v4, w:D
    iget v8, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-double v0, v8

    .line 99
    .local v0, h:D
    if-eq p2, v12, :cond_0

    if-nez p2, :cond_3

    :cond_0
    move v2, v6

    .line 101
    .local v2, lowerBound:I
    :goto_0
    if-eq p1, v12, :cond_1

    if-nez p1, :cond_4

    :cond_1
    const/16 v3, 0x80

    .line 105
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 116
    .end local v2           #lowerBound:I
    :cond_2
    :goto_2
    monitor-exit v7

    return v2

    .line 100
    .end local v3           #upperBound:I
    :cond_3
    mul-double v8, v4, v0

    int-to-double v10, p2

    div-double/2addr v8, v10

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    goto :goto_0

    .line 102
    .restart local v2       #lowerBound:I
    :cond_4
    int-to-double v8, p1

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 103
    int-to-double v10, p1

    div-double v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    .line 102
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    double-to-int v3, v8

    goto :goto_1

    .line 110
    .restart local v3       #upperBound:I
    :cond_5
    if-ne p2, v12, :cond_6

    .line 111
    if-ne p1, v12, :cond_6

    move v2, v6

    .line 112
    goto :goto_2

    .line 113
    :cond_6
    if-eq p1, v12, :cond_2

    move v2, v3

    .line 116
    goto :goto_2

    .line 96
    .end local v0           #h:D
    .end local v2           #lowerBound:I
    .end local v3           #upperBound:I
    .end local v4           #w:D
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private static declared-synchronized computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 78
    const-class v3, Lcom/lx/launcher8/util/DynTileManager;

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/lx/launcher8/util/DynTileManager;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 82
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 83
    const/4 v1, 0x1

    .line 84
    .local v1, roundedSize:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 91
    :goto_1
    monitor-exit v3

    return v1

    .line 85
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1           #roundedSize:I
    :cond_1
    add-int/lit8 v2, v0, 0x7

    :try_start_1
    div-int/lit8 v2, v2, 0x8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    mul-int/lit8 v1, v2, 0x8

    .restart local v1       #roundedSize:I
    goto :goto_1

    .line 78
    .end local v0           #initialSize:I
    .end local v1           #roundedSize:I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private deleteFile(Ljava/io/File;)Z
    .locals 6
    .parameter "f"

    .prologue
    const/4 v5, 0x1

    .line 390
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 391
    .local v1, listFiles:[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 396
    :cond_0
    return v5

    .line 393
    :cond_1
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 394
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 393
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getCellExtendsData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "file"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/lx/launcher8/util/BasePath;->getDataPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDefaultPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    const-class v1, Lcom/lx/launcher8/util/DynTileManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "gallery"

    invoke-static {v0}, Lcom/lx/launcher8/util/BasePath;->getDataPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getGalleryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 275
    :cond_0
    iget-boolean v0, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryDefalut:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 276
    .end local p1
    :goto_0
    monitor-exit p0

    return-object p1

    .restart local p1
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/lx/launcher8/util/DynTileManager;
    .locals 2

    .prologue
    .line 161
    const-class v1, Lcom/lx/launcher8/util/DynTileManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lx/launcher8/util/DynTileManager;->mDynTileManager:Lcom/lx/launcher8/util/DynTileManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lx/launcher8/util/DynTileManager;

    invoke-direct {v0}, Lcom/lx/launcher8/util/DynTileManager;-><init>()V

    sput-object v0, Lcom/lx/launcher8/util/DynTileManager;->mDynTileManager:Lcom/lx/launcher8/util/DynTileManager;

    .line 162
    :cond_0
    sget-object v0, Lcom/lx/launcher8/util/DynTileManager;->mDynTileManager:Lcom/lx/launcher8/util/DynTileManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "path"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 49
    const-class v7, Lcom/lx/launcher8/util/DynTileManager;

    monitor-enter v7

    const/4 v0, 0x0

    .line 50
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 52
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 53
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 54
    .local v2, fd:Ljava/io/FileDescriptor;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 55
    .local v5, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 56
    const/4 v6, 0x0

    invoke-static {v2, v6, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 57
    const/4 v6, -0x1

    mul-int v8, p1, p2

    invoke-static {v5, v6, v8}, Lcom/lx/launcher8/util/DynTileManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 58
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 59
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 60
    const/4 v6, 0x0

    invoke-static {v2, v6, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v0

    .line 67
    if-eqz v4, :cond_2

    .line 69
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-object v3, v4

    .line 73
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v5           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    monitor-exit v7

    return-object v0

    .line 61
    :catch_0
    move-exception v6

    .line 67
    :goto_1
    if-eqz v3, :cond_0

    .line 69
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 70
    :catch_1
    move-exception v6

    goto :goto_0

    .line 62
    :catch_2
    move-exception v1

    .line 63
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "gallery not found file "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    if-eqz v3, :cond_0

    .line 69
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 70
    :catch_3
    move-exception v6

    goto :goto_0

    .line 64
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    .line 65
    .local v1, e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "gallery not read file IOException "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 67
    if-eqz v3, :cond_0

    .line 69
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 70
    :catch_5
    move-exception v6

    goto :goto_0

    .line 66
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 67
    :goto_4
    if-eqz v3, :cond_1

    .line 69
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 72
    :cond_1
    :goto_5
    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 49
    :catchall_1
    move-exception v6

    :goto_6
    monitor-exit v7

    throw v6

    .line 70
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fd:Ljava/io/FileDescriptor;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v5       #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_6
    move-exception v6

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v5           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_7
    move-exception v8

    goto :goto_5

    .line 66
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 64
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 62
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 61
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_a
    move-exception v6

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 49
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fd:Ljava/io/FileDescriptor;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v5       #opts:Landroid/graphics/BitmapFactory$Options;
    :catchall_3
    move-exception v6

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_2
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static declared-synchronized initItemImgCount(Ljava/lang/String;Z)I
    .locals 10
    .parameter "filePath"
    .parameter "check"

    .prologue
    const/4 v6, 0x0

    .line 131
    const-class v7, Lcom/lx/launcher8/util/DynTileManager;

    monitor-enter v7

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    move v0, v6

    .line 147
    :cond_0
    :goto_0
    monitor-exit v7

    return v0

    .line 132
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v3, file:Ljava/io/File;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    move v0, v6

    goto :goto_0

    .line 134
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 135
    .local v5, list:[Ljava/io/File;
    if-eqz v5, :cond_4

    array-length v8, v5

    if-nez v8, :cond_5

    :cond_4
    move v0, v6

    goto :goto_0

    .line 136
    :cond_5
    if-nez p1, :cond_6

    array-length v0, v5

    goto :goto_0

    .line 137
    :cond_6
    invoke-static {p0}, Lcom/lx/launcher8/util/DynTileManager;->isDefaultPath(Ljava/lang/String;)Z

    move-result v1

    .line 138
    .local v1, def:Z
    const/4 v0, 0x0

    .line 139
    .local v0, count:I
    array-length v8, v5

    :goto_1
    if-ge v6, v8, :cond_0

    aget-object v2, v5, v6

    .line 140
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_8

    .line 139
    :cond_7
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 143
    :cond_8
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, fileName:Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/lx/launcher8/util/DynTileManager;->isImgFile(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_7

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 131
    .end local v0           #count:I
    .end local v1           #def:Z
    .end local v2           #f:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fileName:Ljava/lang/String;
    .end local v5           #list:[Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static declared-synchronized isDefaultPath(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 121
    const-class v2, Lcom/lx/launcher8/util/DynTileManager;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 123
    :goto_0
    monitor-exit v2

    return v1

    .line 122
    :cond_0
    :try_start_1
    const-string v1, "gallery"

    invoke-static {v1}, Lcom/lx/launcher8/util/BasePath;->getDataPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, def:Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 121
    .end local v0           #def:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized isImgFile(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "fileName"
    .parameter "def"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 151
    const-class v2, Lcom/lx/launcher8/util/DynTileManager;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    .line 152
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    const-string v3, "s"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 153
    :cond_2
    const-string v3, ".jpg"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".png"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "jpeg"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 154
    const-string v3, "gif"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v0, v1

    .line 155
    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public crawlContactImages(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 18
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 178
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 228
    :goto_0
    return v1

    .line 179
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    .line 181
    :try_start_0
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 187
    .local v12, files:[Ljava/io/File;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    array-length v1, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    if-lt v13, v1, :cond_2

    .line 196
    .end local v11           #file:Ljava/io/File;
    .end local v12           #files:[Ljava/io/File;
    .end local v13           #i:I
    :cond_1
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 197
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 188
    .end local v8           #c:Landroid/database/Cursor;
    .restart local v11       #file:Ljava/io/File;
    .restart local v12       #files:[Ljava/io/File;
    .restart local v13       #i:I
    :cond_2
    :try_start_1
    aget-object v1, v12, v13

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 191
    .end local v11           #file:Ljava/io/File;
    .end local v12           #files:[Ljava/io/File;
    .end local v13           #i:I
    :catch_0
    move-exception v10

    .line 192
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 193
    .end local v10           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 194
    .local v10, e:Ljava/lang/Error;
    invoke-virtual {v10}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_2

    .line 199
    .end local v10           #e:Ljava/lang/Error;
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_3
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 202
    :cond_4
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 203
    .local v9, contactId:Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v17

    .line 205
    .local v17, uri:Landroid/net/Uri;
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v14

    .line 206
    .local v14, in:Ljava/io/InputStream;
    if-nez v14, :cond_6

    .line 221
    .end local v14           #in:Ljava/io/InputStream;
    :goto_3
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v1

    .line 200
    if-nez v1, :cond_4

    .line 226
    .end local v9           #contactId:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 228
    :goto_4
    const/4 v1, 0x1

    goto :goto_0

    .line 207
    .restart local v9       #contactId:Ljava/lang/String;
    .restart local v14       #in:Ljava/io/InputStream;
    .restart local v17       #uri:Landroid/net/Uri;
    :cond_6
    :try_start_5
    new-instance v16, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 208
    .local v16, out:Ljava/io/OutputStream;
    const/16 v1, 0x80

    new-array v7, v1, [B

    .line 209
    .local v7, bs:[B
    const/4 v15, 0x0

    .line 210
    .local v15, len:I
    :goto_5
    invoke-virtual {v14, v7}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-gtz v15, :cond_7

    .line 213
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 214
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 215
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    .line 216
    .end local v7           #bs:[B
    .end local v14           #in:Ljava/io/InputStream;
    .end local v15           #len:I
    .end local v16           #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v10

    .line 217
    .local v10, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 223
    .end local v9           #contactId:Ljava/lang/String;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v17           #uri:Landroid/net/Uri;
    :catch_3
    move-exception v10

    .line 224
    .restart local v10       #e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 211
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v7       #bs:[B
    .restart local v9       #contactId:Ljava/lang/String;
    .restart local v14       #in:Ljava/io/InputStream;
    .restart local v15       #len:I
    .restart local v16       #out:Ljava/io/OutputStream;
    .restart local v17       #uri:Landroid/net/Uri;
    :cond_7
    const/4 v1, 0x0

    :try_start_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v1, v15}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    .line 218
    .end local v7           #bs:[B
    .end local v14           #in:Ljava/io/InputStream;
    .end local v15           #len:I
    .end local v16           #out:Ljava/io/OutputStream;
    :catch_4
    move-exception v10

    .line 219
    .local v10, e:Ljava/lang/Error;
    :try_start_9
    invoke-virtual {v10}, Ljava/lang/Error;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 225
    .end local v9           #contactId:Ljava/lang/String;
    .end local v10           #e:Ljava/lang/Error;
    .end local v17           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 227
    throw v1
.end method

.method public deleteGallery()V
    .locals 2

    .prologue
    .line 385
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/lx/launcher8/util/DynTileManager;->deleteFile(Ljava/io/File;)Z

    .line 387
    :cond_0
    return-void
.end method

.method public deleteGalleryItem(Ljava/lang/String;)Z
    .locals 10
    .parameter "filePath"

    .prologue
    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x0

    .line 381
    :cond_0
    :goto_0
    return v7

    .line 363
    :cond_1
    const/4 v7, 0x0

    .line 364
    .local v7, result:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v7

    .line 366
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 367
    .local v5, parentFile:Ljava/io/File;
    if-eqz v5, :cond_0

    .line 369
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 371
    .local v6, parentPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/lx/launcher8/util/DynTileManager;->isDefaultPath(Ljava/lang/String;)Z

    move-result v4

    .line 372
    .local v4, isDef:Z
    if-nez v4, :cond_4

    .line 373
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Lcom/lx/launcher8/util/DynTileManager;->getGalleryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 375
    :cond_3
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    .end local v1           #file:Ljava/io/File;
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    goto :goto_0

    .line 378
    .end local v1           #file:Ljava/io/File;
    :cond_4
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .end local v1           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :cond_5
    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    goto/16 :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/lx/launcher8/util/DynTileManager;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 480
    return-void
.end method

.method public declared-synchronized getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "path"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 483
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/lx/launcher8/util/DynTileManager;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 484
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 485
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :goto_0
    monitor-exit p0

    return-object v2

    .line 486
    :cond_0
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/lx/launcher8/util/DynTileManager;->getLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 487
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 488
    iget-object v2, p0, Lcom/lx/launcher8/util/DynTileManager;->map:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v2, v0

    .line 490
    goto :goto_0

    .line 483
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getContactIcon(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "filePath"
    .parameter "position"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-object v1

    .line 233
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 236
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-eqz v4, :cond_0

    array-length v4, v3

    if-ge p2, v4, :cond_0

    .line 238
    aget-object v4, v3, p2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, absPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 240
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 241
    invoke-virtual {p0, v0, p3, p4}, Lcom/lx/launcher8/util/DynTileManager;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getGalleryBitmap(IIIZ)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "position"
    .parameter "width"
    .parameter "height"
    .parameter "small"

    .prologue
    .line 401
    iget-object v8, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryPath:Ljava/lang/String;

    .line 402
    .local v8, filePath:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v2, 0x0

    .line 434
    :goto_0
    return-object v2

    .line 403
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    .local v6, file:Ljava/io/File;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 406
    .local v9, files:[Ljava/io/File;
    if-eqz v9, :cond_3

    array-length v10, v9

    if-eqz v10, :cond_3

    array-length v10, v9

    if-lt p1, v10, :cond_4

    .line 407
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 408
    :cond_4
    const/4 v1, 0x0

    .line 409
    .local v1, absPath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 411
    .local v7, fileName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 412
    .local v4, count:I
    array-length v11, v9

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v11, :cond_5

    .line 424
    :goto_2
    if-nez v1, :cond_9

    const/4 v2, 0x0

    goto :goto_0

    .line 412
    :cond_5
    aget-object v5, v9, v10

    .line 413
    .local v5, f:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v12

    if-nez v12, :cond_7

    .line 412
    :cond_6
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 415
    :cond_7
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 416
    iget-boolean v12, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryDefalut:Z

    invoke-static {v7, v12}, Lcom/lx/launcher8/util/DynTileManager;->isImgFile(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 417
    if-ne v4, p1, :cond_8

    .line 418
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 419
    goto :goto_2

    .line 421
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 425
    .end local v5           #f:Ljava/io/File;
    :cond_9
    const/4 v2, 0x0

    .line 427
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Lcom/lx/launcher8/util/DynTileManager;->getGalleryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p4, :cond_b

    const-string v10, "s"

    :goto_4
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, cacheName:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    .restart local v5       #f:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_a

    .line 431
    iget-object v10, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryPath:Ljava/lang/String;

    move/from16 v0, p4

    invoke-virtual {p0, v10, v1, v0}, Lcom/lx/launcher8/util/DynTileManager;->saveGalleryItem(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 433
    :cond_a
    move/from16 v0, p3

    invoke-virtual {p0, v3, p2, v0}, Lcom/lx/launcher8/util/DynTileManager;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 434
    goto/16 :goto_0

    .line 427
    .end local v3           #cacheName:Ljava/lang/String;
    .end local v5           #f:Ljava/io/File;
    :cond_b
    const-string v10, ""

    goto :goto_4
.end method

.method public getGroupBitmap(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "filePath"
    .parameter "position"
    .parameter "groupId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 438
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v2, 0x0

    .line 475
    :cond_0
    :goto_0
    return-object v2

    .line 439
    :cond_1
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    .local v7, file:Ljava/io/File;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 441
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 442
    .local v8, files:[Ljava/io/File;
    array-length v11, v8

    if-nez v11, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    .line 443
    :cond_4
    array-length v11, v8

    move/from16 v0, p2

    if-lt v0, v11, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    .line 444
    :cond_5
    const/4 v2, 0x0

    .line 445
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "group"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, cacheGroupKey:Ljava/lang/String;
    iget-object v11, p0, Lcom/lx/launcher8/util/DynTileManager;->map:Ljava/util/Map;

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 447
    iget-object v11, p0, Lcom/lx/launcher8/util/DynTileManager;->map:Ljava/util/Map;

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/ref/SoftReference;

    invoke-virtual {v11}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    check-cast v2, Landroid/graphics/Bitmap;

    .line 448
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 450
    :cond_6
    aget-object v11, v8, p2

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {p0, v11, v0, v1}, Lcom/lx/launcher8/util/DynTileManager;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 451
    if-eqz v2, :cond_b

    .line 452
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/lit8 v10, v11, 0x2

    .line 453
    .local v10, w:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v9, v11, 0x2

    .line 454
    .local v9, h:I
    if-gtz v10, :cond_7

    const/16 v10, 0x64

    .line 455
    :cond_7
    if-gtz v9, :cond_8

    const/16 v9, 0x64

    .line 457
    :cond_8
    :try_start_0
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v9, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 458
    .local v3, bt:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 460
    .local v5, canvas:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/RectF;

    const/4 v11, 0x0

    const/4 v12, 0x0

    mul-int/lit8 v13, v10, 0x2

    int-to-float v13, v13

    mul-int/lit8 v14, v9, 0x2

    int-to-float v14, v14

    invoke-direct {v6, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 461
    .local v6, dst:Landroid/graphics/RectF;
    rem-int/lit8 v11, p3, 0x2

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    .line 462
    iget v11, v6, Landroid/graphics/RectF;->left:F

    int-to-float v12, v10

    sub-float/2addr v11, v12

    iput v11, v6, Landroid/graphics/RectF;->left:F

    .line 463
    iget v11, v6, Landroid/graphics/RectF;->right:F

    int-to-float v12, v10

    sub-float/2addr v11, v12

    iput v11, v6, Landroid/graphics/RectF;->right:F

    .line 465
    :cond_9
    const/4 v11, 0x1

    move/from16 v0, p3

    if-le v0, v11, :cond_a

    .line 466
    iget v11, v6, Landroid/graphics/RectF;->top:F

    int-to-float v12, v9

    sub-float/2addr v11, v12

    iput v11, v6, Landroid/graphics/RectF;->top:F

    .line 467
    iget v11, v6, Landroid/graphics/RectF;->bottom:F

    int-to-float v12, v9

    sub-float/2addr v11, v12

    iput v11, v6, Landroid/graphics/RectF;->bottom:F

    .line 469
    :cond_a
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v2, v11, v6, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 470
    iget-object v11, p0, Lcom/lx/launcher8/util/DynTileManager;->map:Ljava/util/Map;

    new-instance v12, Ljava/lang/ref/SoftReference;

    invoke-direct {v12, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v11, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 471
    goto/16 :goto_0

    .line 472
    .end local v3           #bt:Landroid/graphics/Bitmap;
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v6           #dst:Landroid/graphics/RectF;
    :catch_0
    move-exception v11

    .line 475
    .end local v9           #h:I
    .end local v10           #w:I
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public initGalleryPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 249
    iget-object v2, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryPath:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 250
    const-string v2, "gallery"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 251
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "path"

    const-string v3, "gallery"

    invoke-static {v3}, Lcom/lx/launcher8/util/BasePath;->getDataPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryPath:Ljava/lang/String;

    .line 252
    iget-object v2, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryPath:Ljava/lang/String;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryPath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryPath:Ljava/lang/String;

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/lx/launcher8/util/DynTileManager;->isDefaultPath(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryDefalut:Z

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 256
    .local v0, dis:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryMaxWidth:I

    .line 258
    .end local v0           #dis:Landroid/util/DisplayMetrics;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryPath:Ljava/lang/String;

    return-object v2
.end method

.method public saveGalleryItem(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 33
    .parameter "parentPath"
    .parameter "filePath"
    .parameter "small"

    .prologue
    .line 284
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_0

    const/16 v30, 0x0

    .line 358
    :goto_0
    return v30

    .line 285
    :cond_0
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_1

    const/16 v30, 0x0

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 288
    .local v21, name:Ljava/lang/String;
    const/4 v15, 0x0

    .line 289
    .local v15, fis:Ljava/io/FileInputStream;
    const/16 v17, 0x0

    .line 291
    .local v17, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    .end local v15           #fis:Ljava/io/FileInputStream;
    .local v16, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v25, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 293
    .local v25, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 294
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    .line 295
    .local v13, fd:Ljava/io/FileDescriptor;
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-static {v13, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 296
    const/4 v8, 0x1

    .line 297
    .local v8, coff:I
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryMaxWidth:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryMaxWidth:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_3

    .line 298
    :cond_2
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryMaxWidth:I

    move/from16 v31, v0

    div-int v30, v30, v31

    .line 299
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryMaxWidth:I

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    div-int v31, v31, v32

    .line 298
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    add-int/lit8 v8, v30, 0x1

    .line 301
    :cond_3
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 302
    move-object/from16 v0, v25

    iput v8, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 303
    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v6

    .line 304
    .local v6, bt:Landroid/graphics/Bitmap;
    if-nez v6, :cond_6

    .line 353
    if-eqz v16, :cond_4

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 354
    :cond_4
    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    .line 304
    :cond_5
    :goto_1
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 305
    :cond_6
    :try_start_3
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    .local v29, w:I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    .line 306
    .local v19, h:I
    if-nez v29, :cond_7

    const/16 v29, 0x258

    .line 307
    :cond_7
    if-nez v19, :cond_8

    const/16 v19, 0x12c

    .line 308
    :cond_8
    const/4 v5, 0x4

    .line 309
    .local v5, aspectw:I
    const/4 v4, 0x3

    .line 312
    .local v4, aspecth:I
    div-int v30, v29, v5

    div-int v31, v19, v4

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_c

    .line 313
    mul-int v30, v19, v5

    div-int v24, v30, v4

    .line 314
    .local v24, newW:I
    move/from16 v22, v19

    .line 319
    .local v22, newH:I
    :goto_2
    move/from16 v10, v24

    .local v10, desirW:I
    move/from16 v9, v22

    .line 320
    .local v9, desirH:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryMaxWidth:I

    move/from16 v30, v0

    move/from16 v0, v24

    move/from16 v1, v30

    if-le v0, v1, :cond_9

    .line 321
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryMaxWidth:I

    move/from16 v30, v0

    mul-int/lit8 v30, v30, 0x3

    div-int/lit8 v9, v30, 0x4

    .line 322
    if-eqz p3, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryMaxWidth:I

    move/from16 v30, v0

    div-int/lit8 v10, v30, 0x2

    .line 324
    :cond_9
    :goto_3
    const/4 v11, 0x0

    .local v11, dx:F
    const/4 v12, 0x0

    .line 325
    .local v12, dy:F
    new-instance v20, Landroid/graphics/Matrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    .line 326
    .local v20, matrix:Landroid/graphics/Matrix;
    const/16 v27, 0x0

    .line 327
    .local v27, scale:F
    mul-int v30, v29, v9

    mul-int v31, v10, v19

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_e

    .line 328
    int-to-float v0, v9

    move/from16 v30, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v27, v30, v31

    .line 329
    int-to-float v0, v10

    move/from16 v30, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v27

    sub-float v30, v30, v31

    const/high16 v31, 0x3f00

    mul-float v11, v30, v31

    .line 334
    :goto_4
    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 335
    const/high16 v30, 0x3f00

    add-float v30, v30, v11

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x3f00

    add-float v31, v31, v12

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 338
    sget-object v30, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v30

    invoke-static {v10, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 339
    .local v28, subBt:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 340
    .local v7, canvas:Landroid/graphics/Canvas;
    const/16 v30, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v7, v6, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 341
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 342
    invoke-direct/range {p0 .. p1}, Lcom/lx/launcher8/util/DynTileManager;->getGalleryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 343
    .local v26, path:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    .line 344
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    if-eqz p3, :cond_f

    const-string v30, "s"

    :goto_5
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 345
    .local v23, newName:Ljava/lang/String;
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 346
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .local v18, fos:Ljava/io/FileOutputStream;
    :try_start_4
    sget-object v30, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v31, 0x64

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 347
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 353
    if-eqz v16, :cond_a

    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 354
    :cond_a
    if-eqz v18, :cond_b

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 348
    :cond_b
    :goto_6
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 316
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v9           #desirH:I
    .end local v10           #desirW:I
    .end local v11           #dx:F
    .end local v12           #dy:F
    .end local v18           #fos:Ljava/io/FileOutputStream;
    .end local v20           #matrix:Landroid/graphics/Matrix;
    .end local v22           #newH:I
    .end local v23           #newName:Ljava/lang/String;
    .end local v24           #newW:I
    .end local v26           #path:Ljava/lang/String;
    .end local v27           #scale:F
    .end local v28           #subBt:Landroid/graphics/Bitmap;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :cond_c
    move/from16 v24, v29

    .line 317
    .restart local v24       #newW:I
    mul-int v30, v29, v4

    :try_start_6
    div-int v22, v30, v5

    .restart local v22       #newH:I
    goto/16 :goto_2

    .line 322
    .restart local v9       #desirH:I
    .restart local v10       #desirW:I
    :cond_d
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryMaxWidth:I

    goto/16 :goto_3

    .line 331
    .restart local v11       #dx:F
    .restart local v12       #dy:F
    .restart local v20       #matrix:Landroid/graphics/Matrix;
    .restart local v27       #scale:F
    :cond_e
    int-to-float v0, v10

    move/from16 v30, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v27, v30, v31

    .line 332
    int-to-float v0, v9

    move/from16 v30, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v27

    sub-float v30, v30, v31

    const/high16 v31, 0x3f00

    mul-float v12, v30, v31

    goto/16 :goto_4

    .line 344
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v26       #path:Ljava/lang/String;
    .restart local v28       #subBt:Landroid/graphics/Bitmap;
    :cond_f
    const-string v30, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    .line 349
    .end local v4           #aspecth:I
    .end local v5           #aspectw:I
    .end local v6           #bt:Landroid/graphics/Bitmap;
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v8           #coff:I
    .end local v9           #desirH:I
    .end local v10           #desirW:I
    .end local v11           #dx:F
    .end local v12           #dy:F
    .end local v13           #fd:Ljava/io/FileDescriptor;
    .end local v16           #fis:Ljava/io/FileInputStream;
    .end local v19           #h:I
    .end local v20           #matrix:Landroid/graphics/Matrix;
    .end local v22           #newH:I
    .end local v24           #newW:I
    .end local v25           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v26           #path:Ljava/lang/String;
    .end local v27           #scale:F
    .end local v28           #subBt:Landroid/graphics/Bitmap;
    .end local v29           #w:I
    .restart local v15       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v30

    .line 353
    :goto_7
    if-eqz v15, :cond_10

    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 354
    :cond_10
    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 358
    :cond_11
    :goto_8
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 350
    :catch_1
    move-exception v30

    .line 353
    :goto_9
    if-eqz v15, :cond_12

    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 354
    :cond_12
    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_8

    .line 355
    :catch_2
    move-exception v30

    goto :goto_8

    .line 351
    :catchall_0
    move-exception v30

    .line 353
    :goto_a
    if-eqz v15, :cond_13

    :try_start_9
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 354
    :cond_13
    if-eqz v17, :cond_14

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 357
    :cond_14
    :goto_b
    throw v30

    .line 355
    :catch_3
    move-exception v31

    goto :goto_b

    .line 351
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v30

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    goto :goto_a

    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #aspecth:I
    .restart local v5       #aspectw:I
    .restart local v6       #bt:Landroid/graphics/Bitmap;
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v8       #coff:I
    .restart local v9       #desirH:I
    .restart local v10       #desirW:I
    .restart local v11       #dx:F
    .restart local v12       #dy:F
    .restart local v13       #fd:Ljava/io/FileDescriptor;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    .restart local v19       #h:I
    .restart local v20       #matrix:Landroid/graphics/Matrix;
    .restart local v22       #newH:I
    .restart local v23       #newName:Ljava/lang/String;
    .restart local v24       #newW:I
    .restart local v25       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v26       #path:Ljava/lang/String;
    .restart local v27       #scale:F
    .restart local v28       #subBt:Landroid/graphics/Bitmap;
    .restart local v29       #w:I
    :catchall_2
    move-exception v30

    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    goto :goto_a

    .line 350
    .end local v4           #aspecth:I
    .end local v5           #aspectw:I
    .end local v6           #bt:Landroid/graphics/Bitmap;
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v8           #coff:I
    .end local v9           #desirH:I
    .end local v10           #desirW:I
    .end local v11           #dx:F
    .end local v12           #dy:F
    .end local v13           #fd:Ljava/io/FileDescriptor;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v19           #h:I
    .end local v20           #matrix:Landroid/graphics/Matrix;
    .end local v22           #newH:I
    .end local v23           #newName:Ljava/lang/String;
    .end local v24           #newW:I
    .end local v25           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v26           #path:Ljava/lang/String;
    .end local v27           #scale:F
    .end local v28           #subBt:Landroid/graphics/Bitmap;
    .end local v29           #w:I
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v30

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    goto :goto_9

    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #aspecth:I
    .restart local v5       #aspectw:I
    .restart local v6       #bt:Landroid/graphics/Bitmap;
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v8       #coff:I
    .restart local v9       #desirH:I
    .restart local v10       #desirW:I
    .restart local v11       #dx:F
    .restart local v12       #dy:F
    .restart local v13       #fd:Ljava/io/FileDescriptor;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    .restart local v19       #h:I
    .restart local v20       #matrix:Landroid/graphics/Matrix;
    .restart local v22       #newH:I
    .restart local v23       #newName:Ljava/lang/String;
    .restart local v24       #newW:I
    .restart local v25       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v26       #path:Ljava/lang/String;
    .restart local v27       #scale:F
    .restart local v28       #subBt:Landroid/graphics/Bitmap;
    .restart local v29       #w:I
    :catch_5
    move-exception v30

    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    goto :goto_9

    .line 355
    .end local v4           #aspecth:I
    .end local v5           #aspectw:I
    .end local v6           #bt:Landroid/graphics/Bitmap;
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v8           #coff:I
    .end local v9           #desirH:I
    .end local v10           #desirW:I
    .end local v11           #dx:F
    .end local v12           #dy:F
    .end local v13           #fd:Ljava/io/FileDescriptor;
    .end local v19           #h:I
    .end local v20           #matrix:Landroid/graphics/Matrix;
    .end local v22           #newH:I
    .end local v23           #newName:Ljava/lang/String;
    .end local v24           #newW:I
    .end local v25           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v26           #path:Ljava/lang/String;
    .end local v27           #scale:F
    .end local v28           #subBt:Landroid/graphics/Bitmap;
    .end local v29           #w:I
    :catch_6
    move-exception v30

    goto :goto_8

    .line 349
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v30

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #aspecth:I
    .restart local v5       #aspectw:I
    .restart local v6       #bt:Landroid/graphics/Bitmap;
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v8       #coff:I
    .restart local v9       #desirH:I
    .restart local v10       #desirW:I
    .restart local v11       #dx:F
    .restart local v12       #dy:F
    .restart local v13       #fd:Ljava/io/FileDescriptor;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    .restart local v19       #h:I
    .restart local v20       #matrix:Landroid/graphics/Matrix;
    .restart local v22       #newH:I
    .restart local v23       #newName:Ljava/lang/String;
    .restart local v24       #newW:I
    .restart local v25       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v26       #path:Ljava/lang/String;
    .restart local v27       #scale:F
    .restart local v28       #subBt:Landroid/graphics/Bitmap;
    .restart local v29       #w:I
    :catch_8
    move-exception v30

    move-object/from16 v17, v18

    .end local v18           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .line 355
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v30

    goto :goto_6

    .end local v4           #aspecth:I
    .end local v5           #aspectw:I
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v9           #desirH:I
    .end local v10           #desirW:I
    .end local v11           #dx:F
    .end local v12           #dy:F
    .end local v18           #fos:Ljava/io/FileOutputStream;
    .end local v19           #h:I
    .end local v20           #matrix:Landroid/graphics/Matrix;
    .end local v22           #newH:I
    .end local v23           #newName:Ljava/lang/String;
    .end local v24           #newW:I
    .end local v26           #path:Ljava/lang/String;
    .end local v27           #scale:F
    .end local v28           #subBt:Landroid/graphics/Bitmap;
    .end local v29           #w:I
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v30

    goto/16 :goto_1
.end method

.method public setGalleryPath(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryPath:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v1

    .line 264
    :cond_1
    iput-object p2, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryPath:Ljava/lang/String;

    .line 265
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryPath:Ljava/lang/String;

    .line 267
    :cond_2
    invoke-static {p2}, Lcom/lx/launcher8/util/DynTileManager;->isDefaultPath(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryDefalut:Z

    .line 268
    const-string v2, "gallery"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 269
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "path"

    iget-object v3, p0, Lcom/lx/launcher8/util/DynTileManager;->mGalleryPath:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 270
    const/4 v1, 0x1

    goto :goto_0
.end method
