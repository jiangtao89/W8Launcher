.class public Lcom/app/common/view/Rotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "Rotate3dAnimation.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mReverse:Z

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 0
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "depthZ"
    .parameter "reverse"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 56
    iput p1, p0, Lcom/app/common/view/Rotate3dAnimation;->mFromDegrees:F

    .line 57
    iput p2, p0, Lcom/app/common/view/Rotate3dAnimation;->mToDegrees:F

    .line 58
    iput p3, p0, Lcom/app/common/view/Rotate3dAnimation;->mCenterX:F

    .line 59
    iput p4, p0, Lcom/app/common/view/Rotate3dAnimation;->mCenterY:F

    .line 60
    iput p5, p0, Lcom/app/common/view/Rotate3dAnimation;->mDepthZ:F

    .line 61
    iput-boolean p6, p0, Lcom/app/common/view/Rotate3dAnimation;->mReverse:Z

    .line 62
    return-void
.end method

.method public static applyRotation(Landroid/view/ViewGroup;I)V
    .locals 7
    .parameter "view"
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x4000

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v2, v5

    .line 101
    .local v3, centerX:F
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v4, v2, v5

    .line 103
    .local v4, centerY:F
    new-instance v0, Lcom/app/common/view/Rotate3dAnimation;

    const/high16 v2, 0x42b4

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/app/common/view/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 104
    .local v0, rotation:Lcom/app/common/view/Rotate3dAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/app/common/view/Rotate3dAnimation;->setDuration(J)V

    .line 105
    invoke-virtual {v0, v6}, Lcom/app/common/view/Rotate3dAnimation;->setFillAfter(Z)V

    .line 106
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/app/common/view/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 107
    new-instance v1, Lcom/app/common/view/DisplayNextView;

    invoke-direct {v1, p0}, Lcom/app/common/view/DisplayNextView;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/app/common/view/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 109
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v8, 0x0

    .line 72
    iget v4, p0, Lcom/app/common/view/Rotate3dAnimation;->mFromDegrees:F

    .line 73
    .local v4, fromDegrees:F
    iget v6, p0, Lcom/app/common/view/Rotate3dAnimation;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 75
    .local v3, degrees:F
    iget v1, p0, Lcom/app/common/view/Rotate3dAnimation;->mCenterX:F

    .line 76
    .local v1, centerX:F
    iget v2, p0, Lcom/app/common/view/Rotate3dAnimation;->mCenterY:F

    .line 77
    .local v2, centerY:F
    iget-object v0, p0, Lcom/app/common/view/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 79
    .local v0, camera:Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 81
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 82
    iget-boolean v6, p0, Lcom/app/common/view/Rotate3dAnimation;->mReverse:Z

    if-eqz v6, :cond_0

    .line 83
    iget v6, p0, Lcom/app/common/view/Rotate3dAnimation;->mDepthZ:F

    mul-float/2addr v6, p1

    invoke-virtual {v0, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 87
    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 88
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 91
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 92
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 93
    return-void

    .line 85
    :cond_0
    iget v6, p0, Lcom/app/common/view/Rotate3dAnimation;->mDepthZ:F

    const/high16 v7, 0x3f80

    sub-float/2addr v7, p1

    mul-float/2addr v6, v7

    invoke-virtual {v0, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 67
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/app/common/view/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 68
    return-void
.end method
