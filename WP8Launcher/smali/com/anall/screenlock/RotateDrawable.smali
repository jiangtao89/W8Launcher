.class public Lcom/anall/screenlock/RotateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RotateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anall/screenlock/RotateDrawable$RotateState;
    }
.end annotation


# instance fields
.field private mHeight:I

.field private mRotate:I

.field private mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

.field private final mTemp:Landroid/graphics/RectF;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anall/screenlock/RotateDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 25
    new-instance v0, Lcom/anall/screenlock/RotateDrawable$RotateState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anall/screenlock/RotateDrawable$RotateState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/anall/screenlock/RotateDrawable;->mTemp:Landroid/graphics/RectF;

    .line 27
    invoke-virtual {p0, p1}, Lcom/anall/screenlock/RotateDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 28
    return-void
.end method

.method private constructor <init>(Lcom/anall/screenlock/RotateDrawable$RotateState;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "state"
    .parameter "res"

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    .line 159
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/anall/screenlock/RotateDrawable;->mTemp:Landroid/graphics/RectF;

    .line 160
    invoke-virtual {p0}, Lcom/anall/screenlock/RotateDrawable;->invalidateSelf()V

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Lcom/anall/screenlock/RotateDrawable$RotateState;Landroid/content/res/Resources;Lcom/anall/screenlock/RotateDrawable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lcom/anall/screenlock/RotateDrawable;-><init>(Lcom/anall/screenlock/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private computeMatrix()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 74
    iget-object v6, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    iget-object v6, v6, Lcom/anall/screenlock/RotateDrawable$RotateState;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_0

    .line 92
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v6, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    iget-object v6, v6, Lcom/anall/screenlock/RotateDrawable$RotateState;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 78
    iget-object v6, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    iget-object v3, v6, Lcom/anall/screenlock/RotateDrawable$RotateState;->mMatrix:Landroid/graphics/Matrix;

    .line 79
    .local v3, m:Landroid/graphics/Matrix;
    iget-object v6, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    iget-object v0, v6, Lcom/anall/screenlock/RotateDrawable$RotateState;->mBitmap:Landroid/graphics/Bitmap;

    .line 80
    .local v0, bit:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v1, v6, 0x2

    .line 81
    .local v1, cx:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    .line 82
    .local v2, cy:I
    invoke-virtual {p0}, Lcom/anall/screenlock/RotateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 83
    .local v4, rx:I
    invoke-virtual {p0}, Lcom/anall/screenlock/RotateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v5, v6, 0x2

    .line 84
    .local v5, ry:I
    neg-int v6, v1

    int-to-float v6, v6

    neg-int v7, v2

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 85
    iget v6, p0, Lcom/anall/screenlock/RotateDrawable;->mRotate:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 86
    if-lez v4, :cond_1

    if-lez v5, :cond_1

    .line 87
    iget-object v6, p0, Lcom/anall/screenlock/RotateDrawable;->mTemp:Landroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v8, v2

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 88
    iget-object v6, p0, Lcom/anall/screenlock/RotateDrawable;->mTemp:Landroid/graphics/RectF;

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 89
    int-to-float v6, v4

    iget-object v7, p0, Lcom/anall/screenlock/RotateDrawable;->mTemp:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    int-to-float v7, v5

    iget-object v8, p0, Lcom/anall/screenlock/RotateDrawable;->mTemp:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 91
    :cond_1
    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    iget-object v0, v1, Lcom/anall/screenlock/RotateDrawable$RotateState;->mBitmap:Landroid/graphics/Bitmap;

    .line 97
    .local v0, bit:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    iget-object v1, v1, Lcom/anall/screenlock/RotateDrawable$RotateState;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    iget-object v2, v2, Lcom/anall/screenlock/RotateDrawable$RotateState;->mMatrix:Landroid/graphics/Matrix;

    .line 99
    iget-object v3, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    iget-object v3, v3, Lcom/anall/screenlock/RotateDrawable$RotateState;->mPaint:Landroid/graphics/Paint;

    .line 98
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 101
    :cond_0
    return-void
.end method

.method public bridge synthetic getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/anall/screenlock/RotateDrawable;->getConstantState()Lcom/anall/screenlock/RotateDrawable$RotateState;

    move-result-object v0

    return-object v0
.end method

.method public final getConstantState()Lcom/anall/screenlock/RotateDrawable$RotateState;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    invoke-virtual {p0}, Lcom/anall/screenlock/RotateDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/anall/screenlock/RotateDrawable$RotateState;->mChangingConfigurations:I

    .line 125
    iget-object v0, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/anall/screenlock/RotateDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/anall/screenlock/RotateDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    iget-object v0, v0, Lcom/anall/screenlock/RotateDrawable$RotateState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    iget-object v0, v0, Lcom/anall/screenlock/RotateDrawable$RotateState;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "bounds"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 70
    invoke-direct {p0}, Lcom/anall/screenlock/RotateDrawable;->computeMatrix()V

    .line 71
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    iget-object v1, v1, Lcom/anall/screenlock/RotateDrawable$RotateState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 106
    .local v0, oldAlpha:I
    if-eq v0, p1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    iget-object v1, v1, Lcom/anall/screenlock/RotateDrawable$RotateState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    invoke-virtual {p0}, Lcom/anall/screenlock/RotateDrawable;->invalidateSelf()V

    .line 110
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    iget-object v0, v0, Lcom/anall/screenlock/RotateDrawable$RotateState;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_2

    .line 32
    iget-object v0, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    iget-object v0, v0, Lcom/anall/screenlock/RotateDrawable$RotateState;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    iget-object v0, v0, Lcom/anall/screenlock/RotateDrawable$RotateState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    iput-object p1, v0, Lcom/anall/screenlock/RotateDrawable$RotateState;->mBitmap:Landroid/graphics/Bitmap;

    .line 36
    invoke-direct {p0}, Lcom/anall/screenlock/RotateDrawable;->computeMatrix()V

    .line 37
    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/anall/screenlock/RotateDrawable;->mWidth:I

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/anall/screenlock/RotateDrawable;->mHeight:I

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/anall/screenlock/RotateDrawable;->invalidateSelf()V

    .line 43
    :cond_2
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/anall/screenlock/RotateDrawable;->mRotateState:Lcom/anall/screenlock/RotateDrawable$RotateState;

    iget-object v0, v0, Lcom/anall/screenlock/RotateDrawable$RotateState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 115
    invoke-virtual {p0}, Lcom/anall/screenlock/RotateDrawable;->invalidateSelf()V

    .line 116
    return-void
.end method

.method public setRotate(I)V
    .locals 1
    .parameter "rotate"

    .prologue
    .line 50
    iget v0, p0, Lcom/anall/screenlock/RotateDrawable;->mRotate:I

    if-eq v0, p1, :cond_0

    .line 51
    iput p1, p0, Lcom/anall/screenlock/RotateDrawable;->mRotate:I

    .line 52
    invoke-direct {p0}, Lcom/anall/screenlock/RotateDrawable;->computeMatrix()V

    .line 53
    invoke-virtual {p0}, Lcom/anall/screenlock/RotateDrawable;->invalidateSelf()V

    .line 55
    :cond_0
    return-void
.end method
