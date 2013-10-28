.class public Lcom/lx/launcher8/setting/view/CellSizeView;
.super Landroid/view/View;
.source "CellSizeView.java"


# static fields
.field static final SIZE_MAX:I = 0x4


# instance fields
.field private mDrawColor:I

.field private mFrameColor:I

.field private mSelected:Z

.field private mSizeH:I

.field private mSizeW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/setting/view/CellSizeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/CellSizeView;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/CellSizeView;->init()V

    .line 25
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mSizeH:I

    .line 34
    iput v0, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mSizeW:I

    .line 35
    const v0, -0xce4d19

    iput v0, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mDrawColor:I

    .line 36
    const v0, -0x703ce1

    iput v0, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mFrameColor:I

    .line 37
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mSizeW:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mSizeH:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getSizeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mSizeW:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mSizeH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x4

    const/high16 v10, 0x4080

    const/high16 v9, 0x4000

    const/high16 v8, 0x3f00

    .line 68
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 69
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/CellSizeView;->getWidth()I

    move-result v5

    .line 70
    .local v5, width:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/CellSizeView;->getHeight()I

    move-result v2

    .line 71
    .local v2, height:I
    iget-boolean v6, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mSelected:Z

    if-eqz v6, :cond_0

    .line 72
    iget v6, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mFrameColor:I

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 74
    add-int/lit8 v6, v5, -0x4

    add-int/lit8 v7, v2, -0x4

    invoke-virtual {p1, v11, v11, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 75
    const/4 v6, -0x1

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 78
    :cond_0
    if-lez v5, :cond_2

    if-lez v2, :cond_2

    .line 79
    iget v6, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mSizeW:I

    rsub-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    div-float/2addr v6, v10

    div-float/2addr v6, v9

    int-to-float v7, v5

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    float-to-int v3, v6

    .line 80
    .local v3, startX:I
    iget v6, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mSizeH:I

    rsub-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    div-float/2addr v6, v10

    div-float/2addr v6, v9

    int-to-float v7, v2

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    float-to-int v4, v6

    .line 81
    .local v4, startY:I
    sub-int v0, v5, v3

    .line 82
    .local v0, endX:I
    sub-int v1, v2, v4

    .line 83
    .local v1, endY:I
    iget-boolean v6, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mSelected:Z

    if-eqz v6, :cond_1

    .line 84
    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v4, 0x4

    .line 85
    add-int/lit8 v0, v0, -0x4

    add-int/lit8 v1, v1, -0x4

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 88
    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 89
    iget v6, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mDrawColor:I

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 92
    .end local v0           #endX:I
    .end local v1           #endY:I
    .end local v3           #startX:I
    .end local v4           #startY:I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 97
    .local v1, widthMode:I
    const/high16 v2, 0x4000

    if-ne v1, v2, :cond_0

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 99
    .local v0, w:I
    invoke-virtual {p0, v0, v0}, Lcom/lx/launcher8/setting/view/CellSizeView;->setMeasuredDimension(II)V

    .line 101
    .end local v0           #w:I
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0
.end method

.method public setDrawColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 55
    iput p1, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mDrawColor:I

    .line 56
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/CellSizeView;->invalidate()V

    .line 57
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mSelected:Z

    .line 63
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/CellSizeView;->invalidate()V

    .line 64
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 40
    iput p1, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mSizeW:I

    .line 41
    iput p2, p0, Lcom/lx/launcher8/setting/view/CellSizeView;->mSizeH:I

    .line 43
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/CellSizeView;->invalidate()V

    .line 44
    return-void
.end method
