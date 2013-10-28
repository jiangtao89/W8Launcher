.class public Lcom/lx/launcher8/anim/ValueAnimation;
.super Ljava/lang/Object;
.source "ValueAnimation.java"


# static fields
.field static final DURING_DEFAULT:I = 0x1f4


# instance fields
.field private mDuringTime:I

.field private mFinish:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "interpolator"

    .prologue
    .line 17
    const/16 v0, 0x1f4

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/anim/ValueAnimation;-><init>(Landroid/view/animation/Interpolator;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Interpolator;I)V
    .locals 1
    .parameter "interpolator"
    .parameter "duringTime"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/lx/launcher8/anim/ValueAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 22
    iput p2, p0, Lcom/lx/launcher8/anim/ValueAnimation;->mDuringTime:I

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/anim/ValueAnimation;->mFinish:Z

    .line 24
    return-void
.end method


# virtual methods
.method protected ensureInterpolator()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lx/launcher8/anim/ValueAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/anim/ValueAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 30
    :cond_0
    return-void
.end method

.method public getCurrentValue()F
    .locals 7

    .prologue
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 42
    .local v0, curTime:J
    iget-wide v3, p0, Lcom/lx/launcher8/anim/ValueAnimation;->mStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iput-wide v0, p0, Lcom/lx/launcher8/anim/ValueAnimation;->mStartTime:J

    .line 43
    :cond_0
    iget-wide v3, p0, Lcom/lx/launcher8/anim/ValueAnimation;->mStartTime:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    iget v4, p0, Lcom/lx/launcher8/anim/ValueAnimation;->mDuringTime:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 44
    .local v2, input:F
    const/high16 v3, 0x3f80

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/lx/launcher8/anim/ValueAnimation;->mFinish:Z

    .line 45
    return v2

    .line 44
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/lx/launcher8/anim/ValueAnimation;->mFinish:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lx/launcher8/anim/ValueAnimation;->mStartTime:J

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/anim/ValueAnimation;->mFinish:Z

    .line 55
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lx/launcher8/anim/ValueAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 34
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lx/launcher8/anim/ValueAnimation;->mStartTime:J

    .line 38
    return-void
.end method
