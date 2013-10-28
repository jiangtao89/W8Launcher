.class public Lcom/lx/launcher8/view/TitleLinearLayout;
.super Landroid/widget/LinearLayout;
.source "TitleLinearLayout.java"


# instance fields
.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lcom/lx/launcher8/view/TitleLinearLayout;->init()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0}, Lcom/lx/launcher8/view/TitleLinearLayout;->init()V

    .line 22
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/lx/launcher8/view/TitleLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/lx/launcher8/view/TitleLinearLayout;->screenWidth:I

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/TitleLinearLayout;->setWillNotDraw(Z)V

    .line 27
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v1, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    .local v7, restoreCount:I
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 33
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 34
    .local v9, xy:[I
    invoke-virtual {p2, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 35
    const/4 v0, 0x0

    aget v0, v9, v0

    mul-int/lit16 v0, v0, 0xff

    iget v2, p0, Lcom/lx/launcher8/view/TitleLinearLayout;->screenWidth:I

    div-int/2addr v0, v2

    rsub-int v5, v0, 0xff

    .line 36
    .local v5, alpha:I
    if-gez v5, :cond_0

    const/4 v5, 0x0

    .line 37
    :cond_0
    const/16 v0, 0xff

    if-le v5, v0, :cond_1

    const/16 v5, 0xff

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/TitleLinearLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/TitleLinearLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    .line 39
    const/16 v6, 0x14

    move-object v0, p1

    move v2, v1

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v7

    .line 41
    .end local v5           #alpha:I
    .end local v9           #xy:[I
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v8

    .line 42
    .local v8, result:Z
    if-eqz v7, :cond_3

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 43
    :cond_3
    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 48
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 49
    invoke-virtual {p0}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildCount()I

    move-result v1

    .line 50
    .local v1, count:I
    if-lez v1, :cond_0

    .line 51
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, child:Landroid/view/View;
    iget v3, p0, Lcom/lx/launcher8/view/TitleLinearLayout;->screenWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v2, v3, v4

    .line 53
    .local v2, padingRight:I
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 53
    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 56
    .end local v0           #child:Landroid/view/View;
    .end local v2           #padingRight:I
    :cond_0
    return-void
.end method
