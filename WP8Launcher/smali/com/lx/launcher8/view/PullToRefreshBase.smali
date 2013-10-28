.class public abstract Lcom/lx/launcher8/view/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/view/PullToRefreshBase$Mode;,
        Lcom/lx/launcher8/view/PullToRefreshBase$OnLastItemVisibleListener;,
        Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener;,
        Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;,
        Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lx$launcher$view$PullToRefreshBase$Mode:[I = null

.field static final DEBUG:Z = false

.field static final DEFAULT_MODE:Lcom/lx/launcher8/view/PullToRefreshBase$Mode; = null

.field static final FRICTION:F = 2.0f

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh"

.field static final MANUAL_REFRESHING:I = 0x3

.field static final PULL_TO_REFRESH:I = 0x0

.field static final REFRESHING:I = 0x2

.field static final RELEASE_TO_REFRESH:I = 0x1

.field static final STATE_CURRENT_MODE:Ljava/lang/String; = "ptr_current_mode"

.field static final STATE_DISABLE_SCROLLING_REFRESHING:Ljava/lang/String; = "ptr_disable_scrolling"

.field static final STATE_MODE:Ljava/lang/String; = "ptr_mode"

.field static final STATE_SHOW_REFRESHING_VIEW:Ljava/lang/String; = "ptr_show_refreshing_view"

.field static final STATE_STATE:Ljava/lang/String; = "ptr_state"

.field static final STATE_SUPER:Ljava/lang/String; = "ptr_super"


# instance fields
.field private mCurrentMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

.field private mCurrentSmoothScrollRunnable:Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lx/launcher8/view/PullToRefreshBase",
            "<TT;>.SmoothScrollRunnable;"
        }
    .end annotation
.end field

.field private mDisableScrollingWhileRefreshing:Z

.field private mFilterTouchEvents:Z

.field private mFooterHeight:I

.field private mFooterLayout:Lcom/lx/launcher8/view/FooterLayout;

.field private mFooterShow:Z

.field private mHeaderHeight:I

.field private mHeaderLayout:Lcom/lx/launcher8/view/FreshLayout;

.field mHeaderView:Landroid/view/View;

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

.field private mOnRefreshListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;"
        }
    .end annotation
.end field

.field mRefreshableView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mShowViewWhileRefreshing:Z

.field private mState:I

