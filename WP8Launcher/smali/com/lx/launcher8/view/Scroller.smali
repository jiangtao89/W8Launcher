.class public Lcom/lx/launcher8/view/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/view/Scroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private final mFlywheel:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

.field private final mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 237
    const/high16 v0, 0x4100

    sput v0, Lcom/lx/launcher8/view/Scroller;->sViscousFluidScale:F

    .line 238
    sput v1, Lcom/lx/launcher8/view/Scroller;->sViscousFluidNormalize:F

    .line 239
    invoke-static {v1}, Lcom/lx/launcher8/view/Scroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lcom/lx/launcher8/view/Scroller;->sViscousFluidNormalize:F

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/view/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/lx/launcher8/view/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"
    .parameter "flywheel"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/lx/launcher8/view/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 69
    iput-boolean p3, p0, Lcom/lx/launcher8/view/Scroller;->mFlywheel:Z

    .line 70
    new-instance v0, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-direct {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    .line 71
    new-instance v0, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-direct {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    .line 73
    invoke-static {p1}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->initFromContext(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method static viscousFluid(F)F
    .locals 4
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 242
    sget v1, Lcom/lx/launcher8/view/Scroller;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    .line 243
    cmpg-float v1, p0, v3

    if-gez v1, :cond_0

    .line 244
    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p0, v1

    .line 250
    :goto_0
    sget v1, Lcom/lx/launcher8/view/Scroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    .line 251
    return p0

    .line 246
    :cond_0
    const v0, 0x3ebc5ab2

    .line 247
    .local v0, start:F
    sub-float v1, v3, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p0, v3, v1

    .line 248
    sub-float v1, v3, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->finish()V

    .line 438
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->finish()V

    .line 439
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Scroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 259
    const/4 v6, 0x0

    .line 303
    :goto_0
    return v6

    .line 262
    :cond_0
    iget v6, p0, Lcom/lx/launcher8/view/Scroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 303
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 264
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 265
    .local v4, time:J
    iget-object v6, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$7(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)J

    move-result-wide v6

    sub-long v1, v4, v6

    .line 266
    .local v1, elapsedTime:J
    iget-object v6, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mDuration:I
    invoke-static {v6}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$6(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)I

    move-result v0

    .line 267
    .local v0, duration:I
    int-to-long v6, v0

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    .line 268
    long-to-float v6, v1

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 270
    .local v3, q:F
    iget-object v6, p0, Lcom/lx/launcher8/view/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_2

    .line 271
    invoke-static {v3}, Lcom/lx/launcher8/view/Scroller;->viscousFluid(F)F

    move-result v3

    .line 276
    :goto_2
    iget-object v6, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v6, v3}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->updateScroll(F)V

    .line 277
    iget-object v6, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v6, v3}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_1

    .line 273
    :cond_2
    iget-object v6, p0, Lcom/lx/launcher8/view/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    .line 279
    .end local v3           #q:F
    :cond_3
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Scroller;->abortAnimation()V

    goto :goto_1

    .line 284
    .end local v0           #duration:I
    .end local v1           #elapsedTime:J
    .end local v4           #time:J
    :pswitch_1
    iget-object v6, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$0(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 285
    iget-object v6, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_4

    .line 286
    iget-object v6, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 287
    iget-object v6, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->finish()V

    .line 292
    :cond_4
    iget-object v6, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$0(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 293
    iget-object v6, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_1

    .line 294
    iget-object v6, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 295
    iget-object v6, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->finish()V

    goto :goto_1

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .parameter "extend"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->extendDuration(I)V

    .line 197
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->extendDuration(I)V

    .line 198
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 354
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/lx/launcher8/view/Scroller;->fling(IIIIIIIIII)V

    .line 355
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 8
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"
    .parameter "overX"
    .parameter "overY"

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/lx/launcher8/view/Scroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$3(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)F

    move-result v6

    .line 362
    .local v6, oldVelocityX:F
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$3(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)F

    move-result v7

    .line 363
    .local v7, oldVelocityY:F
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 364
    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 365
    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    .line 366
    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    .line 370
    .end local v6           #oldVelocityX:F
    .end local v7           #oldVelocityY:F
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/lx/launcher8/view/Scroller;->mMode:I

    .line 371
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->fling(IIIII)V

    .line 372
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->fling(IIIII)V

    .line 373
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2
    .parameter "finished"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    iget-object v1, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #setter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mFinished:Z
    invoke-static {v1, p1}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$1(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;Z)V

    #setter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0, p1}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$1(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;Z)V

    .line 101
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$3(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$3(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)F

    move-result v2

    mul-float v0, v1, v2

    .line 128
    .local v0, squaredNorm:F
    iget-object v1, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$3(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$3(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 129
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$2(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$2(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mDuration:I
    invoke-static {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$6(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mDuration:I
    invoke-static {v1}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$6(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$5(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$5(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$4(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$4(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$0(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$0(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverScrolled()Z
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$0(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$8(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_2

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$0(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$8(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    .line 423
    goto :goto_0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 4
    .parameter "xvel"
    .parameter "yvel"

    .prologue
    .line 455
    iget-object v2, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$5(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$4(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)I

    move-result v3

    sub-int v0, v2, v3

    .line 456
    .local v0, dx:I
    iget-object v2, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$5(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$4(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)I

    move-result v3

    sub-int v1, v2, v3

    .line 457
    .local v1, dy:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 458
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    .line 457
    goto :goto_0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .parameter "startX"
    .parameter "finalX"
    .parameter "overX"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 390
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .parameter "startY"
    .parameter "finalY"
    .parameter "overY"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 407
    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .parameter "newX"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->setFinalPosition(I)V

    .line 215
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .parameter "newY"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->setFinalPosition(I)V

    .line 232
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .parameter "friction"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->setFriction(F)V

    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->setFriction(F)V

    .line 79
    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 4
    .parameter "startX"
    .parameter "startY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    const/4 v2, 0x1

    .line 344
    iput v2, p0, Lcom/lx/launcher8/view/Scroller;->mMode:I

    .line 347
    iget-object v3, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->springback(III)Z

    move-result v0

    .line 348
    .local v0, spingbackX:Z
    iget-object v3, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->springback(III)Z

    move-result v1

    .line 349
    .local v1, spingbackY:Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    return v2
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 321
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/Scroller;->startScroll(IIIII)V

    .line 322
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/view/Scroller;->mMode:I

    .line 339
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->startScroll(III)V

    .line 340
    iget-object v0, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->startScroll(III)V

    .line 341
    return-void
.end method

.method public timePassed()I
    .locals 8

    .prologue
    .line 449
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 450
    .local v2, time:J
    iget-object v4, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerX:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mStartTime:J
    invoke-static {v4}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$7(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/lx/launcher8/view/Scroller;->mScrollerY:Lcom/lx/launcher8/view/Scroller$SplineOverScroller;

    #getter for: Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Lcom/lx/launcher8/view/Scroller$SplineOverScroller;->access$7(Lcom/lx/launcher8/view/Scroller$SplineOverScroller;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 451
    .local v0, startTime:J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
