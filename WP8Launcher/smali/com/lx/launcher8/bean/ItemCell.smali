.class public Lcom/lx/launcher8/bean/ItemCell;
.super Ljava/lang/Object;
.source "ItemCell.java"

# interfaces
.implements Lcom/lx/launcher8/db/ThemeHelper$Saveable;


# static fields
.field public static final NO_ID:I = -0x1


# instance fields
.field public appName:Ljava/lang/String;

.field public backColor:I

.field public cellAlpha:I

.field public cellType:I

.field public cellX:I

.field public cellY:I

.field public container:J

.field public gravity:I

.field public id:J

.field public intent:Landroid/content/Intent;

.field public spanX:I

.field public spanY:I

.field public textColor:I

.field public title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide v2, p0, Lcom/lx/launcher8/bean/ItemCell;->id:J

    .line 69
    iput-wide v2, p0, Lcom/lx/launcher8/bean/ItemCell;->container:J

    .line 73
    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    .line 78
    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    .line 83
    iput v1, p0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    .line 88
    iput v1, p0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    .line 90
    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    .line 91
    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    .line 92
    const v0, 0xffff

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    .line 100
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter "type"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide v2, p0, Lcom/lx/launcher8/bean/ItemCell;->id:J

    .line 69
    iput-wide v2, p0, Lcom/lx/launcher8/bean/ItemCell;->container:J

    .line 73
    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    .line 78
    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    .line 83
    iput v1, p0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    .line 88
    iput v1, p0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    .line 90
    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    .line 91
    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    .line 92
    const v0, 0xffff

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    .line 103
    iput p1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    .line 104
    return-void
.end method

