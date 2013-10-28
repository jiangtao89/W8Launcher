.class public Lcom/lx/launcher8/view/BackgroundView;
.super Landroid/view/View;
.source "BackgroundView.java"


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/view/BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/view/BackgroundView;->screenWidth:I

    .line 32
    invoke-virtual {p0}, Lcom/lx/launcher8/view/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/lx/launcher8/view/BackgroundView;->screenWidth:I

    .line 33
    const v0, 0x7f020040

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/BackgroundView;->setBackgroundResource(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/view/BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/view/BackgroundView;->screenWidth:I

    .line 26
    invoke-virtual {p0}, Lcom/lx/launcher8/view/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/lx/launcher8/view/BackgroundView;->screenWidth:I

    .line 27
    const v0, 0x7f020040

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/BackgroundView;->setBackgroundResource(I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/view/BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/view/BackgroundView;->screenWidth:I

    .line 20
    invoke-virtual {p0}, Lcom/lx/launcher8/view/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/lx/launcher8/view/BackgroundView;->screenWidth:I

    .line 21
    const v0, 0x7f020040

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/BackgroundView;->setBackgroundResource(I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 38
    iget-object v2, p0, Lcom/lx/launcher8/view/BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 50
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/view/BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 40
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/lx/launcher8/view/BackgroundView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/lx/launcher8/view/BackgroundView;->screenWidth:I

    add-int v1, v2, v3

    .line 41
    .local v1, mRight:I
    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_1

    .line 42
    iget-object v2, p0, Lcom/lx/launcher8/view/BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/BackgroundView;->getScrollX()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 43
    iget-object v2, p0, Lcom/lx/launcher8/view/BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 44
    iget-object v2, p0, Lcom/lx/launcher8/view/BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v7, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 45
    iget-object v2, p0, Lcom/lx/launcher8/view/BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/view/BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/BackgroundView;->getScrollX()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v7, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48
    iget-object v2, p0, Lcom/lx/launcher8/view/BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 55
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 59
    new-instance v0, Lcom/lx/launcher8/view/ColorDrawable;

    invoke-direct {v0, p1}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/lx/launcher8/view/BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    .line 60
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lx/launcher8/view/BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    .line 70
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/lx/launcher8/view/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/view/BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    .line 65
    return-void
.end method
