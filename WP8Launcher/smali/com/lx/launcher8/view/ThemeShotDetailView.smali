.class public Lcom/lx/launcher8/view/ThemeShotDetailView;
.super Landroid/view/View;
.source "ThemeShotDetailView.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bmHeight:I

.field private bmWidth:I

.field private height:I

.field private isMultipoint:Z

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private moveX:I

.field private moveY:I

.field private paint:Landroid/graphics/Paint;

.field private width:I

.field private x:I

.field private x0:I

.field private x1:I

.field private y:I

.field private y0:I

.field private y1:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "context"
    .parameter "bitmap"
    .parameter "h"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v2, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->bitmap:Landroid/graphics/Bitmap;

    .line 18
    iput v1, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->width:I

    .line 19
    iput v1, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->height:I

    .line 20
    iput v1, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->bmWidth:I

    .line 21
    iput v1, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->bmHeight:I

    .line 23
    iput-object v2, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->paint:Landroid/graphics/Paint;

    .line 32
    iput-object p2, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->bitmap:Landroid/graphics/Bitmap;

    .line 33
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 35
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->width:I

    .line 36
    iput p3, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->height:I

    .line 37
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->bmWidth:I

    .line 38
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->bmHeight:I

    .line 39
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->paint:Landroid/graphics/Paint;

    .line 40
    invoke-direct {p0}, Lcom/lx/launcher8/view/ThemeShotDetailView;->init()V

    .line 41
    return-void
.end method

