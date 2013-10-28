.class public Lcom/lx/launcher8/view/AlphaLayout;
.super Landroid/widget/FrameLayout;
.source "AlphaLayout.java"


# instance fields
.field mAlpha:I

.field mBgAlpha:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/view/AlphaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lx/launcher8/view/AlphaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/AlphaLayout;->setWillNotDraw(Z)V

    .line 19
    const/16 v0, 0xff

    iput v0, p0, Lcom/lx/launcher8/view/AlphaLayout;->mAlpha:I

    .line 21
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/16 v9, 0xff

    const/4 v1, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    .local v7, count:I
    iget v0, p0, Lcom/lx/launcher8/view/AlphaLayout;->mAlpha:I

    if-eq v0, v9, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/lx/launcher8/view/AlphaLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/AlphaLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/lx/launcher8/view/AlphaLayout;->mAlpha:I

    .line 45
    const/16 v6, 0x14

    move-object v0, p1

    move v2, v1

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v7

    .line 47
    iget-boolean v0, p0, Lcom/lx/launcher8/view/AlphaLayout;->mBgAlpha:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/lx/launcher8/view/AlphaLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 49
    .local v8, draw:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_0

    iget v0, p0, Lcom/lx/launcher8/view/AlphaLayout;->mAlpha:I

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 52
    .end local v8           #draw:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 53
    iget v0, p0, Lcom/lx/launcher8/view/AlphaLayout;->mAlpha:I

    if-eq v0, v9, :cond_1

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 54
    :cond_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 35
    iput p1, p0, Lcom/lx/launcher8/view/AlphaLayout;->mAlpha:I

    .line 37
    invoke-virtual {p0}, Lcom/lx/launcher8/view/AlphaLayout;->invalidate()V

    .line 38
    return-void
.end method

.method protected setupViews()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
