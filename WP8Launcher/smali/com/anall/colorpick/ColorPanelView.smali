.class public Lcom/anall/colorpick/ColorPanelView;
.super Landroid/view/View;
.source "ColorPanelView.java"


# static fields
.field private static final BORDER_WIDTH_PX:F = 1.0f

.field private static mDensity:F


# instance fields
.field private mAlphaPattern:Lcom/anall/colorpick/AlphaPatternDrawable;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mColorPaint:Landroid/graphics/Paint;

.field private mColorRect:Landroid/graphics/RectF;

.field private mDrawingRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/high16 v0, 0x3f80

    sput v0, Lcom/anall/colorpick/ColorPanelView;->mDensity:F

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anall/colorpick/ColorPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anall/colorpick/ColorPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const v0, -0x919192

    iput v0, p0, Lcom/anall/colorpick/ColorPanelView;->mBorderColor:I

    .line 45
    const/high16 v0, -0x100

    iput v0, p0, Lcom/anall/colorpick/ColorPanelView;->mColor:I

    .line 67
    invoke-direct {p0}, Lcom/anall/colorpick/ColorPanelView;->init()V

    .line 68
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anall/colorpick/ColorPanelView;->mBorderPaint:Landroid/graphics/Paint;

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anall/colorpick/ColorPanelView;->mColorPaint:Landroid/graphics/Paint;

    .line 73
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/anall/colorpick/ColorPanelView;->mDensity:F

    .line 74
    return-void
.end method

.method private setUpColorRect()V
    .locals 10

    .prologue
    const/high16 v6, 0x3f80

    .line 120
    iget-object v1, p0, Lcom/anall/colorpick/ColorPanelView;->mDrawingRect:Landroid/graphics/RectF;

    .line 122
    .local v1, dRect:Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v5, v6

    .line 123
    .local v2, left:F
    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v5, v6

    .line 124
    .local v4, top:F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v5, v6

    .line 125
    .local v0, bottom:F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v6

    .line 127
    .local v3, right:F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/anall/colorpick/ColorPanelView;->mColorRect:Landroid/graphics/RectF;

    .line 129
    new-instance v5, Lcom/anall/colorpick/AlphaPatternDrawable;

    const/high16 v6, 0x40a0

    sget v7, Lcom/anall/colorpick/ColorPanelView;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6}, Lcom/anall/colorpick/AlphaPatternDrawable;-><init>(I)V

    iput-object v5, p0, Lcom/anall/colorpick/ColorPanelView;->mAlphaPattern:Lcom/anall/colorpick/AlphaPatternDrawable;

    .line 131
    iget-object v5, p0, Lcom/anall/colorpick/ColorPanelView;->mAlphaPattern:Lcom/anall/colorpick/AlphaPatternDrawable;

    iget-object v6, p0, Lcom/anall/colorpick/ColorPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 132
    iget-object v7, p0, Lcom/anall/colorpick/ColorPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 133
    iget-object v8, p0, Lcom/anall/colorpick/ColorPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 134
    iget-object v9, p0, Lcom/anall/colorpick/ColorPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 131
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/anall/colorpick/AlphaPatternDrawable;->setBounds(IIII)V

    .line 136
    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/anall/colorpick/ColorPanelView;->mBorderColor:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/anall/colorpick/ColorPanelView;->mColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/anall/colorpick/ColorPanelView;->mColorRect:Landroid/graphics/RectF;

    .line 83
    .local v0, rect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/anall/colorpick/ColorPanelView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/anall/colorpick/ColorPanelView;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v1, p0, Lcom/anall/colorpick/ColorPanelView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/anall/colorpick/ColorPanelView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 87
    iget-object v1, p0, Lcom/anall/colorpick/ColorPanelView;->mAlphaPattern:Lcom/anall/colorpick/AlphaPatternDrawable;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/anall/colorpick/ColorPanelView;->mAlphaPattern:Lcom/anall/colorpick/AlphaPatternDrawable;

    invoke-virtual {v1, p1}, Lcom/anall/colorpick/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/anall/colorpick/ColorPanelView;->mColorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/anall/colorpick/ColorPanelView;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v1, p0, Lcom/anall/colorpick/ColorPanelView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 94
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 99
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 100
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 102
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Lcom/anall/colorpick/ColorPanelView;->setMeasuredDimension(II)V

    .line 103
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 109
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/anall/colorpick/ColorPanelView;->mDrawingRect:Landroid/graphics/RectF;

    .line 110
    iget-object v0, p0, Lcom/anall/colorpick/ColorPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPanelView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 111
    iget-object v0, p0, Lcom/anall/colorpick/ColorPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPanelView;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 112
    iget-object v0, p0, Lcom/anall/colorpick/ColorPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPanelView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 113
    iget-object v0, p0, Lcom/anall/colorpick/ColorPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPanelView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 115
    invoke-direct {p0}, Lcom/anall/colorpick/ColorPanelView;->setUpColorRect()V

    .line 117
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 160
    iput p1, p0, Lcom/anall/colorpick/ColorPanelView;->mBorderColor:I

    .line 161
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPanelView;->invalidate()V

    .line 162
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 143
    iput p1, p0, Lcom/anall/colorpick/ColorPanelView;->mColor:I

    .line 144
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPanelView;->invalidate()V

    .line 145
    return-void
.end method
