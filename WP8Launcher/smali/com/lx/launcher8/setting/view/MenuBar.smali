.class public Lcom/lx/launcher8/setting/view/MenuBar;
.super Landroid/view/ViewGroup;
.source "MenuBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;
    }
.end annotation


# instance fields
.field private mColor:Landroid/content/res/ColorStateList;

.field private mDefaultIndex:I

.field private mListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPreView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/setting/view/MenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mDefaultIndex:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mColor:Landroid/content/res/ColorStateList;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mDefaultIndex:I

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mColor:Landroid/content/res/ColorStateList;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/view/MenuBar;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public addView(IILjava/lang/String;)V
    .locals 3
    .parameter "bgRes"
    .parameter "index"
    .parameter "text"

    .prologue
    const/4 v2, -0x1

    .line 176
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 179
    invoke-static {v2, v2}, Lcom/app/common/utils/ViewHelper;->getVGParam(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/lx/launcher8/setting/view/MenuBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 180
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 184
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 186
    :cond_0
    new-instance v0, Lcom/lx/launcher8/setting/view/MenuBar$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/view/MenuBar$1;-><init>(Lcom/lx/launcher8/setting/view/MenuBar;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget v0, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mDefaultIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mDefaultIndex:I

    if-le v0, v1, :cond_1

    .line 195
    iget v0, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mDefaultIndex:I

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/view/MenuBar;->setClickedView(I)V

    .line 196
    :cond_1
    return-void
.end method

.method public addView(Ljava/lang/String;IZ)V
    .locals 4
    .parameter "str"
    .parameter "bgRes"
    .parameter "fill"

    .prologue
    const/4 v3, -0x1

    .line 162
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, tv:Landroid/widget/Button;
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 164
    const/high16 v2, 0x4190

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 165
    const/4 v1, -0x1

    .line 166
    .local v1, width:I
    if-nez p3, :cond_0

    const/4 v1, -0x2

    .line 167
    :cond_0
    invoke-static {v1, v3}, Lcom/app/common/utils/ViewHelper;->getMLParam(II)Lcom/app/common/view/MenuBar$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 170
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 171
    if-eq p2, v3, :cond_1

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 172
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/view/MenuBar;->addView(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 260
    instance-of v0, p1, Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;

    return v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 265
    new-instance v0, Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;

    invoke-direct {v0, p1}, Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCurrentPos()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mPreView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mPreView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/view/MenuBar;->getVisibleChildPosition(Landroid/view/View;)I

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mDefaultIndex:I

    goto :goto_0
.end method

.method getVisibleChildAt(I)Landroid/view/View;
    .locals 6
    .parameter "position"

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getChildCount()I

    move-result v0

    .line 317
    .local v0, count:I
    const/4 v2, 0x0

    .line 318
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 328
    const/4 v3, 0x0

    :cond_0
    return-object v3

    .line 319
    :cond_1
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/view/MenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 320
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 318
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_3
    if-eq v2, p1, :cond_0

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method getVisibleChildCount()I
    .locals 6

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getChildCount()I

    move-result v1

    .line 304
    .local v1, count:I
    const/4 v3, 0x0

    .line 305
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 312
    return v3

    .line 306
    :cond_0
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/view/MenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 307
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 305
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method getVisibleChildPosition(Landroid/view/View;)I
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, -0x1

    .line 332
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, p0, :cond_2

    :cond_0
    move v2, v4

    .line 345
    :cond_1
    :goto_0
    return v2

    .line 333
    :cond_2
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getChildCount()I

    move-result v0

    .line 334
    .local v0, count:I
    const/4 v2, 0x0

    .line 335
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_3

    move v2, v4

    .line 345
    goto :goto_0

    .line 336
    :cond_3
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/view/MenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 337
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_5

    .line 335
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 340
    :cond_5
    if-eq v3, p1, :cond_1

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method measureOneChild(IIIILandroid/view/View;Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;)I
    .locals 9
    .parameter "mode"
    .parameter "width"
    .parameter "count"
    .parameter "height"
    .parameter "child"
    .parameter "lp"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x2

    const/high16 v6, -0x8000

    const/high16 v5, 0x4000

    .line 279
    const/high16 v1, 0x4000

    .line 280
    .local v1, hmode:I
    iget v3, p6, Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;->height:I

    if-ne v3, v7, :cond_0

    const/high16 v1, -0x8000

    .line 281
    :cond_0
    invoke-static {p4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 282
    .local v0, heightSpec:I
    iget v3, p6, Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 283
    div-int v2, p2, p3

    .line 284
    .local v2, w:I
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p5, v3, v0}, Landroid/view/View;->measure(II)V

    .line 299
    .end local v2           #w:I
    :goto_0
    return v2

    .line 286
    :cond_1
    iget v3, p6, Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;->width:I

    if-ne v3, v7, :cond_3

    .line 287
    if-ne p1, v5, :cond_2

    .line 288
    div-int v2, p2, p3

    .line 289
    .restart local v2       #w:I
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p5, v3, v0}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 292
    .end local v2           #w:I
    :cond_2
    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p5, v3, v0}, Landroid/view/View;->measure(II)V

    .line 293
    iput v8, p6, Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;->measureMode:I

    .line 299
    :goto_1
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_0

    .line 296
    :cond_3
    iget v3, p6, Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;->width:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p5, v3, v0}, Landroid/view/View;->measure(II)V

    .line 297
    iput v8, p6, Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;->measureMode:I

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getVisibleChildCount()I

    move-result v13

    .line 201
    .local v13, viCount:I
    if-nez v13, :cond_1

    .line 233
    :cond_0
    return-void

    .line 202
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getChildCount()I

    move-result v7

    .line 203
    .local v7, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getBottom()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getTop()I

    move-result v16

    sub-int v8, v15, v16

    .line 204
    .local v8, h:I
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingTop()I

    move-result v15

    sub-int v15, v8, v15

    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingBottom()I

    move-result v16

    sub-int v9, v15, v16

    .line 205
    .local v9, hSpace:I
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingLeft()I

    move-result v3

    .line 206
    .local v3, childLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingTop()I

    move-result v6

    .line 207
    .local v6, childTop:I
    const/4 v4, 0x0

    .line 208
    .local v4, childRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingBottom()I

    move-result v16

    sub-int v2, v15, v16

    .line 209
    .local v2, childBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getRight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getLeft()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    div-int v5, v15, v13

    .line 210
    .local v5, childSpace:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v7, :cond_0

    .line 211
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/lx/launcher8/setting/view/MenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 212
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 210
    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 216
    .local v14, width:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 217
    .local v10, height:I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;

    .line 218
    .local v12, lp:Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingTop()I

    move-result v15

    sub-int v16, v9, v10

    div-int/lit8 v16, v16, 0x2

    add-int v6, v15, v16

    .line 220
    iget v15, v12, Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;->measureMode:I

    if-nez v15, :cond_4

    .line 221
    sub-int v15, v5, v14

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v3, v15

    .line 222
    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    add-int v4, v3, v15

    .line 226
    :goto_2
    invoke-virtual {v1, v3, v6, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 227
    iget v15, v12, Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;->measureMode:I

    if-nez v15, :cond_5

    .line 228
    sub-int v15, v5, v14

    div-int/lit8 v15, v15, 0x2

    sub-int v15, v5, v15

    add-int/2addr v3, v15

    goto :goto_1

    .line 224
    :cond_4
    add-int v4, v3, v14

    goto :goto_2

    .line 230
    :cond_5
    add-int/2addr v3, v14

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 238
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v0, v11

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingRight()I

    move-result v11

    sub-int v2, v0, v11

    .line 239
    .local v2, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 240
    .local v1, mode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingTop()I

    move-result v11

    sub-int/2addr v0, v11

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingBottom()I

    move-result v11

    sub-int v4, v0, v11

    .line 241
    .local v4, height:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getChildCount()I

    move-result v7

    .line 242
    .local v7, count:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getVisibleChildCount()I

    move-result v3

    .line 243
    .local v3, visibleCount:I
    const/4 v9, 0x0

    .line 244
    .local v9, maxHeight:I
    const/4 v10, 0x0

    .line 245
    .local v10, maxWidth:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-lt v8, v7, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingBottom()I

    move-result v11

    add-int/2addr v0, v11

    add-int/2addr v9, v0

    .line 255
    invoke-static {v10, p1}, Lcom/lx/launcher8/setting/view/MenuBar;->resolveSize(II)I

    move-result v0

    invoke-static {v9, p2}, Lcom/lx/launcher8/setting/view/MenuBar;->resolveSize(II)I

    move-result v11

    invoke-virtual {p0, v0, v11}, Lcom/lx/launcher8/setting/view/MenuBar;->setMeasuredDimension(II)V

    .line 256
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/view/MenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 247
    .local v5, child:Landroid/view/View;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v11, 0x8

    if-ne v0, v11, :cond_2

    .line 245
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;

    .local v6, lp:Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;
    move-object v0, p0

    .line 251
    invoke-virtual/range {v0 .. v6}, Lcom/lx/launcher8/setting/view/MenuBar;->measureOneChild(IIIILandroid/view/View;Lcom/lx/launcher8/setting/view/MenuBar$LayoutParams;)I

    move-result v0

    add-int/2addr v10, v0

    .line 252
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_1
.end method

.method public setAdapter([Ljava/lang/String;)V
    .locals 3
    .parameter "titles"

    .prologue
    .line 119
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/lx/launcher8/setting/view/MenuBar;->setAdapter([Ljava/lang/String;IZZ)V

    .line 120
    return-void
.end method

.method public setAdapter([Ljava/lang/String;I)V
    .locals 2
    .parameter "titles"
    .parameter "bgRes"

    .prologue
    .line 130
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/lx/launcher8/setting/view/MenuBar;->setAdapter([Ljava/lang/String;IZZ)V

    .line 131
    return-void
.end method

.method public setAdapter([Ljava/lang/String;IZ)V
    .locals 1
    .parameter "titles"
    .parameter "bgRes"
    .parameter "append"

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lx/launcher8/setting/view/MenuBar;->setAdapter([Ljava/lang/String;IZZ)V

    .line 142
    return-void
.end method

.method public setAdapter([Ljava/lang/String;IZZ)V
    .locals 3
    .parameter "titles"
    .parameter "bgRes"
    .parameter "append"
    .parameter "fill"

    .prologue
    .line 154
    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->removeAllViews()V

    .line 155
    :cond_0
    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_2

    .line 159
    :cond_1
    return-void

    .line 156
    :cond_2
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 157
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0, p2, p4}, Lcom/lx/launcher8/setting/view/MenuBar;->addView(Ljava/lang/String;IZ)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "d"

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingLeft()I

    move-result v1

    .line 271
    .local v1, padl:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingTop()I

    move-result v3

    .line 272
    .local v3, padt:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingRight()I

    move-result v2

    .line 273
    .local v2, padr:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getPaddingBottom()I

    move-result v0

    .line 274
    .local v0, padb:I
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/lx/launcher8/setting/view/MenuBar;->setPadding(IIII)V

    .line 276
    return-void
.end method

.method public setClickedView(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 99
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getVisibleChildCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/setting/view/MenuBar;->getVisibleChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mPreView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mPreView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 104
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 105
    iput-object v0, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mPreView:Landroid/view/View;

    goto :goto_0
.end method

.method public setClickedView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 66
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mPreView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mPreView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 68
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 69
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mPreView:Landroid/view/View;

    .line 71
    :cond_1
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 54
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mColor:Landroid/content/res/ColorStateList;

    .line 55
    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mColor:Landroid/content/res/ColorStateList;

    .line 59
    return-void
.end method

.method public setDefaultView(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 47
    iput p1, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mDefaultIndex:I

    .line 48
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/MenuBar;->getVisibleChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/setting/view/MenuBar;->setClickedView(I)V

    .line 51
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    .local p1, listener:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 111
    return-void
.end method

.method public setSelectView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 74
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mPreView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mPreView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 76
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 77
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/MenuBar;->mPreView:Landroid/view/View;

    .line 79
    :cond_1
    return-void
.end method
