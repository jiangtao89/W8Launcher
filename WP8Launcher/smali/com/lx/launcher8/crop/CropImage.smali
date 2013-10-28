.class public Lcom/lx/launcher8/crop/CropImage;
.super Lcom/lx/launcher8/crop/MonitoredActivity;
.source "CropImage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CropImage"


# instance fields
.field private crop:Z

.field private mAspectX:I

.field private mAspectY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCircleCrop:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field mCrop:Lcom/lx/launcher8/crop/HighlightView;

.field private mDoFaceDetection:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImage:Lcom/lx/launcher8/crop/img/IImage;

.field private mImageView:Lcom/lx/launcher8/crop/CropImageView;

.field mJustCrop:Z

.field private mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mOutputX:I

.field private mOutputY:I

.field mRunFaceDetection:Ljava/lang/Runnable;

.field private mSaveUri:Landroid/net/Uri;

.field mSaving:Z

.field private mScale:Z

.field private mScaleUp:Z

.field private mSetWallpaper:Z

.field mWaitingToPick:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 74
    invoke-direct {p0}, Lcom/lx/launcher8/crop/MonitoredActivity;-><init>()V

    .line 79
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/lx/launcher8/crop/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/crop/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 81
    iput-boolean v2, p0, Lcom/lx/launcher8/crop/CropImage;->mSetWallpaper:Z

    .line 83
    iput-boolean v1, p0, Lcom/lx/launcher8/crop/CropImage;->mDoFaceDetection:Z

    .line 84
    iput-boolean v2, p0, Lcom/lx/launcher8/crop/CropImage;->mCircleCrop:Z

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/crop/CropImage;->mHandler:Landroid/os/Handler;

    .line 91
    iput-boolean v1, p0, Lcom/lx/launcher8/crop/CropImage;->mScaleUp:Z

    .line 92
    iput-boolean v1, p0, Lcom/lx/launcher8/crop/CropImage;->crop:Z

    .line 635
    new-instance v0, Lcom/lx/launcher8/crop/CropImage$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/crop/CropImage$1;-><init>(Lcom/lx/launcher8/crop/CropImage;)V

    iput-object v0, p0, Lcom/lx/launcher8/crop/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/crop/CropImage;)Lcom/lx/launcher8/crop/CropImageView;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lx/launcher8/crop/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/lx/launcher8/crop/CropImage;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$11(Lcom/lx/launcher8/crop/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lcom/lx/launcher8/crop/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$12(Lcom/lx/launcher8/crop/CropImage;)Lcom/lx/launcher8/crop/img/IImage;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage;->mImage:Lcom/lx/launcher8/crop/img/IImage;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lx/launcher8/crop/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/crop/CropImage;)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/lx/launcher8/crop/CropImage;->mCircleCrop:Z

    return v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/crop/CropImage;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget v0, p0, Lcom/lx/launcher8/crop/CropImage;->mAspectX:I

    return v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/crop/CropImage;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget v0, p0, Lcom/lx/launcher8/crop/CropImage;->mAspectY:I

    return v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/crop/CropImage;)Z
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/lx/launcher8/crop/CropImage;->mDoFaceDetection:Z

    return v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/crop/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/crop/CropImage;)I
    .locals 1
    .parameter

    .prologue
    .line 89
    iget v0, p0, Lcom/lx/launcher8/crop/CropImage;->mOutputX:I

    return v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/crop/CropImage;)I
    .locals 1
    .parameter

    .prologue
    .line 89
    iget v0, p0, Lcom/lx/launcher8/crop/CropImage;->mOutputY:I

    return v0
.end method

