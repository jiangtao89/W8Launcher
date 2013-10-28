.class final Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmoothScrollRunnable"
.end annotation


# static fields
.field static final ANIMATION_DELAY:I = 0xa

.field static final ANIMATION_DURATION_MS:I = 0x12c

.field static final ANIMATION_OVERSHOOT_TENSION:F = 2.0f


# instance fields
.field private mContinueRunning:Z

.field private mCurrentY:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mScrollFromY:I

.field private final mScrollToY:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/lx/launcher8/view/PullToRefreshBase;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/view/PullToRefreshBase;II)V
    .locals 2
    .parameter
    .parameter "fromY"
    .parameter "toY"

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/lx/launcher8/view/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    .line 1038
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    .line 1039
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 1042
    iput p2, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    .line 1043
    iput p3, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    .line 1044
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1045
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    .line 1054
    iget-wide v3, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 1055
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    .line 1074
    :goto_0
    iget-boolean v3, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    iget v4, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    if-eq v3, v4, :cond_0

    .line 1078
    iget-object v3, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/lx/launcher8/view/PullToRefreshBase;

    const-wide/16 v4, 0xa

    invoke-virtual {v3, p0, v4, v5}, Lcom/lx/launcher8/view/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1081
    :cond_0
    return-void

    .line 1063
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    sub-long/2addr v3, v5

    mul-long/2addr v3, v7

    const-wide/16 v5, 0x12c

    div-long v1, v3, v5

    .line 1064
    .local v1, normalizedTime:J
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1066
    iget v3, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    iget v4, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 1067
    iget-object v4, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v5, v1

    const/high16 v6, 0x447a

    div-float/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 1066
    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1068
    .local v0, deltaY:I
    iget v3, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 1069
    iget-object v3, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/lx/launcher8/view/PullToRefreshBase;

    iget v4, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/view/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1084
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    .line 1085
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/lx/launcher8/view/PullToRefreshBase;

    invoke-virtual {v0, p0}, Lcom/lx/launcher8/view/PullToRefreshBase;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1086
    return-void
.end method