.method private getScale([I[I)F
    .locals 10
    .parameter "s0"
    .parameter "s1"

    .prologue
    .line 131
    const/4 v8, 0x0

    aget v8, p1, v8

    const/4 v9, 0x2

    aget v9, p1, v9

    sub-int/2addr v8, v9

    int-to-float v6, v8

    .line 132
    .local v6, w0:F
    const/4 v8, 0x1

    aget v8, p1, v8

    const/4 v9, 0x3

    aget v9, p1, v9

    sub-int/2addr v8, v9

    int-to-float v0, v8

    .line 133
    .local v0, h0:F
    const/4 v8, 0x0

    aget v8, p2, v8

    const/4 v9, 0x2

    aget v9, p2, v9

    sub-int/2addr v8, v9

    int-to-float v7, v8

    .line 134
    .local v7, w1:F
    const/4 v8, 0x1

    aget v8, p2, v8

    const/4 v9, 0x3

    aget v9, p2, v9

    sub-int/2addr v8, v9

    int-to-float v1, v8

    .line 135
    .local v1, h1:F
    mul-float v8, v6, v6

    mul-float v9, v0, v0

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 136
    .local v2, length0:D
    mul-float v8, v7, v7

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 137
    .local v4, length1:D
    const-wide/16 v8, 0x0

    cmpl-double v8, v2, v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x0

    cmpl-double v8, v4, v8

    if-nez v8, :cond_1

    .line 138
    :cond_0
    const/high16 v8, 0x3f80

    .line 139
    :goto_0
    return v8

    :cond_1
    div-double v8, v4, v2

    double-to-float v8, v8

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 108
    iget v1, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->bmHeight:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 109
    .local v0, scale:F
    invoke-virtual {p0, v0, v0}, Lcom/lx/launcher8/view/ThemeShotDetailView;->scaleBitmap(FF)V

    .line 111
    invoke-virtual {p0, v3, v3}, Lcom/lx/launcher8/view/ThemeShotDetailView;->center(ZZ)V

    .line 112
    return-void
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 7
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 115
    new-instance v0, Landroid/graphics/RectF;

    iget v3, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->bmWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->bmHeight:I

    int-to-float v4, v4

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 116
    .local v0, rectF:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, transx:F
    const/4 v2, 0x0

    .line 120
    .local v2, transy:F
    if-eqz p1, :cond_0

    .line 121
    iget v3, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, v3, v4

    .line 123
    :cond_0
    if-eqz p2, :cond_1

    .line 124
    iget v3, v0, Landroid/graphics/RectF;->top:F

    neg-float v2, v3

    .line 126
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/lx/launcher8/view/ThemeShotDetailView;->postTranslate(FF)V

    .line 127
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->bmWidth:I

    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->bmHeight:I

    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 48
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 53
    .local v0, pointerCount:I
    const/4 v8, 0x1

    if-ne v0, v8, :cond_1

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v2, v8

    .line 55
    .local v2, tx:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 56
    .local v5, ty:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 104
    .end local v2           #tx:I
    .end local v5           #ty:I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    return v8

    .line 58
    .restart local v2       #tx:I
    .restart local v5       #ty:I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->x:I

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->y:I

    .line 60
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->isMultipoint:Z

    goto :goto_0

    .line 63
    :pswitch_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ThemeShotDetailView;->invalidate()V

    goto :goto_0

    .line 66
    :pswitch_2
    iget v8, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->x:I

    sub-int/2addr v8, v2

    iput v8, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->moveX:I

    .line 67
    iget v8, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->y:I

    sub-int/2addr v8, v5

    iput v8, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->moveY:I

    .line 69
    const/4 v8, 0x0

    iget v9, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->moveY:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {p0, v8, v9}, Lcom/lx/launcher8/view/ThemeShotDetailView;->postTranslate(FF)V

    .line 70
    iput v2, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->x:I

    .line 71
    iput v5, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->y:I

    .line 72
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ThemeShotDetailView;->invalidate()V

    goto :goto_0

    .line 75
    .end local v2           #tx:I
    .end local v5           #ty:I
    :cond_1
    const/4 v8, 0x2

    if-lt v0, v8, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    .line 86
    :sswitch_0
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v3, v8

    .line 87
    .local v3, tx0:I
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v6, v8

    .line 88
    .local v6, ty0:I
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v4, v8

    .line 89
    .local v4, tx1:I
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 90
    .local v7, ty1:I
    const/4 v8, 0x4

    new-array v8, v8, [I

    const/4 v9, 0x0

    iget v10, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->x0:I

    aput v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->y0:I

    aput v10, v8, v9

    const/4 v9, 0x2

    iget v10, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->x1:I

    aput v10, v8, v9

    const/4 v9, 0x3

    iget v10, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->y1:I

    aput v10, v8, v9

    const/4 v9, 0x4

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v3, v9, v10

    const/4 v10, 0x1

    aput v6, v9, v10

    const/4 v10, 0x2

    aput v4, v9, v10

    const/4 v10, 0x3

    .line 91
    aput v7, v9, v10

    .line 90
    invoke-direct {p0, v8, v9}, Lcom/lx/launcher8/view/ThemeShotDetailView;->getScale([I[I)F

    move-result v1

    .line 92
    .local v1, scale:F
    invoke-virtual {p0, v1, v1}, Lcom/lx/launcher8/view/ThemeShotDetailView;->scaleBitmap(FF)V

    .line 93
    iput v3, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->x0:I

    .line 94
    iput v6, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->y0:I

    .line 95
    iput v4, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->x1:I

    .line 96
    iput v7, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->y1:I

    .line 97
    invoke-virtual {p0}, Lcom/lx/launcher8/view/ThemeShotDetailView;->invalidate()V

    goto/16 :goto_0

    .line 79
    .end local v1           #scale:F
    .end local v3           #tx0:I
    .end local v4           #tx1:I
    .end local v6           #ty0:I
    .end local v7           #ty1:I
    :sswitch_1
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->x0:I

    .line 80
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->y0:I

    .line 81
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->x1:I

    .line 82
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->y1:I

    .line 83
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->isMultipoint:Z

    goto/16 :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 76
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0x105 -> :sswitch_1
    .end sparse-switch
.end method

.method protected postTranslate(FF)V
    .locals 1
    .parameter "tx"
    .parameter "ty"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->isMultipoint:Z

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 152
    :cond_0
    return-void
.end method

.method protected scaleBitmap(FF)V
    .locals 4
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    const/high16 v3, 0x4000

    .line 143
    iget v2, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->width:I

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 144
    .local v0, cx:F
    iget v2, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->height:I

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 145
    .local v1, cy:F
    iget-object v2, p0, Lcom/lx/launcher8/view/ThemeShotDetailView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 146
    return-void
.end method