.field private mTouchSlop:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$lx$launcher$view$PullToRefreshBase$Mode()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/lx/launcher8/view/PullToRefreshBase;->$SWITCH_TABLE$com$lx$launcher$view$PullToRefreshBase$Mode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->values()[Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->BOTH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->DISABLED:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/lx/launcher8/view/PullToRefreshBase;->$SWITCH_TABLE$com$lx$launcher$view$PullToRefreshBase$Mode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    sput-object v0, Lcom/lx/launcher8/view/PullToRefreshBase;->DEFAULT_MODE:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    iput-boolean v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mIsBeingDragged:Z

    .line 68
    iput v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mState:I

    .line 69
    sget-object v0, Lcom/lx/launcher8/view/PullToRefreshBase;->DEFAULT_MODE:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    iput-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    .line 75
    iput-boolean v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 76
    iput-boolean v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mDisableScrollingWhileRefreshing:Z

    .line 77
    iput-boolean v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-boolean v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mIsBeingDragged:Z

    .line 68
    iput v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mState:I

    .line 69
    sget-object v0, Lcom/lx/launcher8/view/PullToRefreshBase;->DEFAULT_MODE:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    iput-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    .line 75
    iput-boolean v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 76
    iput-boolean v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mDisableScrollingWhileRefreshing:Z

    .line 77
    iput-boolean v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V
    .locals 2
    .parameter "context"
    .parameter

    .prologue
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    .local p2, mode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;,"Lcom/lx/launcher8/view/PullToRefreshBase$Mode;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 104
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    iput-boolean v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mIsBeingDragged:Z

    .line 68
    iput v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mState:I

    .line 69
    sget-object v0, Lcom/lx/launcher8/view/PullToRefreshBase;->DEFAULT_MODE:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    iput-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    .line 75
    iput-boolean v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 76
    iput-boolean v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mDisableScrollingWhileRefreshing:Z

    .line 77
    iput-boolean v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 105
    iput-object p2, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 740
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/PullToRefreshBase;->setOrientation(I)V

    .line 742
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 743
    .local v0, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mTouchSlop:I

    .line 755
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/view/PullToRefreshBase;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    .line 756
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/view/PullToRefreshBase;->createHeaderView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderView:Landroid/view/View;

    .line 762
    iget-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lcom/lx/launcher8/view/PullToRefreshBase;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V

    .line 765
    new-instance v1, Lcom/lx/launcher8/view/FreshLayout;

    invoke-direct {v1, p1}, Lcom/lx/launcher8/view/FreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderLayout:Lcom/lx/launcher8/view/FreshLayout;

    .line 766
    new-instance v1, Lcom/lx/launcher8/view/FooterLayout;

    invoke-direct {v1, p1}, Lcom/lx/launcher8/view/FooterLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterLayout:Lcom/lx/launcher8/view/FooterLayout;

    .line 769
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->updateUIForMode()V

    .line 771
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->onInitFinish()V

    .line 772
    return-void
.end method

.method private isReadyForPull()Z
    .locals 4

    .prologue
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 777
    invoke-static {}, Lcom/lx/launcher8/view/PullToRefreshBase;->$SWITCH_TABLE$com$lx$launcher$view$PullToRefreshBase$Mode()[I

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 785
    :cond_0
    :goto_0
    return v0

    .line 779
    :pswitch_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->isReadyForPullDown()Z

    move-result v0

    goto :goto_0

    .line 781
    :pswitch_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->isReadyForPullUp()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterShow:Z

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 783
    :pswitch_2
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->isReadyForPullUp()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->isReadyForPullDown()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 777
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    const/4 v6, 0x0

    .line 789
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 790
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 791
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 794
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 795
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 797
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 798
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 802
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 803
    return-void

    .line 800
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private pullEvent()Z
    .locals 7

    .prologue
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    const/4 v3, 0x0

    const/high16 v6, 0x4000

    const/4 v2, 0x1

    .line 814
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->getScrollY()I

    move-result v1

    .line 816
    .local v1, oldHeight:I
    invoke-static {}, Lcom/lx/launcher8/view/PullToRefreshBase;->$SWITCH_TABLE$com$lx$launcher$view$PullToRefreshBase$Mode()[I

    move-result-object v4

    iget-object v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mCurrentMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 822
    iget v4, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mInitialMotionY:F

    iget v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mLastMotionY:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 826
    .local v0, newHeight:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->setHeaderScroll(I)V

    .line 828
    if-eqz v0, :cond_2

    .line 840
    iget v4, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mState:I

    if-nez v4, :cond_1

    iget v4, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderHeight:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 841
    iput v2, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mState:I

    .line 842
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->onReleaseToRefresh()V

    .line 852
    :cond_0
    :goto_1
    return v2

    .line 818
    .end local v0           #newHeight:I
    :pswitch_0
    iget v4, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mInitialMotionY:F

    iget v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mLastMotionY:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 819
    .restart local v0       #newHeight:I
    goto :goto_0

    .line 845
    :cond_1
    iget v4, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mState:I

    if-ne v4, v2, :cond_2

    iget v4, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderHeight:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 846
    iput v3, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mState:I

    .line 847
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->onPullToRefresh()V

    goto :goto_1

    .line 852
    :cond_2
    if-ne v1, v0, :cond_0

    move v2, v3

    goto :goto_1

    .line 816
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private refreshLoadingViewsHeight()V
    .locals 3

    .prologue
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    .line 860
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderLayout:Lcom/lx/launcher8/view/FreshLayout;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->measureView(Landroid/view/View;)V

    .line 862
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderLayout:Lcom/lx/launcher8/view/FreshLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FreshLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderHeight:I

    .line 866
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterLayout:Lcom/lx/launcher8/view/FooterLayout;

    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->measureView(Landroid/view/View;)V

    .line 868
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterLayout:Lcom/lx/launcher8/view/FooterLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FooterLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterHeight:I

    .line 874
    :goto_1
    invoke-static {}, Lcom/lx/launcher8/view/PullToRefreshBase;->$SWITCH_TABLE$com$lx$launcher$view$PullToRefreshBase$Mode()[I

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 885
    :pswitch_0
    iget v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderHeight:I

    neg-int v0, v0

    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/lx/launcher8/view/PullToRefreshBase;->setPadding(IIII)V

    .line 888
    :goto_2
    return-void

    .line 864
    :cond_0
    iput v2, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderHeight:I

    goto :goto_0

    .line 870
    :cond_1
    iput v2, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterHeight:I

    goto :goto_1

    .line 876
    :pswitch_1
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/lx/launcher8/view/PullToRefreshBase;->setPadding(IIII)V

    .line 878
    :pswitch_2
    iget v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderHeight:I

    neg-int v0, v0

    iget v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterHeight:I

    neg-int v1, v1

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/lx/launcher8/view/PullToRefreshBase;->setPadding(IIII)V

    goto :goto_2

    .line 881
    :pswitch_3
    iget v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterHeight:I

    neg-int v0, v0

    invoke-virtual {p0, v2, v2, v2, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->setPadding(IIII)V

    goto :goto_2

    .line 874
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .parameter "context"
    .parameter "refreshableView"

    .prologue
    .line 495
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, p2, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 115
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, refreshableView:Landroid/view/View;,"TT;"
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 118
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #refreshableView:Landroid/view/View;,"TT;"
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 122
    return-void

    .line 120
    .restart local v0       #refreshableView:Landroid/view/View;,"TT;"
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 503
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 504
    return-void
.end method

.method protected final addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "params"

    .prologue
    .line 511
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 512
    return-void
.end method

.method protected abstract createHeaderView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public final getCurrentMode()Lcom/lx/launcher8/view/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 131
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mCurrentMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    .prologue
    .line 144
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFilterTouchEvents:Z

    return v0
.end method

.method protected final getFooterLayout()Lcom/lx/launcher8/view/FooterLayout;
    .locals 1

    .prologue
    .line 535
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterLayout:Lcom/lx/launcher8/view/FooterLayout;

    return-object v0
.end method

.method public getFooterVisible()Z
    .locals 1

    .prologue
    .line 482
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterShow:Z

    return v0
.end method

.method protected final getHeaderHeight()I
    .locals 1

    .prologue
    .line 539
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderHeight:I

    return v0
.end method

.method protected final getHeaderLayout()Lcom/lx/launcher8/view/FreshLayout;
    .locals 1

    .prologue
    .line 543
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderLayout:Lcom/lx/launcher8/view/FreshLayout;

    return-object v0
.end method

.method public final getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 169
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public final getMode()Lcom/lx/launcher8/view/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 155
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    .prologue
    .line 179
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    return v0
.end method

.method protected final getState()I
    .locals 1

    .prologue
    .line 547
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mState:I

    return v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 558
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    return-void
.end method

.method public final hasPullFromTop()Z
    .locals 2

    .prologue
    .line 187
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mCurrentMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isContentEmpty()Z
.end method

.method public final isDisableScrollingWhileRefreshing()Z
    .locals 1

    .prologue
    .line 197
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mDisableScrollingWhileRefreshing:Z

    return v0
.end method

.method public final isPullToRefreshEnabled()Z
    .locals 2

    .prologue
    .line 206
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->DISABLED:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isReadyForPullDown()Z
.end method

.method protected abstract isReadyForPullUp()Z
.end method

.method public final isRefreshing()Z
    .locals 2

    .prologue
    .line 215
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onInitFinish()V
    .locals 0

    .prologue
    .line 774
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 221
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 277
    :goto_0
    return v5

    .line 225
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 227
    .local v0, action:I
    const/4 v7, 0x3

    if-eq v0, v7, :cond_1

    if-ne v0, v6, :cond_2

    .line 228
    :cond_1
    iput-boolean v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    .line 232
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v7, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v7, :cond_3

    move v5, v6

    .line 233
    goto :goto_0

    .line 236
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 277
    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    .line 239
    :pswitch_1
    iget-boolean v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mDisableScrollingWhileRefreshing:Z

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->isRefreshing()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    .line 240
    goto :goto_0

    .line 243
    :cond_5
    invoke-direct {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->isReadyForPull()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 245
    .local v3, y:F
    iget v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mLastMotionY:F

    sub-float v1, v3, v5

    .line 246
    .local v1, dy:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 247
    .local v4, yDiff:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v7, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mLastMotionX:F

    sub-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 249
    .local v2, xDiff:F
    iget v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    iget-boolean v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFilterTouchEvents:Z

    if-eqz v5, :cond_6

    cmpl-float v5, v4, v2

    if-lez v5, :cond_4

    .line 250
    :cond_6
    iget-object v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v5

    if-eqz v5, :cond_7

    const/high16 v5, 0x3f80

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_7

    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->isReadyForPullDown()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 251
    iput v3, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mLastMotionY:F

    .line 252
    iput-boolean v6, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mIsBeingDragged:Z

    .line 253
    iget-object v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    sget-object v6, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->BOTH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    if-ne v5, v6, :cond_4

    .line 254
    sget-object v5, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    iput-object v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mCurrentMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    goto :goto_1

    .line 256
    :cond_7
    iget-object v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v5

    if-eqz v5, :cond_4

    const/high16 v5, -0x4080

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_4

    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->isReadyForPullUp()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterShow:Z

    if-eqz v5, :cond_4

    .line 257
    iput v3, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mLastMotionY:F

    .line 258
    iput-boolean v6, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mIsBeingDragged:Z

    .line 259
    iget-object v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    sget-object v6, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->BOTH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    if-ne v5, v6, :cond_4

    .line 260
    sget-object v5, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    iput-object v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mCurrentMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    goto/16 :goto_1

    .line 268
    .end local v1           #dy:F
    .end local v2           #xDiff:F
    .end local v3           #y:F
    .end local v4           #yDiff:F
    :pswitch_2
    invoke-direct {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->isReadyForPull()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mInitialMotionY:F

    iput v6, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mLastMotionY:F

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mLastMotionX:F

    .line 271
    iput-boolean v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPullToRefresh()V
    .locals 2

    .prologue
    .line 582
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    invoke-static {}, Lcom/lx/launcher8/view/PullToRefreshBase;->$SWITCH_TABLE$com$lx$launcher$view$PullToRefreshBase$Mode()[I

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mCurrentMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 590
    :goto_0
    return-void

    .line 584
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterLayout:Lcom/lx/launcher8/view/FooterLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FooterLayout;->preperFresh()V

    goto :goto_0

    .line 587
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderLayout:Lcom/lx/launcher8/view/FreshLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FreshLayout;->preperFresh()V

    goto :goto_0

    .line 582
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onRefreshComplete()V
    .locals 1

    .prologue
    .line 285
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mState:I

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->resetHeader()V

    .line 288
    :cond_0
    return-void
.end method

.method protected onReleaseToRefresh()V
    .locals 2

    .prologue
    .line 596
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    invoke-static {}, Lcom/lx/launcher8/view/PullToRefreshBase;->$SWITCH_TABLE$com$lx$launcher$view$PullToRefreshBase$Mode()[I

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mCurrentMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 604
    :goto_0
    return-void

    .line 598
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterLayout:Lcom/lx/launcher8/view/FooterLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FooterLayout;->preperFresh()V

    goto :goto_0

    .line 601
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderLayout:Lcom/lx/launcher8/view/FreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/FreshLayout;->pullTorelase(Z)V

    goto :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 609
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    :try_start_0
    instance-of v3, p1, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 610
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    .line 612
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "ptr_mode"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->mapIntToMode(I)Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    .line 613
    const-string v3, "ptr_current_mode"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->mapIntToMode(I)Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mCurrentMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    .line 615
    const-string v3, "ptr_disable_scrolling"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mDisableScrollingWhileRefreshing:Z

    .line 616
    const-string v3, "ptr_show_refreshing_view"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 619
    const-string v3, "ptr_super"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 621
    const-string v3, "ptr_state"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 622
    .local v2, viewState:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 623
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/view/PullToRefreshBase;->setRefreshingInternal(Z)V

    .line 624
    iput v2, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mState:I

    .line 632
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #viewState:I
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 636
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 637
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "ptr_state"

    iget v2, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 638
    const-string v1, "ptr_mode"

    iget-object v2, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 639
    const-string v1, "ptr_current_mode"

    iget-object v2, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mCurrentMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 640
    const-string v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mDisableScrollingWhileRefreshing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 641
    const-string v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 642
    const-string v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 643
    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 293
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v0

    .line 298
    :cond_1
    iget-boolean v2, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mDisableScrollingWhileRefreshing:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 299
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->getScrollY()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mInitialMotionY:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 300
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->onRefreshComplete()V

    :cond_2
    move v0, v1

    .line 302
    goto :goto_0

    .line 305
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-nez v2, :cond_0

    .line 309
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 320
    :pswitch_0
    invoke-direct {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->isReadyForPull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mInitialMotionY:F

    iput v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mLastMotionY:F

    move v0, v1

    .line 322
    goto :goto_0

    .line 311
    :pswitch_1
    iget-boolean v2, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mLastMotionY:F

    .line 313
    invoke-direct {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->pullEvent()Z

    move v0, v1

    .line 314
    goto :goto_0

    .line 329
    :pswitch_2
    iget-boolean v2, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 330
    iput-boolean v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mIsBeingDragged:Z

    .line 332
    iget v2, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mState:I

    if-ne v2, v1, :cond_9

    .line 333
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mOnRefreshListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_5

    .line 334
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mOnRefreshListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener;

    invoke-interface {v0, p0}, Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener;->onRefresh(Lcom/lx/launcher8/view/PullToRefreshBase;)V

    .line 335
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mOnRefreshListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener;

    invoke-interface {v0}, Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener;->getRefreshText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->setRefreshingInternal(ZLjava/lang/String;)V

    move v0, v1

    .line 336
    goto :goto_0

    .line 338
    :cond_5
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mOnRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    if-eqz v0, :cond_8

    .line 339
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mCurrentMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    sget-object v2, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    if-ne v0, v2, :cond_7

    .line 340
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mOnRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;->onPullDownToRefresh(Lcom/lx/launcher8/view/PullToRefreshBase;)V

    .line 344
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mOnRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0}, Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;->getRefreshText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->setRefreshingInternal(ZLjava/lang/String;)V

    move v0, v1

    .line 345
    goto/16 :goto_0

    .line 341
    :cond_7
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mCurrentMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    sget-object v2, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    if-ne v0, v2, :cond_6

    .line 342
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mOnRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;->onPullUpToRefresh(Lcom/lx/launcher8/view/PullToRefreshBase;)V

    goto :goto_1

    .line 348
    :cond_8
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->resetHeader()V

    move v0, v1

    .line 349
    goto/16 :goto_0

    .line 353
    :cond_9
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->smoothScrollTo(I)V

    move v0, v1

    .line 354
    goto/16 :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected resetHeader()V
    .locals 1

    .prologue
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    .line 651
    iput v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mState:I

    .line 652
    iput-boolean v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mIsBeingDragged:Z

    .line 653
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->smoothScrollTo(I)V

    .line 655
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderLayout:Lcom/lx/launcher8/view/FreshLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FreshLayout;->reset()V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterLayout:Lcom/lx/launcher8/view/FooterLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FooterLayout;->pullToPull()V

    .line 661
    :cond_1
    return-void
.end method

.method public final setDisableScrollingWhileRefreshing(Z)V
    .locals 0
    .parameter "disableScrollingWhileRefreshing"

    .prologue
    .line 371
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mDisableScrollingWhileRefreshing:Z

    .line 372
    return-void
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0
    .parameter "filterEvents"

    .prologue
    .line 386
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 387
    return-void
.end method

.method public setFooterVisible(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 478
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterShow:Z

    .line 479
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 664
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterLayout:Lcom/lx/launcher8/view/FooterLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FooterLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 667
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/lx/launcher8/view/PullToRefreshBase;->scrollTo(II)V

    .line 668
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 397
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderLayout:Lcom/lx/launcher8/view/FreshLayout;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderLayout:Lcom/lx/launcher8/view/FreshLayout;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/FreshLayout;->setLastUpdated(Ljava/lang/CharSequence;)V

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->refreshLoadingViewsHeight()V

    .line 403
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1
    .parameter "longClickable"

    .prologue
    .line 407
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 408
    return-void
.end method

.method public final setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V
    .locals 1
    .parameter

    .prologue
    .line 417
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    .local p1, mode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;,"Lcom/lx/launcher8/view/PullToRefreshBase$Mode;"
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_0

    .line 421
    iput-object p1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    .line 422
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->updateUIForMode()V

    .line 424
    :cond_0
    return-void
.end method

.method public final setOnRefreshListener(Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    .local p1, listener:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;,"Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2<TT;>;"
    iput-object p1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mOnRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    .line 444
    return-void
.end method

.method public final setOnRefreshListener(Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    .local p1, listener:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener;,"Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener<TT;>;"
    iput-object p1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mOnRefreshListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener;

    .line 434
    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 454
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    if-eqz p1, :cond_0

    sget-object v0, Lcom/lx/launcher8/view/PullToRefreshBase;->DEFAULT_MODE:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 455
    return-void

    .line 454
    :cond_0
    sget-object v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->DISABLED:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    goto :goto_0
.end method

.method public final setRefreshing()V
    .locals 1

    .prologue
    .line 458
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->setRefreshing(Z)V

    .line 459
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 1
    .parameter "doScroll"

    .prologue
    .line 469
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->isContentEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/view/PullToRefreshBase;->setRefreshingInternal(Z)V

    .line 471
    const/4 v0, 0x3

    iput v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mState:I

    .line 473
    :cond_0
    return-void
.end method

.method protected setRefreshingInternal(Z)V
    .locals 1
    .parameter "doScroll"

    .prologue
    .line 671
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->setRefreshingInternal(ZLjava/lang/String;)V

    .line 672
    return-void
.end method

.method protected setRefreshingInternal(ZLjava/lang/String;)V
    .locals 2
    .parameter "doScroll"
    .parameter "text"

    .prologue
    .line 675
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    const/4 v0, 0x2

    iput v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mState:I

    .line 677
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderLayout:Lcom/lx/launcher8/view/FreshLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FreshLayout;->preperFresh()V

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    if-nez p2, :cond_3

    .line 682
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterLayout:Lcom/lx/launcher8/view/FooterLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FooterLayout;->preperFresh()V

    .line 688
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 689
    iget-boolean v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    if-eqz v0, :cond_5

    .line 690
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mCurrentMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderHeight:I

    neg-int v0, v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->smoothScrollTo(I)V

    .line 695
    :cond_2
    :goto_2
    return-void

    .line 684
    :cond_3
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterLayout:Lcom/lx/launcher8/view/FooterLayout;

    invoke-virtual {v0, p2}, Lcom/lx/launcher8/view/FooterLayout;->preperFresh(Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_4
    iget v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterHeight:I

    goto :goto_1

    .line 692
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->smoothScrollTo(I)V

    goto :goto_2
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0
    .parameter "showView"

    .prologue
    .line 491
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 492
    return-void
.end method

.method protected final smoothScrollTo(I)V
    .locals 2
    .parameter "y"

    .prologue
    .line 698
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->stop()V

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->getScrollY()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 703
    new-instance v0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->getScrollY()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;-><init>(Lcom/lx/launcher8/view/PullToRefreshBase;II)V

    iput-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;

    .line 704
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    .line 706
    :cond_1
    return-void
.end method

.method protected updateUIForMode()V
    .locals 5

    .prologue
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<TT;>;"
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 714
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderLayout:Lcom/lx/launcher8/view/FreshLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderLayout:Lcom/lx/launcher8/view/FreshLayout;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mHeaderLayout:Lcom/lx/launcher8/view/FreshLayout;

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 719
    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 718
    invoke-virtual {p0, v0, v1, v2}, Lcom/lx/launcher8/view/PullToRefreshBase;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterLayout:Lcom/lx/launcher8/view/FooterLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FooterLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p0, v0, :cond_2

    .line 724
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterLayout:Lcom/lx/launcher8/view/FooterLayout;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 727
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mFooterLayout:Lcom/lx/launcher8/view/FooterLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 728
    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 727
    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/view/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    :cond_3
    invoke-direct {p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->refreshLoadingViewsHeight()V

    .line 736
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->BOTH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    :goto_0
    iput-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase;->mCurrentMode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    .line 737
    return-void

    .line 736
    :cond_4
    sget-object v0, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    goto :goto_0
.end method
