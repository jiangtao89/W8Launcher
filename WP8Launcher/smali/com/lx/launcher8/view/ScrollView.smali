.class public Lcom/lx/launcher8/view/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final TAG:Ljava/lang/String; = "ScrollView"


# instance fields
.field private mChildToScrollTo:Landroid/view/View;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScrollViewMovedFocus:Z

.field private mScroller:Lcom/lx/launcher8/view/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/view/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lx/launcher8/view/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 65
    iput-boolean v1, p0, Lcom/lx/launcher8/view/ScrollView;->mIsLayoutDirty:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/view/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/view/ScrollView;->mIsBeingDragged:Z

    .line 95
    iput-boolean v1, p0, Lcom/lx/launcher8/view/ScrollView;->mSmoothScrollingEnabled:Z

    .line 111
    invoke-direct {p0}, Lcom/lx/launcher8/view/ScrollView;->initScrollView()V

    .line 112
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 210
    .local v1, childHeight:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0}, Lcom/lx/launcher8/view/ScrollView;->computeCacheScroll()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 212
    .end local v1           #childHeight:I
    :cond_0
    return v2
.end method

.method private computeCacheScroll()I
    .locals 4

    .prologue
    .line 216
    const-wide v0, 0x3fc999999999999aL

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 813
    if-eqz p1, :cond_0

    .line 814
    iget-boolean v0, p0, Lcom/lx/launcher8/view/ScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 815
    invoke-virtual {p0, v1, p1}, Lcom/lx/launcher8/view/ScrollView;->smoothScrollBy(II)V

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/lx/launcher8/view/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 553
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/view/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 554
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 563
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 565
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 566
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v0, :cond_0

    .line 616
    return-object v1

    .line 567
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 568
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 569
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 571
    .local v6, viewBottom:I
    if-ge p2, v6, :cond_1

    if-ge v9, p3, :cond_1

    .line 577
    if-ge p2, v9, :cond_2

    .line 578
    if-ge v6, p3, :cond_2

    const/4 v8, 0x1

    .line 580
    .local v8, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_3

    .line 582
    move-object v1, v5

    .line 583
    move v3, v8

    .line 566
    .end local v8           #viewIsFullyContained:Z
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 578
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 586
    .restart local v8       #viewIsFullyContained:Z
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_6

    .line 587
    :cond_4
    if-nez p1, :cond_5

    .line 588
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v6, v10, :cond_6

    :cond_5
    const/4 v7, 0x0

    .line 590
    .local v7, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_7

    .line 591
    if-eqz v8, :cond_1

    if-eqz v7, :cond_1

    .line 597
    move-object v1, v5

    goto :goto_2

    .line 588
    .end local v7           #viewIsCloserToBoundary:Z
    :cond_6
    const/4 v7, 0x1

    goto :goto_3

    .line 600
    .restart local v7       #viewIsCloserToBoundary:Z
    :cond_7
    if-eqz v8, :cond_8

    .line 602
    move-object v1, v5

    .line 603
    const/4 v3, 0x1

    goto :goto_2

    .line 604
    :cond_8
    if-eqz v7, :cond_1

    .line 609
    move-object v1, v5

    goto :goto_2
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 523
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 524
    .local v2, topWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 526
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_0

    .line 527
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 528
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 532
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    invoke-direct {p0, p1, v2, v0}, Lcom/lx/launcher8/view/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 154
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/ScrollView;->setFocusable(Z)V

    .line 155
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/ScrollView;->setWillNotDraw(Z)V

    .line 156
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 157
    const/high16 v1, 0x100

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/ScrollView;->setScrollBarStyle(I)V

    .line 158
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/ScrollView;->setDescendantFocusability(I)V

    .line 160
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 161
    .local v0, configuration:Landroid/view/ViewConfiguration;
    new-instance v1, Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lx/launcher8/view/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/view/ScrollView;->mScroller:Lcom/lx/launcher8/view/Scroller;

    .line 162
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/view/ScrollView;->mTouchSlop:I

    .line 163
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/view/ScrollView;->mMinimumVelocity:I

    .line 164
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/view/ScrollView;->mMaximumVelocity:I

    .line 165
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 792
    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/view/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 1140
    if-ne p1, p2, :cond_1

    .line 1145
    :cond_0
    :goto_0
    return v1

    .line 1144
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1145
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/lx/launcher8/view/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .parameter "descendant"
    .parameter "delta"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 801
    iget-object v0, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/lx/launcher8/view/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 803
    iget-object v0, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 804
    iget-object v0, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 803
    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 700
    const/4 v3, 0x1

    .line 702
    .local v3, handled:Z
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getHeight()I

    move-result v4

    .line 703
    .local v4, height:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v1

    .line 704
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 705
    .local v0, containerBottom:I
    const/16 v9, 0x21

    if-ne p1, v9, :cond_2

    move v6, v7

    .line 707
    .local v6, up:Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Lcom/lx/launcher8/view/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 708
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 709
    move-object v5, p0

    .line 712
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 713
    const/4 v3, 0x0

    .line 719
    :goto_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v9

    if-eq v5, v9, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 720
    iput-boolean v7, p0, Lcom/lx/launcher8/view/ScrollView;->mScrollViewMovedFocus:Z

    .line 721
    iput-boolean v8, p0, Lcom/lx/launcher8/view/ScrollView;->mScrollViewMovedFocus:Z

    .line 724
    :cond_1
    return v3

    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_2
    move v6, v8

    .line 705
    goto :goto_0

    .line 715
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 716
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/lx/launcher8/view/ScrollView;->doScrollY(I)V

    goto :goto_1

    .line 715
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 940
    iget-object v1, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 943
    iget-object v1, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/lx/launcher8/view/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 945
    iget-object v1, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 947
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 948
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/lx/launcher8/view/ScrollView;->scrollBy(II)V

    .line 950
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 961
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/view/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 962
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 963
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 964
    if-eqz p2, :cond_2

    .line 965
    invoke-virtual {p0, v2, v0}, Lcom/lx/launcher8/view/ScrollView;->scrollBy(II)V

    .line 970
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 962
    goto :goto_0

    .line 967
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/lx/launcher8/view/ScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 183
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 201
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 736
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 737
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 739
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 741
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 743
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-direct {p0, v4, v3}, Lcom/lx/launcher8/view/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 744
    iget-object v7, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 745
    iget-object v7, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/lx/launcher8/view/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 746
    iget-object v7, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/view/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 747
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/lx/launcher8/view/ScrollView;->doScrollY(I)V

    .line 748
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 772
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 773
    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 779
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getDescendantFocusability()I

    move-result v2

    .line 780
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/view/ScrollView;->setDescendantFocusability(I)V

    .line 781
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->requestFocus()Z

    .line 782
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/ScrollView;->setDescendantFocusability(I)V

    .line 784
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 751
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 753
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 754
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v6

    .line 766
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 769
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/lx/launcher8/view/ScrollView;->doScrollY(I)V

    goto :goto_0

    .line 755
    :cond_5
    if-ne p1, v10, :cond_4

    .line 756
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 757
    invoke-virtual {p0, v7}, Lcom/lx/launcher8/view/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 759
    .local v1, daBottom:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getHeight()I

    move-result v9

    add-int v5, v8, v9

    .line 761
    .local v5, screenBottom:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 762
    sub-int v6, v1, v5

    goto :goto_1

    .line 769
    .end local v1           #daBottom:I
    .end local v5           #screenBottom:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 894
    iget-object v4, p0, Lcom/lx/launcher8/view/ScrollView;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {v4}, Lcom/lx/launcher8/view/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 911
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollX()I

    move-result v0

    .line 912
    .local v0, oldX:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v1

    .line 913
    .local v1, oldY:I
    iget-object v4, p0, Lcom/lx/launcher8/view/ScrollView;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {v4}, Lcom/lx/launcher8/view/Scroller;->getCurrX()I

    move-result v2

    .line 914
    .local v2, x:I
    iget-object v4, p0, Lcom/lx/launcher8/view/ScrollView;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {v4}, Lcom/lx/launcher8/view/Scroller;->getCurrY()I

    move-result v3

    .line 924
    .local v3, y:I
    invoke-virtual {p0, v2, v3}, Lcom/lx/launcher8/view/ScrollView;->scrollTo(II)V

    .line 925
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 926
    :cond_0
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/lx/launcher8/view/ScrollView;->onScrollChanged(IIII)V

    .line 930
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->postInvalidate()V

    .line 932
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_2
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 982
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 1036
    :cond_0
    :goto_0
    return v6

    .line 984
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getHeight()I

    move-result v3

    .line 985
    .local v3, height:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v5

    .line 986
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 988
    .local v4, screenBottom:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 991
    .local v2, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 992
    add-int/2addr v5, v2

    .line 996
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/view/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 997
    sub-int/2addr v4, v2

    .line 1000
    :cond_3
    const/4 v6, 0x0

    .line 1002
    .local v6, scrollYDelta:I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    .line 1007
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 1009
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 1016
    :goto_1
    invoke-virtual {p0, v7}, Lcom/lx/launcher8/view/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1017
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 1018
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    .line 1012
    .end local v0           #bottom:I
    .end local v1           #distanceToBottom:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 1020
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 1025
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1027
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1034
    :goto_2
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 1030
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 858
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getChildCount()I

    move-result v0

    .line 859
    .local v0, count:I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-direct {p0}, Lcom/lx/launcher8/view/ScrollView;->computeCacheScroll()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 291
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 292
    const/4 v1, 0x1

    .line 294
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/view/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x21

    const/16 v4, 0x82

    .line 306
    iget-object v5, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 308
    invoke-direct {p0}, Lcom/lx/launcher8/view/ScrollView;->canScroll()Z

    move-result v5

    if-nez v5, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 311
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 312
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 314
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 315
    if-eq v2, p0, :cond_1

    .line 316
    invoke-virtual {v2, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 344
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v1

    .line 321
    :cond_2
    const/4 v1, 0x0

    .line 322
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 323
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 325
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 326
    invoke-virtual {p0, v3}, Lcom/lx/launcher8/view/ScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {p0, v3}, Lcom/lx/launcher8/view/ScrollView;->fullScroll(I)Z

    move-result v1

    .line 330
    goto :goto_0

    .line 332
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 333
    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/ScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_0

    .line 335
    :cond_4
    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/ScrollView;->fullScroll(I)Z

    move-result v1

    .line 337
    goto :goto_0

    .line 339
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_1
    invoke-virtual {p0, v3}, Lcom/lx/launcher8/view/ScrollView;->pageScroll(I)Z

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_1

    .line 323
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 15
    .parameter "velocityY"

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1157
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getPaddingTop()I

    move-result v1

    sub-int v12, v0, v1

    .line 1158
    .local v12, height:I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 1159
    .local v11, bottom:I
    if-lez p1, :cond_1

    if-le v12, v11, :cond_1

    .line 1179
    .end local v11           #bottom:I
    .end local v12           #height:I
    :cond_0
    :goto_0
    return-void

    .line 1161
    .restart local v11       #bottom:I
    .restart local v12       #height:I
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/view/ScrollView;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v11, v12

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/lx/launcher8/view/ScrollView;->computeCacheScroll()I

    move-result v10

    move/from16 v4, p1

    invoke-virtual/range {v0 .. v10}, Lcom/lx/launcher8/view/Scroller;->fling(IIIIIIIIII)V

    .line 1163
    if-lez p1, :cond_4

    const/4 v13, 0x1

    .line 1166
    .local v13, movingDown:Z
    :goto_1
    iget-object v0, p0, Lcom/lx/launcher8/view/ScrollView;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/Scroller;->getFinalY()I

    move-result v0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v13, v0, v1}, Lcom/lx/launcher8/view/ScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 1167
    .local v14, newFocused:Landroid/view/View;
    if-nez v14, :cond_2

    .line 1168
    move-object v14, p0

    .line 1171
    :cond_2
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v14, v0, :cond_3

    .line 1172
    if-eqz v13, :cond_5

    const/16 v0, 0x82

    :goto_2
    invoke-virtual {v14, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/view/ScrollView;->mScrollViewMovedFocus:Z

    .line 1174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/view/ScrollView;->mScrollViewMovedFocus:Z

    .line 1177
    :cond_3
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->invalidate()V

    goto :goto_0

    .line 1163
    .end local v13           #movingDown:Z
    .end local v14           #newFocused:Landroid/view/View;
    :cond_4
    const/4 v13, 0x0

    goto :goto_1

    .line 1172
    .restart local v13       #movingDown:Z
    .restart local v14       #newFocused:Landroid/view/View;
    :cond_5
    const/16 v0, 0x21

    goto :goto_2
.end method

.method public fullScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 668
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 669
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getHeight()I

    move-result v2

    .line 671
    .local v2, height:I
    iget-object v5, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 672
    iget-object v4, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 674
    if-eqz v1, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getChildCount()I

    move-result v0

    .line 676
    .local v0, count:I
    if-lez v0, :cond_0

    .line 677
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 678
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 679
    iget-object v4, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 683
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/lx/launcher8/view/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 668
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .prologue
    .line 149
    const/high16 v0, 0x3f00

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/lx/launcher8/view/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/lx/launcher8/view/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 865
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 870
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getPaddingLeft()I

    move-result v3

    .line 871
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 870
    invoke-static {p2, v3, v4}, Lcom/lx/launcher8/view/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 873
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 875
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 876
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 881
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 884
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    .line 885
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 883
    invoke-static {p2, v3, v4}, Lcom/lx/launcher8/view/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 887
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    .line 886
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 889
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 890
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 361
    .local v0, action:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    iget-boolean v5, p0, Lcom/lx/launcher8/view/ScrollView;->mIsBeingDragged:Z

    if-eqz v5, :cond_0

    .line 412
    :goto_0
    return v4

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/lx/launcher8/view/ScrollView;->canScroll()Z

    move-result v5

    if-nez v5, :cond_1

    .line 366
    iput-boolean v3, p0, Lcom/lx/launcher8/view/ScrollView;->mIsBeingDragged:Z

    move v4, v3

    .line 367
    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 372
    .local v1, y:F
    packed-switch v0, :pswitch_data_0

    .line 412
    :cond_2
    :goto_1
    iget-boolean v4, p0, Lcom/lx/launcher8/view/ScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 383
    :pswitch_0
    iget v3, p0, Lcom/lx/launcher8/view/ScrollView;->mLastMotionY:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v2, v3

    .line 384
    .local v2, yDiff:I
    iget v3, p0, Lcom/lx/launcher8/view/ScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_2

    .line 385
    iput-boolean v4, p0, Lcom/lx/launcher8/view/ScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 391
    .end local v2           #yDiff:I
    :pswitch_1
    iput v1, p0, Lcom/lx/launcher8/view/ScrollView;->mLastMotionY:F

    .line 398
    iget-object v5, p0, Lcom/lx/launcher8/view/ScrollView;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {v5}, Lcom/lx/launcher8/view/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    iput-boolean v3, p0, Lcom/lx/launcher8/view/ScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    .line 404
    :pswitch_2
    iput-boolean v3, p0, Lcom/lx/launcher8/view/ScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 372
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1106
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/view/ScrollView;->mIsLayoutDirty:Z

    .line 1109
    iget-object v0, p0, Lcom/lx/launcher8/view/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/lx/launcher8/view/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/lx/launcher8/view/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1112
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/view/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1115
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/view/ScrollView;->scrollTo(II)V

    .line 1116
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 258
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 260
    iget-boolean v6, p0, Lcom/lx/launcher8/view/ScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 265
    .local v4, heightMode:I
    if-eqz v4, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 270
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/lx/launcher8/view/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getMeasuredHeight()I

    move-result v3

    .line 272
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 273
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 275
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getPaddingLeft()I

    move-result v6

    .line 276
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 275
    invoke-static {p1, v6, v7}, Lcom/lx/launcher8/view/ScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 277
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v3, v6

    .line 278
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v3, v6

    .line 280
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 282
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1066
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1067
    const/16 p1, 0x82

    .line 1072
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    .line 1073
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1077
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1085
    :cond_1
    :goto_2
    return v1

    .line 1068
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1069
    const/16 p1, 0x21

    goto :goto_0

    .line 1074
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1081
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1085
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1122
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1123
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getHeight()I

    move-result v1

    .line 1128
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Lcom/lx/launcher8/view/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1129
    iget-object v3, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1130
    iget-object v3, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/lx/launcher8/view/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1131
    iget-object v3, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/view/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1132
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Lcom/lx/launcher8/view/ScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "ev"

    .prologue
    .line 418
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v12

    if-eqz v12, :cond_0

    .line 421
    const/4 v12, 0x0

    .line 495
    :goto_0
    return v12

    .line 424
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/lx/launcher8/view/ScrollView;->canScroll()Z

    move-result v12

    if-nez v12, :cond_1

    .line 425
    const/4 v12, 0x0

    goto :goto_0

    .line 428
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/view/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_2

    .line 429
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lx/launcher8/view/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 431
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/view/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 433
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 434
    .local v1, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 436
    .local v11, y:F
    packed-switch v1, :pswitch_data_0

    .line 495
    :cond_3
    :goto_1
    const/4 v12, 0x1

    goto :goto_0

    .line 442
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/view/ScrollView;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {v12}, Lcom/lx/launcher8/view/Scroller;->isFinished()Z

    move-result v12

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/view/ScrollView;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {v12}, Lcom/lx/launcher8/view/Scroller;->isOverScrolled()Z

    move-result v12

    if-nez v12, :cond_4

    .line 443
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/view/ScrollView;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {v12}, Lcom/lx/launcher8/view/Scroller;->abortAnimation()V

    .line 447
    :cond_4
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lx/launcher8/view/ScrollView;->mLastMotionY:F

    goto :goto_1

    .line 451
    :pswitch_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lx/launcher8/view/ScrollView;->mLastMotionY:F

    sub-float/2addr v12, v11

    float-to-int v7, v12

    .line 452
    .local v7, deltaY:I
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lx/launcher8/view/ScrollView;->mLastMotionY:F

    .line 454
    invoke-direct/range {p0 .. p0}, Lcom/lx/launcher8/view/ScrollView;->computeCacheScroll()I

    move-result v5

    .line 456
    .local v5, cacheScroll:I
    if-gez v7, :cond_5

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v12

    add-int/2addr v12, v5

    add-int v2, v12, v7

    .line 458
    .local v2, available:I
    if-lez v2, :cond_3

    .line 459
    const/4 v12, 0x0

    neg-int v13, v2

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/lx/launcher8/view/ScrollView;->scrollBy(II)V

    goto :goto_1

    .line 461
    .end local v2           #available:I
    :cond_5
    if-lez v7, :cond_3

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/ScrollView;->getHeight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/ScrollView;->getPaddingBottom()I

    move-result v13

    sub-int v4, v12, v13

    .line 463
    .local v4, bottomEdge:I
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lx/launcher8/view/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 464
    .local v6, childBottom:I
    if-le v6, v4, :cond_3

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v12

    sub-int v12, v6, v12

    sub-int/2addr v12, v4

    add-int v3, v12, v5

    .line 466
    .local v3, availableToScroll:I
    if-lez v3, :cond_3

    .line 467
    const/4 v12, 0x0

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/lx/launcher8/view/ScrollView;->scrollBy(II)V

    goto :goto_1

    .line 473
    .end local v3           #availableToScroll:I
    .end local v4           #bottomEdge:I
    .end local v5           #cacheScroll:I
    .end local v6           #childBottom:I
    .end local v7           #deltaY:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lx/launcher8/view/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 474
    .local v10, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v12, 0x3e8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lx/launcher8/view/ScrollView;->mMaximumVelocity:I

    int-to-float v13, v13

    invoke-virtual {v10, v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 475
    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v12

    float-to-int v8, v12

    .line 477
    .local v8, initialVelocity:I
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lx/launcher8/view/ScrollView;->mMinimumVelocity:I

    if-le v12, v13, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/ScrollView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_7

    .line 478
    neg-int v12, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lx/launcher8/view/ScrollView;->fling(I)V

    .line 490
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/view/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v12, :cond_3

    .line 491
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/view/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->recycle()V

    .line 492
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lx/launcher8/view/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 480
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v9

    .line 481
    .local v9, scrollY:I
    if-gez v9, :cond_8

    .line 482
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/view/ScrollView;->mScroller:Lcom/lx/launcher8/view/Scroller;

    const/4 v13, 0x0

    const/4 v14, 0x0

    neg-int v15, v9

    invoke-virtual {v12, v13, v9, v14, v15}, Lcom/lx/launcher8/view/Scroller;->startScroll(IIII)V

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/ScrollView;->invalidate()V

    goto :goto_2

    .line 484
    :cond_8
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lx/launcher8/view/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/ScrollView;->getHeight()I

    move-result v13

    if-le v12, v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/ScrollView;->getHeight()I

    move-result v12

    add-int/2addr v12, v9

    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/ScrollView;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lx/launcher8/view/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    if-le v12, v13, :cond_6

    .line 485
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/view/ScrollView;->mScroller:Lcom/lx/launcher8/view/Scroller;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lx/launcher8/view/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int/2addr v15, v9

    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/ScrollView;->getHeight()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/ScrollView;->getPaddingBottom()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v12, v13, v9, v14, v15}, Lcom/lx/launcher8/view/Scroller;->startScroll(IIII)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/ScrollView;->invalidate()V

    goto :goto_2

    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 632
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 633
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getHeight()I

    move-result v2

    .line 635
    .local v2, height:I
    if-eqz v1, :cond_2

    .line 636
    iget-object v4, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 637
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getChildCount()I

    move-result v0

    .line 638
    .local v0, count:I
    if-lez v0, :cond_0

    .line 639
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 640
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 641
    iget-object v4, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 650
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 652
    iget-object v4, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/lx/launcher8/view/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 632
    goto :goto_0

    .line 645
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_2
    iget-object v5, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 646
    iget-object v5, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 647
    iget-object v5, p0, Lcom/lx/launcher8/view/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/lx/launcher8/view/ScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1042
    iget-boolean v0, p0, Lcom/lx/launcher8/view/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1043
    invoke-direct {p0, p2}, Lcom/lx/launcher8/view/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1049
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1050
    return-void

    .line 1046
    :cond_1
    iput-object p2, p0, Lcom/lx/launcher8/view/ScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1092
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1093
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1092
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1095
    invoke-direct {p0, p2, p3}, Lcom/lx/launcher8/view/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/view/ScrollView;->mIsLayoutDirty:Z

    .line 1101
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1102
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/lx/launcher8/view/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 236
    iput-boolean p1, p0, Lcom/lx/launcher8/view/ScrollView;->mFillViewport:Z

    .line 237
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->requestLayout()V

    .line 239
    :cond_0
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/lx/launcher8/view/ScrollView;->mSmoothScrollingEnabled:Z

    .line 254
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 829
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lx/launcher8/view/ScrollView;->mLastScroll:J

    sub-long v0, v2, v4

    .line 830
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 831
    iget-object v2, p0, Lcom/lx/launcher8/view/ScrollView;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/lx/launcher8/view/Scroller;->startScroll(IIII)V

    .line 832
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->invalidate()V

    .line 839
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lx/launcher8/view/ScrollView;->mLastScroll:J

    .line 840
    return-void

    .line 834
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/view/ScrollView;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 835
    iget-object v2, p0, Lcom/lx/launcher8/view/ScrollView;->mScroller:Lcom/lx/launcher8/view/Scroller;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/Scroller;->abortAnimation()V

    .line 837
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/view/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/ScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/view/ScrollView;->smoothScrollBy(II)V

    .line 850
    return-void
.end method
