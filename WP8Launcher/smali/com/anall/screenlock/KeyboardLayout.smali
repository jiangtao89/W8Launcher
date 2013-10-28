.class public Lcom/anall/screenlock/KeyboardLayout;
.super Landroid/view/ViewGroup;
.source "KeyboardLayout.java"


# static fields
.field static final ITEM_MIN_HEIGHT:I = 0x32

.field static final ITEM_MIN_WIDTH:I = 0x32


# instance fields
.field private mHorizontalGap:I

.field private mOffsetY:I

.field private mVerticalGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anall/screenlock/KeyboardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method private createButton(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "value"
    .parameter "id"
    .parameter "d"
    .parameter "l"

    .prologue
    .line 62
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, btn:Landroid/widget/TextView;
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/anall/screenlock/KeyboardLayout;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/anall/screenlock/KeyboardLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 64
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 65
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const/high16 v1, 0x41a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 68
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    if-ltz p3, :cond_0

    .line 70
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setId(I)V

    .line 71
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 136
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 131
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public initViews(Landroid/content/Context;Landroid/view/View$OnClickListener;I)V
    .locals 15
    .parameter "context"
    .parameter "l"
    .parameter "themeColor"

    .prologue
    .line 39
    const/high16 v1, 0x40a0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/anall/screenlock/KeyboardLayout;->mVerticalGap:I

    .line 40
    iget v1, p0, Lcom/anall/screenlock/KeyboardLayout;->mVerticalGap:I

    iput v1, p0, Lcom/anall/screenlock/KeyboardLayout;->mHorizontalGap:I

    .line 41
    new-instance v14, Lcom/lx/launcher8/view/ColorDrawable;

    const v1, -0xe0e0e1

    invoke-direct {v14, v1}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(I)V

    .line 42
    .local v14, normal:Landroid/graphics/drawable/Drawable;
    new-instance v12, Lcom/lx/launcher8/view/ColorDrawable;

    move/from16 v0, p3

    invoke-direct {v12, v0}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(I)V

    .line 43
    .local v12, fouces:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    const/16 v1, 0x9

    if-le v4, v1, :cond_0

    .line 47
    invoke-static {v12, v14}, Lcom/app/common/utils/ViewHelper;->getDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    .line 48
    .local v5, sld:Landroid/graphics/drawable/StateListDrawable;
    const-string v8, ""

    const/4 v9, -0x1

    move-object v6, p0

    move-object/from16 v7, p1

    move-object v10, v5

    move-object/from16 v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/anall/screenlock/KeyboardLayout;->createButton(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 49
    invoke-static {v12, v14}, Lcom/app/common/utils/ViewHelper;->getDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    .line 50
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v6, p0

    move-object/from16 v7, p1

    move-object v10, v5

    move-object/from16 v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/anall/screenlock/KeyboardLayout;->createButton(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 52
    invoke-static {v12, v14}, Lcom/app/common/utils/ViewHelper;->getDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    .line 53
    new-instance v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 54
    .local v13, ib:Landroid/widget/ImageButton;
    const v1, 0x7f020132

    invoke-virtual {v13, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 55
    invoke-virtual {v13, v5}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v1, 0x7f090059

    invoke-virtual {v13, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 58
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/anall/screenlock/KeyboardLayout;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v13, v1, v2}, Lcom/anall/screenlock/KeyboardLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 59
    return-void

    .line 44
    .end local v5           #sld:Landroid/graphics/drawable/StateListDrawable;
    .end local v13           #ib:Landroid/widget/ImageButton;
    :cond_0
    invoke-static {v12, v14}, Lcom/app/common/utils/ViewHelper;->getDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    .line 45
    .restart local v5       #sld:Landroid/graphics/drawable/StateListDrawable;
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/anall/screenlock/KeyboardLayout;->createButton(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 43
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anall/screenlock/KeyboardLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 120
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/anall/screenlock/KeyboardLayout;->getChildCount()I

    move-result v2

    .line 101
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, left:I
    iget v6, p0, Lcom/anall/screenlock/KeyboardLayout;->mOffsetY:I

    .line 102
    .local v6, top:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v2, :cond_0

    .line 115
    return-void

    .line 103
    :cond_0
    rem-int/lit8 v7, v4, 0x3

    if-nez v7, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/anall/screenlock/KeyboardLayout;->getPaddingLeft()I

    move-result v5

    .line 106
    :cond_1
    invoke-virtual {p0, v4}, Lcom/anall/screenlock/KeyboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 108
    .local v3, cw:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 109
    .local v0, ch:I
    iget v7, p0, Lcom/anall/screenlock/KeyboardLayout;->mOffsetY:I

    div-int/lit8 v8, v4, 0x3

    iget v9, p0, Lcom/anall/screenlock/KeyboardLayout;->mVerticalGap:I

    add-int/2addr v9, v0

    mul-int/2addr v8, v9

    add-int v6, v7, v8

    .line 111
    add-int v7, v5, v3

    add-int v8, v6, v0

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 113
    iget v7, p0, Lcom/anall/screenlock/KeyboardLayout;->mHorizontalGap:I

    add-int/2addr v7, v3

    add-int/2addr v5, v7

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    .line 76
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 77
    .local v5, desriWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 78
    .local v4, desriHeight:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 79
    .local v6, heightMode:I
    iget v8, p0, Lcom/anall/screenlock/KeyboardLayout;->mHorizontalGap:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v5, v8

    invoke-virtual {p0}, Lcom/anall/screenlock/KeyboardLayout;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/anall/screenlock/KeyboardLayout;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x4040

    div-float/2addr v8, v9

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    float-to-int v2, v8

    .line 80
    .local v2, childW:I
    div-int/lit8 v0, v2, 0x2

    .line 81
    .local v0, childH:I
    if-ne v6, v10, :cond_0

    .line 82
    iget v8, p0, Lcom/anall/screenlock/KeyboardLayout;->mVerticalGap:I

    mul-int/lit8 v8, v8, 0x3

    sub-int v8, v4, v8

    div-int/lit8 v0, v8, 0x4

    .line 86
    :goto_0
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 87
    .local v3, childWMeasureSpec:I
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 88
    .local v1, childHMeasureSpec:I
    invoke-virtual {p0}, Lcom/anall/screenlock/KeyboardLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .local v7, i:I
    :goto_1
    if-gez v7, :cond_1

    .line 92
    invoke-static {v5, p1}, Lcom/anall/screenlock/KeyboardLayout;->resolveSize(II)I

    move-result v8

    .line 93
    mul-int/lit8 v9, v0, 0x4

    iget v10, p0, Lcom/anall/screenlock/KeyboardLayout;->mVerticalGap:I

    mul-int/lit8 v10, v10, 0x3

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/anall/screenlock/KeyboardLayout;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/anall/screenlock/KeyboardLayout;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    const/high16 v10, -0x8000

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v9, v10}, Lcom/anall/screenlock/KeyboardLayout;->resolveSize(II)I

    move-result v9

    .line 92
    invoke-virtual {p0, v8, v9}, Lcom/anall/screenlock/KeyboardLayout;->setMeasuredDimension(II)V

    .line 94
    invoke-virtual {p0}, Lcom/anall/screenlock/KeyboardLayout;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/anall/screenlock/KeyboardLayout;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    mul-int/lit8 v9, v0, 0x4

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/anall/screenlock/KeyboardLayout;->mVerticalGap:I

    mul-int/lit8 v9, v9, 0x3

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/anall/screenlock/KeyboardLayout;->mOffsetY:I

    .line 95
    iget v8, p0, Lcom/anall/screenlock/KeyboardLayout;->mOffsetY:I

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/anall/screenlock/KeyboardLayout;->mOffsetY:I

    .line 96
    return-void

    .line 84
    .end local v1           #childHMeasureSpec:I
    .end local v3           #childWMeasureSpec:I
    .end local v7           #i:I
    :cond_0
    div-int/lit8 v8, v2, 0x2

    div-int/lit8 v9, v4, 0x5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 89
    .restart local v1       #childHMeasureSpec:I
    .restart local v3       #childWMeasureSpec:I
    .restart local v7       #i:I
    :cond_1
    invoke-virtual {p0, v7}, Lcom/anall/screenlock/KeyboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v3, v1}, Landroid/view/View;->measure(II)V

    .line 88
    add-int/lit8 v7, v7, -0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method
