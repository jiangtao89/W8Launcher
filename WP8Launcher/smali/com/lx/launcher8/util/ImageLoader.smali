.class public Lcom/lx/launcher8/util/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;
    }
.end annotation


# static fields
.field private static imageLoader:Lcom/lx/launcher8/util/ImageLoader;


# instance fields
.field private mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/lx/launcher8/util/ImageLoader;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/util/ImageLoader;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    .line 28
    invoke-static {}, Lcom/lx/launcher8/util/BitmapManager;->getInstance()Lcom/lx/launcher8/util/BitmapManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/util/ImageLoader;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/util/ImageLoader;)Lcom/lx/launcher8/util/BitmapManager;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lx/launcher8/util/ImageLoader;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/util/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct/range {p0 .. p5}, Lcom/lx/launcher8/util/ImageLoader;->getURLBitmap(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 120
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 121
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 123
    .local v0, h:D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 125
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 129
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 140
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 124
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 126
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    .line 127
    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    .line 126
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 134
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p2, v11, :cond_4

    .line 135
    if-ne p1, v11, :cond_4

    move v2, v6

    .line 136
    goto :goto_2

    .line 137
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 140
    goto :goto_2
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 102
    invoke-static {p0, p1, p2}, Lcom/lx/launcher8/util/ImageLoader;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 106
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 107
    const/4 v1, 0x1

    .line 108
    .local v1, roundedSize:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 115
    :goto_1
    return v1

    .line 109
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v1           #roundedSize:I
    :cond_1
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .restart local v1       #roundedSize:I
    goto :goto_1
.end method

.method public static convertURLToCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 223
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertURLToCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .parameter "subFolder"

    .prologue
    .line 205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    const-string p1, ""

    .line 211
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, parentPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lx/launcher8/util/BasePath;->getInternalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v1}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 215
    const/4 v2, 0x0

    .line 219
    :goto_1
    return-object v2

    .line 208
    .end local v1           #parentPath:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 218
    .restart local v1       #parentPath:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/lx/launcher8/util/ImageLoader;->md5(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, fileName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getInstance()Lcom/lx/launcher8/util/ImageLoader;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/lx/launcher8/util/ImageLoader;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lx/launcher8/util/ImageLoader;

    invoke-direct {v0}, Lcom/lx/launcher8/util/ImageLoader;-><init>()V

    sput-object v0, Lcom/lx/launcher8/util/ImageLoader;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    .line 33
    :cond_0
    sget-object v0, Lcom/lx/launcher8/util/ImageLoader;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    return-object v0
.end method

.method public static getLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "path"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 87
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 89
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 90
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 91
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 93
    const/4 v2, -0x1

    mul-int v3, p1, p2

    invoke-static {v1, v2, v3}, Lcom/lx/launcher8/util/ImageLoader;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 94
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 95
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .end local v1           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return-object v0
.end method

.method private getURLBitmap(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "url"
    .parameter "path"
    .parameter "listener"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 146
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 147
    .local v2, in:Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 148
    .local v5, out:Ljava/io/OutputStream;
    const/16 v6, 0x80

    new-array v0, v6, [B

    .line 149
    .local v0, bs:[B
    const/4 v3, 0x0

    .line 150
    .local v3, len:I
    const/4 v4, 0x0

    .line 151
    .local v4, length:I
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_1

    .line 156
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 157
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 158
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 159
    invoke-static {p2, p4, p5}, Lcom/lx/launcher8/util/ImageLoader;->getLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 162
    .end local v0           #bs:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #len:I
    .end local v4           #length:I
    .end local v5           #out:Ljava/io/OutputStream;
    :goto_1
    return-object v6

    .line 152
    .restart local v0       #bs:[B
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v3       #len:I
    .restart local v4       #length:I
    .restart local v5       #out:Ljava/io/OutputStream;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 153
    add-int/2addr v4, v3

    .line 154
    if-eqz p3, :cond_0

    invoke-interface {p3, v4}, Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;->onLoading(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v0           #bs:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #len:I
    .end local v4           #length:I
    .end local v5           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 161
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static md5(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "plainText"
    .parameter "flag"

    .prologue
    .line 174
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 175
    .local v4, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 176
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 180
    .local v0, b:[B
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v1, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, buf:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, offset:I
    :goto_0
    array-length v7, v0

    if-lt v5, v7, :cond_0

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, str:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 200
    .end local v0           #b:[B
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v4           #md:Ljava/security/MessageDigest;
    .end local v5           #offset:I
    .end local v6           #str:Ljava/lang/String;
    :goto_1
    :pswitch_0
    return-object v6

    .line 182
    .restart local v0       #b:[B
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    .restart local v4       #md:Ljava/security/MessageDigest;
    .restart local v5       #offset:I
    :cond_0
    aget-byte v3, v0, v5

    .line 183
    .local v3, i:I
    if-gez v3, :cond_1

    .line 184
    add-int/lit16 v3, v3, 0x100

    .line 185
    :cond_1
    const/16 v7, 0x10

    if-ge v3, v7, :cond_2

    .line 186
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 194
    .end local v3           #i:I
    .restart local v6       #str:Ljava/lang/String;
    :pswitch_1
    const/16 v7, 0x8

    const/16 v8, 0x18

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 198
    .end local v0           #b:[B
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v4           #md:Ljava/security/MessageDigest;
    .end local v5           #offset:I
    .end local v6           #str:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 199
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 200
    const/4 v6, 0x0

    goto :goto_1

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "url"
    .parameter "savePath"
    .parameter "listener"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v8, 0x0

    .line 46
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v8

    .line 47
    :cond_1
    if-eqz p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/util/ImageLoader;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/util/BitmapManager;->getCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/util/ImageLoader;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/util/BitmapManager;->getCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_0

    .line 51
    :cond_2
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    invoke-static {p2, p4, p5}, Lcom/lx/launcher8/util/ImageLoader;->getLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 54
    .local v8, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lx/launcher8/util/ImageLoader;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    invoke-virtual {v0, p1, v8}, Lcom/lx/launcher8/util/BitmapManager;->addCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 57
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    new-instance v7, Lcom/lx/launcher8/util/ImageLoader$1;

    invoke-direct {v7, p0, p1, p3}, Lcom/lx/launcher8/util/ImageLoader$1;-><init>(Lcom/lx/launcher8/util/ImageLoader;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;)V

    .line 67
    .local v7, handler:Landroid/os/Handler;
    new-instance v0, Lcom/lx/launcher8/util/ImageLoader$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/lx/launcher8/util/ImageLoader$2;-><init>(Lcom/lx/launcher8/util/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;IILandroid/os/Handler;)V

    .line 76
    invoke-virtual {v0}, Lcom/lx/launcher8/util/ImageLoader$2;->start()V

    goto :goto_0

    .line 79
    .end local v7           #handler:Landroid/os/Handler;
    :cond_4
    invoke-static {p1, p4, p5}, Lcom/lx/launcher8/util/ImageLoader;->getLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 80
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lx/launcher8/util/ImageLoader;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    invoke-virtual {v0, p1, v8}, Lcom/lx/launcher8/util/BitmapManager;->addCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
