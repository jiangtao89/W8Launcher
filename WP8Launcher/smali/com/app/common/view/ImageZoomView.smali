.class public Lcom/app/common/view/ImageZoomView;
.super Landroid/view/View;
.source "ImageZoomView.java"


# instance fields
.field private mAdjustViewBounds:Z

.field private mAlpha:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field mGap:I

.field private mHaveFrame:Z

.field private mLevel:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMergeState:Z

.field private mOffsetX:F

.field private mOffsetY:F

.field private mResource:I

.field private mScale:F

.field private mSlop:I

.field private mState:[I

.field private mTouchLitener:Landroid/view/View$OnTouchListener;

.field private mUri:Landroid/net/Uri;

.field private mViewAlphaScale:I

.field private mXMove:I

.field private mYMove:I

.field private mstandardScale:F

.field oldX:I

.field oldY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const v0, 0x7fffffff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    iput v1, p0, Lcom/app/common/view/ImageZoomView;->mResource:I

    .line 46
    iput-boolean v1, p0, Lcom/app/common/view/ImageZoomView;->mHaveFrame:Z

    .line 47
    iput-boolean v1, p0, Lcom/app/common/view/ImageZoomView;->mAdjustViewBounds:Z

    .line 48
    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mMaxWidth:I

    .line 49
    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mMaxHeight:I

    .line 53
    const/16 v0, 0xff

    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mAlpha:I

    .line 54
    const/16 v0, 0x100

    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mViewAlphaScale:I

    .line 56
    iput-object v2, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    iput-object v2, p0, Lcom/app/common/view/ImageZoomView;->mState:[I

    .line 58
    iput-boolean v1, p0, Lcom/app/common/view/ImageZoomView;->mMergeState:Z

    .line 59
    iput v1, p0, Lcom/app/common/view/ImageZoomView;->mLevel:I

    .line 62
    iput-object v2, p0, Lcom/app/common/view/ImageZoomView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 73
    invoke-direct {p0}, Lcom/app/common/view/ImageZoomView;->initImageView()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/app/common/view/ImageZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v0, 0x7fffffff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput v1, p0, Lcom/app/common/view/ImageZoomView;->mResource:I

    .line 46
    iput-boolean v1, p0, Lcom/app/common/view/ImageZoomView;->mHaveFrame:Z

    .line 47
    iput-boolean v1, p0, Lcom/app/common/view/ImageZoomView;->mAdjustViewBounds:Z

    .line 48
    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mMaxWidth:I

    .line 49
    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mMaxHeight:I

    .line 53
    const/16 v0, 0xff

    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mAlpha:I

    .line 54
    const/16 v0, 0x100

    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mViewAlphaScale:I

    .line 56
    iput-object v2, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    iput-object v2, p0, Lcom/app/common/view/ImageZoomView;->mState:[I

    .line 58
    iput-boolean v1, p0, Lcom/app/common/view/ImageZoomView;->mMergeState:Z

    .line 59
    iput v1, p0, Lcom/app/common/view/ImageZoomView;->mLevel:I

    .line 62
    iput-object v2, p0, Lcom/app/common/view/ImageZoomView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 82
    invoke-direct {p0}, Lcom/app/common/view/ImageZoomView;->initImageView()V

    .line 83
    return-void
.end method

.method private applyColorMod()V
    .locals 3

    .prologue
    .line 726
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/app/common/view/ImageZoomView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 728
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/app/common/view/ImageZoomView;->mAlpha:I

    iget v2, p0, Lcom/app/common/view/ImageZoomView;->mViewAlphaScale:I

    mul-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 730
    :cond_0
    return-void
.end method

.method private configureBounds()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f00

    const/4 v9, 0x0

    .line 538
    iget-object v6, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/app/common/view/ImageZoomView;->mHaveFrame:Z

    if-nez v6, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget v1, p0, Lcom/app/common/view/ImageZoomView;->mDrawableWidth:I

    .line 542
    .local v1, dwidth:I
    iget v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawableHeight:I

    .line 544
    .local v0, dheight:I
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getPaddingRight()I

    move-result v7

    sub-int v5, v6, v7

    .line 545
    .local v5, vwidth:I
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getPaddingBottom()I

    move-result v7

    sub-int v4, v6, v7

    .line 547
    .local v4, vheight:I
    if-lez v1, :cond_2

    if-gtz v0, :cond_3

    .line 552
    :cond_2
    iget-object v6, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v9, v9, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 553
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/app/common/view/ImageZoomView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 557
    :cond_3
    iget-object v6, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v9, v9, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 558
    iget-object v6, p0, Lcom/app/common/view/ImageZoomView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v6, p0, Lcom/app/common/view/ImageZoomView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 561
    if-gt v1, v5, :cond_4

    if-gt v0, v4, :cond_4

    .line 562
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/app/common/view/ImageZoomView;->mstandardScale:F

    .line 567
    :goto_1
    int-to-float v6, v5

    int-to-float v7, v1

    iget v8, p0, Lcom/app/common/view/ImageZoomView;->mstandardScale:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float v2, v6, v10

    .line 568
    .local v2, dx:F
    int-to-float v6, v4

    int-to-float v7, v0

    iget v8, p0, Lcom/app/common/view/ImageZoomView;->mstandardScale:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float v3, v6, v10

    .line 570
    .local v3, dy:F
    iput v9, p0, Lcom/app/common/view/ImageZoomView;->mXMove:I

    .line 571
    iput v9, p0, Lcom/app/common/view/ImageZoomView;->mYMove:I

    .line 572
    iget-object v6, p0, Lcom/app/common/view/ImageZoomView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v7, p0, Lcom/app/common/view/ImageZoomView;->mstandardScale:F

    iget v8, p0, Lcom/app/common/view/ImageZoomView;->mstandardScale:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 573
    iget-object v6, p0, Lcom/app/common/view/ImageZoomView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 564
    .end local v2           #dx:F
    .end local v3           #dy:F
    :cond_4
    int-to-float v6, v5

    int-to-float v7, v1

    div-float/2addr v6, v7

    int-to-float v7, v4

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/app/common/view/ImageZoomView;->mstandardScale:F

    goto :goto_1
.end method

.method private initImageView()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/app/common/view/ImageZoomView;->mMatrix:Landroid/graphics/Matrix;

    .line 87
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mSlop:I

    .line 88
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mstandardScale:F

    .line 89
    return-void
.end method

.method private resizeFromDrawable()V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 388
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 389
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 390
    .local v2, w:I
    if-gez v2, :cond_0

    .line 391
    iget v2, p0, Lcom/app/common/view/ImageZoomView;->mDrawableWidth:I

    .line 392
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 393
    .local v1, h:I
    if-gez v1, :cond_1

    .line 394
    iget v1, p0, Lcom/app/common/view/ImageZoomView;->mDrawableHeight:I

    .line 395
    :cond_1
    iget v3, p0, Lcom/app/common/view/ImageZoomView;->mDrawableWidth:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/app/common/view/ImageZoomView;->mDrawableHeight:I

    if-eq v1, v3, :cond_3

    .line 396
    :cond_2
    iput v2, p0, Lcom/app/common/view/ImageZoomView;->mDrawableWidth:I

    .line 397
    iput v1, p0, Lcom/app/common/view/ImageZoomView;->mDrawableHeight:I

    .line 398
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->requestLayout()V

    .line 401
    .end local v1           #h:I
    .end local v2           #w:I
    :cond_3
    return-void
.end method

.method private resolveAdjustedSize(III)I
    .locals 4
    .parameter "desiredSize"
    .parameter "maxSize"
    .parameter "measureSpec"

    .prologue
    .line 512
    move v0, p1

    .line 513
    .local v0, result:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 514
    .local v1, specMode:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 515
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 534
    :goto_0
    return v0

    .line 521
    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 522
    goto :goto_0

    .line 527
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 528
    goto :goto_0

    .line 531
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 515
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private resolveUri()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 314
    iget-object v3, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 319
    .local v2, rsrc:Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 325
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/app/common/view/ImageZoomView;->mResource:I

    if-eqz v3, :cond_3

    .line 327
    :try_start_0
    iget v3, p0, Lcom/app/common/view/ImageZoomView;->mResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 353
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/app/common/view/ImageZoomView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to find resource: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/app/common/view/ImageZoomView;->mResource:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    iput-object v6, p0, Lcom/app/common/view/ImageZoomView;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 333
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v3, p0, Lcom/app/common/view/ImageZoomView;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 334
    const-string v3, "content"

    iget-object v4, p0, Lcom/app/common/view/ImageZoomView;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 336
    :try_start_1
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/app/common/view/ImageZoomView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 344
    :goto_2
    if-nez v0, :cond_2

    .line 345
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "resolveUri failed on bad bitmap uri: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/app/common/view/ImageZoomView;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    iput-object v6, p0, Lcom/app/common/view/ImageZoomView;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 337
    :catch_1
    move-exception v1

    .line 338
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v3, "ImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to open content: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/app/common/view/ImageZoomView;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 341
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v3, p0, Lcom/app/common/view/ImageZoomView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 370
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/app/common/view/ImageZoomView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    :cond_0
    iput-object p1, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 373
    if-eqz p1, :cond_2

    .line 374
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 375
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 378
    :cond_1
    iget v0, p0, Lcom/app/common/view/ImageZoomView;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 379
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawableWidth:I

    .line 380
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawableHeight:I

    .line 381
    invoke-direct {p0}, Lcom/app/common/view/ImageZoomView;->applyColorMod()V

    .line 382
    invoke-direct {p0}, Lcom/app/common/view/ImageZoomView;->configureBounds()V

    .line 384
    :cond_2
    return-void
.end method


# virtual methods
.method canMove(I)Z
    .locals 6
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 792
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 802
    :cond_0
    :goto_0
    return v0

    .line 794
    :pswitch_0
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/app/common/view/ImageZoomView;->mDrawableWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/app/common/view/ImageZoomView;->mOffsetX:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/app/common/view/ImageZoomView;->mXMove:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 796
    :pswitch_1
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/app/common/view/ImageZoomView;->mDrawableHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/app/common/view/ImageZoomView;->mOffsetY:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/app/common/view/ImageZoomView;->mYMove:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 798
    :pswitch_2
    iget v2, p0, Lcom/app/common/view/ImageZoomView;->mXMove:I

    int-to-float v2, v2

    iget v3, p0, Lcom/app/common/view/ImageZoomView;->mOffsetX:F

    add-float/2addr v2, v3

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 800
    :pswitch_3
    iget v2, p0, Lcom/app/common/view/ImageZoomView;->mYMove:I

    int-to-float v2, v2

    iget v3, p0, Lcom/app/common/view/ImageZoomView;->mOffsetY:F

    add-float/2addr v2, v3

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 792
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final clearColorFilter()V
    .locals 1

    .prologue
    .line 699
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/app/common/view/ImageZoomView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 700
    return-void
.end method

.method computeOffset(Z)V
    .locals 10
    .parameter "reset"

    .prologue
    const/high16 v9, 0x3f00

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 578
    iget v1, p0, Lcom/app/common/view/ImageZoomView;->mDrawableWidth:I

    .line 579
    .local v1, dwidth:I
    iget v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawableHeight:I

    .line 581
    .local v0, dheight:I
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 582
    .local v3, vwidth:I
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getPaddingBottom()I

    move-result v5

    sub-int v2, v4, v5

    .line 584
    .local v2, vheight:I
    int-to-float v4, v3

    int-to-float v5, v1

    iget v6, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v4, v9

    iput v4, p0, Lcom/app/common/view/ImageZoomView;->mOffsetX:F

    .line 585
    int-to-float v4, v2

    int-to-float v5, v0

    iget v6, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v4, v9

    iput v4, p0, Lcom/app/common/view/ImageZoomView;->mOffsetY:F

    .line 587
    if-nez p1, :cond_8

    .line 588
    iget v4, p0, Lcom/app/common/view/ImageZoomView;->mOffsetX:F

    iget v5, p0, Lcom/app/common/view/ImageZoomView;->mXMove:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v7

    if-lez v4, :cond_0

    .line 589
    iget v4, p0, Lcom/app/common/view/ImageZoomView;->mOffsetX:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_4

    .line 590
    iput v8, p0, Lcom/app/common/view/ImageZoomView;->mXMove:I

    .line 594
    :cond_0
    :goto_0
    iget v4, p0, Lcom/app/common/view/ImageZoomView;->mOffsetX:F

    iget v5, p0, Lcom/app/common/view/ImageZoomView;->mXMove:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/app/common/view/ImageZoomView;->mDrawableWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 595
    iget v4, p0, Lcom/app/common/view/ImageZoomView;->mOffsetX:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_5

    .line 596
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/app/common/view/ImageZoomView;->mDrawableWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/app/common/view/ImageZoomView;->mOffsetX:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/app/common/view/ImageZoomView;->mXMove:I

    .line 601
    :cond_1
    :goto_1
    iget v4, p0, Lcom/app/common/view/ImageZoomView;->mOffsetY:F

    iget v5, p0, Lcom/app/common/view/ImageZoomView;->mYMove:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v7

    if-lez v4, :cond_2

    .line 602
    iget v4, p0, Lcom/app/common/view/ImageZoomView;->mOffsetY:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_6

    iput v8, p0, Lcom/app/common/view/ImageZoomView;->mYMove:I

    .line 606
    :cond_2
    :goto_2
    iget v4, p0, Lcom/app/common/view/ImageZoomView;->mOffsetY:F

    iget v5, p0, Lcom/app/common/view/ImageZoomView;->mYMove:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/app/common/view/ImageZoomView;->mDrawableHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 607
    iget v4, p0, Lcom/app/common/view/ImageZoomView;->mOffsetY:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_7

    .line 608
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/app/common/view/ImageZoomView;->mDrawableHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/app/common/view/ImageZoomView;->mOffsetY:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/app/common/view/ImageZoomView;->mYMove:I

    .line 616
    :cond_3
    :goto_3
    return-void

    .line 592
    :cond_4
    iget v4, p0, Lcom/app/common/view/ImageZoomView;->mOffsetX:F

    neg-float v4, v4

    float-to-int v4, v4

    iput v4, p0, Lcom/app/common/view/ImageZoomView;->mXMove:I

    goto :goto_0

    .line 598
    :cond_5
    iput v8, p0, Lcom/app/common/view/ImageZoomView;->mXMove:I

    goto :goto_1

    .line 604
    :cond_6
    iget v4, p0, Lcom/app/common/view/ImageZoomView;->mOffsetY:F

    neg-float v4, v4

    float-to-int v4, v4

    iput v4, p0, Lcom/app/common/view/ImageZoomView;->mYMove:I

    goto :goto_2

    .line 610
    :cond_7
    iput v8, p0, Lcom/app/common/view/ImageZoomView;->mYMove:I

    goto :goto_3

    .line 613
    :cond_8
    iput v8, p0, Lcom/app/common/view/ImageZoomView;->mXMove:I

    .line 614
    iput v8, p0, Lcom/app/common/view/ImageZoomView;->mYMove:I

    goto :goto_3
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 649
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 650
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 651
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 654
    :cond_0
    return-void
.end method

.method gestureEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 809
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_0

    .line 839
    :goto_0
    return v7

    .line 811
    :cond_0
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 812
    .local v1, id:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v3, v7

    .line 813
    .local v3, x1:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v5, v7

    .line 814
    .local v5, y1:I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 815
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v4, v7

    .line 816
    .local v4, x2:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v6, v7

    .line 817
    .local v6, y2:I
    sub-int v7, v4, v3

    int-to-double v9, v7

    sub-int v7, v6, v5

    int-to-double v11, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-int v0, v9

    .line 818
    .local v0, gap:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    :goto_1
    :sswitch_0
    move v7, v8

    .line 839
    goto :goto_0

    .line 821
    :sswitch_1
    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mGap:I

    goto :goto_1

    .line 828
    :sswitch_2
    iget v7, p0, Lcom/app/common/view/ImageZoomView;->mGap:I

    sub-int v2, v0, v7

    .line 829
    .local v2, tmep:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v9, p0, Lcom/app/common/view/ImageZoomView;->mSlop:I

    if-le v7, v9, :cond_1

    .line 830
    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mGap:I

    .line 831
    if-lez v2, :cond_2

    .line 832
    const v7, 0x3f8ccccd

    invoke-virtual {p0, v7}, Lcom/app/common/view/ImageZoomView;->setScale(F)V

    goto :goto_1

    .line 834
    :cond_2
    const v7, 0x3f666666

    invoke-virtual {p0, v7}, Lcom/app/common/view/ImageZoomView;->setScale(F)V

    goto :goto_1

    .line 818
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
        0x105 -> :sswitch_1
        0x106 -> :sswitch_0
    .end sparse-switch
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "dr"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->invalidate()V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public isNormal()Z
    .locals 3

    .prologue
    .line 644
    iget v0, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    const v1, 0x3dcccccd

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    iget v1, p0, Lcom/app/common/view/ImageZoomView;->mstandardScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    iget v1, p0, Lcom/app/common/view/ImageZoomView;->mstandardScale:F

    const v2, 0x3db851ec

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public nomalSize()V
    .locals 4

    .prologue
    .line 637
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    .line 638
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/app/common/view/ImageZoomView;->computeOffset(Z)V

    .line 639
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    iget v2, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 640
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/app/common/view/ImageZoomView;->mOffsetX:F

    iget v2, p0, Lcom/app/common/view/ImageZoomView;->mXMove:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/app/common/view/ImageZoomView;->mOffsetY:F

    iget v3, p0, Lcom/app/common/view/ImageZoomView;->mYMove:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 641
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mState:[I

    if-nez v0, :cond_0

    .line 359
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    .line 360
    :cond_0
    iget-boolean v0, p0, Lcom/app/common/view/ImageZoomView;->mMergeState:Z

    if-nez v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mState:[I

    goto :goto_0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mState:[I

    array-length v0, v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/app/common/view/ImageZoomView;->mState:[I

    invoke-static {v0, v1}, Lcom/app/common/view/ImageZoomView;->mergeDrawableStates([I[I)[I

    move-result-object v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 658
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 660
    iget-object v1, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    iget v1, p0, Lcom/app/common/view/ImageZoomView;->mDrawableWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/app/common/view/ImageZoomView;->mDrawableHeight:I

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/app/common/view/ImageZoomView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getPaddingTop()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getPaddingLeft()I

    move-result v1

    if-nez v1, :cond_2

    .line 669
    iget-object v1, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 671
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 672
    .local v0, saveCount:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 673
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 675
    iget-object v1, p0, Lcom/app/common/view/ImageZoomView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_3

    .line 676
    iget-object v1, p0, Lcom/app/common/view/ImageZoomView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 678
    :cond_3
    iget-object v1, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 679
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 734
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 735
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/common/view/ImageZoomView;->mHaveFrame:Z

    .line 736
    invoke-direct {p0}, Lcom/app/common/view/ImageZoomView;->configureBounds()V

    .line 737
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 405
    invoke-direct/range {p0 .. p0}, Lcom/app/common/view/ImageZoomView;->resolveUri()V

    .line 410
    const/4 v5, 0x0

    .line 413
    .local v5, desiredAspect:F
    const/16 v17, 0x0

    .line 416
    .local v17, resizeWidth:Z
    const/16 v16, 0x0

    .line 418
    .local v16, resizeHeight:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 420
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/app/common/view/ImageZoomView;->mDrawableWidth:I

    .line 421
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/app/common/view/ImageZoomView;->mDrawableHeight:I

    .line 422
    const/4 v7, 0x0

    .local v7, h:I
    move/from16 v18, v7

    .line 445
    .local v18, w:I
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/app/common/view/ImageZoomView;->getPaddingLeft()I

    move-result v13

    .line 446
    .local v13, pleft:I
    invoke-virtual/range {p0 .. p0}, Lcom/app/common/view/ImageZoomView;->getPaddingRight()I

    move-result v14

    .line 447
    .local v14, pright:I
    invoke-virtual/range {p0 .. p0}, Lcom/app/common/view/ImageZoomView;->getPaddingTop()I

    move-result v15

    .line 448
    .local v15, ptop:I
    invoke-virtual/range {p0 .. p0}, Lcom/app/common/view/ImageZoomView;->getPaddingBottom()I

    move-result v12

    .line 453
    .local v12, pbottom:I
    if-nez v17, :cond_1

    if-eqz v16, :cond_9

    .line 461
    :cond_1
    add-int v21, v18, v13

    add-int v21, v21, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/app/common/view/ImageZoomView;->mMaxWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/app/common/view/ImageZoomView;->resolveAdjustedSize(III)I

    move-result v19

    .line 464
    .local v19, widthSize:I
    add-int v21, v7, v15

    add-int v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/app/common/view/ImageZoomView;->mMaxHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/app/common/view/ImageZoomView;->resolveAdjustedSize(III)I

    move-result v8

    .line 466
    .local v8, heightSize:I
    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-eqz v21, :cond_3

    .line 468
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-int v22, v8, v15

    sub-int v22, v22, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v4, v21, v22

    .line 470
    .local v4, actualAspect:F
    sub-float v21, v4, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x3e7ad7f29abcaf48L

    cmpl-double v21, v21, v23

    if-lez v21, :cond_3

    .line 472
    const/4 v6, 0x0

    .line 475
    .local v6, done:Z
    if-eqz v17, :cond_2

    .line 476
    sub-int v21, v8, v15

    sub-int v21, v21, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v13

    add-int v11, v21, v14

    .line 477
    .local v11, newWidth:I
    move/from16 v0, v19

    if-gt v11, v0, :cond_2

    .line 478
    move/from16 v19, v11

    .line 479
    const/4 v6, 0x1

    .line 484
    .end local v11           #newWidth:I
    :cond_2
    if-nez v6, :cond_3

    if-eqz v16, :cond_3

    .line 485
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v15

    add-int v10, v21, v12

    .line 486
    .local v10, newHeight:I
    if-gt v10, v8, :cond_3

    .line 487
    move v8, v10

    .line 508
    .end local v4           #actualAspect:F
    .end local v6           #done:Z
    .end local v10           #newHeight:I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/app/common/view/ImageZoomView;->setMeasuredDimension(II)V

    .line 509
    return-void

    .line 424
    .end local v7           #h:I
    .end local v8           #heightSize:I
    .end local v12           #pbottom:I
    .end local v13           #pleft:I
    .end local v14           #pright:I
    .end local v15           #ptop:I
    .end local v18           #w:I
    .end local v19           #widthSize:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/app/common/view/ImageZoomView;->mDrawableWidth:I

    move/from16 v18, v0

    .line 425
    .restart local v18       #w:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/app/common/view/ImageZoomView;->mDrawableHeight:I

    .line 426
    .restart local v7       #h:I
    if-gtz v18, :cond_5

    .line 427
    const/16 v18, 0x1

    .line 428
    :cond_5
    if-gtz v7, :cond_6

    .line 429
    const/4 v7, 0x1

    .line 433
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/app/common/view/ImageZoomView;->mAdjustViewBounds:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 435
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 436
    .local v20, widthSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 438
    .local v9, heightSpecMode:I
    const/high16 v21, 0x4000

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    const/16 v17, 0x1

    .line 439
    :goto_2
    const/high16 v21, 0x4000

    move/from16 v0, v21

    if-eq v9, v0, :cond_8

    const/16 v16, 0x1

    .line 441
    :goto_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v7

    move/from16 v22, v0

    div-float v5, v21, v22

    goto/16 :goto_0

    .line 438
    :cond_7
    const/16 v17, 0x0

    goto :goto_2

    .line 439
    :cond_8
    const/16 v16, 0x0

    goto :goto_3

    .line 498
    .end local v9           #heightSpecMode:I
    .end local v20           #widthSpecMode:I
    .restart local v12       #pbottom:I
    .restart local v13       #pleft:I
    .restart local v14       #pright:I
    .restart local v15       #ptop:I
    :cond_9
    add-int v21, v13, v14

    add-int v18, v18, v21

    .line 499
    add-int v21, v15, v12

    add-int v7, v7, v21

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/app/common/view/ImageZoomView;->getSuggestedMinimumWidth()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/app/common/view/ImageZoomView;->getSuggestedMinimumHeight()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 504
    move/from16 v0, v18

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/app/common/view/ImageZoomView;->resolveSize(II)I

    move-result v19

    .line 505
    .restart local v19       #widthSize:I
    move/from16 v0, p2

    invoke-static {v7, v0}, Lcom/app/common/view/ImageZoomView;->resolveSize(II)I

    move-result v8

    .restart local v8       #heightSize:I
    goto :goto_1
.end method

.method protected onSetAlpha(I)Z
    .locals 2
    .parameter "alpha"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 116
    shr-int/lit8 v1, p1, 0x7

    add-int v0, p1, v1

    .line 117
    .local v0, scale:I
    iget v1, p0, Lcom/app/common/view/ImageZoomView;->mViewAlphaScale:I

    if-eq v1, v0, :cond_0

    .line 118
    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mViewAlphaScale:I

    .line 119
    invoke-direct {p0}, Lcom/app/common/view/ImageZoomView;->applyColorMod()V

    .line 121
    :cond_0
    const/4 v1, 0x1

    .line 123
    .end local v0           #scale:I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 747
    invoke-virtual {p0, p1}, Lcom/app/common/view/ImageZoomView;->gestureEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 748
    .local v4, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 749
    .local v0, action:I
    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->isNormal()Z

    move-result v7

    if-nez v7, :cond_0

    .line 750
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v2, v7

    .line 751
    .local v2, newX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v3, v7

    .line 752
    .local v3, newY:I
    packed-switch v0, :pswitch_data_0

    .line 782
    .end local v2           #newX:I
    .end local v3           #newY:I
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v4, :cond_2

    iget-object v7, p0, Lcom/app/common/view/ImageZoomView;->mTouchLitener:Landroid/view/View$OnTouchListener;

    if-eqz v7, :cond_2

    .line 783
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->isNormal()Z

    move-result v7

    if-nez v7, :cond_1

    if-eq v0, v8, :cond_2

    .line 784
    :cond_1
    iget-object v7, p0, Lcom/app/common/view/ImageZoomView;->mTouchLitener:Landroid/view/View$OnTouchListener;

    invoke-interface {v7, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 786
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v4, v7

    .line 787
    return v9

    .line 754
    .restart local v2       #newX:I
    .restart local v3       #newY:I
    :pswitch_1
    iput v2, p0, Lcom/app/common/view/ImageZoomView;->oldX:I

    .line 755
    iput v3, p0, Lcom/app/common/view/ImageZoomView;->oldY:I

    goto :goto_0

    .line 758
    :pswitch_2
    const/4 v1, 0x0

    .line 759
    .local v1, fresh:Z
    iget v7, p0, Lcom/app/common/view/ImageZoomView;->oldX:I

    sub-int v5, v2, v7

    .line 760
    .local v5, tmpX:I
    iget v7, p0, Lcom/app/common/view/ImageZoomView;->oldY:I

    sub-int v6, v3, v7

    .line 761
    .local v6, tmpY:I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-le v7, v10, :cond_5

    .line 762
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v10, p0, Lcom/app/common/view/ImageZoomView;->mSlop:I

    if-le v7, v10, :cond_3

    if-lez v5, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {p0, v7}, Lcom/app/common/view/ImageZoomView;->canMove(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 763
    iget v7, p0, Lcom/app/common/view/ImageZoomView;->mXMove:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/app/common/view/ImageZoomView;->mXMove:I

    .line 764
    iput v2, p0, Lcom/app/common/view/ImageZoomView;->oldX:I

    .line 765
    iput v3, p0, Lcom/app/common/view/ImageZoomView;->oldY:I

    .line 766
    const/4 v1, 0x1

    .line 776
    :cond_3
    :goto_2
    or-int/2addr v4, v1

    .line 777
    if-eqz v1, :cond_0

    .line 778
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/app/common/view/ImageZoomView;->setScale(F)V

    goto :goto_0

    .line 762
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 769
    :cond_5
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v10, p0, Lcom/app/common/view/ImageZoomView;->mSlop:I

    if-le v7, v10, :cond_3

    if-lez v6, :cond_6

    const/4 v7, 0x3

    :goto_3
    invoke-virtual {p0, v7}, Lcom/app/common/view/ImageZoomView;->canMove(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 770
    iget v7, p0, Lcom/app/common/view/ImageZoomView;->mYMove:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/app/common/view/ImageZoomView;->mYMove:I

    .line 771
    iput v2, p0, Lcom/app/common/view/ImageZoomView;->oldX:I

    .line 772
    iput v3, p0, Lcom/app/common/view/ImageZoomView;->oldY:I

    .line 773
    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    move v7, v9

    .line 769
    goto :goto_3

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 633
    const v0, 0x38d1b717

    invoke-virtual {p0, v0}, Lcom/app/common/view/ImageZoomView;->setScale(F)V

    .line 634
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 0
    .parameter "adjustViewBounds"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/app/common/view/ImageZoomView;->mAdjustViewBounds:Z

    .line 138
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 717
    and-int/lit16 p1, p1, 0xff

    .line 718
    iget v0, p0, Lcom/app/common/view/ImageZoomView;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 719
    iput p1, p0, Lcom/app/common/view/ImageZoomView;->mAlpha:I

    .line 720
    invoke-direct {p0}, Lcom/app/common/view/ImageZoomView;->applyColorMod()V

    .line 721
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->invalidate()V

    .line 723
    :cond_0
    return-void
.end method

.method public final setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 695
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/app/common/view/ImageZoomView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 696
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 710
    iput-object p1, p0, Lcom/app/common/view/ImageZoomView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 711
    invoke-direct {p0}, Lcom/app/common/view/ImageZoomView;->applyColorMod()V

    .line 712
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->invalidate()V

    .line 714
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 256
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/app/common/view/ImageZoomView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mResource:I

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/common/view/ImageZoomView;->mUri:Landroid/net/Uri;

    .line 241
    invoke-direct {p0, p1}, Lcom/app/common/view/ImageZoomView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->requestLayout()V

    .line 243
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->invalidate()V

    .line 245
    :cond_0
    return-void
.end method

.method public setImageLevel(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 282
    iput p1, p0, Lcom/app/common/view/ImageZoomView;->mLevel:I

    .line 283
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 285
    invoke-direct {p0}, Lcom/app/common/view/ImageZoomView;->resizeFromDrawable()V

    .line 287
    :cond_0
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter "matrix"

    .prologue
    .line 301
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const/4 p1, 0x0

    .line 306
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 308
    invoke-direct {p0}, Lcom/app/common/view/ImageZoomView;->configureBounds()V

    .line 309
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->invalidate()V

    .line 311
    :cond_3
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/app/common/view/ImageZoomView;->mResource:I

    if-eq v0, p1, :cond_1

    .line 205
    :cond_0
    invoke-direct {p0, v1}, Lcom/app/common/view/ImageZoomView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iput p1, p0, Lcom/app/common/view/ImageZoomView;->mResource:I

    .line 207
    iput-object v1, p0, Lcom/app/common/view/ImageZoomView;->mUri:Landroid/net/Uri;

    .line 208
    invoke-direct {p0}, Lcom/app/common/view/ImageZoomView;->resolveUri()V

    .line 209
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->requestLayout()V

    .line 210
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->invalidate()V

    .line 212
    :cond_1
    return-void
.end method

.method public setImageState([IZ)V
    .locals 1
    .parameter "state"
    .parameter "merge"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/app/common/view/ImageZoomView;->mState:[I

    .line 261
    iput-boolean p2, p0, Lcom/app/common/view/ImageZoomView;->mMergeState:Z

    .line 262
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->refreshDrawableState()V

    .line 264
    invoke-direct {p0}, Lcom/app/common/view/ImageZoomView;->resizeFromDrawable()V

    .line 266
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 221
    iget v0, p0, Lcom/app/common/view/ImageZoomView;->mResource:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/app/common/view/ImageZoomView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/app/common/view/ImageZoomView;->mResource:I

    .line 224
    iput-object p1, p0, Lcom/app/common/view/ImageZoomView;->mUri:Landroid/net/Uri;

    .line 225
    invoke-direct {p0}, Lcom/app/common/view/ImageZoomView;->resolveUri()V

    .line 226
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->requestLayout()V

    .line 227
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->invalidate()V

    .line 229
    :cond_1
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .parameter "maxHeight"

    .prologue
    .line 185
    iput p1, p0, Lcom/app/common/view/ImageZoomView;->mMaxHeight:I

    .line 186
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .parameter "maxWidth"

    .prologue
    .line 161
    iput p1, p0, Lcom/app/common/view/ImageZoomView;->mMaxWidth:I

    .line 162
    return-void
.end method

.method setScale(F)V
    .locals 5
    .parameter "scale"

    .prologue
    const/4 v3, 0x0

    .line 619
    cmpl-float v1, p1, v3

    if-eqz v1, :cond_0

    .line 620
    iget v1, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/app/common/view/ImageZoomView;->mstandardScale:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    .line 622
    :cond_0
    const/high16 v1, 0x3f80

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    const/4 v0, 0x1

    .line 623
    .local v0, reset:Z
    :goto_0
    cmpl-float v1, p1, v3

    if-nez v1, :cond_1

    .line 624
    const/4 v0, 0x0

    .line 625
    :cond_1
    invoke-virtual {p0, v0}, Lcom/app/common/view/ImageZoomView;->computeOffset(Z)V

    .line 626
    iget-object v1, p0, Lcom/app/common/view/ImageZoomView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    iget v3, p0, Lcom/app/common/view/ImageZoomView;->mScale:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 627
    iget-object v1, p0, Lcom/app/common/view/ImageZoomView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/app/common/view/ImageZoomView;->mOffsetX:F

    iget v3, p0, Lcom/app/common/view/ImageZoomView;->mXMove:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/app/common/view/ImageZoomView;->mOffsetY:F

    iget v4, p0, Lcom/app/common/view/ImageZoomView;->mYMove:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 629
    invoke-virtual {p0}, Lcom/app/common/view/ImageZoomView;->postInvalidate()V

    .line 630
    return-void

    .line 622
    .end local v0           #reset:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 271
    invoke-direct {p0}, Lcom/app/common/view/ImageZoomView;->resizeFromDrawable()V

    .line 272
    return-void
.end method

.method public setTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/app/common/view/ImageZoomView;->mTouchLitener:Landroid/view/View$OnTouchListener;

    .line 743
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/app/common/view/ImageZoomView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
