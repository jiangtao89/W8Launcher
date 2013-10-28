.class Lcom/anall/screenlock/LockLayout;
.super Landroid/view/ViewGroup;
.source "WPLockAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anall/screenlock/LockLayout$MyInterpolator;
    }
.end annotation


# static fields
.field static final DEFAULT_DETAL:I = 0x2b

.field static final SNAP_VELOCITY:I = 0x258


# instance fields
.field private mAlphaLayout:Lcom/lx/launcher8/view/AlphaLayout;

.field private mBackRunnable:Ljava/lang/Runnable;

.field private mBeingDrag:Z

.field private mDate:Landroid/widget/TextView;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDetal:I

.field private mInterpolater:Lcom/anall/screenlock/LockLayout$MyInterpolator;

.field private mLastY:F

.field private mListenAct:Lcom/anall/screenlock/WPLockAct;

.field private mPm:Landroid/widget/TextView;

.field private mScreenHeight:I

.field private mScroller:Landroid/widget/Scroller;

.field private mTime:Landroid/widget/TextView;

.field private mTouchSlop:I

.field private mTraker:Landroid/view/VelocityTracker;

.field mUnLockRunnable:Ljava/lang/Runnable;

.field private mWeek:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 564
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 806
    new-instance v0, Lcom/anall/screenlock/LockLayout$1;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/LockLayout$1;-><init>(Lcom/anall/screenlock/LockLayout;)V

    iput-object v0, p0, Lcom/anall/screenlock/LockLayout;->mBackRunnable:Ljava/lang/Runnable;

    .line 844
    new-instance v0, Lcom/anall/screenlock/LockLayout$2;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/LockLayout$2;-><init>(Lcom/anall/screenlock/LockLayout;)V

    iput-object v0, p0, Lcom/anall/screenlock/LockLayout;->mUnLockRunnable:Ljava/lang/Runnable;

    .line 565
    invoke-direct {p0}, Lcom/anall/screenlock/LockLayout;->initView()V

    .line 566
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 569
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 806
    new-instance v0, Lcom/anall/screenlock/LockLayout$1;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/LockLayout$1;-><init>(Lcom/anall/screenlock/LockLayout;)V

    iput-object v0, p0, Lcom/anall/screenlock/LockLayout;->mBackRunnable:Ljava/lang/Runnable;

    .line 844
    new-instance v0, Lcom/anall/screenlock/LockLayout$2;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/LockLayout$2;-><init>(Lcom/anall/screenlock/LockLayout;)V

    iput-object v0, p0, Lcom/anall/screenlock/LockLayout;->mUnLockRunnable:Ljava/lang/Runnable;

    .line 570
    invoke-direct {p0}, Lcom/anall/screenlock/LockLayout;->initView()V

    .line 571
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 573
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 806
    new-instance v0, Lcom/anall/screenlock/LockLayout$1;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/LockLayout$1;-><init>(Lcom/anall/screenlock/LockLayout;)V

    iput-object v0, p0, Lcom/anall/screenlock/LockLayout;->mBackRunnable:Ljava/lang/Runnable;

    .line 844
    new-instance v0, Lcom/anall/screenlock/LockLayout$2;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/LockLayout$2;-><init>(Lcom/anall/screenlock/LockLayout;)V

    iput-object v0, p0, Lcom/anall/screenlock/LockLayout;->mUnLockRunnable:Ljava/lang/Runnable;

    .line 574
    invoke-direct {p0}, Lcom/anall/screenlock/LockLayout;->initView()V

    .line 575
    return-void
.end method