.method static synthetic access$9(Lcom/lx/launcher8/crop/CropImage;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/lx/launcher8/crop/CropImage;->crop:Z

    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .locals 12
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpegData"
    .parameter "degree"

    .prologue
    .line 551
    const/4 v6, 0x0

    .line 552
    .local v6, outputStream:Ljava/io/OutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 554
    .local v5, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 555
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 556
    :cond_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    .local v4, file:Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 558
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .local v7, outputStream:Ljava/io/OutputStream;
    if-eqz p7, :cond_2

    .line 559
    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x4b

    move-object/from16 v0, p7

    invoke-virtual {v0, v9, v10, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 560
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, p9, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 572
    :goto_0
    invoke-static {v7}, Lcom/lx/launcher8/crop/img/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 575
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 576
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "title"

    invoke-virtual {v8, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v9, "_display_name"

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v9, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 583
    const-string v9, "mime_type"

    const-string v10, "image/jpeg"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v9, "orientation"

    const/4 v10, 0x0

    aget v10, p9, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 585
    const-string v9, "_data"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    if-eqz p4, :cond_1

    .line 588
    const-string v9, "latitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 589
    const-string v9, "longitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 592
    :cond_1
    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    move-object v6, v7

    .end local v2           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .end local v8           #values:Landroid/content/ContentValues;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    :goto_1
    return-object v9

    .line 562
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :cond_2
    :try_start_2
    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 563
    const/4 v9, 0x0

    invoke-static {v5}, Lcom/lx/launcher8/crop/CropImage;->getExifOrientation(Ljava/lang/String;)I

    move-result v10

    aput v10, p9, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 565
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 566
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .local v3, ex:Ljava/io/FileNotFoundException;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    :goto_2
    :try_start_3
    const-string v9, "CropImage"

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 572
    invoke-static {v6}, Lcom/lx/launcher8/crop/img/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 567
    const/4 v9, 0x0

    goto :goto_1

    .line 568
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 569
    .local v3, ex:Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v9, "CropImage"

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 572
    invoke-static {v6}, Lcom/lx/launcher8/crop/img/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 570
    const/4 v9, 0x0

    goto :goto_1

    .line 571
    .end local v3           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 572
    :goto_4
    invoke-static {v6}, Lcom/lx/launcher8/crop/img/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 573
    throw v9

    .line 571
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    goto :goto_4

    .line 568
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catch_2
    move-exception v3

    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 565
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 8
    .parameter "filepath"

    .prologue
    const/4 v7, -0x1

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, degree:I
    const/4 v2, 0x0

    .line 599
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 603
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 605
    const-string v5, "Orientation"

    .line 604
    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 606
    .local v4, orientation:I
    if-eq v4, v7, :cond_0

    .line 608
    packed-switch v4, :pswitch_data_0

    .line 622
    .end local v4           #orientation:I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 600
    :catch_0
    move-exception v1

    .line 601
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "CropImage"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 610
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #orientation:I
    :pswitch_1
    const/16 v0, 0x5a

    .line 611
    goto :goto_1

    .line 613
    :pswitch_2
    const/16 v0, 0xb4

    .line 614
    goto :goto_1

    .line 616
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 608
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private onSaveClicked()V
    .locals 22

    .prologue
    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/crop/CropImage;->mCrop:Lcom/lx/launcher8/crop/HighlightView;

    if-nez v1, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lx/launcher8/crop/CropImage;->mSaving:Z

    if-nez v1, :cond_0

    .line 350
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/lx/launcher8/crop/CropImage;->mSaving:Z

    .line 356
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputX:I

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputY:I

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lx/launcher8/crop/CropImage;->mScale:Z

    if-nez v1, :cond_4

    .line 359
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputY:I

    .line 360
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 359
    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 361
    .local v2, croppedImage:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 363
    .local v9, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/crop/CropImage;->mCrop:Lcom/lx/launcher8/crop/HighlightView;

    invoke-virtual {v1}, Lcom/lx/launcher8/crop/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v20

    .line 364
    .local v20, srcRect:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputY:I

    invoke-direct {v10, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 366
    .local v10, dstRect:Landroid/graphics/Rect;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v11, v1, 0x2

    .line 367
    .local v11, dx:I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v12, v1, 0x2

    .line 370
    .local v12, dy:I
    const/4 v1, 0x0

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 373
    const/4 v1, 0x0

    neg-int v3, v11

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    neg-int v4, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v10, v1, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v9, v1, v0, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;

    invoke-virtual {v1}, Lcom/lx/launcher8/crop/CropImageView;->clear()V

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 430
    .end local v11           #dx:I
    .end local v12           #dy:I
    .end local v20           #srcRect:Landroid/graphics/Rect;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/crop/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/lx/launcher8/crop/CropImageView;->center(ZZ)V

    .line 432
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;

    iget-object v1, v1, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/crop/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 436
    .local v17, myExtras:Landroid/os/Bundle;
    if-eqz v17, :cond_8

    const-string v1, "data"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-nez v1, :cond_3

    .line 437
    const-string v1, "return-data"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 438
    :cond_3
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 440
    .local v13, extras:Landroid/os/Bundle;
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 441
    .local v15, intent:Landroid/content/Intent;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 442
    .local v7, b:Landroid/os/Bundle;
    invoke-static {v7, v2}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 443
    invoke-virtual {v15, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 444
    const/4 v1, -0x1

    const-string v3, "inline-data"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/lx/launcher8/crop/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/crop/CropImage;->finish()V

    goto/16 :goto_0

    .line 382
    .end local v2           #croppedImage:Landroid/graphics/Bitmap;
    .end local v7           #b:Landroid/os/Bundle;
    .end local v9           #canvas:Landroid/graphics/Canvas;
    .end local v10           #dstRect:Landroid/graphics/Rect;
    .end local v13           #extras:Landroid/os/Bundle;
    .end local v15           #intent:Landroid/content/Intent;
    .end local v17           #myExtras:Landroid/os/Bundle;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/crop/CropImage;->mCrop:Lcom/lx/launcher8/crop/HighlightView;

    invoke-virtual {v1}, Lcom/lx/launcher8/crop/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v19

    .line 384
    .local v19, r:Landroid/graphics/Rect;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v21

    .line 385
    .local v21, width:I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 387
    .local v14, height:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lx/launcher8/crop/CropImage;->crop:Z

    if-nez v1, :cond_6

    .line 388
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputX:I

    if-lez v1, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputY:I

    if-lez v1, :cond_6

    .line 389
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputX:I

    move/from16 v21, v0

    .line 390
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputX:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-int v14, v1

    .line 391
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputY:I

    if-le v14, v1, :cond_5

    .line 392
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputY:I

    .line 393
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputY:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-int v0, v1

    move/from16 v21, v0

    .line 395
    :cond_5
    new-instance v19, Landroid/graphics/Rect;

    .end local v19           #r:Landroid/graphics/Rect;
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 400
    .restart local v19       #r:Landroid/graphics/Rect;
    :cond_6
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    invoke-static {v0, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 401
    .restart local v2       #croppedImage:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 402
    .restart local v9       #canvas:Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move/from16 v0, v21

    invoke-direct {v10, v1, v3, v0, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 403
    .restart local v10       #dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v9, v1, v0, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;

    invoke-virtual {v1}, Lcom/lx/launcher8/crop/CropImageView;->clear()V

    .line 407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 409
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lx/launcher8/crop/CropImage;->mCircleCrop:Z

    if-eqz v1, :cond_7

    .line 415
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 416
    .local v8, c:Landroid/graphics/Canvas;
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 417
    .local v18, p:Landroid/graphics/Path;
    move/from16 v0, v21

    int-to-float v1, v0

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    int-to-float v3, v14

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move/from16 v0, v21

    int-to-float v4, v0

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    .line 418
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 417
    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 419
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 420
    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 424
    .end local v8           #c:Landroid/graphics/Canvas;
    .end local v18           #p:Landroid/graphics/Path;
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputX:I

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputY:I

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lx/launcher8/crop/CropImage;->mScale:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lx/launcher8/crop/CropImage;->crop:Z

    if-eqz v1, :cond_2

    .line 425
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 426
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputY:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/lx/launcher8/crop/CropImage;->mScaleUp:Z

    const/4 v6, 0x1

    .line 425
    invoke-static/range {v1 .. v6}, Lcom/lx/launcher8/crop/img/Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_1

    .line 447
    .end local v14           #height:I
    .end local v19           #r:Landroid/graphics/Rect;
    .end local v21           #width:I
    .restart local v17       #myExtras:Landroid/os/Bundle;
    :cond_8
    move-object v7, v2

    .line 448
    .local v7, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lx/launcher8/crop/CropImage;->mSetWallpaper:Z

    if-eqz v1, :cond_9

    .line 449
    const v16, 0x7f0a01d8

    .line 451
    .local v16, msdId:I
    :goto_2
    const/4 v1, 0x0

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/crop/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 453
    new-instance v4, Lcom/lx/launcher8/crop/CropImage$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lcom/lx/launcher8/crop/CropImage$5;-><init>(Lcom/lx/launcher8/crop/CropImage;Landroid/graphics/Bitmap;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lx/launcher8/crop/CropImage;->mHandler:Landroid/os/Handler;

    .line 451
    move-object/from16 v0, p0

    invoke-static {v0, v1, v3, v4, v5}, Lcom/lx/launcher8/crop/img/Util;->startBackgroundJob(Lcom/lx/launcher8/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 450
    .end local v16           #msdId:I
    :cond_9
    const v16, 0x7f0a01d9

    goto :goto_2
.end method

.method private saveOutput(Landroid/graphics/Bitmap;)V
    .locals 25
    .parameter "croppedImage"

    .prologue
    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/crop/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 463
    const/16 v22, 0x0

    .line 465
    .local v22, outputStream:Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/crop/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 466
    new-instance v23, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/crop/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .end local v22           #outputStream:Ljava/io/OutputStream;
    .local v23, outputStream:Ljava/io/OutputStream;
    move-object/from16 v22, v23

    .line 470
    .end local v23           #outputStream:Ljava/io/OutputStream;
    .restart local v22       #outputStream:Ljava/io/OutputStream;
    :goto_0
    if-eqz v22, :cond_0

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/crop/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :cond_0
    invoke-static/range {v22 .. v22}, Lcom/lx/launcher8/crop/img/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 479
    :goto_1
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 480
    .local v18, extras:Landroid/os/Bundle;
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/crop/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    .line 480
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/lx/launcher8/crop/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 535
    .end local v18           #extras:Landroid/os/Bundle;
    .end local v22           #outputStream:Ljava/io/OutputStream;
    :goto_2
    move-object/from16 v12, p1

    .line 536
    .local v12, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/crop/CropImage;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/lx/launcher8/crop/CropImage$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lcom/lx/launcher8/crop/CropImage$6;-><init>(Lcom/lx/launcher8/crop/CropImage;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/crop/CropImage;->finish()V

    .line 544
    return-void

    .line 468
    .end local v12           #b:Landroid/graphics/Bitmap;
    .restart local v22       #outputStream:Ljava/io/OutputStream;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/crop/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/crop/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v22

    goto :goto_0

    .line 473
    :catch_0
    move-exception v16

    .line 475
    .local v16, ex:Ljava/io/IOException;
    :try_start_2
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot open file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/crop/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    invoke-static/range {v22 .. v22}, Lcom/lx/launcher8/crop/img/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 476
    .end local v16           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 477
    invoke-static/range {v22 .. v22}, Lcom/lx/launcher8/crop/img/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 478
    throw v2

    .line 482
    .end local v22           #outputStream:Ljava/io/OutputStream;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lx/launcher8/crop/CropImage;->mSetWallpaper:Z

    if-eqz v2, :cond_3

    .line 484
    :try_start_3
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 485
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/crop/CropImage;->setResult(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 486
    :catch_1
    move-exception v15

    .line 487
    .local v15, e:Ljava/io/IOException;
    const-string v2, "CropImage"

    const-string v3, "Failed to set wallpaper."

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/crop/CropImage;->setResult(I)V

    goto :goto_2

    .line 491
    .end local v15           #e:Ljava/io/IOException;
    :cond_3
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 492
    .restart local v18       #extras:Landroid/os/Bundle;
    const-string v2, "rect"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/crop/CropImage;->mCrop:Lcom/lx/launcher8/crop/HighlightView;

    invoke-virtual {v3}, Lcom/lx/launcher8/crop/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/crop/CropImage;->mImage:Lcom/lx/launcher8/crop/img/IImage;

    invoke-interface {v2}, Lcom/lx/launcher8/crop/img/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    .local v21, oldPath:Ljava/io/File;
    new-instance v14, Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    .local v14, directory:Ljava/io/File;
    const/16 v24, 0x0

    .line 498
    .local v24, x:I
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    .line 499
    .local v19, fileName:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "."

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 504
    :cond_4
    add-int/lit8 v24, v24, 0x1

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 505
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 507
    .local v13, candidate:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v17

    .line 508
    .local v17, exists:Z
    if-nez v17, :cond_4

    .line 514
    const/4 v2, 0x1

    :try_start_4
    new-array v11, v2, [I

    .line 516
    .local v11, degree:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/crop/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/crop/CropImage;->mImage:Lcom/lx/launcher8/crop/img/IImage;

    invoke-interface {v3}, Lcom/lx/launcher8/crop/img/IImage;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/crop/CropImage;->mImage:Lcom/lx/launcher8/crop/img/IImage;

    invoke-interface {v4}, Lcom/lx/launcher8/crop/img/IImage;->getDateTaken()J

    move-result-wide v4

    .line 519
    const/4 v6, 0x0

    .line 521
    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 522
    const/4 v10, 0x0

    move-object/from16 v9, p1

    .line 515
    invoke-static/range {v2 .. v11}, Lcom/lx/launcher8/crop/CropImage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;

    move-result-object v20

    .line 525
    .local v20, newUri:Landroid/net/Uri;
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 526
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 527
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    .line 525
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/lx/launcher8/crop/CropImage;->setResult(ILandroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 528
    .end local v11           #degree:[I
    .end local v20           #newUri:Landroid/net/Uri;
    :catch_2
    move-exception v16

    .line 531
    .local v16, ex:Ljava/lang/Exception;
    const-string v2, "CropImage"

    const-string v3, "store image fail, continue anyway"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method private startFaceDetection()V
    .locals 4

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;

    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/crop/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 309
    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 311
    new-instance v2, Lcom/lx/launcher8/crop/CropImage$4;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/crop/CropImage$4;-><init>(Lcom/lx/launcher8/crop/CropImage;)V

    .line 338
    iget-object v3, p0, Lcom/lx/launcher8/crop/CropImage;->mHandler:Landroid/os/Handler;

    .line 309
    invoke-static {p0, v0, v1, v2, v3}, Lcom/lx/launcher8/crop/img/Util;->startBackgroundJob(Lcom/lx/launcher8/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/lx/launcher8/crop/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iput-object v10, p0, Lcom/lx/launcher8/crop/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 113
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/crop/CropImage;->requestWindowFeature(I)Z

    .line 115
    new-instance v4, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    .line 116
    .local v4, mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v10

    if-nez v10, :cond_6

    .line 117
    const v10, 0x7f030006

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/crop/CropImage;->setContentView(I)V

    .line 123
    :goto_0
    const v10, 0x7f090037

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/crop/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/lx/launcher8/crop/CropImageView;

    iput-object v10, p0, Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;

    .line 125
    invoke-static {p0}, Lcom/lx/launcher8/crop/MenuHelper;->showStorageToast(Landroid/app/Activity;)V

    .line 127
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 128
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 130
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_4

    .line 131
    const-string v10, "circleCrop"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 132
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/lx/launcher8/crop/CropImage;->mCircleCrop:Z

    .line 133
    const/4 v10, 0x1

    iput v10, p0, Lcom/lx/launcher8/crop/CropImage;->mAspectX:I

    .line 134
    const/4 v10, 0x1

    iput v10, p0, Lcom/lx/launcher8/crop/CropImage;->mAspectY:I

    .line 136
    :cond_0
    const-string v10, "output"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    iput-object v10, p0, Lcom/lx/launcher8/crop/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 137
    iget-object v10, p0, Lcom/lx/launcher8/crop/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v10, :cond_7

    .line 138
    const-string v10, "outputFormat"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, outputFormatString:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 140
    invoke-static {v5}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v10

    iput-object v10, p0, Lcom/lx/launcher8/crop/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 146
    .end local v5           #outputFormatString:Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v10, "data"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    iput-object v10, p0, Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 147
    const-string v10, "aspectX"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/lx/launcher8/crop/CropImage;->mAspectX:I

    .line 148
    const-string v10, "aspectY"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/lx/launcher8/crop/CropImage;->mAspectY:I

    .line 149
    const-string v10, "outputX"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/lx/launcher8/crop/CropImage;->mOutputX:I

    .line 150
    const-string v10, "outputY"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/lx/launcher8/crop/CropImage;->mOutputY:I

    .line 151
    iget v10, p0, Lcom/lx/launcher8/crop/CropImage;->mAspectX:I

    if-eqz v10, :cond_2

    iget v10, p0, Lcom/lx/launcher8/crop/CropImage;->mAspectY:I

    if-nez v10, :cond_3

    .line 152
    :cond_2
    iget v10, p0, Lcom/lx/launcher8/crop/CropImage;->mOutputX:I

    iput v10, p0, Lcom/lx/launcher8/crop/CropImage;->mAspectX:I

    iget v10, p0, Lcom/lx/launcher8/crop/CropImage;->mOutputY:I

    iput v10, p0, Lcom/lx/launcher8/crop/CropImage;->mAspectY:I

    .line 154
    :cond_3
    const-string v10, "scale"

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/lx/launcher8/crop/CropImage;->mScale:Z

    .line 155
    const-string v10, "scaleUpIfNeeded"

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/lx/launcher8/crop/CropImage;->mScaleUp:Z

    .line 156
    const-string v10, "noFaceDetection"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 157
    const-string v10, "noFaceDetection"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    .line 156
    :goto_2
    iput-boolean v10, p0, Lcom/lx/launcher8/crop/CropImage;->mDoFaceDetection:Z

    .line 162
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/lx/launcher8/crop/CropImage;->mJustCrop:Z

    .line 165
    :cond_4
    iget-object v10, p0, Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v10, :cond_5

    .line 166
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 170
    .local v8, target:Landroid/net/Uri;
    new-instance v10, Lcom/lx/launcher8/crop/img/UriImage;

    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-direct {v10, v11, v8}, Lcom/lx/launcher8/crop/img/UriImage;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    iput-object v10, p0, Lcom/lx/launcher8/crop/CropImage;->mImage:Lcom/lx/launcher8/crop/img/IImage;

    .line 171
    iget-object v10, p0, Lcom/lx/launcher8/crop/CropImage;->mImage:Lcom/lx/launcher8/crop/img/IImage;

    if-eqz v10, :cond_5

    .line 176
    iget-object v10, p0, Lcom/lx/launcher8/crop/CropImage;->mImage:Lcom/lx/launcher8/crop/img/IImage;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/lx/launcher8/crop/img/IImage;->thumbBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 180
    .end local v8           #target:Landroid/net/Uri;
    :cond_5
    iget-object v10, p0, Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v10, :cond_a

    .line 181
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImage;->finish()V

    .line 300
    :goto_3
    return-void

    .line 119
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    const v10, 0x7f030008

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/crop/CropImage;->setContentView(I)V

    goto/16 :goto_0

    .line 144
    .restart local v2       #extras:Landroid/os/Bundle;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_7
    const-string v10, "setWallpaper"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/lx/launcher8/crop/CropImage;->mSetWallpaper:Z

    goto/16 :goto_1

    .line 157
    :cond_8
    const/4 v10, 0x1

    goto :goto_2

    .line 158
    :cond_9
    const/4 v10, 0x1

    goto :goto_2

    .line 186
    :cond_a
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x400

    invoke-virtual {v10, v11}, Landroid/view/Window;->addFlags(I)V

    .line 188
    const v10, 0x7f090039

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/crop/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 189
    new-instance v11, Lcom/lx/launcher8/crop/CropImage$2;

    invoke-direct {v11, p0}, Lcom/lx/launcher8/crop/CropImage$2;-><init>(Lcom/lx/launcher8/crop/CropImage;)V

    .line 188
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v10, 0x7f090038

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/crop/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 213
    new-instance v11, Lcom/lx/launcher8/crop/CropImage$3;

    invoke-direct {v11, p0}, Lcom/lx/launcher8/crop/CropImage$3;-><init>(Lcom/lx/launcher8/crop/CropImage;)V

    .line 212
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    .line 220
    const/4 v9, 0x0

    .line 221
    .local v9, textColor:Landroid/content/res/ColorStateList;
    const/4 v1, 0x0

    .line 222
    .local v1, buttonBG:I
    const/4 v0, 0x0

    .line 223
    .local v0, background:I
    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v10

    if-nez v10, :cond_c

    .line 224
    const/4 v10, -0x1

    const/high16 v11, -0x100

    invoke-static {v10, v11}, Lcom/app/common/utils/ViewHelper;->getColor(II)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 225
    const v1, 0x7f02006c

    .line 226
    const-string v10, "#dddddd"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 232
    :goto_4
    const v10, 0x7f090039

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/crop/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 233
    .local v7, select:Landroid/widget/Button;
    invoke-virtual {v7, v9}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 234
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 235
    const v10, 0x7f090038

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/crop/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 236
    .local v6, save:Landroid/widget/Button;
    invoke-virtual {v6, v9}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 237
    invoke-virtual {v6, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 238
    const v10, 0x7f09003c

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/crop/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 299
    .end local v0           #background:I
    .end local v1           #buttonBG:I
    .end local v6           #save:Landroid/widget/Button;
    .end local v7           #select:Landroid/widget/Button;
    .end local v9           #textColor:Landroid/content/res/ColorStateList;
    :cond_b
    invoke-direct {p0}, Lcom/lx/launcher8/crop/CropImage;->startFaceDetection()V

    goto/16 :goto_3

    .line 228
    .restart local v0       #background:I
    .restart local v1       #buttonBG:I
    .restart local v9       #textColor:Landroid/content/res/ColorStateList;
    :cond_c
    const/high16 v10, -0x100

    const/4 v11, -0x1

    invoke-static {v10, v11}, Lcom/app/common/utils/ViewHelper;->getColor(II)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 229
    const v1, 0x7f0201ef

    .line 230
    const-string v10, "#313131"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 632
    invoke-super {p0}, Lcom/lx/launcher8/crop/MonitoredActivity;->onDestroy()V

    .line 633
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 627
    invoke-super {p0}, Lcom/lx/launcher8/crop/MonitoredActivity;->onPause()V

    .line 628
    return-void
.end method
