.class public Lcom/lx/launcher8/view/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"

# interfaces
.implements Lcom/lx/launcher8/view/DragScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;,
        Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;,
        Lcom/lx/launcher8/view/CellLayout$MuniInterpolation;,
        Lcom/lx/launcher8/view/CellLayout$OnCellSizeChange;,
        Lcom/lx/launcher8/view/CellLayout$OnItemClickListener;,
        Lcom/lx/launcher8/view/CellLayout$OnItemLongClickListener;
    }
.end annotation


# static fields
.field static final CELL_INDEX_MASK:I = 0xf

.field static final CELL_INDEX_MASK_FIRST:I = 0x1

.field static final CELL_INDEX_MASK_FORTH:I = 0x8

.field static final CELL_INDEX_MASK_SECOND:I = 0x2

.field static final CELL_INDEX_MASK_THRID:I = 0x4

.field private static final FLAG_ANIMA_FLOAT:I = 0x1

.field private static final FLAG_ANIMA_LAUNCH:I = 0x2

.field private static final FLAG_BLOCK_LAYOUT:I = 0x100

.field private static final FLAG_BLOCK_TOUCH:I = 0x200

.field private static final FLAG_CACHE_ENABLE:I = 0x20

.field private static final FLAG_DRAG_SAME:I = 0x80

.field private static final FLAG_FORCE_LAYOUT:I = 0x10

.field private static final FLAG_IN_LAYOUT:I = 0x40

.field private static final FLAG_LAUNCH_ENABLE:I = 0x4

.field private static final FLAG_REQUEST_HEIGHT:I = 0x400

.field private static final FLAG_SCROLL_ENABLE:I = 0x8

.field private static final SCROLL_MAX_DETAL:F = 0.15f

.field private static final TIME_BLANK_SCROLL:I = 0x17c

.field private static final TIME_ITEM_LAUNCH:I = 0x22b

.field private static mCellHeight:I

.field private static mCellWidth:I


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mCellSizeChangeListener:Lcom/lx/launcher8/view/CellLayout$OnCellSizeChange;

.field private mChildCacheDrawColor:I

.field private mCurDragY:I

.field private mDragAnima:Lcom/lx/launcher8/anim/ValueAnimation;

.field private mDragController:Lcom/lx/launcher8/view/DragController;

.field private mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mEdgeFlag:Z

.field private mEndCellY:I

.field private mFoceGroundRestore:Ljava/lang/Runnable;

.field private mHeightGap:I

.field private mItemClickListener:Lcom/lx/launcher8/view/CellLayout$OnItemClickListener;

.field private mItemLongClickListener:Lcom/lx/launcher8/view/CellLayout$OnItemLongClickListener;

.field private mLastDragY:I

.field private mLastY:F

.field private mLaunchRunnable:Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;

.field private mLayoutFlags:I

.field private mLongAxisCells:I

.field private mMaxmumVelocity:I

.field private mMinmumVelocity:I

.field private mMotionTraker:Landroid/view/VelocityTracker;

.field private mMotionX:F

.field private mMotionY:F

.field private mPadingBottom:I

.field private mPadingTop:I

.field private mPendingCheckForItemLongPress:Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;

.field private final mRandom:Ljava/util/Random;

.field private mRealHeight:I

.field private mScroller:Lcom/lx/launcher8/view/Scroller;

.field private mSelCellY:I

.field private mSelectView:Landroid/view/View;

.field private final mShortAxisCells:I

.field private mStartAnima:Lcom/lx/launcher8/anim/ValueAnimation;

.field private mStartCellY:I

.field private mTempMatrx:Landroid/graphics/Matrix;

.field private mTempt:Landroid/view/animation/Transformation;

.field private mTimeGap:F

.field private mTouchSlop:I