.method constructor <init>(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 4
    .parameter "info"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide v2, p0, Lcom/lx/launcher8/bean/ItemCell;->id:J

    .line 69
    iput-wide v2, p0, Lcom/lx/launcher8/bean/ItemCell;->container:J

    .line 73
    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    .line 78
    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    .line 83
    iput v1, p0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    .line 88
    iput v1, p0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    .line 90
    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    .line 91
    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    .line 92
    const v0, 0xffff

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    .line 107
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->setValue(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 108
    return-void
.end method

.method private checkIntent(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "defIntent"
    .parameter "pm"
    .parameter "pkg"
    .parameter "clz"

    .prologue
    const/4 v5, 0x0

    .line 467
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lx/launcher8/AnallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0, p3, p4, v4}, Lcom/lx/launcher8/bean/ItemCell;->getResFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, intents:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 488
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 470
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    .line 472
    .local v1, intent:Landroid/content/Intent;
    array-length v6, v2

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v3, v2, v4

    .line 473
    .local v3, uri:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 472
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 476
    :cond_3
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v3, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 477
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 478
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :cond_4
    invoke-static {p2, v1}, Lcom/lx/launcher8/db/DBHelper;->isValidateIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 485
    invoke-virtual {v1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, e:Ljava/net/URISyntaxException;
    goto :goto_2
.end method

.method public static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 6
    .parameter "bitmap"

    .prologue
    const/4 v3, 0x0

    .line 436
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v2, v4, 0x4

    .line 438
    .local v2, size:I
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 439
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 440
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 441
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 442
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 448
    .end local v1           #out:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v3

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, e:Ljava/io/IOException;
    const-string v4, "Favorite"

    const-string v5, "Could not write icon"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 446
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 447
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "Favorite"

    const-string v5, "Could not write icon"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCellSize(II)I
    .locals 1
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 463
    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, p1

    return v0
.end method

.method public static getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;
    .locals 4
    .parameter "intent"

    .prologue
    .line 381
    const-string v2, "cell_cellType"

    const/16 v3, 0x63

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 382
    .local v1, type:I
    invoke-static {}, Lcom/lx/launcher8/bean/CellFactory;->getInstance()Lcom/lx/launcher8/bean/CellFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/bean/CellFactory;->createCellBean(I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    .line 383
    .local v0, item:Lcom/lx/launcher8/bean/ItemCell;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/lx/launcher8/bean/ItemCell;->getIntentParam(Landroid/content/Intent;)V

    .line 384
    :cond_0
    return-object v0
.end method

.method private isMatch([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "arr"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 532
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 541
    :cond_0
    :goto_0
    return v1

    .line 536
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 537
    aget-object v2, p1, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 538
    const/4 v1, 0x1

    goto :goto_0

    .line 536
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .parameter "values"
    .parameter "bitmap"
    .parameter "name"

    .prologue
    .line 453
    if-eqz p1, :cond_0

    .line 454
    invoke-static {p1}, Lcom/lx/launcher8/bean/ItemCell;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 455
    .local v0, data:[B
    invoke-virtual {p0, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 457
    .end local v0           #data:[B
    :cond_0
    return-void
.end method


# virtual methods
.method public getCellAlphaBg()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getCellAlphaFg()I
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getFunction()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getImgGravity()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getIntentParam(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 331
    const-string v1, "cell_cellType"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    .line 332
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/AnallApp;->getParam()Ljava/lang/Object;

    move-result-object v0

    .line 333
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/lx/launcher8/bean/ItemCell;

    if-eqz v1, :cond_0

    .line 334
    if-ne v0, p0, :cond_1

    .line 337
    .end local v0           #obj:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 335
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    check-cast v0, Lcom/lx/launcher8/bean/ItemCell;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/bean/ItemCell;->setValue(Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_0
.end method

.method public getResFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 9
    .parameter "pkg"
    .parameter "clz"
    .parameter "res"

    .prologue
    const v8, 0x7f070017

    const v7, 0x7f070016

    const v6, 0x7f070014

    const v5, 0x7f070013

    const/4 v2, 0x0

    .line 492
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-object v2

    .line 496
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/lx/launcher8/bean/ItemCell;->isMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 498
    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 499
    :cond_2
    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/lx/launcher8/bean/ItemCell;->isMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 500
    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 501
    :cond_3
    invoke-virtual {p3, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/lx/launcher8/bean/ItemCell;->isMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 502
    invoke-virtual {p3, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 503
    :cond_4
    const v3, 0x7f07001d

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/lx/launcher8/bean/ItemCell;->isMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 504
    const v2, 0x7f07001d

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 505
    :cond_5
    const v3, 0x7f07001b

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/lx/launcher8/bean/ItemCell;->isMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 506
    const v2, 0x7f07001b

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 507
    :cond_6
    const v3, 0x7f07001c

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/lx/launcher8/bean/ItemCell;->isMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 508
    const v2, 0x7f07001c

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 509
    :cond_7
    invoke-virtual {p3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/lx/launcher8/bean/ItemCell;->isMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 510
    invoke-virtual {p3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 511
    :cond_8
    const v3, 0x7f070018

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/lx/launcher8/bean/ItemCell;->isMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 512
    const v2, 0x7f070018

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 513
    :cond_9
    const v3, 0x7f070019

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/lx/launcher8/bean/ItemCell;->isMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 514
    const v2, 0x7f070019

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 515
    :cond_a
    const v3, 0x7f07001a

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/lx/launcher8/bean/ItemCell;->isMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 516
    const v2, 0x7f07001a

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 517
    :cond_b
    const v3, 0x7f07001e

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/lx/launcher8/bean/ItemCell;->isMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 518
    const v2, 0x7f07001e

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 519
    :cond_c
    const-string v3, "com.android.settings"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "com.android.settings.DateTimeSettings"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 520
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 521
    .local v0, produce:Ljava/lang/String;
    if-eqz v0, :cond_d

    const-string v3, "tita"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 524
    :cond_d
    const v2, 0x7f07001f

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 525
    .end local v0           #produce:Ljava/lang/String;
    :cond_e
    const-string v3, "com.android.settings"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.android.settings.Settings"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 526
    const v2, 0x7f070020

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    invoke-static {v0, v1}, Lcom/lx/launcher8/bean/ItemCell;->getCellSize(II)I

    move-result v0

    return v0
.end method

.method public getTextAlpha()I
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    const/high16 v1, 0xff

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getTextDisplayType()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getTextGravity()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 231
    const-string v0, "cellType"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    const-string v0, "cellX"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    const-string v0, "cellY"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v0, "spanX"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string v0, "spanY"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v0, "appName"

    iget-object v1, p0, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "title"

    iget-object v1, p0, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "textColor"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v0, "container"

    iget-wide v1, p0, Lcom/lx/launcher8/bean/ItemCell;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 240
    const-string v0, "backColor"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    const-string v0, "alpha"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const-string v0, "gravity"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    iget-object v0, p0, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "intent"

    iget-object v1, p0, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    return-void
.end method

.method public onInitFromDatabse()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public onRestoreState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 359
    const-string v1, "cell_cellType"

    iget v2, p0, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    .line 360
    const-string v1, "cell_id"

    iget-wide v2, p0, Lcom/lx/launcher8/bean/ItemCell;->id:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lx/launcher8/bean/ItemCell;->id:J

    .line 361
    const-string v1, "cell_cellX"

    iget v2, p0, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    .line 362
    const-string v1, "cell_cellY"

    iget v2, p0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    .line 363
    const-string v1, "cell_spanX"

    iget v2, p0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    .line 364
    const-string v1, "cell_spanY"

    iget v2, p0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    .line 365
    const-string v1, "cell_backColor"

    iget v2, p0, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    .line 366
    const-string v1, "cell_textColor"

    iget v2, p0, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    .line 367
    const-string v1, "cell_alpha"

    iget v2, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    .line 368
    const-string v1, "cell_appName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    const-string v1, "cell_appName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    .line 370
    :cond_0
    const-string v1, "cell_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    const-string v1, "cell_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    .line 372
    :cond_1
    const-string v1, "cell_gravity"

    iget v2, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    .line 373
    const-string v1, "cell_container"

    iget-wide v2, p0, Lcom/lx/launcher8/bean/ItemCell;->container:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lx/launcher8/bean/ItemCell;->container:J

    .line 374
    const-string v1, "cell_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 375
    const-string v1, "cell_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/bean/ItemCell;->setIntent(Ljava/lang/String;)V

    .line 378
    .end local v0           #str:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 340
    const-string v0, "cell_cellType"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    const-string v0, "cell_id"

    iget-wide v1, p0, Lcom/lx/launcher8/bean/ItemCell;->id:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 342
    const-string v0, "cell_cellX"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 343
    const-string v0, "cell_cellY"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    const-string v0, "cell_spanX"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    const-string v0, "cell_spanY"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    const-string v0, "cell_appName"

    iget-object v1, p0, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v0, "cell_title"

    iget-object v1, p0, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v0, "cell_backColor"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    const-string v0, "cell_textColor"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    const-string v0, "cell_alpha"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    const-string v0, "cell_gravity"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    const-string v0, "cell_container"

    iget-wide v1, p0, Lcom/lx/launcher8/bean/ItemCell;->container:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 353
    iget-object v0, p0, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "cell_intent"

    iget-object v1, p0, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    return-void
.end method

.method public read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/ItemCell;
    .locals 12
    .parameter "dis"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 264
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    iput v7, p0, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    .line 265
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    iput v7, p0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    .line 266
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    iput v7, p0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    .line 267
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    iput v7, p0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    .line 268
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/lx/launcher8/bean/ItemCell;->container:J

    .line 269
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    iput v7, p0, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    .line 270
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    iput v7, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    .line 271
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    .line 272
    const/4 v7, 0x4

    if-lt p2, v7, :cond_0

    .line 273
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    .line 274
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    iput v7, p0, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    .line 275
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    iput v7, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    .line 278
    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, intents:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 280
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 281
    .local v3, len:I
    const-string v7, "component="

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 282
    .local v6, start:I
    if-lez v6, :cond_2

    add-int/lit8 v7, v6, 0xa

    if-ge v7, v3, :cond_2

    .line 283
    const-string v7, ";"

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 284
    .local v1, end:I
    add-int/lit8 v7, v6, 0xa

    if-le v1, v7, :cond_2

    .line 285
    add-int/lit8 v7, v6, 0xa

    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, arr:[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v7, v0

    if-le v7, v11, :cond_2

    .line 287
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lx/launcher8/AnallApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 288
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lx/launcher8/AnallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 289
    .local v5, res:Landroid/content/res/Resources;
    const v7, 0x7f070015

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    aget-object v9, v0, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/lx/launcher8/bean/ItemCell;->isMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 290
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.DIAL"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    :cond_1
    aget-object v7, v0, v10

    aget-object v8, v0, v11

    invoke-direct {p0, v2, v4, v7, v8}, Lcom/lx/launcher8/bean/ItemCell;->checkIntent(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .end local v0           #arr:[Ljava/lang/String;
    .end local v1           #end:I
    .end local v3           #len:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #start:I
    :cond_2
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/bean/ItemCell;->setIntent(Ljava/lang/String;)V

    .line 298
    return-object p0
.end method

.method public bridge synthetic read(Ljava/io/DataInput;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/bean/ItemCell;->read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    return-object v0
.end method

.method protected readBitmap(Ljava/io/DataInput;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 403
    .local v3, len:I
    if-lez v3, :cond_0

    .line 404
    new-array v0, v3, [B

    .line 405
    .local v0, buffer:[B
    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 407
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 413
    .end local v0           #buffer:[B
    :goto_0
    return-object v2

    .line 409
    .restart local v0       #buffer:[B
    :catch_0
    move-exception v1

    .line 410
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "appCell save icon outOfMemory!!"

    invoke-static {v4}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;)V

    .line 413
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected saveBitmap(Ljava/io/DataOutput;Landroid/graphics/Bitmap;)V
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

    .line 388
    if-nez p2, :cond_0

    .line 389
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 399
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-static {p2}, Lcom/lx/launcher8/bean/ItemCell;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 392
    .local v0, buffer:[B
    if-nez v0, :cond_1

    .line 393
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0

    .line 395
    :cond_1
    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 396
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0
.end method

.method public setCellAlphaBg(I)V
    .locals 2
    .parameter "a"

    .prologue
    .line 148
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    and-int/lit16 v0, v0, -0x100

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    .line 149
    return-void
.end method

.method public setCellAlphaFg(I)V
    .locals 2
    .parameter "a"

    .prologue
    .line 159
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    const v1, -0xff01

    and-int/2addr v0, v1

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    .line 160
    return-void
.end method

.method public setFunction(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 182
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    const v1, -0xf0001

    and-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x10

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    .line 183
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 210
    iput p1, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    .line 211
    return-void
.end method

.method public setImgGravity(I)V
    .locals 2
    .parameter "gra"

    .prologue
    .line 190
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    and-int/lit8 v0, v0, -0x10

    and-int/lit8 v1, p1, 0xf

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    .line 191
    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setIntentParam(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 326
    const-string v0, "cell_cellType"

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lx/launcher8/AnallApp;->setParam(Ljava/lang/Object;)V

    .line 328
    return-void
.end method

.method public setSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 128
    shr-int/lit8 v0, p1, 0x10

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    .line 129
    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    .line 130
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 132
    iput p1, p0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    .line 133
    iput p2, p0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    .line 134
    return-void
.end method

.method public setTextAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 174
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    const v1, -0xff0001

    and-int/2addr v0, v1

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    .line 175
    return-void
.end method

.method public setTextDisplayType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 206
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    const v1, -0xf000001

    and-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x18

    const/high16 v2, 0xf00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    .line 207
    return-void
.end method

.method public setTextGarivty(I)V
    .locals 2
    .parameter "gra"

    .prologue
    .line 198
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    and-int/lit16 v0, v0, -0xf01

    shl-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xf00

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    .line 199
    return-void
.end method

.method public setValue(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 111
    iget-wide v0, p1, Lcom/lx/launcher8/bean/ItemCell;->id:J

    iput-wide v0, p0, Lcom/lx/launcher8/bean/ItemCell;->id:J

    .line 112
    iget v0, p1, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    .line 113
    iget v0, p1, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    .line 114
    iget v0, p1, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    .line 115
    iget v0, p1, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    .line 116
    iget v0, p1, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    .line 117
    iget-wide v0, p1, Lcom/lx/launcher8/bean/ItemCell;->container:J

    iput-wide v0, p0, Lcom/lx/launcher8/bean/ItemCell;->container:J

    .line 118
    iget v0, p1, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    .line 119
    iget v0, p1, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    .line 120
    iget v0, p1, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    .line 121
    iget v0, p1, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    iput v0, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    .line 122
    iget-object v0, p1, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    .line 123
    iget-object v0, p1, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    .line 124
    iget-object v0, p1, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ItemCell(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/lx/launcher8/bean/ItemCell;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 419
    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 420
    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 421
    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 422
    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 424
    const-string v1, " backColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 425
    const-string v1, " textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 426
    const-string v1, " cellAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 427
    const-string v1, " gravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 428
    const-string v1, " appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 429
    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 430
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 2
    .parameter "dos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 304
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 305
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 306
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 307
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 308
    iget-wide v0, p0, Lcom/lx/launcher8/bean/ItemCell;->container:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 309
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 310
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 311
    iget-object v0, p0, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 315
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 316
    iget v0, p0, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 317
    iget-object v0, p0, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 318
    const-string v0, ""

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method