.method static synthetic access$0(Lcom/anall/screenlock/LockLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 805
    iget v0, p0, Lcom/anall/screenlock/LockLayout;->mDetal:I

    return v0
.end method

.method static synthetic access$1(Lcom/anall/screenlock/LockLayout;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 805
    iput p1, p0, Lcom/anall/screenlock/LockLayout;->mDetal:I

    return-void
.end method

.method static synthetic access$2(Lcom/anall/screenlock/LockLayout;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 806
    iget-object v0, p0, Lcom/anall/screenlock/LockLayout;->mBackRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/anall/screenlock/LockLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/anall/screenlock/LockLayout;->tapScroll()V

    return-void
.end method

.method static synthetic access$4(Lcom/anall/screenlock/LockLayout;)Lcom/anall/screenlock/WPLockAct;
    .locals 1
    .parameter

    .prologue
    .line 550
    iget-object v0, p0, Lcom/anall/screenlock/LockLayout;->mListenAct:Lcom/anall/screenlock/WPLockAct;

    return-object v0
.end method

.method private computeScrollHeight(I)I
    .locals 2
    .parameter "scrollY"

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/anall/screenlock/LockLayout;->getHeight()I

    move-result v0

    .line 798
    .local v0, height:I
    iget v1, p0, Lcom/anall/screenlock/LockLayout;->mScreenHeight:I

    if-ne v1, v0, :cond_0

    .line 799
    iget v1, p0, Lcom/anall/screenlock/LockLayout;->mScreenHeight:I

    sub-int/2addr v1, p1

    .line 801
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/anall/screenlock/LockLayout;->mScreenHeight:I

    sub-int v1, v0, v1

    sub-int/2addr v1, p1

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 578
    invoke-virtual {p0, v0}, Lcom/anall/screenlock/LockLayout;->setFocusable(Z)V

    .line 579
    invoke-virtual {p0, v0}, Lcom/anall/screenlock/LockLayout;->setFocusableInTouchMode(Z)V

    .line 580
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy#MM#dd#HH:mm#ss"

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/anall/screenlock/LockLayout;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 581
    invoke-virtual {p0}, Lcom/anall/screenlock/LockLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/anall/screenlock/LockLayout;->mTouchSlop:I

    .line 582
    new-instance v0, Lcom/anall/screenlock/LockLayout$MyInterpolator;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/LockLayout$MyInterpolator;-><init>(Lcom/anall/screenlock/LockLayout;)V

    iput-object v0, p0, Lcom/anall/screenlock/LockLayout;->mInterpolater:Lcom/anall/screenlock/LockLayout$MyInterpolator;

    .line 583
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/anall/screenlock/LockLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anall/screenlock/LockLayout;->mInterpolater:Lcom/anall/screenlock/LockLayout$MyInterpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/anall/screenlock/LockLayout;->mScroller:Landroid/widget/Scroller;

    .line 584
    return-void
.end method

.method private tapScroll()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 822
    invoke-virtual {p0}, Lcom/anall/screenlock/LockLayout;->getScrollY()I

    move-result v0

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 823
    .local v5, time:I
    iget-object v0, p0, Lcom/anall/screenlock/LockLayout;->mInterpolater:Lcom/anall/screenlock/LockLayout$MyInterpolator;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/anall/screenlock/LockLayout$MyInterpolator;->setInterpolatorType(I)V

    .line 824
    iget-object v0, p0, Lcom/anall/screenlock/LockLayout;->mScroller:Landroid/widget/Scroller;

    const/16 v2, 0x2b

    const/16 v4, -0x2b

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 825
    invoke-virtual {p0}, Lcom/anall/screenlock/LockLayout;->postInvalidate()V

    .line 826
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/anall/screenlock/LockLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/anall/screenlock/LockLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/anall/screenlock/LockLayout;->scrollTo(II)V

    .line 830
    invoke-virtual {p0}, Lcom/anall/screenlock/LockLayout;->postInvalidate()V

    .line 832
    :cond_0
    return-void
.end method

.method public defaultTheme()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 670
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anall/screenlock/LockLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020131

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 671
    iget-object v0, p0, Lcom/anall/screenlock/LockLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 672
    iget-object v0, p0, Lcom/anall/screenlock/LockLayout;->mWeek:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 673
    iget-object v0, p0, Lcom/anall/screenlock/LockLayout;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 674
    iget-object v0, p0, Lcom/anall/screenlock/LockLayout;->mPm:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 675
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/anall/screenlock/LockLayout;->getHeight()I

    move-result v1

    .line 697
    .local v1, height:I
    invoke-virtual {p0}, Lcom/anall/screenlock/LockLayout;->getScrollY()I

    move-result v2

    .line 698
    .local v2, scrollY:I
    iget-object v3, p0, Lcom/anall/screenlock/LockLayout;->mAlphaLayout:Lcom/lx/launcher8/view/AlphaLayout;

    if-eqz v3, :cond_0

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 699
    mul-int/lit16 v3, v2, 0xff

    int-to-double v3, v3

    int-to-double v5, v1

    const-wide/high16 v7, 0x3ff0

    mul-double/2addr v5, v7

    div-double/2addr v3, v5

    double-to-int v3, v3

    rsub-int v0, v3, 0xff

    .line 700
    .local v0, alpha:I
    iget-object v3, p0, Lcom/anall/screenlock/LockLayout;->mAlphaLayout:Lcom/lx/launcher8/view/AlphaLayout;

    invoke-virtual {v3, v0}, Lcom/lx/launcher8/view/AlphaLayout;->setAlpha(I)V

    .line 702
    .end local v0           #alpha:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 703
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 588
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 589
    const v1, 0x7f0900ca

    invoke-virtual {p0, v1}, Lcom/anall/screenlock/LockLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anall/screenlock/LockLayout;->mTime:Landroid/widget/TextView;

    .line 590
    const v1, 0x7f0900cb

    invoke-virtual {p0, v1}, Lcom/anall/screenlock/LockLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anall/screenlock/LockLayout;->mPm:Landroid/widget/TextView;

    .line 591
    const v1, 0x7f0900c8

    invoke-virtual {p0, v1}, Lcom/anall/screenlock/LockLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anall/screenlock/LockLayout;->mWeek:Landroid/widget/TextView;

    .line 592
    const v1, 0x7f0900c9

    invoke-virtual {p0, v1}, Lcom/anall/screenlock/LockLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anall/screenlock/LockLayout;->mDate:Landroid/widget/TextView;

    .line 593
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/anall/screenlock/LockLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 594
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/lx/launcher8/view/AlphaLayout;

    if-eqz v1, :cond_0

    .line 595
    check-cast v0, Lcom/lx/launcher8/view/AlphaLayout;

    .end local v0           #view:Landroid/view/View;
    iput-object v0, p0, Lcom/anall/screenlock/LockLayout;->mAlphaLayout:Lcom/lx/launcher8/view/AlphaLayout;

    .line 597
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 707
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 708
    .local v0, action:I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    iget-boolean v4, p0, Lcom/anall/screenlock/LockLayout;->mBeingDrag:Z

    if-eqz v4, :cond_0

    .line 725
    :goto_0
    return v3

    .line 711
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 712
    .local v1, y:F
    packed-switch v0, :pswitch_data_0

    .line 723
    :pswitch_0
    iput-boolean v2, p0, Lcom/anall/screenlock/LockLayout;->mBeingDrag:Z

    .line 725
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/anall/screenlock/LockLayout;->mBeingDrag:Z

    goto :goto_0

    .line 714
    :pswitch_1
    iput v1, p0, Lcom/anall/screenlock/LockLayout;->mLastY:F

    .line 715
    iput-boolean v2, p0, Lcom/anall/screenlock/LockLayout;->mBeingDrag:Z

    goto :goto_1

    .line 718
    :pswitch_2
    iget v4, p0, Lcom/anall/screenlock/LockLayout;->mLastY:F

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/anall/screenlock/LockLayout;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 719
    iget-object v4, p0, Lcom/anall/screenlock/LockLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/anall/screenlock/LockLayout;->mBeingDrag:Z

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    .line 712
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/anall/screenlock/LockLayout;->getChildCount()I

    move-result v1

    .line 624
    .local v1, count:I
    if-nez v1, :cond_1

    .line 632
    :cond_0
    return-void

    .line 625
    :cond_1
    const/4 v4, 0x0

    .line 626
    .local v4, startY:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 627
    invoke-virtual {p0, v3}, Lcom/anall/screenlock/LockLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 628
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 629
    .local v2, h:I
    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int v7, v4, v2

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 630
    add-int/2addr v4, v2

    .line 626
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 601
    const/high16 v5, -0x8000

    .local v5, w:I
    const/4 v2, 0x0

    .line 602
    .local v2, h:I
    invoke-virtual {p0}, Lcom/anall/screenlock/LockLayout;->getChildCount()I

    move-result v4

    .line 603
    .local v4, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 613
    invoke-static {v5, p1}, Lcom/anall/screenlock/LockLayout;->resolveSize(II)I

    move-result v6

    invoke-virtual {p0, v6, v2}, Lcom/anall/screenlock/LockLayout;->setMeasuredDimension(II)V

    .line 615
    iget-object v6, p0, Lcom/anall/screenlock/LockLayout;->mListenAct:Lcom/anall/screenlock/WPLockAct;

    iget v6, v6, Lcom/anall/screenlock/WPLockAct;->mLastLayoutId:I

    const v7, 0x7f030027

    if-ne v6, v7, :cond_0

    .line 616
    iget-object v6, p0, Lcom/anall/screenlock/LockLayout;->mListenAct:Lcom/anall/screenlock/WPLockAct;

    iget v6, v6, Lcom/anall/screenlock/WPLockAct;->mDensity:F

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    const/16 v0, 0x30

    .line 617
    .local v0, b:I
    :goto_1
    iget-object v6, p0, Lcom/anall/screenlock/LockLayout;->mTime:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/anall/screenlock/LockLayout;->mListenAct:Lcom/anall/screenlock/WPLockAct;

    iget v7, v7, Lcom/anall/screenlock/WPLockAct;->mDensity:F

    int-to-float v8, v0

    mul-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 619
    .end local v0           #b:I
    :cond_0
    return-void

    .line 604
    :cond_1
    invoke-virtual {p0, v3}, Lcom/anall/screenlock/LockLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 606
    .local v1, child:Landroid/view/View;
    invoke-virtual {p0, v1, p1, p2}, Lcom/anall/screenlock/LockLayout;->measureChild(Landroid/view/View;II)V

    .line 607
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 608
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v2, v6

    .line 609
    if-nez v3, :cond_2

    .line 610
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/anall/screenlock/LockLayout;->mScreenHeight:I

    .line 603
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 616
    .end local v1           #child:Landroid/view/View;
    :cond_3
    const/16 v0, 0x37

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "event"

    .prologue
    .line 730
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    .line 731
    .local v13, action:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anall/screenlock/LockLayout;->mTraker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    .line 732
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/anall/screenlock/LockLayout;->mTraker:Landroid/view/VelocityTracker;

    .line 734
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anall/screenlock/LockLayout;->mTraker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 735
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 736
    .local v19, y:F
    packed-switch v13, :pswitch_data_0

    .line 793
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 738
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anall/screenlock/LockLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anall/screenlock/LockLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 741
    :cond_2
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/anall/screenlock/LockLayout;->mLastY:F

    goto :goto_0

    .line 744
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/anall/screenlock/LockLayout;->mLastY:F

    sub-float v2, v2, v19

    float-to-int v14, v2

    .line 745
    .local v14, detal:I
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/anall/screenlock/LockLayout;->mLastY:F

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/anall/screenlock/LockLayout;->getScrollY()I

    move-result v17

    .line 747
    .local v17, srollY:I
    if-gez v14, :cond_3

    .line 748
    if-ltz v17, :cond_1

    .line 749
    move/from16 v0, v17

    neg-int v2, v0

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 750
    .local v18, temp:I
    if-gez v18, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/anall/screenlock/LockLayout;->scrollBy(II)V

    goto :goto_0

    .line 753
    .end local v18           #temp:I
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/anall/screenlock/LockLayout;->computeScrollHeight(I)I

    move-result v18

    .line 754
    .restart local v18       #temp:I
    if-ltz v18, :cond_1

    .line 755
    move/from16 v0, v18

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 756
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/anall/screenlock/LockLayout;->scrollBy(II)V

    goto :goto_0

    .line 762
    .end local v14           #detal:I
    .end local v17           #srollY:I
    .end local v18           #temp:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anall/screenlock/LockLayout;->mTraker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/anall/screenlock/LockLayout;->getHeight()I

    move-result v15

    .line 764
    .local v15, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/anall/screenlock/LockLayout;->getScrollY()I

    move-result v4

    .line 765
    .local v4, scrollY:I
    const/4 v6, 0x0

    .line 766
    .local v6, time:I
    const/16 v16, 0x0

    .line 767
    .local v16, runnable:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anall/screenlock/LockLayout;->mTraker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    const/high16 v3, -0x3bea

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/anall/screenlock/LockLayout;->getScrollY()I

    move-result v2

    mul-int/lit8 v3, v15, 0x3

    div-int/lit8 v3, v3, 0x5

    if-le v2, v3, :cond_8

    .line 768
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/anall/screenlock/LockLayout;->computeScrollHeight(I)I

    move-result v6

    .line 769
    move-object/from16 v0, p0

    iget v2, v0, Lcom/anall/screenlock/LockLayout;->mScreenHeight:I

    if-ne v15, v2, :cond_5

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anall/screenlock/LockLayout;->mUnLockRunnable:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    .line 771
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anall/screenlock/LockLayout;->mInterpolater:Lcom/anall/screenlock/LockLayout$MyInterpolator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/anall/screenlock/LockLayout$MyInterpolator;->setInterpolatorType(I)V

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anall/screenlock/LockLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v7, v6

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/anall/screenlock/LockLayout;->postInvalidate()V

    .line 785
    :cond_6
    :goto_1
    if-eqz v16, :cond_7

    .line 786
    int-to-long v2, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/anall/screenlock/LockLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 787
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anall/screenlock/LockLayout;->mTraker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_1

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anall/screenlock/LockLayout;->mTraker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 789
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/anall/screenlock/LockLayout;->mTraker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 774
    :cond_8
    const/16 v2, 0x2b

    if-le v4, v2, :cond_a

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/anall/screenlock/LockLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/anall/screenlock/LockLayout;->mScreenHeight:I

    sub-int v2, v15, v2

    if-ge v4, v2, :cond_6

    .line 776
    :cond_9
    const/16 v2, 0x708

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anall/screenlock/LockLayout;->mInterpolater:Lcom/anall/screenlock/LockLayout$MyInterpolator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/anall/screenlock/LockLayout$MyInterpolator;->setInterpolatorType(I)V

    .line 778
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/anall/screenlock/LockLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v10, 0x0

    neg-int v11, v4

    move v9, v4

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/anall/screenlock/LockLayout;->postInvalidate()V

    goto :goto_1

    .line 782
    :cond_a
    rsub-int/lit8 v2, v4, 0x2b

    move-object/from16 v0, p0

    iput v2, v0, Lcom/anall/screenlock/LockLayout;->mDetal:I

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anall/screenlock/LockLayout;->mBackRunnable:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    goto :goto_1

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public restScroll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 838
    iget-object v0, p0, Lcom/anall/screenlock/LockLayout;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/anall/screenlock/LockLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 841
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/anall/screenlock/LockLayout;->scrollTo(II)V

    .line 842
    return-void
.end method

.method public setListenerAct(Lcom/anall/screenlock/WPLockAct;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 666
    iput-object p1, p0, Lcom/anall/screenlock/LockLayout;->mListenAct:Lcom/anall/screenlock/WPLockAct;

    .line 667
    return-void
.end method

.method public setTheme(Lcom/anall/screenlock/RotateDrawable;I)V
    .locals 4
    .parameter "background"
    .parameter "color"

    .prologue
    const v3, 0x7f020131

    const/4 v2, 0x0

    .line 679
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anall/screenlock/RotateDrawable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/anall/screenlock/LockLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 681
    .local v0, bit:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Lcom/anall/screenlock/RotateDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 683
    .end local v0           #bit:Landroid/graphics/Bitmap;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/anall/screenlock/RotateDrawable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 684
    :cond_1
    invoke-virtual {p0, v2}, Lcom/anall/screenlock/LockLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 688
    :goto_0
    iget-object v1, p0, Lcom/anall/screenlock/LockLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 689
    iget-object v1, p0, Lcom/anall/screenlock/LockLayout;->mWeek:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 690
    iget-object v1, p0, Lcom/anall/screenlock/LockLayout;->mTime:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 691
    iget-object v1, p0, Lcom/anall/screenlock/LockLayout;->mPm:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 692
    return-void

    .line 686
    :cond_2
    invoke-virtual {p0, v2}, Lcom/anall/screenlock/LockLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateTime()V
    .locals 13

    .prologue
    .line 635
    iget-object v11, p0, Lcom/anall/screenlock/LockLayout;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, date:Ljava/lang/String;
    const-string v11, "#"

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v5, v11, v12

    .line 637
    .local v5, month:Ljava/lang/String;
    const-string v11, "#"

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v3, v11, v12

    .line 638
    .local v3, day:Ljava/lang/String;
    const-string v11, "#"

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    aget-object v6, v11, v12

    .line 639
    .local v6, time:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/anall/screenlock/LockLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 640
    .local v1, context:Landroid/content/Context;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 641
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v11, 0x7

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/lit8 v9, v11, -0x1

    .line 642
    .local v9, week:I
    const-string v10, ""

    .line 643
    .local v10, weekStr:Ljava/lang/String;
    const-string v4, ""

    .line 644
    .local v4, dayStr:Ljava/lang/String;
    iget-object v11, p0, Lcom/anall/screenlock/LockLayout;->mListenAct:Lcom/anall/screenlock/WPLockAct;

    iget v11, v11, Lcom/anall/screenlock/WPLockAct;->mLastLayoutId:I

    const v12, 0x7f03002b

    if-ne v11, v12, :cond_0

    .line 645
    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x65

    invoke-static {v11, v1}, Lcom/lx/launcher8/util/Utils;->getMonth(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 646
    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x64

    invoke-static {v11, v1}, Lcom/lx/launcher8/util/Utils;->getDay(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 647
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v12, 0x7f0a0089

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0a008a

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 648
    add-int/lit8 v11, v9, 0x64

    invoke-static {v11, v1}, Lcom/lx/launcher8/util/Utils;->getWeek(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 655
    :goto_0
    iget-object v11, p0, Lcom/anall/screenlock/LockLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v11, p0, Lcom/anall/screenlock/LockLayout;->mWeek:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "time_12_24"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 659
    .local v7, timeFormat:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/lx/launcher8/util/Utils;->getPmTime(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 661
    .local v8, times:[Ljava/lang/String;
    iget-object v11, p0, Lcom/anall/screenlock/LockLayout;->mTime:Landroid/widget/TextView;

    const/4 v12, 0x0

    aget-object v12, v8, v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v11, p0, Lcom/anall/screenlock/LockLayout;->mPm:Landroid/widget/TextView;

    const/4 v12, 0x1

    aget-object v12, v8, v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    return-void

    .line 650
    .end local v7           #timeFormat:Ljava/lang/String;
    .end local v8           #times:[Ljava/lang/String;
    :cond_0
    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11, v1}, Lcom/lx/launcher8/util/Utils;->getMonth(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 651
    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11, v1}, Lcom/lx/launcher8/util/Utils;->getDay(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 652
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v12, 0x7f0a0089

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0a008a

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 653
    invoke-static {v9, v1}, Lcom/lx/launcher8/util/Utils;->getWeek(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method
