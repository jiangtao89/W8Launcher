.class public Lcom/lx/launcher8/view/GalleryCellView;
.super Lcom/lx/launcher8/view/CellView;
.source "GalleryCellView.java"

# interfaces
.implements Lcom/lx/launcher8/view/DynamicCell;


# static fields
.field static final SCROLL_DETAL:F = 0.3f


# instance fields
.field filePath:Ljava/lang/String;

.field private isRunning:Z

.field mAnimaListener:Landroid/view/animation/Animation$AnimationListener;

.field private mAnimaRunnable:Ljava/lang/Runnable;

.field private mAnimaViews:[Landroid/widget/ImageView;

.field private mInAnima:Landroid/view/animation/Animation;

.field private mOutAnima:Landroid/view/animation/Animation;

.field private mShowCount:I

.field private mShowIndex:I

.field private mShowTotall:I

.field private mSmoothAnima:Landroid/view/animation/Animation;

.field private mSmoothEnd:Landroid/view/animation/Animation;

.field private mSmoothStart:Landroid/view/animation/Animation;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/CellView;-><init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->filePath:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowIndex:I

    .line 25
    const/4 v0, 0x4

    iput v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowCount:I

    .line 26
    iput v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowTotall:I

    .line 227
    new-instance v0, Lcom/lx/launcher8/view/GalleryCellView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/GalleryCellView$1;-><init>(Lcom/lx/launcher8/view/GalleryCellView;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaListener:Landroid/view/animation/Animation$AnimationListener;

    .line 341
    new-instance v0, Lcom/lx/launcher8/view/GalleryCellView$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/GalleryCellView$2;-><init>(Lcom/lx/launcher8/view/GalleryCellView;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaRunnable:Ljava/lang/Runnable;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/view/GalleryCellView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mSmoothStart:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/view/GalleryCellView;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowIndex:I

    return v0
.end method

.method static synthetic access$10(Lcom/lx/launcher8/view/GalleryCellView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lx/launcher8/view/GalleryCellView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowCount:I

    return-void
.end method

.method static synthetic access$12(Lcom/lx/launcher8/view/GalleryCellView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/lx/launcher8/view/GalleryCellView;->isRunning:Z

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/view/GalleryCellView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/GalleryCellView;->nextFrame(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/lx/launcher8/view/GalleryCellView;)[Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/view/GalleryCellView;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/view/GalleryCellView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mSmoothEnd:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/view/GalleryCellView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mSmoothAnima:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/view/GalleryCellView;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/lx/launcher8/view/GalleryCellView;->ensureIndexBounds()V

    return-void
.end method

.method static synthetic access$8(Lcom/lx/launcher8/view/GalleryCellView;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/lx/launcher8/view/GalleryCellView;->moveToNext()V

    return-void
.end method

.method static synthetic access$9(Lcom/lx/launcher8/view/GalleryCellView;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->isRunning:Z

    return v0
.end method

.method private computeDetal(II)I
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 180
    const/high16 v0, 0x3f40

    int-to-float v1, p1

    mul-float/2addr v0, v1

    int-to-float v1, p2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 181
    :goto_0
    return v0

    :cond_0
    div-int/lit8 v0, p1, 0x2

    goto :goto_0
.end method

.method private createViewFromSize(I)V
    .locals 9
    .parameter "spanX"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/lx/launcher8/view/GalleryCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, context:Landroid/content/Context;
    if-ne p1, v6, :cond_1

    .line 57
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/view/GalleryCellView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 59
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 60
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 61
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 64
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 66
    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/view/GalleryCellView;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v3, Lcom/lx/launcher8/bean/DynCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/lx/launcher8/view/GalleryCellView;->setImageParams(Landroid/widget/ImageView;)V

    .line 93
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    if-nez v3, :cond_2

    .line 70
    new-array v3, v7, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    .line 71
    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mImageView:Landroid/widget/ImageView;

    .line 72
    .local v2, view:Landroid/widget/ImageView;
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 73
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    invoke-direct {p0, v6}, Lcom/lx/launcher8/view/GalleryCellView;->getDefaultRes(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aput-object v2, v3, v5

    .line 77
    new-instance v2, Landroid/widget/ImageView;

    .end local v2           #view:Landroid/widget/ImageView;
    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78
    .restart local v2       #view:Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aput-object v2, v3, v6

    .line 80
    invoke-direct {p0, v7}, Lcom/lx/launcher8/view/GalleryCellView;->getDefaultRes(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v6, v3}, Lcom/lx/launcher8/view/GalleryCellView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    .end local v2           #view:Landroid/widget/ImageView;
    :goto_1
    iput v5, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowIndex:I

    goto :goto_0

    .line 84
    :cond_2
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .restart local v1       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 88
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 89
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    invoke-direct {p0, v6}, Lcom/lx/launcher8/view/GalleryCellView;->getDefaultRes(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private ensureIndexBounds()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 221
    iget v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowTotall:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowIndex:I

    iget v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowTotall:I

    if-lt v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowIndex:I

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowIndex:I

    goto :goto_0
.end method

.method private ensurePath()V
    .locals 2

    .prologue
    .line 325
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/GalleryCellView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/util/DynTileManager;->initGalleryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->filePath:Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->filePath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lx/launcher8/util/DynTileManager;->initItemImgCount(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowTotall:I

    .line 330
    return-void
.end method

.method private getDefaultRes(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 334
    const-string v0, "g_pic_0"

    .line 335
    .local v0, prefix:Ljava/lang/String;
    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v1, v1, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 336
    const-string v0, "g_pic_1"

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/GalleryCellView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private initAnima(ZII)V
    .locals 12
    .parameter "changed"
    .parameter "w"
    .parameter "h"

    .prologue
    const-wide/16 v10, 0x1f4

    const-wide/16 v8, 0xbb8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 107
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v3, v3, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    if-ne v3, v7, :cond_1

    .line 135
    :cond_0
    return-void

    .line 110
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/lx/launcher8/view/GalleryCellView;->computeDetal(II)I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 111
    .local v0, detal:I
    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mSmoothAnima:Landroid/view/animation/Animation;

    if-nez v3, :cond_3

    .line 112
    :cond_2
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v0

    neg-int v5, v0

    int-to-float v5, v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mSmoothAnima:Landroid/view/animation/Animation;

    .line 113
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mSmoothAnima:Landroid/view/animation/Animation;

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mSmoothAnima:Landroid/view/animation/Animation;

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 115
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    neg-int v4, v0

    int-to-float v4, v4

    invoke-direct {v3, v6, v6, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mSmoothStart:Landroid/view/animation/Animation;

    .line 116
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mSmoothStart:Landroid/view/animation/Animation;

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mSmoothStart:Landroid/view/animation/Animation;

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 117
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mSmoothStart:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 118
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v0

    invoke-direct {v3, v6, v6, v4, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mSmoothEnd:Landroid/view/animation/Animation;

    .line 119
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mSmoothEnd:Landroid/view/animation/Animation;

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mSmoothEnd:Landroid/view/animation/Animation;

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 121
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    neg-int v4, v0

    int-to-float v4, v4

    neg-int v5, p3

    sub-int/2addr v5, v0

    int-to-float v5, v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mOutAnima:Landroid/view/animation/Animation;

    .line 122
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    add-int v4, v0, p3

    int-to-float v4, v4

    int-to-float v5, v0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mInAnima:Landroid/view/animation/Animation;

    .line 123
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mOutAnima:Landroid/view/animation/Animation;

    invoke-virtual {v3, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mInAnima:Landroid/view/animation/Animation;

    invoke-virtual {v3, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 124
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mInAnima:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 125
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mInAnima:Landroid/view/animation/Animation;

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 128
    :cond_3
    iget-object v4, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 129
    .local v2, view:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    .local v1, fl:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x33

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 132
    neg-int v6, v0

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 133
    neg-int v6, v0

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private moveToNext()V
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v1, v1, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mSmoothAnima:Landroid/view/animation/Animation;

    if-nez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowIndex:I

    rem-int/lit8 v0, v1, 0x2

    .line 203
    .local v0, viewIndex:I
    iget v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowCount:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 204
    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    rsub-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mSmoothStart:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 206
    :cond_2
    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/GalleryCellView;->nextFrame(I)V

    goto :goto_0
.end method

.method private nextFrame(I)V
    .locals 2
    .parameter "viewIndex"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mSmoothAnima:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowIndex:I

    invoke-direct {p0, v0, v1}, Lcom/lx/launcher8/view/GalleryCellView;->setImage(Landroid/widget/ImageView;I)Z

    .line 215
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    rsub-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mOutAnima:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 216
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mInAnima:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 217
    iget v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowIndex:I

    goto :goto_0
.end method

.method private setImage(Landroid/widget/ImageView;I)Z
    .locals 10
    .parameter "iv"
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, bt:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->filePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/lx/launcher8/view/GalleryCellView;->getLayoutParams()Lcom/lx/launcher8/view/CellLayoutParams;

    move-result-object v1

    .line 291
    .local v1, lp:Lcom/lx/launcher8/view/CellLayoutParams;
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v5

    iget v6, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowIndex:I

    iget v7, v1, Lcom/lx/launcher8/view/CellLayoutParams;->width:I

    iget v8, v1, Lcom/lx/launcher8/view/CellLayoutParams;->height:I

    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v2, v2, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    const/4 v9, 0x2

    if-ne v2, v9, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/lx/launcher8/util/DynTileManager;->getGalleryBitmap(IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 293
    .end local v1           #lp:Lcom/lx/launcher8/view/CellLayoutParams;
    :cond_0
    if-eqz v0, :cond_2

    .line 294
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 297
    :goto_1
    return v3

    .restart local v1       #lp:Lcom/lx/launcher8/view/CellLayoutParams;
    :cond_1
    move v2, v4

    .line 291
    goto :goto_0

    .end local v1           #lp:Lcom/lx/launcher8/view/CellLayoutParams;
    :cond_2
    move v3, v4

    .line 297
    goto :goto_1
.end method

.method private setImageParams(Landroid/widget/ImageView;)V
    .locals 6
    .parameter "iv"

    .prologue
    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    .line 301
    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v3}, Lcom/lx/launcher8/bean/ItemCell;->getImgGravity()I

    move-result v0

    .line 302
    .local v0, gravity:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 303
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 304
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 314
    :goto_0
    return-void

    .line 306
    :cond_0
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 307
    invoke-virtual {p0}, Lcom/lx/launcher8/view/GalleryCellView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4170

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v3, v5

    float-to-int v1, v3

    .line 308
    .local v1, margin:I
    const/4 v2, 0x0

    .line 309
    .local v2, offset:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/GalleryCellView;->isTextShow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/lx/launcher8/view/GalleryCellView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a0

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v3, v5

    float-to-int v2, v3

    .line 312
    :cond_1
    sub-int v3, v1, v2

    add-int v4, v1, v2

    invoke-virtual {p1, v1, v3, v1, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public isRun()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->isRunning:Z

    return v0
.end method

.method public onConfigChange(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/lx/launcher8/view/CellView;->onConfigChange(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mTitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v1, v1, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mTitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v1, v1, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/GalleryCellView;->setImageParams(Landroid/widget/ImageView;)V

    .line 102
    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v0, Lcom/lx/launcher8/bean/DynCell;

    iget-object v0, v0, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Lcom/lx/launcher8/view/CellView;->onDetachedFromWindow()V

    .line 196
    invoke-virtual {p0}, Lcom/lx/launcher8/view/GalleryCellView;->onStop()V

    .line 197
    return-void
.end method

.method protected onIconAlphaSet(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/lx/launcher8/view/CellView;->onIconAlphaSet(I)V

    .line 147
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 148
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 151
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/lx/launcher8/view/GalleryCellView;->getMeasuredWidth()I

    move-result v3

    .local v3, oldW:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/GalleryCellView;->getMeasuredHeight()I

    move-result v2

    .line 358
    .local v2, oldH:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 359
    .local v1, newW:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 360
    .local v0, newH:I
    if-eq v3, v1, :cond_0

    move v6, v4

    :goto_0
    if-eq v2, v0, :cond_1

    :goto_1
    or-int/2addr v4, v6

    invoke-direct {p0, v4, v1, v0}, Lcom/lx/launcher8/view/GalleryCellView;->initAnima(ZII)V

    .line 361
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/view/CellView;->onMeasure(II)V

    .line 363
    return-void

    :cond_0
    move v6, v5

    .line 360
    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method public onRefresh(Z)V
    .locals 1
    .parameter "mounted"

    .prologue
    .line 276
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/lx/launcher8/view/GalleryCellView;->ensurePath()V

    .line 281
    :goto_0
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->filePath:Ljava/lang/String;

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowTotall:I

    goto :goto_0
.end method

.method public onSizeChange(II)V
    .locals 5
    .parameter "oldSize"
    .parameter "newSize"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 155
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/view/CellView;->onSizeChange(II)V

    .line 156
    shr-int/lit8 v1, p1, 0x10

    .line 157
    .local v1, oldSpanX:I
    shr-int/lit8 v0, p2, 0x10

    .line 158
    .local v0, newSpanX:I
    if-eq v1, v4, :cond_0

    if-ne v0, v4, :cond_1

    .line 160
    :cond_0
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/util/DynTileManager;->flush()V

    .line 161
    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/GalleryCellView;->createViewFromSize(I)V

    .line 162
    iget v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mFGAlpha:I

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/GalleryCellView;->onIconAlphaSet(I)V

    .line 164
    :cond_1
    if-le v0, v4, :cond_4

    .line 165
    invoke-direct {p0}, Lcom/lx/launcher8/view/GalleryCellView;->ensurePath()V

    .line 166
    iput v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowIndex:I

    .line 167
    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/GalleryCellView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 168
    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 169
    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 170
    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v3}, Lcom/lx/launcher8/view/GalleryCellView;->setImage(Landroid/widget/ImageView;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 171
    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v3

    invoke-direct {p0, v4}, Lcom/lx/launcher8/view/GalleryCellView;->getDefaultRes(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    :cond_2
    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-direct {p0, v2, v4}, Lcom/lx/launcher8/view/GalleryCellView;->setImage(Landroid/widget/ImageView;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 173
    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/lx/launcher8/view/GalleryCellView;->getDefaultRes(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    :cond_3
    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {p0, v2, v3, v4}, Lcom/lx/launcher8/view/GalleryCellView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    :cond_4
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 255
    iget-boolean v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->isRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    if-eq v0, v1, :cond_0

    .line 256
    iput-boolean v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->isRunning:Z

    .line 257
    const/4 v0, 0x4

    iput v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mShowCount:I

    .line 258
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/GalleryCellView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 259
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/lx/launcher8/view/GalleryCellView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->isRunning:Z

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->isRunning:Z

    .line 266
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAnimaRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/GalleryCellView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 273
    :cond_0
    return-void
.end method

.method protected onTitleEnable()V
    .locals 3

    .prologue
    .line 318
    invoke-super {p0}, Lcom/lx/launcher8/view/CellView;->onTitleEnable()V

    .line 319
    invoke-virtual {p0}, Lcom/lx/launcher8/view/GalleryCellView;->isTextShow()Z

    move-result v0

    .line 320
    .local v0, show:Z
    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mTitleTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    return-void

    .line 320
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected onTitlePosChange()V
    .locals 3

    .prologue
    .line 139
    invoke-super {p0}, Lcom/lx/launcher8/view/CellView;->onTitlePosChange()V

    .line 140
    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v1}, Lcom/lx/launcher8/bean/ItemCell;->getTextGravity()I

    move-result v0

    .line 141
    .local v0, gravity:I
    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/GalleryCellView;->getGravity(I)I

    move-result v2

    or-int/lit8 v2, v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 142
    return-void
.end method

.method protected setupViews()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 41
    invoke-super {p0}, Lcom/lx/launcher8/view/CellView;->setupViews()V

    .line 42
    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v2, v2, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    invoke-direct {p0, v2}, Lcom/lx/launcher8/view/GalleryCellView;->createViewFromSize(I)V

    .line 43
    invoke-virtual {p0}, Lcom/lx/launcher8/view/GalleryCellView;->addAlphaLayout()V

    .line 44
    invoke-virtual {p0}, Lcom/lx/launcher8/view/GalleryCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mTitleTv:Landroid/widget/TextView;

    .line 46
    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mTitleTv:Landroid/widget/TextView;

    const/16 v3, 0x53

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 47
    const/high16 v2, 0x40c0

    invoke-static {v0, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v1, v2

    .line 48
    .local v1, margin:I
    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mTitleTv:Landroid/widget/TextView;

    const/4 v3, 0x0

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 49
    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    iget-object v3, p0, Lcom/lx/launcher8/view/GalleryCellView;->mTitleTv:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lcom/lx/launcher8/view/AlphaLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/GalleryCellView;->onConfigChange(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 52
    return-void
.end method