.field private mViewRecoder:[I

.field private mWidthGap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    sput v0, Lcom/lx/launcher8/view/CellLayout;->mCellWidth:I

    .line 95
    sput v0, Lcom/lx/launcher8/view/CellLayout;->mCellHeight:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/view/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lx/launcher8/view/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    const/4 v0, 0x4

    iput v0, p0, Lcom/lx/launcher8/view/CellLayout;->mShortAxisCells:I

    .line 90
    iput v1, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mViewRecoder:[I

    .line 1047
    iput-boolean v1, p0, Lcom/lx/launcher8/view/CellLayout;->mEdgeFlag:Z

    .line 1327
    new-instance v0, Lcom/lx/launcher8/view/CellLayout$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/CellLayout$1;-><init>(Lcom/lx/launcher8/view/CellLayout;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mFoceGroundRestore:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mRandom:Ljava/util/Random;

    .line 136
    invoke-direct {p0}, Lcom/lx/launcher8/view/CellLayout;->init()V

    .line 137
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/view/CellLayout;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/view/CellLayout;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/lx/launcher8/view/CellLayout;->mSelectView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/view/CellLayout;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mFoceGroundRestore:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/view/CellLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/view/CellLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/lx/launcher8/view/CellLayout;->performItemLongClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/view/CellLayout;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/view/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/lx/launcher8/view/CellLayout;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/view/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method private childFloatAnima(Landroid/view/View;Landroid/view/animation/Transformation;)V
    .locals 17
    .parameter "child"
    .parameter "t"

    .prologue
    .line 726
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "tag_first"

    const-string v13, "id"

    invoke-static {v11, v12, v13}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 727
    .local v5, id:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 728
    .local v1, data:[F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 729
    .local v10, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 730
    .local v4, h:I
    if-nez v1, :cond_0

    .line 731
    int-to-double v11, v10

    const-wide v13, 0x3fa999999999999aL

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x3ff0

    add-double/2addr v11, v13

    double-to-float v3, v11

    .line 732
    .local v3, gapTop:F
    int-to-double v11, v4

    const-wide v13, 0x3fa999999999999aL

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x3ff0

    add-double/2addr v11, v13

    double-to-float v2, v11

    .line 733
    .local v2, gapLeft:F
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/lx/launcher8/view/CellLayout;->findTransformation(FF)[F

    move-result-object v1

    .line 734
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 736
    .end local v2           #gapLeft:F
    .end local v3           #gapTop:F
    :cond_0
    const/4 v8, 0x0

    .local v8, tx:F
    const/4 v9, 0x0

    .line 737
    .local v9, ty:F
    const/4 v11, 0x0

    aget v11, v1, v11

    float-to-double v11, v11

    const/4 v13, 0x1

    aget v13, v1, v13

    const/4 v14, 0x0

    aget v14, v1, v14

    sub-float/2addr v13, v14

    float-to-double v13, v13

    const-wide v15, 0x3f947ae147ae147bL

    mul-double/2addr v13, v15

    const/4 v15, 0x4

    aget v15, v1, v15

    float-to-double v15, v15

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    double-to-float v8, v11

    .line 738
    const/4 v11, 0x2

    aget v11, v1, v11

    float-to-double v11, v11

    const/4 v13, 0x3

    aget v13, v1, v13

    const/4 v14, 0x2

    aget v14, v1, v14

    sub-float/2addr v13, v14

    float-to-double v13, v13

    const-wide v15, 0x3f947ae147ae147bL

    mul-double/2addr v13, v15

    const/4 v15, 0x4

    aget v15, v1, v15

    float-to-double v15, v15

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    double-to-float v9, v11

    .line 739
    const/4 v11, 0x5

    aget v11, v1, v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_2

    .line 740
    const/4 v11, 0x4

    aget v12, v1, v11

    const/high16 v13, 0x3f80

    add-float/2addr v12, v13

    aput v12, v1, v11

    .line 741
    const-wide v11, 0x3f847ae147ae147bL

    const/4 v13, 0x4

    aget v13, v1, v13

    float-to-double v13, v13

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x3ff0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_1

    .line 742
    const/4 v11, 0x5

    const/high16 v12, 0x3f80

    aput v12, v1, v11

    .line 744
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 754
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v6

    .local v6, left:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 755
    .local v7, top:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    const v12, 0x3f4ccccd

    const v13, 0x3f4ccccd

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    neg-int v12, v10

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v12, v6

    int-to-float v12, v12

    neg-int v13, v4

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v13, v7

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    div-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v6

    int-to-float v12, v12

    div-int/lit8 v13, v4, 0x2

    add-int/2addr v13, v7

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 759
    return-void

    .line 746
    .end local v6           #left:I
    .end local v7           #top:I
    :cond_2
    const/4 v11, 0x4

    aget v12, v1, v11

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    aput v12, v1, v11

    .line 747
    const/4 v11, 0x4

    aget v11, v1, v11

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    .line 748
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 750
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private clearDragRecorder()V
    .locals 2

    .prologue
    .line 1202
    const/4 v0, 0x0

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    .line 1203
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/view/CellLayout;->mCurDragY:I

    iput v0, p0, Lcom/lx/launcher8/view/CellLayout;->mLastDragY:I

    .line 1204
    return-void
.end method

.method private computeDrawBounds(I)V
    .locals 6
    .parameter "scrollY"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 430
    sget v1, Lcom/lx/launcher8/view/CellLayout;->mCellHeight:I

    if-lez v1, :cond_0

    .line 431
    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingTop:I

    sub-int/2addr p1, v1

    .line 432
    sget v1, Lcom/lx/launcher8/view/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/lx/launcher8/view/CellLayout;->mHeightGap:I

    add-int v0, v1, v4

    .line 433
    .local v0, cellH:I
    div-int v1, p1, v0

    iput v1, p0, Lcom/lx/launcher8/view/CellLayout;->mStartCellY:I

    .line 434
    iget v4, p0, Lcom/lx/launcher8/view/CellLayout;->mStartCellY:I

    rem-int v1, p1, v0

    sget v5, Lcom/lx/launcher8/view/CellLayout;->mCellHeight:I

    if-lt v1, v5, :cond_1

    move v1, v2

    :goto_0
    add-int/2addr v1, v4

    iput v1, p0, Lcom/lx/launcher8/view/CellLayout;->mStartCellY:I

    .line 435
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getHeight()I

    move-result v1

    add-int/2addr p1, v1

    .line 436
    div-int v1, p1, v0

    iput v1, p0, Lcom/lx/launcher8/view/CellLayout;->mEndCellY:I

    .line 437
    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mEndCellY:I

    rem-int v4, p1, v0

    sget v5, Lcom/lx/launcher8/view/CellLayout;->mCellHeight:I

    if-lt v4, v5, :cond_2

    :goto_1
    add-int/2addr v1, v2

    iput v1, p0, Lcom/lx/launcher8/view/CellLayout;->mEndCellY:I

    .line 438
    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mEndCellY:I

    iget v2, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/view/CellLayout;->mEndCellY:I

    .line 440
    .end local v0           #cellH:I
    :cond_0
    return-void

    .restart local v0       #cellH:I
    :cond_1
    move v1, v3

    .line 434
    goto :goto_0

    :cond_2
    move v2, v3

    .line 437
    goto :goto_1
.end method

.method private deletBlankLines(IIII)V
    .locals 2
    .parameter "oldCellY"
    .parameter "newCellY"
    .parameter "countY"
    .parameter "detalY"

    .prologue
    .line 553
    add-int v0, p2, p3

    if-ge p1, v0, :cond_0

    add-int v0, p1, p3

    if-gt v0, p2, :cond_2

    .line 554
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/lx/launcher8/view/CellLayout;->deletBlankLines(III)V

    .line 560
    :cond_1
    :goto_0
    return-void

    .line 555
    :cond_2
    if-le p1, p2, :cond_3

    add-int v0, p2, p3

    if-ge p1, v0, :cond_3

    .line 556
    add-int v0, p2, p3

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1, p4}, Lcom/lx/launcher8/view/CellLayout;->deletBlankLines(III)V

    goto :goto_0

    .line 557
    :cond_3
    if-ge p1, p2, :cond_1

    add-int v0, p1, p3

    if-le v0, p2, :cond_1

    .line 558
    sub-int v0, p2, p1

    invoke-virtual {p0, p1, v0, p4}, Lcom/lx/launcher8/view/CellLayout;->deletBlankLines(III)V

    goto :goto_0
.end method

.method private deleteOrAddLine(ZII)V
    .locals 6
    .parameter "del"
    .parameter "cellY"
    .parameter "spanY"

    .prologue
    const/16 v5, 0x400

    .line 573
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getChildCount()I

    move-result v2

    .line 574
    .local v2, count:I
    if-eqz v2, :cond_0

    if-nez p3, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    if-eqz p1, :cond_2

    neg-int p3, p3

    .line 577
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v2, :cond_3

    .line 585
    invoke-direct {p0, v5, v5}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    goto :goto_0

    .line 578
    :cond_3
    invoke-virtual {p0, v3}, Lcom/lx/launcher8/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/CellView;

    .line 579
    .local v0, child:Lcom/lx/launcher8/view/CellView;
    if-nez v0, :cond_5

    .line 577
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 581
    :cond_5
    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellView;->getLayoutParams()Lcom/lx/launcher8/view/CellLayoutParams;

    move-result-object v1

    .line 582
    .local v1, cl:Lcom/lx/launcher8/view/CellLayoutParams;
    invoke-virtual {v1}, Lcom/lx/launcher8/view/CellLayoutParams;->getCellY()I

    move-result v4

    if-lt v4, p2, :cond_4

    .line 583
    invoke-virtual {v1, p3}, Lcom/lx/launcher8/view/CellLayoutParams;->changeCellYBy(I)V

    goto :goto_2
.end method

.method private ensureScrollBounds()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 977
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v2

    .line 978
    .local v2, scrollY:I
    if-gez v2, :cond_1

    .line 979
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    neg-int v4, v2

    const/16 v5, 0x17c

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/Scroller;->startScroll(IIIII)V

    .line 990
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    return v1

    .line 981
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getHeight()I

    move-result v6

    .line 982
    .local v6, h:I
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    if-ge v0, v6, :cond_2

    .line 983
    if-lez v2, :cond_0

    .line 984
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    neg-int v3, v2

    invoke-virtual {v0, v1, v2, v1, v3}, Lcom/lx/launcher8/view/Scroller;->startScroll(IIII)V

    goto :goto_0

    .line 986
    :cond_2
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    add-int v3, v6, v2

    if-ge v0, v3, :cond_0

    .line 987
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    sub-int/2addr v3, v6

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v1, v3}, Lcom/lx/launcher8/view/Scroller;->startScroll(IIII)V

    goto :goto_0

    .line 990
    .end local v6           #h:I
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private fillRecode(IIIII)V
    .locals 8
    .parameter "cellX"
    .parameter "cellY"
    .parameter "countX"
    .parameter "countY"
    .parameter "index"

    .prologue
    .line 507
    const/4 v4, 0x0

    .local v4, y:I
    :goto_0
    if-lt v4, p4, :cond_0

    .line 519
    return-void

    .line 508
    :cond_0
    add-int v0, p2, v4

    .line 509
    .local v0, startY:I
    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/CellLayout;->isOutBounds(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 507
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 510
    :cond_2
    iget-object v5, p0, Lcom/lx/launcher8/view/CellLayout;->mViewRecoder:[I

    aget v2, v5, v0

    .line 511
    .local v2, value:I
    const v5, 0xff00

    and-int/2addr v5, v2

    shr-int/lit8 v1, v5, 0x8

    .line 512
    .local v1, tmpY:I
    if-le p4, v1, :cond_3

    .line 513
    iget-object v5, p0, Lcom/lx/launcher8/view/CellLayout;->mViewRecoder:[I

    and-int/lit16 v6, v2, 0xff

    shl-int/lit8 v7, p2, 0x10

    or-int/2addr v6, v7

    shl-int/lit8 v7, p4, 0x8

    or-int/2addr v6, v7

    aput v6, v5, v0

    .line 515
    :cond_3
    const/4 v3, 0x0

    .local v3, x:I
    :goto_1
    if-ge v3, p3, :cond_1

    .line 516
    iget-object v5, p0, Lcom/lx/launcher8/view/CellLayout;->mViewRecoder:[I

    aget v6, v5, v0

    invoke-direct {p0, p1, p3}, Lcom/lx/launcher8/view/CellLayout;->getXNeedSpace(II)I

    move-result v7

    or-int/2addr v6, v7

    aput v6, v5, v0

    .line 515
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private findTransformation(FF)[F
    .locals 8
    .parameter "paddingTop"
    .parameter "paddingLeft"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 762
    iget-object v2, p0, Lcom/lx/launcher8/view/CellLayout;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit8 v2, v2, 0x7

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 763
    .local v1, way:I
    const/4 v2, 0x6

    new-array v0, v2, [F

    .line 764
    .local v0, data:[F
    packed-switch v1, :pswitch_data_0

    .line 814
    :goto_0
    const/4 v2, 0x4

    const/high16 v3, 0x3f80

    aput v3, v0, v2

    .line 815
    const/4 v2, 0x5

    aput v4, v0, v2

    .line 816
    return-object v0

    .line 766
    :pswitch_0
    aput v4, v0, v3

    .line 767
    neg-float v2, p2

    aput v2, v0, v5

    .line 768
    aput v4, v0, v6

    .line 769
    aput p1, v0, v7

    goto :goto_0

    .line 772
    :pswitch_1
    aput v4, v0, v3

    .line 773
    neg-float v2, p2

    aput v2, v0, v5

    .line 774
    aput v4, v0, v6

    .line 775
    aput v4, v0, v7

    goto :goto_0

    .line 778
    :pswitch_2
    aput v4, v0, v3

    .line 779
    neg-float v2, p2

    aput v2, v0, v5

    .line 780
    aput v4, v0, v6

    .line 781
    neg-float v2, p1

    aput v2, v0, v7

    goto :goto_0

    .line 784
    :pswitch_3
    aput v4, v0, v3

    .line 785
    aput v4, v0, v5

    .line 786
    aput v4, v0, v6

    .line 787
    neg-float v2, p1

    aput v2, v0, v7

    goto :goto_0

    .line 790
    :pswitch_4
    aput v4, v0, v3

    .line 791
    aput p2, v0, v5

    .line 792
    aput v4, v0, v6

    .line 793
    neg-float v2, p1

    aput v2, v0, v7

    goto :goto_0

    .line 796
    :pswitch_5
    aput v4, v0, v3

    .line 797
    aput p2, v0, v5

    .line 798
    aput v4, v0, v6

    .line 799
    aput v4, v0, v7

    goto :goto_0

    .line 802
    :pswitch_6
    aput v4, v0, v3

    .line 803
    aput p2, v0, v5

    .line 804
    aput v4, v0, v6

    .line 805
    aput p1, v0, v7

    goto :goto_0

    .line 808
    :pswitch_7
    aput v4, v0, v3

    .line 809
    aput v4, v0, v5

    .line 810
    aput v4, v0, v6

    .line 811
    aput p1, v0, v7

    goto :goto_0

    .line 764
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private findXSpace(III)I
    .locals 4
    .parameter "cellX"
    .parameter "countX"
    .parameter "regex"

    .prologue
    const/4 v1, -0x1

    .line 528
    add-int v2, p1, p2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    move p1, v1

    .line 532
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 530
    .restart local p1
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/CellLayout;->getXNeedSpace(II)I

    move-result v0

    .line 531
    .local v0, temp:I
    and-int v2, v0, p3

    if-eqz v2, :cond_0

    move p1, v1

    .line 532
    goto :goto_0
.end method

.method private getCacheScroll()I
    .locals 3

    .prologue
    .line 958
    const/4 v0, 0x0

    .line 959
    .local v0, detal:I
    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mLayoutFlags:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 960
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e19999a

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 961
    :cond_0
    return v0
.end method

.method private getXNeedSpace(II)I
    .locals 4
    .parameter "cellX"
    .parameter "countX"

    .prologue
    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, result:I
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 525
    return v0

    .line 523
    :cond_0
    const/4 v2, 0x1

    add-int v3, p1, v1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 140
    invoke-virtual {p0, v5}, Lcom/lx/launcher8/view/CellLayout;->setFocusable(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 142
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 143
    .local v0, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/view/CellLayout;->mTouchSlop:I

    .line 144
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/view/CellLayout;->mMinmumVelocity:I

    .line 145
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/view/CellLayout;->mMaxmumVelocity:I

    .line 146
    new-instance v2, Lcom/lx/launcher8/view/Scroller;

    new-instance v3, Lcom/lx/launcher8/view/CellLayout$MuniInterpolation;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/view/CellLayout$MuniInterpolation;-><init>(Lcom/lx/launcher8/view/CellLayout;)V

    invoke-direct {v2, v1, v3}, Lcom/lx/launcher8/view/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    .line 147
    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    iput-object v2, p0, Lcom/lx/launcher8/view/CellLayout;->mCamera:Landroid/graphics/Camera;

    .line 148
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/lx/launcher8/view/CellLayout;->mTempMatrx:Landroid/graphics/Matrix;

    .line 149
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Lcom/lx/launcher8/view/CellLayout;->mTempt:Landroid/view/animation/Transformation;

    .line 151
    new-instance v2, Lcom/lx/launcher8/anim/ValueAnimation;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/16 v4, 0x22b

    invoke-direct {v2, v3, v4}, Lcom/lx/launcher8/anim/ValueAnimation;-><init>(Landroid/view/animation/Interpolator;I)V

    iput-object v2, p0, Lcom/lx/launcher8/view/CellLayout;->mStartAnima:Lcom/lx/launcher8/anim/ValueAnimation;

    .line 152
    new-instance v2, Lcom/lx/launcher8/anim/ValueAnimation;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    const/16 v4, 0x96

    invoke-direct {v2, v3, v4}, Lcom/lx/launcher8/anim/ValueAnimation;-><init>(Landroid/view/animation/Interpolator;I)V

    iput-object v2, p0, Lcom/lx/launcher8/view/CellLayout;->mDragAnima:Lcom/lx/launcher8/anim/ValueAnimation;

    .line 153
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x2

    invoke-direct {v2, v5, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v2, p0, Lcom/lx/launcher8/view/CellLayout;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 154
    new-instance v2, Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;-><init>(Lcom/lx/launcher8/view/CellLayout;)V

    iput-object v2, p0, Lcom/lx/launcher8/view/CellLayout;->mLaunchRunnable:Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;

    .line 155
    invoke-virtual {p0, v5}, Lcom/lx/launcher8/view/CellLayout;->setStaticTransformationsEnabled(Z)V

    .line 156
    invoke-virtual {p0, v5}, Lcom/lx/launcher8/view/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 157
    invoke-virtual {p0, v5}, Lcom/lx/launcher8/view/CellLayout;->setStartAnimaEnable(Z)V

    .line 158
    invoke-virtual {p0, v5}, Lcom/lx/launcher8/view/CellLayout;->setWillNotDraw(Z)V

    .line 159
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/CellLayout;->setCacheScroll(Z)V

    .line 160
    invoke-direct {p0}, Lcom/lx/launcher8/view/CellLayout;->clearDragRecorder()V

    .line 163
    return-void
.end method

.method private insertCell(Lcom/lx/launcher8/view/CellView;IIIIZ)I
    .locals 29
    .parameter "item"
    .parameter "dragX"
    .parameter "dragY"
    .parameter "oldCountX"
    .parameter "oldCountY"
    .parameter "touchMode"

    .prologue
    .line 1150
    invoke-virtual/range {p1 .. p1}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v23

    .line 1151
    .local v23, cinfo:Lcom/lx/launcher8/bean/ItemCell;
    if-nez v23, :cond_0

    .line 1152
    const/16 v24, 0x0

    .line 1198
    :goto_0
    return v24

    .line 1155
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/lx/launcher8/view/CellView;->getLayoutParams()Lcom/lx/launcher8/view/CellLayoutParams;

    move-result-object v16

    .line 1156
    .local v16, cl:Lcom/lx/launcher8/view/CellLayoutParams;
    move-object/from16 v0, v16

    iget v6, v0, Lcom/lx/launcher8/view/CellLayoutParams;->width:I

    .line 1157
    .local v6, w:I
    move-object/from16 v0, v16

    iget v7, v0, Lcom/lx/launcher8/view/CellLayoutParams;->height:I

    .line 1158
    .local v7, h:I
    const/4 v3, 0x2

    new-array v9, v3, [I

    .line 1159
    .local v9, pos:[I
    move-object/from16 v0, v23

    iget v8, v0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    move-object/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v3 .. v9}, Lcom/lx/launcher8/view/CellLayout;->computePos(IIIII[I)Z

    move-result v25

    .line 1160
    .local v25, isEdge:Z
    invoke-direct/range {p0 .. p1}, Lcom/lx/launcher8/view/CellLayout;->reBuildRecord(Lcom/lx/launcher8/view/CellView;)V

    .line 1161
    move-object/from16 v0, v23

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    move/from16 v26, v0

    .line 1162
    .local v26, oldCellY:I
    const/4 v3, 0x2

    new-array v15, v3, [I

    .line 1163
    .local v15, results:[I
    const/4 v3, 0x0

    aget v11, v9, v3

    const/4 v3, 0x1

    aget v12, v9, v3

    move-object/from16 v0, v23

    iget v13, v0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    move-object/from16 v0, v23

    iget v14, v0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/lx/launcher8/view/CellLayout;->tryFindXYSpace(IIII[I)V

    .line 1164
    :goto_1
    if-nez v25, :cond_1

    const/4 v3, 0x0

    aget v3, v15, v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    aget v3, v15, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 1175
    :cond_1
    const/4 v3, 0x1

    aget v3, v15, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    const/4 v3, 0x1

    aget v3, v15, v3

    move-object/from16 v0, v23

    iput v3, v0, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    .line 1179
    :goto_2
    move-object/from16 v0, v23

    iget v3, v0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    const/4 v4, 0x0

    aget v4, v15, v4

    sub-int v24, v3, v4

    .line 1180
    .local v24, detalY:I
    const/4 v3, 0x0

    const/4 v4, 0x1

    aget v4, v9, v4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v3, v4, v1}, Lcom/lx/launcher8/view/CellLayout;->deleteOrAddLine(ZII)V

    .line 1181
    const/4 v3, 0x1

    aget v3, v9, v3

    move-object/from16 v0, v23

    iput v3, v0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    .line 1182
    const/4 v3, 0x1

    aget v3, v9, v3

    move/from16 v0, v26

    if-lt v0, v3, :cond_5

    add-int v26, v26, v24

    .line 1185
    :goto_3
    const/4 v3, 0x1

    aget v3, v9, v3

    move-object/from16 v0, v23

    iget v4, v0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v24

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/lx/launcher8/view/CellLayout;->deletBlankLines(IIII)V

    .line 1186
    if-nez p6, :cond_2

    .line 1187
    sget v17, Lcom/lx/launcher8/view/CellLayout;->mCellWidth:I

    sget v18, Lcom/lx/launcher8/view/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lx/launcher8/view/CellLayout;->mWidthGap:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lx/launcher8/view/CellLayout;->mHeightGap:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->getPaddingLeft()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lx/launcher8/view/CellLayout;->mPadingTop:I

    move/from16 v22, v0

    invoke-virtual/range {v16 .. v22}, Lcom/lx/launcher8/view/CellLayoutParams;->setup(IIIIII)V

    .line 1188
    move-object/from16 v0, v16

    iget v3, v0, Lcom/lx/launcher8/view/CellLayoutParams;->y:I

    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v4

    sub-int v21, v3, v4

    .line 1189
    .local v21, animaY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/view/CellLayout;->mDragController:Lcom/lx/launcher8/view/DragController;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lx/launcher8/view/CellLayoutParams;->x:I

    move/from16 v20, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v22, v3, 0x2

    move/from16 v18, p2

    move/from16 v19, p3

    invoke-virtual/range {v17 .. v22}, Lcom/lx/launcher8/view/DragController;->startAnimation(IIIII)V

    .line 1195
    .end local v21           #animaY:I
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lx/launcher8/view/CellLayout;->mCurDragY:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lx/launcher8/view/CellLayout;->mLastDragY:I

    const/4 v3, 0x1

    aget v3, v9, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lx/launcher8/view/CellLayout;->mCurDragY:I

    .line 1196
    const/16 v3, 0x80

    const/16 v4, 0x80

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    .line 1197
    const/16 v3, 0x10

    const/16 v4, 0x10

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    goto/16 :goto_0

    .line 1166
    .end local v24           #detalY:I
    :cond_3
    const/4 v3, 0x1

    aget v3, v9, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lx/launcher8/view/CellLayout;->isOutBounds(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/view/CellLayout;->mViewRecoder:[I

    const/4 v4, 0x1

    aget v4, v9, v4

    aget v3, v3, v4

    const/high16 v4, 0xff

    and-int/2addr v3, v4

    shr-int/lit8 v27, v3, 0x10

    .line 1170
    .local v27, tmpCellY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/view/CellLayout;->mViewRecoder:[I

    const/4 v4, 0x1

    aget v4, v9, v4

    aget v3, v3, v4

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v28, v3, 0x8

    .line 1171
    .local v28, tmpY:I
    const/4 v3, 0x2

    move/from16 v0, v28

    if-lt v0, v3, :cond_1

    const/4 v3, 0x1

    aget v3, v9, v3

    move/from16 v0, v27

    if-eq v0, v3, :cond_1

    .line 1172
    const/4 v3, 0x1

    aget v4, v9, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v9, v3

    .line 1173
    const/4 v3, 0x0

    aget v11, v9, v3

    const/4 v3, 0x1

    aget v12, v9, v3

    move-object/from16 v0, v23

    iget v13, v0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    move-object/from16 v0, v23

    iget v14, v0, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/lx/launcher8/view/CellLayout;->tryFindXYSpace(IIII[I)V

    goto/16 :goto_1

    .line 1177
    .end local v27           #tmpCellY:I
    .end local v28           #tmpY:I
    :cond_4
    const/4 v3, 0x0

    aget v3, v9, v3

    move-object/from16 v0, v23

    iput v3, v0, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    goto/16 :goto_2

    .line 1183
    .restart local v24       #detalY:I
    :cond_5
    const/16 v24, 0x0

    goto/16 :goto_3
.end method

.method private isOutBounds(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 1221
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mViewRecoder:[I

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private performItemLongClick()Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1013
    invoke-direct {p0}, Lcom/lx/launcher8/view/CellLayout;->clearDragRecorder()V

    .line 1014
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mItemLongClickListener:Lcom/lx/launcher8/view/CellLayout$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 1015
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mMotionX:F

    float-to-int v0, v0

    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mMotionY:F

    float-to-int v3, v3

    invoke-virtual {p0, v0, v3}, Lcom/lx/launcher8/view/CellLayout;->findByPosition(II)Lcom/lx/launcher8/view/CellView;

    move-result-object v8

    .line 1016
    .local v8, view:Lcom/lx/launcher8/view/CellView;
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mItemLongClickListener:Lcom/lx/launcher8/view/CellLayout$OnItemLongClickListener;

    invoke-interface {v0, v8}, Lcom/lx/launcher8/view/CellLayout$OnItemLongClickListener;->OnItemLongClick(Lcom/lx/launcher8/view/CellView;)Z

    move-result v6

    .line 1017
    .local v6, result:Z
    if-eqz v6, :cond_0

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/CellLayout;->setPressed(Z)V

    .line 1018
    :cond_0
    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    .line 1019
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v2

    .line 1020
    .local v2, scrollY:I
    invoke-virtual {v8}, Lcom/lx/launcher8/view/CellView;->getTop()I

    move-result v7

    .line 1021
    .local v7, top:I
    const/4 v4, 0x0

    .line 1022
    .local v4, detal:I
    if-ge v7, v2, :cond_3

    .line 1023
    sub-int v4, v7, v2

    .line 1027
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    const/16 v5, 0x17c

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/Scroller;->startScroll(IIIII)V

    .line 1028
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->postInvalidate()V

    .line 1031
    .end local v2           #scrollY:I
    .end local v4           #detal:I
    .end local v6           #result:Z
    .end local v7           #top:I
    .end local v8           #view:Lcom/lx/launcher8/view/CellView;
    :cond_2
    return v1

    .line 1024
    .restart local v2       #scrollY:I
    .restart local v4       #detal:I
    .restart local v6       #result:Z
    .restart local v7       #top:I
    .restart local v8       #view:Lcom/lx/launcher8/view/CellView;
    :cond_3
    invoke-virtual {v8}, Lcom/lx/launcher8/view/CellView;->getHeight()I

    move-result v0

    add-int/2addr v0, v7

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getHeight()I

    move-result v3

    sub-int v4, v0, v3

    if-gez v4, :cond_1

    .line 1025
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private postCheckForLongClick()V
    .locals 3

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mPendingCheckForItemLongPress:Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;

    if-nez v0, :cond_0

    .line 1006
    new-instance v0, Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;-><init>(Lcom/lx/launcher8/view/CellLayout;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mPendingCheckForItemLongPress:Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mPendingCheckForItemLongPress:Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;->rememberWindowAttachCount()V

    .line 1009
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mPendingCheckForItemLongPress:Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lx/launcher8/view/CellLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1010
    return-void
.end method

.method private reBuildRecord(Lcom/lx/launcher8/view/CellView;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getChildCount()I

    move-result v8

    .line 1226
    .local v8, count:I
    if-lez v8, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mViewRecoder:[I

    array-length v0, v0

    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    add-int/lit8 v1, v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1227
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mViewRecoder:[I

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mViewRecoder:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1230
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-lt v5, v8, :cond_1

    .line 1237
    return-void

    .line 1231
    :cond_1
    invoke-virtual {p0, v5}, Lcom/lx/launcher8/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1232
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    if-ne v6, p1, :cond_3

    .line 1230
    .end local v6           #child:Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1234
    .restart local v6       #child:Landroid/view/View;
    :cond_3
    check-cast v6, Lcom/lx/launcher8/view/CellView;

    .end local v6           #child:Landroid/view/View;
    invoke-virtual {v6}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v7

    .line 1235
    .local v7, cl:Lcom/lx/launcher8/bean/ItemCell;
    iget v1, v7, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    iget v2, v7, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    iget v3, v7, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    iget v4, v7, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lx/launcher8/view/CellLayout;->fillRecode(IIIII)V

    goto :goto_1
.end method

.method private setLayoutFlag(II)V
    .locals 2
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 355
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mLayoutFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lx/launcher8/view/CellLayout;->mLayoutFlags:I

    .line 356
    return-void
.end method

.method private tryFindXSpace(III)I
    .locals 5
    .parameter "cellX"
    .parameter "countX"
    .parameter "regex"

    .prologue
    const/4 v4, 0x4

    const/4 v2, -0x1

    .line 536
    move v0, p1

    .local v0, i:I
    :goto_0
    if-lt v0, v4, :cond_1

    move v0, v2

    .line 542
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v0

    .line 537
    .restart local v0       #i:I
    :cond_1
    add-int v3, v0, p2

    if-le v3, v4, :cond_2

    move v0, v2

    .line 538
    goto :goto_1

    .line 539
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/lx/launcher8/view/CellLayout;->getXNeedSpace(II)I

    move-result v1

    .line 540
    .local v1, temp:I
    and-int v3, v1, p3

    if-eqz v3, :cond_0

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private tryFindXYSpace(IIII[I)V
    .locals 7
    .parameter "cellX"
    .parameter "cellY"
    .parameter "countY"
    .parameter "countX"
    .parameter "results"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1207
    const/4 v0, 0x0

    .line 1208
    .local v0, detalY:I
    aput v4, p5, v4

    aput v5, p5, v6

    .line 1209
    :goto_0
    if-ge v0, p3, :cond_0

    add-int v2, v0, p2

    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    if-lt v2, v3, :cond_1

    .line 1218
    :cond_0
    return-void

    .line 1210
    :cond_1
    add-int v2, p1, p4

    const/4 v3, 0x4

    if-le v2, v3, :cond_3

    .line 1209
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1211
    :cond_3
    add-int v2, v0, p2

    invoke-direct {p0, v2}, Lcom/lx/launcher8/view/CellLayout;->isOutBounds(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1212
    iget-object v2, p0, Lcom/lx/launcher8/view/CellLayout;->mViewRecoder:[I

    add-int v3, v0, p2

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0xf

    invoke-direct {p0, p1, p4, v2}, Lcom/lx/launcher8/view/CellLayout;->findXSpace(III)I

    move-result v1

    .line 1214
    .local v1, tmp:I
    if-eq v1, v5, :cond_0

    .line 1215
    aput v1, p5, v6

    .line 1216
    aget v2, p5, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, p5, v4

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 1259
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CellLayout unsupport addView(View,int)!!!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CellLayout unsupport addView(View,int,int)!!!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CellLayout unsupport addView(View,int,LayoutParams)!!!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 1271
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CellLayout unsupport addView(View,LayoutParams)!!!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Lcom/lx/launcher8/view/CellView;)V
    .locals 4
    .parameter "child"

    .prologue
    .line 1277
    invoke-virtual {p1}, Lcom/lx/launcher8/view/CellView;->getLayoutParams()Lcom/lx/launcher8/view/CellLayoutParams;

    move-result-object v0

    .line 1278
    .local v0, cp:Lcom/lx/launcher8/view/CellLayoutParams;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "child layout can\'t null!!!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1279
    :cond_0
    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mChildCacheDrawColor:I

    invoke-virtual {p1, v1}, Lcom/lx/launcher8/view/CellView;->setDrawingCacheBackgroundColor(I)V

    .line 1280
    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellLayoutParams;->getCellY()I

    move-result v2

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellLayoutParams;->getSpanY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    .line 1281
    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    sget v2, Lcom/lx/launcher8/view/CellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mHeightGap:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingBottom:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    .line 1282
    const/4 v1, -0x1

    invoke-super {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1283
    return-void
.end method

.method public addViewBottom(Lcom/lx/launcher8/view/CellView;)V
    .locals 12
    .parameter "child"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 1295
    iget v9, p0, Lcom/lx/launcher8/view/CellLayout;->mChildCacheDrawColor:I

    invoke-virtual {p1, v9}, Lcom/lx/launcher8/view/CellView;->setDrawingCacheBackgroundColor(I)V

    .line 1296
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getChildCount()I

    move-result v2

    .line 1297
    .local v2, count:I
    const/4 v0, 0x0

    .line 1298
    .local v0, cellX:I
    iget v9, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1299
    .local v1, cellY:I
    invoke-virtual {p1}, Lcom/lx/launcher8/view/CellView;->getLayoutParams()Lcom/lx/launcher8/view/CellLayoutParams;

    move-result-object v3

    .line 1300
    .local v3, cp:Lcom/lx/launcher8/view/CellLayoutParams;
    if-lez v2, :cond_1

    .line 1301
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/lx/launcher8/view/CellLayout;->reBuildRecord(Lcom/lx/launcher8/view/CellView;)V

    .line 1302
    invoke-virtual {v3}, Lcom/lx/launcher8/view/CellLayoutParams;->getSpanX()I

    move-result v8

    .line 1303
    .local v8, spanX:I
    const/4 v5, -0x1

    .local v5, lastIndex:I
    iget v9, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    add-int/lit8 v6, v9, -0x1

    .line 1305
    .local v6, listIndex:I
    :goto_0
    if-gez v6, :cond_2

    .line 1312
    :cond_0
    if-eq v5, v10, :cond_3

    .line 1313
    move v0, v5

    .line 1314
    add-int/lit8 v1, v6, 0x1

    .line 1317
    .end local v5           #lastIndex:I
    .end local v6           #listIndex:I
    .end local v8           #spanX:I
    :cond_1
    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/lx/launcher8/view/CellLayoutParams;->setLocation(II)V

    .line 1318
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/view/CellLayout;->addView(Lcom/lx/launcher8/view/CellView;)V

    .line 1319
    return-void

    .line 1306
    .restart local v5       #lastIndex:I
    .restart local v6       #listIndex:I
    .restart local v8       #spanX:I
    :cond_2
    iget-object v9, p0, Lcom/lx/launcher8/view/CellLayout;->mViewRecoder:[I

    aget v9, v9, v6

    and-int/lit8 v7, v9, 0xf

    .line 1307
    .local v7, regex:I
    invoke-direct {p0, v11, v8, v7}, Lcom/lx/launcher8/view/CellLayout;->tryFindXSpace(III)I

    move-result v4

    .line 1308
    .local v4, index:I
    if-eq v4, v10, :cond_0

    .line 1309
    move v5, v4

    .line 1305
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1315
    .end local v4           #index:I
    .end local v7           #regex:I
    :cond_3
    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    goto :goto_1
.end method

.method public addViewInLayout(Landroid/view/View;)Z
    .locals 4
    .parameter "child"

    .prologue
    .line 1286
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/CellLayoutParams;

    .line 1287
    .local v0, cp:Lcom/lx/launcher8/view/CellLayoutParams;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "child layout can\'t null!!!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1288
    :cond_0
    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mChildCacheDrawColor:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1289
    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellLayoutParams;->getCellY()I

    move-result v2

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellLayoutParams;->getSpanY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    .line 1290
    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    sget v2, Lcom/lx/launcher8/view/CellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mHeightGap:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingBottom:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    .line 1291
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, v1, v0, v2}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v1

    return v1
.end method

.method public appTextAlpha(I)V
    .locals 5
    .parameter "alpha"

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getChildCount()I

    move-result v1

    .line 291
    .local v1, count:I
    mul-int/lit16 v4, p1, 0xff

    div-int/lit8 v0, v4, 0x64

    .line 292
    .local v0, a:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 296
    return-void

    .line 293
    :cond_0
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/view/CellView;

    .line 294
    .local v3, view:Lcom/lx/launcher8/view/CellView;
    invoke-virtual {v3, v0}, Lcom/lx/launcher8/view/CellView;->setTextAlpha(I)V

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public applyAlpha(I)V
    .locals 5
    .parameter "alpha"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getChildCount()I

    move-result v1

    .line 275
    .local v1, count:I
    mul-int/lit16 v4, p1, 0xff

    div-int/lit8 v0, v4, 0x64

    .line 276
    .local v0, a:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 280
    return-void

    .line 277
    :cond_0
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/view/CellView;

    .line 278
    .local v3, view:Lcom/lx/launcher8/view/CellView;
    invoke-virtual {v3, v0}, Lcom/lx/launcher8/view/CellView;->setGlobalAlpha(I)V

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public applyFGAlpha(I)V
    .locals 5
    .parameter "alpha"

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getChildCount()I

    move-result v1

    .line 283
    .local v1, count:I
    mul-int/lit16 v4, p1, 0xff

    div-int/lit8 v0, v4, 0x64

    .line 284
    .local v0, a:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 288
    return-void

    .line 285
    :cond_0
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/view/CellView;

    .line 286
    .local v3, view:Lcom/lx/launcher8/view/CellView;
    invoke-virtual {v3, v0}, Lcom/lx/launcher8/view/CellView;->setGlobalFGAlpha(I)V

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public applyTheme(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getChildCount()I

    move-result v0

    .line 269
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 272
    return-void

    .line 270
    :cond_0
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 4

    .prologue
    .line 603
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 604
    iget-object v3, p0, Lcom/lx/launcher8/view/CellLayout;->mPendingCheckForItemLongPress:Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;

    if-eqz v3, :cond_0

    .line 605
    iget-object v3, p0, Lcom/lx/launcher8/view/CellLayout;->mPendingCheckForItemLongPress:Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/view/CellLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getChildCount()I

    move-result v1

    .line 609
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 613
    return-void

    .line 610
    :cond_1
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 611
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 609
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 594
    instance-of v0, p1, Lcom/lx/launcher8/view/CellLayoutParams;

    return v0
.end method

.method clearChildrenCache()V
    .locals 2

    .prologue
    .line 1101
    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mLayoutFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    .line 1116
    :goto_0
    return-void

    .line 1103
    :cond_0
    new-instance v0, Lcom/lx/launcher8/view/CellLayout$3;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/CellLayout$3;-><init>(Lcom/lx/launcher8/view/CellLayout;)V

    .line 1115
    .local v0, clearScrollingCache:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/CellLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public computeCellSize(Lcom/lx/launcher8/view/CellLayoutParams;)V
    .locals 7
    .parameter "cl"

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    sget v1, Lcom/lx/launcher8/view/CellLayout;->mCellWidth:I

    sget v2, Lcom/lx/launcher8/view/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mWidthGap:I

    iget v4, p0, Lcom/lx/launcher8/view/CellLayout;->mHeightGap:I

    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingTop:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/lx/launcher8/view/CellLayoutParams;->setup(IIIIII)V

    goto :goto_0
.end method

.method public computePos(IIIII[I)Z
    .locals 12
    .parameter "dragX"
    .parameter "dragY"
    .parameter "w"
    .parameter "h"
    .parameter "spanX"
    .parameter "pos"

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v6

    .line 215
    .local v6, scrollY:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getPaddingLeft()I

    move-result v2

    .local v2, left:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getPaddingRight()I

    move-result v9

    sub-int v5, v8, v9

    .line 216
    .local v5, right:I
    iget v8, p0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    add-int v8, v8, p4

    iget v9, p0, Lcom/lx/launcher8/view/CellLayout;->mHeightGap:I

    add-int v0, v8, v9

    .line 217
    .local v0, bottom:I
    iget v8, p0, Lcom/lx/launcher8/view/CellLayout;->mHeightGap:I

    add-int v8, v8, p4

    neg-int v7, v8

    .line 218
    .local v7, top:I
    move v3, p1

    .local v3, rawX:I
    add-int v4, p2, v6

    .line 219
    .local v4, rawY:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getPaddingLeft()I

    move-result v8

    if-ge v3, v8, :cond_0

    move v3, v2

    .line 220
    :cond_0
    add-int v8, v3, p3

    if-le v8, v5, :cond_1

    sub-int v3, v5, p3

    .line 221
    :cond_1
    if-ge v4, v7, :cond_2

    move v4, v7

    .line 222
    :cond_2
    add-int v8, v4, p4

    if-le v8, v0, :cond_3

    sub-int v4, v0, p4

    .line 223
    :cond_3
    const/4 v8, 0x0

    sget v9, Lcom/lx/launcher8/view/CellLayout;->mCellWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v3

    sub-int/2addr v9, v2

    sget v10, Lcom/lx/launcher8/view/CellLayout;->mCellWidth:I

    iget v11, p0, Lcom/lx/launcher8/view/CellLayout;->mWidthGap:I

    add-int/2addr v10, v11

    div-int/2addr v9, v10

    aput v9, p6, v8

    .line 224
    const/4 v8, 0x1

    if-gez v4, :cond_5

    .end local v4           #rawY:I
    :goto_0
    sget v9, Lcom/lx/launcher8/view/CellLayout;->mCellHeight:I

    iget v10, p0, Lcom/lx/launcher8/view/CellLayout;->mHeightGap:I

    add-int/2addr v9, v10

    div-int v9, v4, v9

    aput v9, p6, v8

    .line 225
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, p6, v9

    rsub-int/lit8 v10, p5, 0x4

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    aput v9, p6, v8

    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, isEdge:Z
    const/4 v8, 0x1

    aget v8, p6, v8

    if-gez v8, :cond_6

    .line 228
    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, p6, v8

    .line 229
    const/4 v1, 0x1

    .line 234
    :cond_4
    :goto_1
    return v1

    .line 224
    .end local v1           #isEdge:Z
    .restart local v4       #rawY:I
    :cond_5
    sget v9, Lcom/lx/launcher8/view/CellLayout;->mCellHeight:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v4, v9

    goto :goto_0

    .line 230
    .end local v4           #rawY:I
    .restart local v1       #isEdge:Z
    :cond_6
    const/4 v8, 0x1

    aget v8, p6, v8

    iget v9, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    if-le v8, v9, :cond_4

    .line 231
    const/4 v8, 0x1

    iget v9, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    aput v9, p6, v8

    .line 232
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/view/CellLayout;->scrollTo(II)V

    .line 636
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->postInvalidate()V

    .line 642
    :goto_0
    return-void

    .line 637
    :cond_0
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mLayoutFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    .line 638
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->invalidate()V

    goto :goto_0

    .line 640
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->clearChildrenCache()V

    goto :goto_0
.end method

.method public computeSize(II)I
    .locals 6
    .parameter "minW"
    .parameter "minH"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 474
    const/4 v1, 0x1

    .local v1, w:I
    const/4 v0, 0x1

    .line 475
    .local v0, h:I
    sget v2, Lcom/lx/launcher8/view/CellLayout;->mCellWidth:I

    if-eqz v2, :cond_0

    .line 476
    sget v2, Lcom/lx/launcher8/view/CellLayout;->mCellWidth:I

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, -0xa

    sget v3, Lcom/lx/launcher8/view/CellLayout;->mCellWidth:I

    div-int/2addr v2, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 477
    sget v2, Lcom/lx/launcher8/view/CellLayout;->mCellWidth:I

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, -0xa

    sget v3, Lcom/lx/launcher8/view/CellLayout;->mCellHeight:I

    div-int/2addr v2, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 479
    :cond_0
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 481
    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v2, v0

    return v2
.end method

.method public deletBlankLines(III)V
    .locals 4
    .parameter "cellY"
    .parameter "countY"
    .parameter "offsetY"

    .prologue
    const/4 v3, 0x1

    .line 563
    if-nez p2, :cond_1

    .line 570
    :cond_0
    return-void

    .line 564
    :cond_1
    add-int/lit8 v0, p2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 565
    add-int v1, v0, p1

    sub-int/2addr v1, p3

    invoke-direct {p0, v1}, Lcom/lx/launcher8/view/CellLayout;->isOutBounds(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 564
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 566
    :cond_3
    iget-object v1, p0, Lcom/lx/launcher8/view/CellLayout;->mViewRecoder:[I

    add-int v2, v0, p1

    sub-int/2addr v2, p3

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0xf

    if-nez v1, :cond_2

    .line 567
    add-int v1, v0, p1

    invoke-direct {p0, v3, v1, v3}, Lcom/lx/launcher8/view/CellLayout;->deleteOrAddLine(ZII)V

    goto :goto_1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 445
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 446
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mLayoutFlags:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 447
    const/high16 v0, 0x3300

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 449
    :cond_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 996
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mSelectView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mSelectView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 999
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mSelectView:Landroid/view/View;

    .line 1000
    :cond_1
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v4, 0x1

    .line 453
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    .line 470
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p2

    .line 455
    check-cast v0, Lcom/lx/launcher8/view/CellView;

    .line 456
    .local v0, cv:Lcom/lx/launcher8/view/CellView;
    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    .line 457
    .local v2, ic:Lcom/lx/launcher8/bean/ItemCell;
    iget v6, v2, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    iget v7, v2, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lx/launcher8/view/CellLayout;->mStartCellY:I

    if-lt v6, v7, :cond_0

    iget v6, v2, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    iget v7, p0, Lcom/lx/launcher8/view/CellLayout;->mEndCellY:I

    if-gt v6, v7, :cond_0

    .line 459
    iget-object v6, p0, Lcom/lx/launcher8/view/CellLayout;->mTempMatrx:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 460
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 461
    .local v5, saveCount:I
    iget-object v6, p0, Lcom/lx/launcher8/view/CellLayout;->mDragAnima:Lcom/lx/launcher8/anim/ValueAnimation;

    invoke-virtual {v6}, Lcom/lx/launcher8/anim/ValueAnimation;->isFinished()Z

    move-result v1

    .line 462
    .local v1, dragFinish:Z
    iget-object v6, p0, Lcom/lx/launcher8/view/CellLayout;->mDragAnima:Lcom/lx/launcher8/anim/ValueAnimation;

    invoke-virtual {v6}, Lcom/lx/launcher8/anim/ValueAnimation;->getCurrentValue()F

    move-result v3

    .line 463
    .local v3, progress:F
    sget v6, Lcom/lx/launcher8/view/CellLayout;->mCellHeight:I

    invoke-virtual {v0, p1, v6, v3, v1}, Lcom/lx/launcher8/view/CellView;->viewTranslation(Landroid/graphics/Canvas;IFZ)V

    .line 464
    iget-object v6, p0, Lcom/lx/launcher8/view/CellLayout;->mTempt:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->clear()V

    .line 465
    iget-object v6, p0, Lcom/lx/launcher8/view/CellLayout;->mTempt:Landroid/view/animation/Transformation;

    invoke-virtual {p0, v0, v6}, Lcom/lx/launcher8/view/CellLayout;->getChildTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 466
    iget-object v6, p0, Lcom/lx/launcher8/view/CellLayout;->mTempt:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 468
    :cond_2
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getDrawingTime()J

    move-result-wide v6

    invoke-super {p0, p1, v0, v6, v7}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    .line 469
    .local v4, result:Z
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method enableChildrenCache()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x1

    .line 1093
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mLayoutFlags:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1098
    :goto_0
    return-void

    .line 1095
    :cond_0
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1096
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1097
    invoke-direct {p0, v3, v3}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    goto :goto_0
.end method

.method public findByPosition(II)Lcom/lx/launcher8/view/CellView;
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    .line 1241
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getChildCount()I

    move-result v1

    .line 1242
    .local v1, count:I
    if-nez v1, :cond_1

    move-object v0, v5

    .line 1253
    :cond_0
    :goto_0
    return-object v0

    .line 1243
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v6

    add-int v3, p2, v6

    .line 1244
    .local v3, layoutY:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1245
    .local v4, rect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v1, :cond_2

    move-object v0, v5

    .line 1253
    goto :goto_0

    .line 1246
    :cond_2
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/CellView;

    .line 1247
    .local v0, cell:Lcom/lx/launcher8/view/CellView;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_3

    .line 1248
    invoke-virtual {v0, v4}, Lcom/lx/launcher8/view/CellView;->getHitRect(Landroid/graphics/Rect;)V

    .line 1249
    invoke-virtual {v4, p1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1245
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public findCellById(J)Lcom/lx/launcher8/view/CellView;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 307
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getChildCount()I

    move-result v0

    .line 308
    .local v0, count:I
    const-wide/16 v4, -0x1

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    if-nez v0, :cond_2

    :cond_0
    move-object v2, v3

    .line 317
    :cond_1
    :goto_0
    return-object v2

    .line 311
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_3

    move-object v2, v3

    .line 317
    goto :goto_0

    .line 312
    :cond_3
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/view/CellView;

    .line 313
    .local v2, view:Lcom/lx/launcher8/view/CellView;
    invoke-virtual {v2}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v4

    iget-wide v4, v4, Lcom/lx/launcher8/bean/ItemCell;->id:J

    cmp-long v4, p1, v4

    if-eqz v4, :cond_1

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public findViewByType(I)Lcom/lx/launcher8/view/CellView;
    .locals 5
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 321
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getChildCount()I

    move-result v0

    .line 322
    .local v0, count:I
    if-nez v0, :cond_1

    move-object v2, v3

    .line 330
    :cond_0
    :goto_0
    return-object v2

    .line 325
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_2

    move-object v2, v3

    .line 330
    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/view/CellView;

    .line 327
    .local v2, view:Lcom/lx/launcher8/view/CellView;
    invoke-virtual {v2}, Lcom/lx/launcher8/view/CellView;->getCellType()I

    move-result v4

    if-eq p1, v4, :cond_0

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public fling(I)V
    .locals 11
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x0

    .line 965
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 966
    invoke-direct {p0}, Lcom/lx/launcher8/view/CellLayout;->getCacheScroll()I

    move-result v10

    .line 967
    .local v10, cacheScroll:I
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getHeight()I

    move-result v2

    sub-int v8, v0, v2

    .line 968
    .local v8, maxY:I
    if-nez v10, :cond_1

    .line 969
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v2

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lcom/lx/launcher8/view/Scroller;->fling(IIIIIIII)V

    .line 974
    .end local v8           #maxY:I
    .end local v10           #cacheScroll:I
    :cond_0
    :goto_0
    return-void

    .line 971
    .restart local v8       #maxY:I
    .restart local v10       #cacheScroll:I
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v2

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Lcom/lx/launcher8/view/Scroller;->fling(IIIIIIIIII)V

    goto :goto_0
.end method

.method public forceLayout()V
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 1323
    invoke-direct {p0, v0, v0}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    .line 1324
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1325
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 590
    new-instance v0, Lcom/lx/launcher8/view/CellLayoutParams;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/lx/launcher8/view/CellLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 599
    new-instance v0, Lcom/lx/launcher8/view/CellLayoutParams;

    invoke-direct {v0, p1}, Lcom/lx/launcher8/view/CellLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public declared-synchronized getCellInfos()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/ItemCell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getChildCount()I

    move-result v0

    .line 345
    .local v0, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/ItemCell;>;"
    if-nez v0, :cond_1

    .line 350
    :cond_0
    monitor-exit p0

    return-object v2

    .line 347
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 348
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/view/CellView;

    invoke-virtual {v3}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/ItemCell;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getChildTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 16
    .parameter "child"
    .parameter "t"

    .prologue
    .line 677
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lx/launcher8/view/CellLayout;->mLayoutFlags:I

    and-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const/4 v4, 0x1

    .line 678
    .local v4, isFloat:Z
    :goto_0
    if-eqz v4, :cond_0

    invoke-direct/range {p0 .. p2}, Lcom/lx/launcher8/view/CellLayout;->childFloatAnima(Landroid/view/View;Landroid/view/animation/Transformation;)V

    .line 679
    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lx/launcher8/view/CellLayout;->mLayoutFlags:I

    and-int/lit8 v10, v10, 0x2

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 680
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lx/launcher8/view/CellLayout;->mStartAnima:Lcom/lx/launcher8/anim/ValueAnimation;

    invoke-virtual {v10}, Lcom/lx/launcher8/anim/ValueAnimation;->getCurrentValue()F

    move-result v6

    .line 681
    .local v6, per:F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lx/launcher8/view/CellLayout;->mSelectView:Landroid/view/View;

    if-eqz v10, :cond_1

    const/high16 v10, 0x3f80

    cmpl-float v10, v6, v10

    if-gtz v10, :cond_1

    const/4 v10, 0x0

    cmpg-float v10, v6, v10

    if-gez v10, :cond_4

    .line 682
    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    .line 683
    const/4 v4, 0x0

    .line 718
    .end local v4           #isFloat:Z
    .end local v6           #per:F
    :cond_2
    :goto_1
    return v4

    .line 677
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .restart local v4       #isFloat:Z
    .restart local v6       #per:F
    :cond_4
    move-object/from16 v10, p1

    .line 685
    check-cast v10, Lcom/lx/launcher8/view/CellView;

    invoke-virtual {v10}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v3

    .line 686
    .local v3, ci:Lcom/lx/launcher8/bean/ItemCell;
    iget v10, v3, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    iget v11, v3, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    add-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lx/launcher8/view/CellLayout;->mStartCellY:I

    if-lt v10, v11, :cond_5

    iget v10, v3, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lx/launcher8/view/CellLayout;->mEndCellY:I

    if-le v10, v11, :cond_6

    .line 687
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 688
    :cond_6
    iget v10, v3, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lx/launcher8/view/CellLayout;->mStartCellY:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lx/launcher8/view/CellLayout;->mTimeGap:F

    mul-float v8, v10, v11

    .line 689
    .local v8, startTime:F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lx/launcher8/view/CellLayout;->mSelectView:Landroid/view/View;

    move-object/from16 v0, p1

    if-ne v10, v0, :cond_7

    const/high16 v10, 0x3f80

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lx/launcher8/view/CellLayout;->mTimeGap:F

    sub-float v8, v10, v11

    .line 690
    :cond_7
    cmpg-float v10, v6, v8

    if-gtz v10, :cond_8

    const/4 v4, 0x0

    goto :goto_1

    .line 691
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lx/launcher8/view/CellLayout;->mTempMatrx:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 692
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lx/launcher8/view/CellLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v10}, Landroid/graphics/Camera;->save()V

    .line 693
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lx/launcher8/view/CellLayout;->mTimeGap:F

    add-float/2addr v10, v8

    cmpg-float v10, v10, v6

    if-gtz v10, :cond_9

    .line 694
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lx/launcher8/view/CellLayout;->mCamera:Landroid/graphics/Camera;

    const/high16 v11, -0x3d4c

    invoke-virtual {v10, v11}, Landroid/graphics/Camera;->rotateY(F)V

    .line 695
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lx/launcher8/view/CellLayout;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lx/launcher8/view/CellLayout;->mTempMatrx:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 710
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    .local v5, left:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v9

    .line 711
    .local v9, top:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lx/launcher8/view/CellLayout;->mTempMatrx:Landroid/graphics/Matrix;

    neg-int v11, v5

    int-to-float v11, v11

    neg-int v12, v9

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 712
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lx/launcher8/view/CellLayout;->mTempMatrx:Landroid/graphics/Matrix;

    int-to-float v11, v5

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 713
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lx/launcher8/view/CellLayout;->mTempMatrx:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 714
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lx/launcher8/view/CellLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v10}, Landroid/graphics/Camera;->restore()V

    .line 715
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 697
    .end local v5           #left:I
    .end local v9           #top:I
    :cond_9
    iget v10, v3, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    rsub-int/lit8 v10, v10, 0x4

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    .line 698
    move-object/from16 v0, p0

    iget v11, v0, Lcom/lx/launcher8/view/CellLayout;->mTimeGap:F

    const/high16 v12, 0x4100

    div-float/2addr v11, v12

    .line 697
    mul-float v2, v10, v11

    .line 699
    .local v2, cellStart:F
    cmpg-float v10, v6, v2

    if-gez v10, :cond_a

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 700
    :cond_a
    sub-float v10, v6, v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lx/launcher8/view/CellLayout;->mTimeGap:F

    div-float v1, v10, v11

    .line 701
    .local v1, cellPer:F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lx/launcher8/view/CellLayout;->mCamera:Landroid/graphics/Camera;

    const/high16 v11, -0x3db8

    mul-float/2addr v11, v1

    invoke-virtual {v10, v11}, Landroid/graphics/Camera;->rotateY(F)V

    .line 702
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lx/launcher8/view/CellLayout;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lx/launcher8/view/CellLayout;->mTempMatrx:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 703
    const-wide/high16 v10, 0x3fe0

    float-to-double v12, v1

    mul-double/2addr v10, v12

    double-to-float v7, v10

    .line 704
    .local v7, skew:F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lx/launcher8/view/CellLayout;->mSelCellY:I

    iget v11, v3, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    if-le v10, v11, :cond_b

    neg-float v7, v7

    .line 705
    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lx/launcher8/view/CellLayout;->mTempMatrx:Landroid/graphics/Matrix;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v7}, Landroid/graphics/Matrix;->postSkew(FF)Z

    .line 706
    const-wide/high16 v10, 0x3ff0

    const-wide v12, 0x3fc999999999999aL

    float-to-double v14, v1

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-float v7, v10

    .line 707
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lx/launcher8/view/CellLayout;->mTempMatrx:Landroid/graphics/Matrix;

    invoke-virtual {v10, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 708
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lx/launcher8/view/CellLayout;->mTempMatrx:Landroid/graphics/Matrix;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    mul-float/2addr v11, v1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_2
.end method

.method public getRealHeight()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    return v0
.end method

.method public getVerticalColum()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    return v0
.end method

.method public isEditMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 673
    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mLayoutFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public measureCell(Lcom/lx/launcher8/view/CellLayoutParams;)V
    .locals 7
    .parameter "cl"

    .prologue
    .line 485
    if-nez p1, :cond_0

    .line 487
    :goto_0
    return-void

    .line 486
    :cond_0
    sget v1, Lcom/lx/launcher8/view/CellLayout;->mCellWidth:I

    sget v2, Lcom/lx/launcher8/view/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mWidthGap:I

    iget v4, p0, Lcom/lx/launcher8/view/CellLayout;->mHeightGap:I

    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingTop:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/lx/launcher8/view/CellLayoutParams;->setup(IIIIII)V

    goto :goto_0
.end method

.method public onCellSizeChange(Lcom/lx/launcher8/view/CellView;IIII)V
    .locals 10
    .parameter "cell"
    .parameter "dragX"
    .parameter "dragY"
    .parameter "oldCountX"
    .parameter "oldCountY"

    .prologue
    .line 1140
    invoke-virtual {p1}, Lcom/lx/launcher8/view/CellView;->getLayoutParams()Lcom/lx/launcher8/view/CellLayoutParams;

    move-result-object v7

    .line 1141
    .local v7, cl:Lcom/lx/launcher8/view/CellLayoutParams;
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/lx/launcher8/view/CellLayout;->insertCell(Lcom/lx/launcher8/view/CellView;IIIIZ)I

    move-result v9

    .line 1142
    .local v9, offset:I
    invoke-virtual {v7}, Lcom/lx/launcher8/view/CellLayoutParams;->getSpanY()I

    move-result v0

    sub-int v8, p5, v0

    .line 1143
    .local v8, detalY:I
    if-lez v8, :cond_0

    invoke-virtual {v7}, Lcom/lx/launcher8/view/CellLayoutParams;->getCellY()I

    move-result v0

    invoke-virtual {v7}, Lcom/lx/launcher8/view/CellLayoutParams;->getSpanY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v8, v9}, Lcom/lx/launcher8/view/CellLayout;->deletBlankLines(III)V

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mCellSizeChangeListener:Lcom/lx/launcher8/view/CellLayout$OnCellSizeChange;

    if-eqz v0, :cond_1

    .line 1145
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mCellSizeChangeListener:Lcom/lx/launcher8/view/CellLayout$OnCellSizeChange;

    invoke-interface {v0, p1, p4, p5}, Lcom/lx/launcher8/view/CellLayout$OnCellSizeChange;->onCellSizeChange(Lcom/lx/launcher8/view/CellView;II)V

    .line 1146
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->requestLayout()V

    .line 1147
    return-void
.end method

.method public onDelCell(Lcom/lx/launcher8/view/CellView;)V
    .locals 5
    .parameter "cell"

    .prologue
    const/16 v4, 0x400

    .line 1129
    if-eqz p1, :cond_0

    .line 1130
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 1131
    invoke-virtual {p1}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    .line 1132
    .local v0, cl:Lcom/lx/launcher8/bean/ItemCell;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lx/launcher8/view/CellLayout;->reBuildRecord(Lcom/lx/launcher8/view/CellView;)V

    .line 1133
    iget v1, v0, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    iget v2, v0, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/lx/launcher8/view/CellLayout;->deletBlankLines(III)V

    .line 1135
    invoke-direct {p0, v4, v4}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    .line 1137
    .end local v0           #cl:Lcom/lx/launcher8/bean/ItemCell;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mPendingCheckForItemLongPress:Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mPendingCheckForItemLongPress:Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/CellLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 629
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 630
    return-void
.end method

.method public onDragUp(Landroid/view/View;Lcom/lx/launcher8/view/CellView;IIIIZ)Landroid/graphics/Point;
    .locals 7
    .parameter "dragView"
    .parameter "item"
    .parameter "dragX"
    .parameter "dragY"
    .parameter "coutX"
    .parameter "countY"
    .parameter "touchMode"

    .prologue
    .line 1120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/view/CellLayout;->mEdgeFlag:Z

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 1122
    invoke-direct/range {v0 .. v6}, Lcom/lx/launcher8/view/CellLayout;->insertCell(Lcom/lx/launcher8/view/CellView;IIIIZ)I

    .line 1123
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->requestLayout()V

    .line 1124
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 821
    iget-object v9, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {v9}, Lcom/lx/launcher8/view/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1

    .line 846
    :cond_0
    :goto_0
    return v7

    .line 823
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 824
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 825
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 826
    .local v6, y:F
    if-nez v0, :cond_2

    .line 827
    iput v5, p0, Lcom/lx/launcher8/view/CellLayout;->mMotionX:F

    .line 828
    iput v6, p0, Lcom/lx/launcher8/view/CellLayout;->mMotionY:F

    goto :goto_0

    .line 829
    :cond_2
    const/4 v9, 0x2

    if-ne v0, v9, :cond_0

    .line 830
    iget v9, p0, Lcom/lx/launcher8/view/CellLayout;->mMotionY:F

    sub-float v9, v6, v9

    float-to-int v1, v9

    .line 831
    .local v1, deltaY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 832
    .local v2, distance:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v9

    if-eqz v9, :cond_5

    move v3, v7

    .line 833
    .local v3, overscroll:Z
    :goto_1
    if-nez v3, :cond_3

    iget v9, p0, Lcom/lx/launcher8/view/CellLayout;->mTouchSlop:I

    if-le v2, v9, :cond_0

    .line 834
    :cond_3
    invoke-virtual {p0, v8}, Lcom/lx/launcher8/view/CellLayout;->setPressed(Z)V

    .line 837
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 838
    .local v4, parent:Landroid/view/ViewParent;
    if-eqz v4, :cond_4

    .line 839
    invoke-interface {v4, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 841
    :cond_4
    iget-object v8, p0, Lcom/lx/launcher8/view/CellLayout;->mPendingCheckForItemLongPress:Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;

    if-eqz v8, :cond_0

    .line 842
    iget-object v8, p0, Lcom/lx/launcher8/view/CellLayout;->mPendingCheckForItemLongPress:Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/view/CellLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v3           #overscroll:Z
    .end local v4           #parent:Landroid/view/ViewParent;
    :cond_5
    move v3, v8

    .line 832
    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/16 v8, 0x40

    .line 491
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getChildCount()I

    move-result v3

    .line 492
    .local v3, count:I
    invoke-direct {p0, v8, v8}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    .line 493
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v3, :cond_0

    .line 503
    const/4 v6, 0x0

    invoke-direct {p0, v6, v8}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    .line 504
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/lx/launcher8/view/CellLayout;->computeDrawBounds(I)V

    .line 505
    return-void

    .line 494
    :cond_0
    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/CellView;

    .line 495
    .local v0, child:Lcom/lx/launcher8/view/CellView;
    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 497
    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellView;->getLayoutParams()Lcom/lx/launcher8/view/CellLayoutParams;

    move-result-object v5

    .line 498
    .local v5, lp:Lcom/lx/launcher8/view/CellLayoutParams;
    iget v1, v5, Lcom/lx/launcher8/view/CellLayoutParams;->x:I

    .line 499
    .local v1, childLeft:I
    iget v2, v5, Lcom/lx/launcher8/view/CellLayoutParams;->y:I

    .line 500
    .local v2, childTop:I
    iget v6, v5, Lcom/lx/launcher8/view/CellLayoutParams;->width:I

    add-int/2addr v6, v1

    iget v7, v5, Lcom/lx/launcher8/view/CellLayoutParams;->height:I

    add-int/2addr v7, v2

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/lx/launcher8/view/CellView;->layout(IIII)V

    .line 493
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    .end local v5           #lp:Lcom/lx/launcher8/view/CellLayoutParams;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 387
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x4000

    if-ne v2, v3, :cond_0

    .line 388
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x4000

    if-eq v2, v3, :cond_1

    .line 389
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 390
    const-string v3, "CellLayout can only be used in EXACTLY mode."

    .line 389
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 392
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 393
    .local v14, width:I
    iget v2, p0, Lcom/lx/launcher8/view/CellLayout;->mWidthGap:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v2, v14, v2

    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mWidthGap:I

    add-int/2addr v2, v3

    .line 394
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getPaddingLeft()I

    move-result v3

    .line 393
    sub-int/2addr v2, v3

    .line 394
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getPaddingRight()I

    move-result v3

    .line 393
    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 394
    const/high16 v3, 0x4080

    .line 393
    div-float/2addr v2, v3

    .line 394
    const/high16 v3, 0x3f00

    .line 393
    add-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/lx/launcher8/view/CellLayout;->mCellWidth:I

    .line 395
    sget v2, Lcom/lx/launcher8/view/CellLayout;->mCellWidth:I

    sput v2, Lcom/lx/launcher8/view/CellLayout;->mCellHeight:I

    .line 396
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getChildCount()I

    move-result v11

    .line 397
    .local v11, count:I
    iget v2, p0, Lcom/lx/launcher8/view/CellLayout;->mLayoutFlags:I

    and-int/lit16 v2, v2, 0x410

    if-eqz v2, :cond_4

    const/4 v13, 0x1

    .line 398
    .local v13, requestHeight:Z
    :goto_0
    if-eqz v13, :cond_2

    .line 399
    const/4 v2, 0x0

    iput v2, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    .line 400
    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {p0, v2, v3}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    .line 401
    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {p0, v2, v3}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    .line 403
    :cond_2
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-lt v12, v11, :cond_5

    .line 417
    if-eqz v13, :cond_3

    .line 418
    iget v2, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    sget v3, Lcom/lx/launcher8/view/CellLayout;->mCellHeight:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/lx/launcher8/view/CellLayout;->mHeightGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingTop:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingBottom:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    .line 420
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    move/from16 v0, p2

    invoke-static {v3, v0}, Lcom/lx/launcher8/view/CellLayout;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/lx/launcher8/view/CellLayout;->setMeasuredDimension(II)V

    .line 421
    return-void

    .line 397
    .end local v12           #i:I
    .end local v13           #requestHeight:Z
    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    .line 405
    .restart local v12       #i:I
    .restart local v13       #requestHeight:Z
    :cond_5
    invoke-virtual {p0, v12}, Lcom/lx/launcher8/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 406
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/view/CellLayoutParams;

    .line 408
    .local v1, lp:Lcom/lx/launcher8/view/CellLayoutParams;
    sget v2, Lcom/lx/launcher8/view/CellLayout;->mCellWidth:I

    sget v3, Lcom/lx/launcher8/view/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/lx/launcher8/view/CellLayout;->mWidthGap:I

    iget v5, p0, Lcom/lx/launcher8/view/CellLayout;->mHeightGap:I

    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getPaddingLeft()I

    move-result v6

    iget v7, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingTop:I

    invoke-virtual/range {v1 .. v7}, Lcom/lx/launcher8/view/CellLayoutParams;->setup(IIIIII)V

    .line 410
    if-eqz v13, :cond_6

    .line 411
    iget v2, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    invoke-virtual {v1}, Lcom/lx/launcher8/view/CellLayoutParams;->getSpanY()I

    move-result v3

    invoke-virtual {v1}, Lcom/lx/launcher8/view/CellLayoutParams;->getCellY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/view/CellLayout;->mLongAxisCells:I

    .line 413
    :cond_6
    iget v2, v1, Lcom/lx/launcher8/view/CellLayoutParams;->width:I

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 414
    .local v9, childWidthMeasureSpec:I
    iget v2, v1, Lcom/lx/launcher8/view/CellLayoutParams;->height:I

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 415
    .local v10, childheightMeasureSpec:I
    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 403
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "event"

    .prologue
    .line 852
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lx/launcher8/view/CellLayout;->mLayoutFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_0

    .line 853
    const/4 v2, 0x0

    .line 939
    :goto_0
    return v2

    .line 854
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/CellLayout;->mMotionTraker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 855
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lx/launcher8/view/CellLayout;->mMotionTraker:Landroid/view/VelocityTracker;

    .line 857
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/CellLayout;->mMotionTraker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 858
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    .line 859
    .local v20, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    .line 860
    .local v21, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 939
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 862
    :pswitch_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lx/launcher8/view/CellLayout;->mLastY:F

    .line 863
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lx/launcher8/view/CellLayout;->mMotionX:F

    .line 864
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lx/launcher8/view/CellLayout;->mMotionY:F

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/Scroller;->abortAnimation()V

    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->isEditMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 867
    invoke-direct/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->postCheckForLongClick()V

    .line 869
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lx/launcher8/view/CellLayout;->mMotionX:F

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lx/launcher8/view/CellLayout;->mMotionY:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/lx/launcher8/view/CellLayout;->findByPosition(II)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lx/launcher8/view/CellLayout;->mSelectView:Landroid/view/View;

    .line 870
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/CellLayout;->setPressed(Z)V

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->postInvalidate()V

    goto :goto_1

    .line 874
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lx/launcher8/view/CellLayout;->mLastY:F

    sub-float v2, v2, v21

    float-to-int v14, v2

    .line 875
    .local v14, disY:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lx/launcher8/view/CellLayout;->mMotionY:F

    sub-float v2, v2, v21

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lx/launcher8/view/CellLayout;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 876
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/CellLayout;->setPressed(Z)V

    .line 877
    if-gez v14, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lx/launcher8/view/CellLayout;->mLastY:F

    const/high16 v3, 0x41f0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/AnallLauncher;

    invoke-virtual {v2}, Lcom/lx/launcher8/AnallLauncher;->showStateBarIfNeed()V

    .line 880
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    .line 881
    .local v18, parent:Landroid/view/ViewParent;
    if-eqz v18, :cond_5

    .line 882
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 884
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/CellLayout;->mDragController:Lcom/lx/launcher8/view/DragController;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/DragController;->hideDragView()V

    .line 886
    .end local v18           #parent:Landroid/view/ViewParent;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->getHeight()I

    move-result v16

    .line 887
    .local v16, h:I
    invoke-direct/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->getCacheScroll()I

    move-result v13

    .line 888
    .local v13, detal:I
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v19

    .line 889
    .local v19, sy:I
    if-gez v14, :cond_8

    .line 890
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v3, v19, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    neg-int v14, v2

    .line 896
    :cond_7
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lcom/lx/launcher8/view/CellLayout;->scrollBy(II)V

    .line 897
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lx/launcher8/view/CellLayout;->mLastY:F

    goto/16 :goto_1

    .line 892
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    move/from16 v0, v16

    if-le v2, v0, :cond_7

    .line 893
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    add-int/2addr v2, v13

    sub-int v2, v2, v19

    sub-int v2, v2, v16

    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_2

    .line 900
    .end local v13           #detal:I
    .end local v14           #disY:I
    .end local v16           #h:I
    .end local v19           #sy:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/CellLayout;->mPendingCheckForItemLongPress:Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;

    if-eqz v2, :cond_9

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/CellLayout;->mPendingCheckForItemLongPress:Lcom/lx/launcher8/view/CellLayout$CheckForItemLongPress;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/CellLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 903
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 904
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/CellLayout;->setPressed(Z)V

    .line 905
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->performItemClick()V

    .line 907
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v4

    .line 908
    .local v4, scrollY:I
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->getHeight()I

    move-result v17

    .line 909
    .local v17, height:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    move/from16 v0, v17

    if-gt v2, v0, :cond_d

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    neg-int v6, v4

    const/16 v7, 0x17c

    invoke-virtual/range {v2 .. v7}, Lcom/lx/launcher8/view/Scroller;->startScroll(IIIII)V

    .line 921
    :cond_b
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->isEditMode()Z

    move-result v2

    if-nez v2, :cond_c

    .line 922
    new-instance v2, Lcom/lx/launcher8/view/CellLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lx/launcher8/view/CellLayout$2;-><init>(Lcom/lx/launcher8/view/CellLayout;)V

    .line 927
    const-wide/16 v7, 0x1f4

    .line 922
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v8}, Lcom/lx/launcher8/view/CellLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 929
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->invalidate()V

    goto/16 :goto_1

    .line 911
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    sub-int v2, v2, v17

    if-le v4, v2, :cond_e

    .line 912
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    sub-int v2, v2, v17

    sub-int v6, v2, v4

    .line 913
    .local v6, len:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x17c

    invoke-virtual/range {v2 .. v7}, Lcom/lx/launcher8/view/Scroller;->startScroll(IIIII)V

    goto :goto_3

    .line 914
    .end local v6           #len:I
    :cond_e
    if-gez v4, :cond_f

    .line 915
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    const/4 v8, 0x0

    const/4 v10, 0x0

    neg-int v11, v4

    const/16 v12, 0x17c

    move v9, v4

    invoke-virtual/range {v7 .. v12}, Lcom/lx/launcher8/view/Scroller;->startScroll(IIIII)V

    goto :goto_3

    .line 917
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/CellLayout;->mMotionTraker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lx/launcher8/view/CellLayout;->mMaxmumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/CellLayout;->mMotionTraker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v15, v2

    .line 919
    .local v15, fy:I
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lx/launcher8/view/CellLayout;->mMinmumVelocity:I

    if-le v2, v3, :cond_b

    neg-int v2, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/CellLayout;->fling(I)V

    goto :goto_3

    .line 932
    .end local v4           #scrollY:I
    .end local v15           #fy:I
    .end local v17           #height:I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 933
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/CellLayout;->setPressed(Z)V

    .line 934
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v2

    if-gez v2, :cond_2

    .line 935
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/lx/launcher8/view/CellLayout;->scrollTo(II)V

    goto/16 :goto_1

    .line 860
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected performItemClick()V
    .locals 5

    .prologue
    .line 1035
    invoke-direct {p0}, Lcom/lx/launcher8/view/CellLayout;->clearDragRecorder()V

    .line 1036
    iget-object v3, p0, Lcom/lx/launcher8/view/CellLayout;->mItemClickListener:Lcom/lx/launcher8/view/CellLayout$OnItemClickListener;

    if-eqz v3, :cond_1

    .line 1037
    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mMotionX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/lx/launcher8/view/CellLayout;->mLastY:F

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/lx/launcher8/view/CellLayout;->findByPosition(II)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    .line 1038
    .local v2, view:Lcom/lx/launcher8/view/CellView;
    const/4 v0, 0x0

    .local v0, childX:I
    const/4 v1, 0x0

    .line 1039
    .local v1, childY:I
    if-eqz v2, :cond_0

    .line 1040
    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mMotionX:F

    invoke-virtual {v2}, Lcom/lx/launcher8/view/CellView;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 1041
    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mMotionY:F

    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2}, Lcom/lx/launcher8/view/CellView;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v1, v3

    .line 1043
    :cond_0
    iget-object v3, p0, Lcom/lx/launcher8/view/CellLayout;->mItemClickListener:Lcom/lx/launcher8/view/CellLayout$OnItemClickListener;

    invoke-interface {v3, v2, v0, v1}, Lcom/lx/launcher8/view/CellLayout$OnItemClickListener;->OnItemClick(Lcom/lx/launcher8/view/CellView;II)V

    .line 1045
    .end local v0           #childX:I
    .end local v1           #childY:I
    .end local v2           #view:Lcom/lx/launcher8/view/CellView;
    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 944
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mLayoutFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 945
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mDragAnima:Lcom/lx/launcher8/anim/ValueAnimation;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mLastDragY:I

    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mCurDragY:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mLayoutFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mDragAnima:Lcom/lx/launcher8/anim/ValueAnimation;

    invoke-virtual {v0}, Lcom/lx/launcher8/anim/ValueAnimation;->reset()V

    .line 947
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 955
    :cond_2
    :goto_0
    return-void

    .line 951
    :cond_3
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_4
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mDragAnima:Lcom/lx/launcher8/anim/ValueAnimation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mDragAnima:Lcom/lx/launcher8/anim/ValueAnimation;

    invoke-virtual {v0}, Lcom/lx/launcher8/anim/ValueAnimation;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 952
    :cond_5
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mLayoutFlags:I

    and-int/lit16 v0, v0, 0x140

    if-nez v0, :cond_2

    .line 953
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method

.method public scrollBottom()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1084
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v2

    .line 1085
    .local v2, scrollY:I
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getHeight()I

    move-result v3

    sub-int v4, v0, v3

    .line 1086
    .local v4, detalY:I
    if-lez v4, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    const/16 v5, 0x17c

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/Scroller;->startScroll(IIIII)V

    .line 1088
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->postInvalidate()V

    .line 1090
    :cond_0
    return-void
.end method

.method public scrollBottom(I)V
    .locals 7
    .parameter "minLen"

    .prologue
    const/4 v1, 0x0

    .line 1063
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v2

    .line 1064
    .local v2, scrollY:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getHeight()I

    move-result v6

    .line 1067
    .local v6, height:I
    iget-boolean v0, p0, Lcom/lx/launcher8/view/CellLayout;->mEdgeFlag:Z

    if-nez v0, :cond_0

    add-int v0, v2, v6

    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    add-int/2addr v3, p1

    if-lt v0, v3, :cond_1

    .line 1068
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/view/CellLayout;->mEdgeFlag:Z

    .line 1075
    :goto_0
    return-void

    .line 1071
    :cond_1
    div-int/lit8 v0, v6, 0x3

    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mRealHeight:I

    sub-int/2addr v3, v2

    sub-int/2addr v3, v6

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1072
    .local v4, detalY:I
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mHeightGap:I

    add-int/2addr v0, p1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1073
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    const/16 v5, 0x320

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/Scroller;->startScroll(IIIII)V

    .line 1074
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->postInvalidate()V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 425
    invoke-direct {p0, p2}, Lcom/lx/launcher8/view/CellLayout;->computeDrawBounds(I)V

    .line 426
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 427
    return-void
.end method

.method public scrollTop()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1078
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v2

    .line 1079
    .local v2, scrollY:I
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    neg-int v4, v2

    const/16 v5, 0x17c

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/Scroller;->startScroll(IIIII)V

    .line 1080
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->postInvalidate()V

    .line 1081
    return-void
.end method

.method public scrollTop(I)V
    .locals 7
    .parameter "minLen"

    .prologue
    const/4 v1, 0x0

    .line 1050
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v2

    .line 1051
    .local v2, scrollY:I
    iget-boolean v0, p0, Lcom/lx/launcher8/view/CellLayout;->mEdgeFlag:Z

    if-nez v0, :cond_0

    neg-int v0, p1

    if-gt v2, v0, :cond_1

    .line 1052
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/view/CellLayout;->mEdgeFlag:Z

    .line 1059
    :goto_0
    return-void

    .line 1055
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1056
    .local v6, detalY:I
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mHeightGap:I

    add-int/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1057
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout;->mScroller:Lcom/lx/launcher8/view/Scroller;

    neg-int v4, v6

    const/16 v5, 0x17c

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/Scroller;->startScroll(IIIII)V

    .line 1058
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->postInvalidate()V

    goto :goto_0
.end method

.method public setCacheScroll(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/16 v1, 0x8

    .line 197
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    .line 198
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCellTextDisplay(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getChildCount()I

    move-result v0

    .line 300
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 304
    return-void

    .line 301
    :cond_0
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/view/CellView;

    .line 302
    .local v2, view:Lcom/lx/launcher8/view/CellView;
    invoke-virtual {v2, p1}, Lcom/lx/launcher8/view/CellView;->setTextDisplay(Z)V

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setChildCacheDrawColor(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 334
    iget v2, p0, Lcom/lx/launcher8/view/CellLayout;->mChildCacheDrawColor:I

    if-eq v2, p1, :cond_0

    .line 335
    iput p1, p0, Lcom/lx/launcher8/view/CellLayout;->mChildCacheDrawColor:I

    .line 336
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->getChildCount()I

    move-result v0

    .line 337
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 341
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    return-void

    .line 338
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDragControl(Lcom/lx/launcher8/view/DragController;)V
    .locals 0
    .parameter "dc"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/lx/launcher8/view/CellLayout;->mDragController:Lcom/lx/launcher8/view/DragController;

    .line 167
    return-void
.end method

.method public setEditMode(Z)V
    .locals 2
    .parameter "edit"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 645
    if-eqz p1, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->enableChildrenCache()V

    .line 649
    invoke-direct {p0, v0, v0}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    .line 656
    :goto_0
    const/16 v0, 0x200

    invoke-direct {p0, v1, v0}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    .line 659
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->invalidate()V

    .line 660
    return-void

    .line 651
    :cond_0
    invoke-direct {p0}, Lcom/lx/launcher8/view/CellLayout;->ensureScrollBounds()Z

    .line 653
    invoke-direct {p0, v1, v0}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/lx/launcher8/view/CellLayout$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/lx/launcher8/view/CellLayout;->mItemClickListener:Lcom/lx/launcher8/view/CellLayout$OnItemClickListener;

    .line 182
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/lx/launcher8/view/CellLayout$OnItemLongClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/lx/launcher8/view/CellLayout;->mItemLongClickListener:Lcom/lx/launcher8/view/CellLayout$OnItemLongClickListener;

    .line 186
    return-void
.end method

.method public setOnItemSizeChangeListener(Lcom/lx/launcher8/view/CellLayout$OnCellSizeChange;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/lx/launcher8/view/CellLayout;->mCellSizeChangeListener:Lcom/lx/launcher8/view/CellLayout$OnCellSizeChange;

    .line 190
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 361
    return-void
.end method

.method public setPadding(IIIIZ)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "force"

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    .line 364
    iget v0, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingTop:I

    .line 365
    .local v0, oldTop:I
    if-eqz p5, :cond_1

    .line 366
    iput p2, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingTop:I

    .line 367
    iput p4, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingBottom:I

    .line 372
    :goto_0
    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingTop:I

    if-eq v0, v1, :cond_0

    .line 373
    invoke-super {p0, p1, v2, p3, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 374
    invoke-direct {p0, v3, v3}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    .line 375
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->requestLayout()V

    .line 377
    :cond_0
    return-void

    .line 369
    :cond_1
    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingTop:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingTop:I

    .line 370
    iget v1, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingBottom:I

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/view/CellLayout;->mPadingBottom:I

    goto :goto_0
.end method

.method public setSpacing(II)V
    .locals 0
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    .line 170
    iput p1, p0, Lcom/lx/launcher8/view/CellLayout;->mWidthGap:I

    .line 171
    iput p2, p0, Lcom/lx/launcher8/view/CellLayout;->mHeightGap:I

    .line 172
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->requestLayout()V

    .line 173
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->postInvalidate()V

    .line 174
    return-void
.end method

.method public setStartAnimaEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v1, 0x4

    .line 205
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    .line 206
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startItemAnima(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 7
    .parameter "view"
    .parameter "run"

    .prologue
    const/16 v6, 0x200

    const/16 v5, 0x100

    const/4 v4, 0x2

    .line 240
    iput-object p1, p0, Lcom/lx/launcher8/view/CellLayout;->mSelectView:Landroid/view/View;

    .line 242
    const/16 v0, 0xa

    .line 243
    .local v0, delay:I
    iget-object v2, p0, Lcom/lx/launcher8/view/CellLayout;->mLaunchRunnable:Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/CellLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 244
    iget v2, p0, Lcom/lx/launcher8/view/CellLayout;->mLayoutFlags:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 245
    .local v1, isNeedAnima:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 247
    iget-object v2, p0, Lcom/lx/launcher8/view/CellLayout;->mStartAnima:Lcom/lx/launcher8/anim/ValueAnimation;

    invoke-virtual {v2}, Lcom/lx/launcher8/anim/ValueAnimation;->reset()V

    .line 248
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->enableChildrenCache()V

    .line 250
    invoke-direct {p0, v6, v6}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    .line 251
    invoke-direct {p0, v4, v4}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/view/CellLayoutParams;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/CellLayoutParams;->getCellY()I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/view/CellLayout;->mSelCellY:I

    .line 258
    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/lx/launcher8/view/CellLayout;->mEndCellY:I

    iget v4, p0, Lcom/lx/launcher8/view/CellLayout;->mStartCellY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iput v2, p0, Lcom/lx/launcher8/view/CellLayout;->mTimeGap:F

    .line 259
    const/16 v0, 0x1f9

    .line 260
    invoke-direct {p0, v5, v5}, Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/view/CellLayout;->mLaunchRunnable:Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;

    invoke-virtual {v2, p2, v1}, Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;->setParams(Ljava/lang/Runnable;Z)V

    .line 263
    iget-object v2, p0, Lcom/lx/launcher8/view/CellLayout;->mLaunchRunnable:Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;

    int-to-long v3, v0

    invoke-virtual {p0, v2, v3, v4}, Lcom/lx/launcher8/view/CellLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellLayout;->invalidate()V

    .line 265
    return-void

    .line 244
    .end local v1           #isNeedAnima:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
