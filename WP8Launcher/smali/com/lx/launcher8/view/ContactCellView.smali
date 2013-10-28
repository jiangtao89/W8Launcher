.class public Lcom/lx/launcher8/view/ContactCellView;
.super Lcom/lx/launcher8/view/CellView;
.source "ContactCellView.java"

# interfaces
.implements Lcom/lx/launcher8/view/DynamicCell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/view/ContactCellView$DynView;
    }
.end annotation


# static fields
.field static final CELL_FLAG_BLANK:I = -0x80000000

.field static final CELL_FLAG_GROUP:I = 0x20000000

.field static final CELL_FLAG_MASK:I = -0x1000000

.field static final CELL_FLAG_PREVIEW:I = 0x40000000

.field static final CELL_GROUP_MASK:I = 0xf000000

.field static final CELL_GROUP_SHIFT:I = 0x18

.field static final CELL_VALUE_MASK:I = 0xffffff

.field static final FLAG_GROUP_ENABLE:I = 0x4

.field static final FLAG_GROUP_SHOW:I = 0x2

.field static final FLAG_NEW_TURN:I = 0x1


# instance fields
.field private DELAY:I

.field private contactCount:I

.field private count:I

.field private dynViews:[Lcom/lx/launcher8/view/ContactCellView$DynView;

.field private filePath:Ljava/lang/String;

.field private groupRemenber:[I

.field private handler:Landroid/os/Handler;

.field isAnimationOver:Z

.field lastId:I

.field private mBackColor:I

.field private mContactFlags:I

.field private mDynLayout:Landroid/widget/LinearLayout;

.field private mHCells:I

.field private mIconIv:Landroid/widget/ImageView;

.field private mTitleTv:Landroid/widget/TextView;

.field private mVCells:I

.field private picRemember:[I

.field private r:Ljava/util/Random;

.field private themeColorDraws:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 1
    .parameter "context"
    .parameter "info"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/CellView;-><init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V

    .line 66
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lx/launcher8/view/ContactCellView;->DELAY:I

    .line 394
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/view/ContactCellView;->lastId:I

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/view/ContactCellView;->isAnimationOver:Z

    .line 516
    new-instance v0, Lcom/lx/launcher8/view/ContactCellView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/ContactCellView$1;-><init>(Lcom/lx/launcher8/view/ContactCellView;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->handler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/view/ContactCellView;)[Lcom/lx/launcher8/view/ContactCellView$DynView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->dynViews:[Lcom/lx/launcher8/view/ContactCellView$DynView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/view/ContactCellView;)[I
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/view/ContactCellView;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->themeColorDraws:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/view/ContactCellView;)Ljava/util/Random;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->r:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/view/ContactCellView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/view/ContactCellView;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/ContactCellView;->getGroupId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/view/ContactCellView;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/ContactCellView;->getPosRandom(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/view/ContactCellView;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/lx/launcher8/view/ContactCellView;->DELAY:I

    return v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/view/ContactCellView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/ContactCellView;->startAnimation(II)V

    return-void
.end method

.method private caculateFixPos(IIZ)I
    .locals 3
    .parameter "pos"
    .parameter "groupId"
    .parameter "preValue"

    .prologue
    .line 506
    const v1, 0xffffff

    and-int v0, p1, v1

    .line 507
    .local v0, result:I
    if-eqz p3, :cond_0

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    .line 508
    :cond_0
    if-ltz p2, :cond_1

    const/4 v1, 0x4

    if-ge p2, v1, :cond_1

    .line 509
    shl-int/lit8 v1, p2, 0x18

    const/high16 v2, 0x2000

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 511
    :cond_1
    return v0
.end method

.method private checkPreviewGroup()I
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    const/4 v2, -0x1

    .line 374
    iget-object v3, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, v:I
    :goto_0
    if-gez v1, :cond_1

    move v0, v2

    .line 380
    :cond_0
    return v0

    .line 375
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    aget v0, v3, v1

    .line 376
    .local v0, pos:I
    if-eq v0, v2, :cond_2

    .line 377
    iget-object v3, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    aget v3, v3, v0

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_0

    .line 374
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private checkShowGroup()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 384
    iget-object v3, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    move v1, v2

    .line 391
    :goto_1
    return v1

    .line 385
    :cond_0
    iget-object v3, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    aget v3, v3, v0

    if-eq v3, v2, :cond_1

    .line 386
    iget-object v3, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    aget v1, v3, v0

    .line 387
    .local v1, pos:I
    iget-object v3, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    aput v2, v3, v0

    goto :goto_1

    .line 384
    .end local v1           #pos:I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private createDefaultColors(I)V
    .locals 4
    .parameter "color"

    .prologue
    .line 269
    const/16 v1, 0xff

    invoke-virtual {p0, p1, v1}, Lcom/lx/launcher8/view/ContactCellView;->getMixBlankColor(II)I

    move-result v0

    .line 270
    .local v0, mixColor:I
    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView;->themeColorDraws:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    .line 271
    const/16 v1, 0xcc

    invoke-virtual {p0, p1, v1}, Lcom/lx/launcher8/view/ContactCellView;->getMixBlankColor(II)I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView;->themeColorDraws:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    .line 274
    const/16 v1, 0x99

    invoke-virtual {p0, p1, v1}, Lcom/lx/launcher8/view/ContactCellView;->getMixBlankColor(II)I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView;->themeColorDraws:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    .line 277
    invoke-direct {p0}, Lcom/lx/launcher8/view/ContactCellView;->setDeFaultAlpha()V

    .line 278
    return-void
.end method

.method private createGroupCell(II)Z
    .locals 10
    .parameter "pos"
    .parameter "btPos"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 425
    iget v5, p0, Lcom/lx/launcher8/view/ContactCellView;->mContactFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eq v5, v8, :cond_0

    .line 426
    const/high16 v5, -0x8000

    if-ne p2, v5, :cond_1

    :cond_0
    move v3, v4

    .line 475
    :goto_0
    return v3

    .line 429
    :cond_1
    iget v5, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    rem-int v0, p1, v5

    .line 430
    .local v0, hPos:I
    iget v5, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    div-int v2, p1, v5

    .line 431
    .local v2, vPos:I
    iget v5, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    mul-int/2addr v5, v2

    add-int v1, v5, v0

    .line 432
    .local v1, start:I
    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    if-ge v5, v6, :cond_2

    add-int/lit8 v5, v2, 0x1

    iget v6, p0, Lcom/lx/launcher8/view/ContactCellView;->mVCells:I

    if-ge v5, v6, :cond_2

    .line 434
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    invoke-direct {p0, p2, v4, v3}, Lcom/lx/launcher8/view/ContactCellView;->caculateFixPos(IIZ)I

    move-result v6

    aput v6, v5, v1

    .line 435
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    add-int/lit8 v6, v1, 0x1

    invoke-direct {p0, p2, v3, v3}, Lcom/lx/launcher8/view/ContactCellView;->caculateFixPos(IIZ)I

    move-result v7

    aput v7, v5, v6

    .line 436
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    iget v6, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    add-int/2addr v6, v1

    invoke-direct {p0, p2, v8, v3}, Lcom/lx/launcher8/view/ContactCellView;->caculateFixPos(IIZ)I

    move-result v7

    aput v7, v5, v6

    .line 437
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    iget v6, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, p2, v9, v3}, Lcom/lx/launcher8/view/ContactCellView;->caculateFixPos(IIZ)I

    move-result v7

    aput v7, v5, v6

    .line 438
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    aput v1, v5, v4

    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    add-int/lit8 v5, v1, 0x1

    aput v5, v4, v3

    .line 439
    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    iget v5, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    add-int/2addr v5, v1

    aput v5, v4, v8

    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    iget v5, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v9

    goto :goto_0

    .line 442
    :cond_2
    iget v5, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v0

    add-int/lit8 v1, v5, -0x1

    .line 443
    if-lez v0, :cond_3

    add-int/lit8 v5, v2, 0x1

    iget v6, p0, Lcom/lx/launcher8/view/ContactCellView;->mVCells:I

    if-ge v5, v6, :cond_3

    .line 445
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    invoke-direct {p0, p2, v4, v3}, Lcom/lx/launcher8/view/ContactCellView;->caculateFixPos(IIZ)I

    move-result v6

    aput v6, v5, v1

    .line 446
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    add-int/lit8 v6, v1, 0x1

    invoke-direct {p0, p2, v3, v3}, Lcom/lx/launcher8/view/ContactCellView;->caculateFixPos(IIZ)I

    move-result v7

    aput v7, v5, v6

    .line 447
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    iget v6, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    add-int/2addr v6, v1

    invoke-direct {p0, p2, v8, v3}, Lcom/lx/launcher8/view/ContactCellView;->caculateFixPos(IIZ)I

    move-result v7

    aput v7, v5, v6

    .line 448
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    iget v6, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, p2, v9, v3}, Lcom/lx/launcher8/view/ContactCellView;->caculateFixPos(IIZ)I

    move-result v7

    aput v7, v5, v6

    .line 449
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    aput v1, v5, v4

    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    add-int/lit8 v5, v1, 0x1

    aput v5, v4, v3

    .line 450
    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    iget v5, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    add-int/2addr v5, v1

    aput v5, v4, v8

    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    iget v5, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v9

    goto/16 :goto_0

    .line 453
    :cond_3
    add-int/lit8 v5, v2, -0x1

    iget v6, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    mul-int/2addr v5, v6

    add-int v1, v5, v0

    .line 454
    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    if-ge v5, v6, :cond_4

    if-lez v2, :cond_4

    .line 456
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    invoke-direct {p0, p2, v4, v3}, Lcom/lx/launcher8/view/ContactCellView;->caculateFixPos(IIZ)I

    move-result v6

    aput v6, v5, v1

    .line 457
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    add-int/lit8 v6, v1, 0x1

    invoke-direct {p0, p2, v3, v3}, Lcom/lx/launcher8/view/ContactCellView;->caculateFixPos(IIZ)I

    move-result v7

    aput v7, v5, v6

    .line 458
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    iget v6, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    add-int/2addr v6, v1

    invoke-direct {p0, p2, v8, v3}, Lcom/lx/launcher8/view/ContactCellView;->caculateFixPos(IIZ)I

    move-result v7

    aput v7, v5, v6

    .line 459
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    iget v6, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, p2, v9, v3}, Lcom/lx/launcher8/view/ContactCellView;->caculateFixPos(IIZ)I

    move-result v7

    aput v7, v5, v6

    .line 460
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    aput v1, v5, v4

    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    add-int/lit8 v5, v1, 0x1

    aput v5, v4, v3

    .line 461
    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    iget v5, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    add-int/2addr v5, v1

    aput v5, v4, v8

    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    iget v5, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v9

    goto/16 :goto_0

    .line 464
    :cond_4
    add-int/lit8 v5, v2, -0x1

    iget v6, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v0

    add-int/lit8 v1, v5, -0x1

    .line 465
    if-lez v0, :cond_5

    if-lez v2, :cond_5

    .line 467
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    invoke-direct {p0, p2, v4, v3}, Lcom/lx/launcher8/view/ContactCellView;->caculateFixPos(IIZ)I

    move-result v6

    aput v6, v5, v1

    .line 468
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    add-int/lit8 v6, v1, 0x1

    invoke-direct {p0, p2, v3, v3}, Lcom/lx/launcher8/view/ContactCellView;->caculateFixPos(IIZ)I

    move-result v7

    aput v7, v5, v6

    .line 469
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    iget v6, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    add-int/2addr v6, v1

    invoke-direct {p0, p2, v8, v3}, Lcom/lx/launcher8/view/ContactCellView;->caculateFixPos(IIZ)I

    move-result v7

    aput v7, v5, v6

    .line 470
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    iget v6, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, p2, v9, v3}, Lcom/lx/launcher8/view/ContactCellView;->caculateFixPos(IIZ)I

    move-result v7

    aput v7, v5, v6

    .line 471
    iget-object v5, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    aput v1, v5, v4

    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    add-int/lit8 v5, v1, 0x1

    aput v5, v4, v3

    .line 472
    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    iget v5, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    add-int/2addr v5, v1

    aput v5, v4, v8

    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    iget v5, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v9

    goto/16 :goto_0

    :cond_5
    move v3, v4

    .line 475
    goto/16 :goto_0
.end method

.method private createViewFromSize(I)V
    .locals 11
    .parameter "spanx"

    .prologue
    .line 105
    const/4 v7, 0x1

    if-ne p1, v7, :cond_1

    .line 106
    const/4 v7, 0x0

    iput v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    const/4 v7, 0x0

    iput v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mVCells:I

    .line 107
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mDynLayout:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 108
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mDynLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/view/ContactCellView;->removeViewInLayout(Landroid/view/View;)V

    .line 109
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mDynLayout:Landroid/widget/LinearLayout;

    .line 111
    :cond_0
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ContactCellView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mIconIv:Landroid/widget/ImageView;

    .line 112
    iget-object v8, p0, Lcom/lx/launcher8/view/ContactCellView;->mIconIv:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v7, Lcom/lx/launcher8/bean/DynCell;

    iget-object v7, v7, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mIconIv:Landroid/widget/ImageView;

    invoke-direct {p0, v7}, Lcom/lx/launcher8/view/ContactCellView;->setImageParams(Landroid/widget/ImageView;)V

    .line 114
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mIconIv:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/lx/launcher8/view/ContactCellView;->addView(Landroid/view/View;I)V

    .line 116
    iget v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mBackColor:I

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/view/ContactCellView;->onBackColorSet(I)V

    .line 117
    iget v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mAlpha:I

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/view/ContactCellView;->onBackAlphaSet(I)V

    .line 118
    iget v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mFGAlpha:I

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/view/ContactCellView;->onIconAlphaSet(I)V

    .line 119
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    .line 120
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->dynViews:[Lcom/lx/launcher8/view/ContactCellView$DynView;

    .line 170
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v7, -0x1

    iput v7, p0, Lcom/lx/launcher8/view/ContactCellView;->count:I

    .line 124
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/lx/launcher8/view/ContactCellView;->isAnimationOver:Z

    .line 125
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mIconIv:Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    .line 126
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mIconIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/view/ContactCellView;->removeViewInLayout(Landroid/view/View;)V

    .line 127
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mIconIv:Landroid/widget/ImageView;

    .line 130
    :cond_2
    const/4 v7, 0x3

    iput v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mVCells:I

    .line 131
    int-to-double v7, p1

    const-wide/high16 v9, 0x3ff8

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    .line 132
    iget v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mVCells:I

    iget v8, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    mul-int v4, v7, v8

    .line 133
    .local v4, len:I
    new-array v7, v4, [I

    iput-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    .line 134
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    const/high16 v8, -0x8000

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 135
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-direct {p0, v7, v8}, Lcom/lx/launcher8/view/ContactCellView;->setContactFlag(II)V

    .line 136
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/lx/launcher8/view/ContactCellView;->setContactFlag(II)V

    .line 137
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ContactCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    .local v0, context:Landroid/content/Context;
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mDynLayout:Landroid/widget/LinearLayout;

    if-nez v7, :cond_4

    .line 139
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mDynLayout:Landroid/widget/LinearLayout;

    .line 140
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mDynLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 141
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mDynLayout:Landroid/widget/LinearLayout;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lcom/app/common/utils/ViewHelper;->getFLParam(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mDynLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/lx/launcher8/view/ContactCellView;->addView(Landroid/view/View;I)V

    .line 144
    :goto_1
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->dynViews:[Lcom/lx/launcher8/view/ContactCellView$DynView;

    if-eqz v7, :cond_3

    .line 145
    iget-object v8, p0, Lcom/lx/launcher8/view/ContactCellView;->dynViews:[Lcom/lx/launcher8/view/ContactCellView$DynView;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_2
    if-lt v7, v9, :cond_5

    .line 148
    :cond_3
    new-array v7, v4, [Lcom/lx/launcher8/view/ContactCellView$DynView;

    iput-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->dynViews:[Lcom/lx/launcher8/view/ContactCellView$DynView;

    .line 149
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-lt v2, v4, :cond_6

    .line 157
    const/4 v2, 0x0

    :goto_4
    iget v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mVCells:I

    if-lt v2, v7, :cond_7

    .line 168
    iget v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mBackColor:I

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/view/ContactCellView;->onBackColorSet(I)V

    goto :goto_0

    .line 143
    .end local v2           #i:I
    :cond_4
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mDynLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    goto :goto_1

    .line 145
    :cond_5
    aget-object v6, v8, v7

    .line 146
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->clearAnimation()V

    .line 145
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 150
    .end local v6           #view:Landroid/view/View;
    .restart local v2       #i:I
    :cond_6
    new-instance v1, Lcom/lx/launcher8/view/ContactCellView$DynView;

    invoke-direct {v1, p0, v0}, Lcom/lx/launcher8/view/ContactCellView$DynView;-><init>(Lcom/lx/launcher8/view/ContactCellView;Landroid/content/Context;)V

    .line 151
    .local v1, dynView:Lcom/lx/launcher8/view/ContactCellView$DynView;
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->dynViews:[Lcom/lx/launcher8/view/ContactCellView$DynView;

    aput-object v1, v7, v2

    .line 152
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->dynViews:[Lcom/lx/launcher8/view/ContactCellView$DynView;

    aget-object v7, v7, v2

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/ContactCellView$DynView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 154
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->dynViews:[Lcom/lx/launcher8/view/ContactCellView$DynView;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/lx/launcher8/view/ContactCellView;->themeColorDraws:[Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/lx/launcher8/view/ContactCellView;->r:Ljava/util/Random;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/ContactCellView$DynView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->dynViews:[Lcom/lx/launcher8/view/ContactCellView$DynView;

    aget-object v7, v7, v2

    invoke-virtual {v7, v2}, Lcom/lx/launcher8/view/ContactCellView$DynView;->setId(I)V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 158
    .end local v1           #dynView:Lcom/lx/launcher8/view/ContactCellView$DynView;
    :cond_7
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 159
    .local v5, ll:Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 161
    const/4 v3, 0x0

    .local v3, j:I
    :goto_5
    iget v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    if-lt v3, v7, :cond_8

    .line 166
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mDynLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 162
    :cond_8
    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->dynViews:[Lcom/lx/launcher8/view/ContactCellView$DynView;

    iget v8, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    mul-int/2addr v8, v2

    add-int/2addr v8, v3

    aget-object v1, v7, v8

    .line 163
    .restart local v1       #dynView:Lcom/lx/launcher8/view/ContactCellView$DynView;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/high16 v10, 0x3f80

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/ContactCellView$DynView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method private getBitmapRandom(I)I
    .locals 7
    .parameter "p"

    .prologue
    const/high16 v5, 0x4000

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 396
    iget-object v2, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    aget v2, v2, p1

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_0

    .line 398
    iget-object v2, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    aget v1, v2, p1

    .line 421
    :goto_0
    return v1

    .line 400
    :cond_0
    iget v2, p0, Lcom/lx/launcher8/view/ContactCellView;->contactCount:I

    if-gtz v2, :cond_1

    .line 401
    const/high16 v1, -0x8000

    goto :goto_0

    .line 402
    :cond_1
    const/high16 v1, -0x8000

    .line 403
    .local v1, i:I
    iget v2, p0, Lcom/lx/launcher8/view/ContactCellView;->lastId:I

    iget v5, p0, Lcom/lx/launcher8/view/ContactCellView;->contactCount:I

    add-int/lit8 v5, v5, -0x1

    if-gt v2, v5, :cond_2

    iget v2, p0, Lcom/lx/launcher8/view/ContactCellView;->lastId:I

    if-gez v2, :cond_3

    :cond_2
    iput v4, p0, Lcom/lx/launcher8/view/ContactCellView;->lastId:I

    .line 404
    :cond_3
    iget v1, p0, Lcom/lx/launcher8/view/ContactCellView;->lastId:I

    .end local v1           #i:I
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lx/launcher8/view/ContactCellView;->lastId:I

    .line 405
    .restart local v1       #i:I
    invoke-direct {p0, v1}, Lcom/lx/launcher8/view/ContactCellView;->isExited(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 406
    const/high16 v1, -0x8000

    .line 407
    iget-object v2, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    aput v1, v2, p1

    goto :goto_0

    .line 409
    :cond_4
    iget-object v2, p0, Lcom/lx/launcher8/view/ContactCellView;->r:Ljava/util/Random;

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 410
    .local v0, c:I
    if-lez v0, :cond_7

    iget v2, p0, Lcom/lx/launcher8/view/ContactCellView;->count:I

    const/4 v5, 0x3

    if-le v2, v5, :cond_7

    iget v2, p0, Lcom/lx/launcher8/view/ContactCellView;->mContactFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_7

    .line 411
    iget v2, p0, Lcom/lx/launcher8/view/ContactCellView;->mContactFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/lx/launcher8/view/ContactCellView;->createGroupCell(II)Z

    move-result v5

    and-int/2addr v2, v5

    if-eqz v2, :cond_6

    .line 412
    invoke-direct {p0, v6, v6}, Lcom/lx/launcher8/view/ContactCellView;->setContactFlag(II)V

    .line 413
    invoke-direct {p0, v4, v3}, Lcom/lx/launcher8/view/ContactCellView;->setContactFlag(II)V

    goto :goto_0

    :cond_5
    move v2, v4

    .line 411
    goto :goto_1

    .line 415
    :cond_6
    iget-object v2, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    aput v1, v2, p1

    goto :goto_0

    .line 418
    :cond_7
    iget-object v2, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    aput v1, v2, p1

    goto :goto_0
.end method

.method private getGroupId(I)I
    .locals 2
    .parameter "value"

    .prologue
    const/high16 v1, 0x2000

    .line 500
    and-int v0, p1, v1

    if-eq v0, v1, :cond_0

    .line 501
    const/4 v0, -0x1

    .line 502
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0xf00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x18

    goto :goto_0
.end method

.method private getPosRandom(I)I
    .locals 7
    .parameter "i"

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/high16 v4, -0x8000

    .line 350
    iget v2, p0, Lcom/lx/launcher8/view/ContactCellView;->mContactFlags:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 351
    invoke-direct {p0}, Lcom/lx/launcher8/view/ContactCellView;->checkShowGroup()I

    move-result v1

    .line 352
    .local v1, index:I
    if-eq v1, v5, :cond_1

    .line 353
    iget-object v2, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    aput v4, v2, v1

    .line 369
    .end local v1           #index:I
    :cond_0
    :goto_0
    return v1

    .line 357
    :cond_1
    iget v2, p0, Lcom/lx/launcher8/view/ContactCellView;->mContactFlags:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v6, :cond_2

    .line 358
    invoke-direct {p0}, Lcom/lx/launcher8/view/ContactCellView;->checkPreviewGroup()I

    move-result v1

    .line 359
    .restart local v1       #index:I
    if-gt v1, v5, :cond_0

    .line 361
    const/4 v2, 0x0

    invoke-direct {p0, v2, v6}, Lcom/lx/launcher8/view/ContactCellView;->setContactFlag(II)V

    .line 363
    .end local v1           #index:I
    :cond_2
    iget-object v2, p0, Lcom/lx/launcher8/view/ContactCellView;->r:Ljava/util/Random;

    invoke-virtual {v2, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 364
    .local v0, c:I
    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/ContactCellView;->isBlank(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 365
    iget-object v2, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    aput v4, v2, v0

    :goto_1
    move v1, v0

    .line 369
    goto :goto_0

    .line 367
    :cond_3
    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/ContactCellView;->getBitmapRandom(I)I

    goto :goto_1
.end method

.method private isBlank(I)Z
    .locals 2
    .parameter "pos"

    .prologue
    const/high16 v1, -0x8000

    .line 481
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    aget v0, v0, p1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 482
    const/4 v0, 0x1

    .line 483
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExited(I)Z
    .locals 5
    .parameter "i"

    .prologue
    const/4 v1, 0x0

    const/high16 v4, -0x8000

    .line 487
    and-int v2, p1, v4

    if-ne v2, v4, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v1

    .line 489
    :cond_1
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1
    iget-object v2, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 490
    iget-object v2, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_3

    .line 489
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 493
    :cond_3
    iget-object v2, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    aget v2, v2, v0

    const v3, 0xffffff

    and-int/2addr v2, v3

    if-ne v2, p1, :cond_2

    .line 494
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setContactFlag(II)V
    .locals 2
    .parameter "value"
    .parameter "mask"

    .prologue
    .line 101
    iget v0, p0, Lcom/lx/launcher8/view/ContactCellView;->mContactFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lx/launcher8/view/ContactCellView;->mContactFlags:I

    .line 102
    return-void
.end method

.method private setDeFaultAlpha()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->themeColorDraws:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->themeColorDraws:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/lx/launcher8/view/ContactCellView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 282
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->themeColorDraws:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/lx/launcher8/view/ContactCellView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 283
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->themeColorDraws:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget v1, p0, Lcom/lx/launcher8/view/ContactCellView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private setImageParams(Landroid/widget/ImageView;)V
    .locals 6
    .parameter "iv"

    .prologue
    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    .line 205
    iget-object v3, p0, Lcom/lx/launcher8/view/ContactCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v3}, Lcom/lx/launcher8/bean/ItemCell;->getImgGravity()I

    move-result v0

    .line 206
    .local v0, gravity:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 207
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 208
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 218
    :goto_0
    return-void

    .line 210
    :cond_0
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 211
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ContactCellView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4170

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v3, v5

    float-to-int v1, v3

    .line 212
    .local v1, margin:I
    const/4 v2, 0x0

    .line 213
    .local v2, offset:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ContactCellView;->isTextShow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ContactCellView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a0

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v3, v5

    float-to-int v2, v3

    .line 216
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/view/ContactCellView;->mIconIv:Landroid/widget/ImageView;

    sub-int v4, v1, v2

    add-int v5, v1, v2

    invoke-virtual {v3, v1, v4, v1, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setViewColor()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 287
    iget v2, p0, Lcom/lx/launcher8/view/ContactCellView;->mHCells:I

    iget v3, p0, Lcom/lx/launcher8/view/ContactCellView;->mVCells:I

    mul-int v1, v2, v3

    .line 288
    .local v1, len:I
    if-nez v1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 292
    iget-object v2, p0, Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I

    const/high16 v3, -0x8000

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 293
    iget-object v2, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 294
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/lx/launcher8/view/ContactCellView;->setContactFlag(II)V

    .line 295
    invoke-direct {p0, v6, v6}, Lcom/lx/launcher8/view/ContactCellView;->setContactFlag(II)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/view/ContactCellView;->dynViews:[Lcom/lx/launcher8/view/ContactCellView$DynView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/lx/launcher8/view/ContactCellView;->themeColorDraws:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->r:Ljava/util/Random;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/ContactCellView$DynView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private startAnimation(II)V
    .locals 4
    .parameter "id"
    .parameter "delay"

    .prologue
    .line 242
    iget v1, p0, Lcom/lx/launcher8/view/ContactCellView;->count:I

    if-lez v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 244
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    if-lez p2, :cond_0

    .line 247
    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView;->handler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 251
    :goto_0
    iget v1, p0, Lcom/lx/launcher8/view/ContactCellView;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lx/launcher8/view/ContactCellView;->count:I

    .line 255
    .end local v0           #msg:Landroid/os/Message;
    :goto_1
    return-void

    .line 249
    .restart local v0       #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 253
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ContactCellView;->onStop()V

    goto :goto_1
.end method


# virtual methods
.method protected getDrawAlpha()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/lx/launcher8/view/ContactCellView;->mFGAlpha:I

    return v0
.end method

.method getMixBlankColor(II)I
    .locals 13
    .parameter "color"
    .parameter "alpha"

    .prologue
    .line 605
    const/16 v8, 0xff

    .local v8, r1:I
    const/16 v5, 0xff

    .local v5, g1:I
    const/16 v2, 0xff

    .line 606
    .local v2, b1:I
    const/high16 v10, 0x3f80

    int-to-float v11, p2

    const/high16 v12, 0x437f

    div-float/2addr v11, v12

    sub-float v0, v10, v11

    .line 607
    .local v0, a:F
    shr-int/lit8 v10, p1, 0x10

    and-int/lit16 v9, v10, 0xff

    .line 608
    .local v9, r2:I
    shr-int/lit8 v10, p1, 0x8

    and-int/lit16 v6, v10, 0xff

    .line 609
    .local v6, g2:I
    and-int/lit16 v3, p1, 0xff

    .line 611
    .local v3, b2:I
    int-to-float v10, v8

    mul-float/2addr v10, v0

    int-to-float v11, v9

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v0

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v7, v10

    .line 612
    .local v7, r:I
    int-to-float v10, v5

    mul-float/2addr v10, v0

    int-to-float v11, v6

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v0

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v4, v10

    .line 613
    .local v4, g:I
    int-to-float v10, v2

    mul-float/2addr v10, v0

    int-to-float v11, v3

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v0

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v1, v10

    .line 614
    .local v1, b:I
    const/16 v10, 0xff

    invoke-static {v10, v7, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    return v10
.end method

.method protected onBackAlphaSet(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/lx/launcher8/view/CellView;->onBackAlphaSet(I)V

    .line 236
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->themeColorDraws:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/lx/launcher8/view/ContactCellView;->setDeFaultAlpha()V

    .line 239
    :cond_0
    return-void
.end method

.method protected onBackColorSet(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->mIconIv:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v0}, Lcom/lx/launcher8/view/CellView;->onBackColorSet(I)V

    .line 300
    iput p1, p0, Lcom/lx/launcher8/view/ContactCellView;->mBackColor:I

    .line 301
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/ContactCellView;->createDefaultColors(I)V

    .line 302
    invoke-direct {p0}, Lcom/lx/launcher8/view/ContactCellView;->setViewColor()V

    .line 303
    return-void

    :cond_0
    move v0, p1

    .line 299
    goto :goto_0
.end method

.method public onConfigChange(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x4

    .line 193
    invoke-super {p0, p1}, Lcom/lx/launcher8/view/CellView;->onConfigChange(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 194
    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView;->mTitleTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/view/ContactCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v3, v3, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView;->mTitleTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/view/ContactCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView;->mIconIv:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView;->mIconIv:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/lx/launcher8/view/ContactCellView;->setImageParams(Landroid/widget/ImageView;)V

    .line 198
    iget-object v3, p0, Lcom/lx/launcher8/view/ContactCellView;->mIconIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v1, Lcom/lx/launcher8/bean/DynCell;

    iget-object v1, v1, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v1, Lcom/lx/launcher8/bean/DynCell;

    invoke-virtual {v1}, Lcom/lx/launcher8/bean/DynCell;->isShowGroup()Z

    move-result v0

    .line 201
    .local v0, groupEnable:Z
    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/lx/launcher8/view/ContactCellView;->setContactFlag(II)V

    .line 202
    return-void

    .line 201
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onIconAlphaSet(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/lx/launcher8/view/CellView;->onIconAlphaSet(I)V

    .line 228
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->mIconIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->mIconIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 231
    :cond_0
    return-void
.end method

.method public onRefresh(Z)V
    .locals 2
    .parameter "mounted"

    .prologue
    const/4 v1, 0x0

    .line 259
    if-eqz p1, :cond_0

    .line 260
    const-string v0, "contacts"

    invoke-static {v0}, Lcom/lx/launcher8/util/BasePath;->getDataPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->filePath:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lx/launcher8/util/DynTileManager;->initItemImgCount(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/ContactCellView;->contactCount:I

    .line 266
    :goto_0
    return-void

    .line 263
    :cond_0
    iput v1, p0, Lcom/lx/launcher8/view/ContactCellView;->contactCount:I

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->filePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public onSizeChange(II)V
    .locals 1
    .parameter "oldSize"
    .parameter "newSize"

    .prologue
    .line 187
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/view/CellView;->onSizeChange(II)V

    .line 188
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/ContactCellView;->createViewFromSize(I)V

    .line 189
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/16 v2, 0x19

    const/4 v1, 0x1

    .line 307
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    if-ne v0, v1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 309
    :cond_0
    iget v0, p0, Lcom/lx/launcher8/view/ContactCellView;->count:I

    if-gtz v0, :cond_1

    .line 310
    iput v2, p0, Lcom/lx/launcher8/view/ContactCellView;->count:I

    .line 311
    invoke-direct {p0, v1, v1}, Lcom/lx/launcher8/view/ContactCellView;->setContactFlag(II)V

    .line 312
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/ContactCellView;->getPosRandom(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lx/launcher8/view/ContactCellView;->startAnimation(II)V

    goto :goto_0

    .line 314
    :cond_1
    iput v2, p0, Lcom/lx/launcher8/view/ContactCellView;->count:I

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 320
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/view/ContactCellView;->count:I

    .line 321
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    return-void
.end method

.method protected onTitleEnable()V
    .locals 3

    .prologue
    .line 180
    invoke-super {p0}, Lcom/lx/launcher8/view/CellView;->onTitleEnable()V

    .line 181
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ContactCellView;->isTextShow()Z

    move-result v0

    .line 182
    .local v0, show:Z
    iget-object v2, p0, Lcom/lx/launcher8/view/ContactCellView;->mTitleTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    return-void

    .line 182
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected onTitlePosChange()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Lcom/lx/launcher8/view/CellView;->onTitlePosChange()V

    .line 175
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView;->mTitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v1}, Lcom/lx/launcher8/bean/ItemCell;->getTextGravity()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/ContactCellView;->getGravity(I)I

    move-result v1

    or-int/lit8 v1, v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 176
    return-void
.end method

.method protected setupViews()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v9, -0x1

    .line 77
    invoke-super {p0}, Lcom/lx/launcher8/view/CellView;->setupViews()V

    .line 78
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iput-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->r:Ljava/util/Random;

    .line 79
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->mImageView:Landroid/widget/ImageView;

    .line 80
    new-array v4, v5, [I

    iput-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    .line 81
    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->groupRemenber:[I

    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([II)V

    .line 82
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/drawable/ColorDrawable;

    iput-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->themeColorDraws:[Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v4, v4, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    invoke-direct {p0, v4}, Lcom/lx/launcher8/view/ContactCellView;->createViewFromSize(I)V

    .line 85
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ContactCellView;->addAlphaLayout()V

    .line 86
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ContactCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    .local v0, context:Landroid/content/Context;
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->mTitleTv:Landroid/widget/TextView;

    .line 88
    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->mTitleTv:Landroid/widget/TextView;

    const/16 v7, 0x53

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 89
    const/high16 v4, 0x40c0

    invoke-static {v0, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v4

    float-to-int v3, v4

    .line 90
    .local v3, margin:I
    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->mTitleTv:Landroid/widget/TextView;

    div-int/lit8 v7, v3, 0x2

    invoke-virtual {v4, v3, v6, v3, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 91
    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mTitleTv:Landroid/widget/TextView;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7, v8}, Lcom/lx/launcher8/view/AlphaLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->mTitleTv:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v7, v7, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->mTitleTv:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lx/launcher8/view/ContactCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v7, v7, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v4}, Lcom/lx/launcher8/bean/ItemCell;->getTextGravity()I

    move-result v1

    .line 95
    .local v1, gravity:I
    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/ContactCellView;->getGravity(I)I

    move-result v7

    or-int/lit8 v7, v7, 0x50

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 96
    iget-object v4, p0, Lcom/lx/launcher8/view/ContactCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v4, Lcom/lx/launcher8/bean/DynCell;

    invoke-virtual {v4}, Lcom/lx/launcher8/bean/DynCell;->isShowGroup()Z

    move-result v2

    .line 97
    .local v2, groupEnable:Z
    if-eqz v2, :cond_0

    move v4, v5

    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/lx/launcher8/view/ContactCellView;->setContactFlag(II)V

    .line 98
    return-void

    :cond_0
    move v4, v6

    .line 97
    goto :goto_0
.end method
