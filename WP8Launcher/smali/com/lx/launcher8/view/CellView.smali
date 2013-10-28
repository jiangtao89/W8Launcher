.class public Lcom/lx/launcher8/view/CellView;
.super Landroid/widget/FrameLayout;
.source "CellView.java"

# interfaces
.implements Lcom/lx/launcher8/view/Cell;


# static fields
.field static final FLAG_PROPERY_AIRPLANE:I = 0x8

.field static final FLAG_PROPERY_ALPHA:I = 0x1

.field static final FLAG_PROPERY_PRESSED:I = 0x2

.field static final FLAG_PROPERY_TEXT:I = 0x4


# instance fields
.field protected mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

.field protected mAlpha:I

.field protected mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

.field protected mFGAlpha:I

.field protected mImageView:Landroid/widget/ImageView;

.field protected mProperyFLags:I

.field protected mTextAlpha:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lx/launcher8/view/CellView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 4
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    .line 44
    const/4 v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/lx/launcher8/view/CellView;->setProperyFlag(II)V

    .line 45
    invoke-virtual {p0, v3, v3}, Lcom/lx/launcher8/view/CellView;->setProperyFlag(II)V

    .line 46
    new-instance v0, Lcom/lx/launcher8/view/CellLayoutParams;

    invoke-direct {v0, p2}, Lcom/lx/launcher8/view/CellLayoutParams;-><init>(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 47
    .local v0, cp:Lcom/lx/launcher8/view/CellLayoutParams;
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/view/CellView;->mImageView:Landroid/widget/ImageView;

    .line 49
    iget-object v1, p0, Lcom/lx/launcher8/view/CellView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 50
    iget-object v1, p0, Lcom/lx/launcher8/view/CellView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/CellView;->addView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->setupViews()V

    .line 52
    return-void
.end method

.method private getAlpha(III)I
    .locals 0
    .parameter "selfOld"
    .parameter "selfNew"
    .parameter "current"

    .prologue
    .line 240
    if-eq p1, p2, :cond_0

    .line 242
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    move p2, p3

    goto :goto_0
.end method


# virtual methods
.method protected addAlphaLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 95
    iget-object v0, p0, Lcom/lx/launcher8/view/CellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/lx/launcher8/view/AlphaLayout;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lx/launcher8/view/AlphaLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/CellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    .line 97
    iget-object v0, p0, Lcom/lx/launcher8/view/CellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/view/CellView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 109
    instance-of v0, p1, Lcom/lx/launcher8/view/CellLayoutParams;

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 322
    const/4 v7, -0x1

    .line 323
    .local v7, count:I
    iget v0, p0, Lcom/lx/launcher8/view/CellView;->mProperyFLags:I

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->getDrawAlpha()I

    move-result v5

    .line 325
    const/16 v6, 0x14

    move-object v0, p1

    move v2, v1

    .line 324
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v7

    .line 327
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 328
    if-ltz v7, :cond_1

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 329
    :cond_1
    return-void
.end method

.method public getCellInfo()Lcom/lx/launcher8/bean/ItemCell;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    return-object v0
.end method

.method public getCellType()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    and-int/lit16 v0, v0, 0xfff

    return v0
.end method

.method protected getDrawAlpha()I
    .locals 1

    .prologue
    .line 302
    const/16 v0, 0xff

    return v0
.end method

.method public getFunctionType()I
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method protected final getGravity(I)I
    .locals 3
    .parameter "gravity"

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 306
    packed-switch p1, :pswitch_data_0

    .line 314
    iget-object v2, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v2, v2, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 316
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 310
    goto :goto_0

    .line 312
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->getLayoutParams()Lcom/lx/launcher8/view/CellLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Lcom/lx/launcher8/view/CellLayoutParams;
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/CellLayoutParams;

    return-object v0
.end method

.method public getSizeLevel()I
    .locals 8

    .prologue
    const/high16 v7, 0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 118
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->getLayoutParams()Lcom/lx/launcher8/view/CellLayoutParams;

    move-result-object v0

    .line 119
    .local v0, cp:Lcom/lx/launcher8/view/CellLayoutParams;
    iget-object v6, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v6, v6, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_1

    move v1, v5

    .line 121
    .local v1, property:Z
    :goto_0
    if-nez v1, :cond_2

    .line 126
    :cond_0
    :goto_1
    return v3

    .end local v1           #property:Z
    :cond_1
    move v1, v4

    .line 119
    goto :goto_0

    .line 122
    .restart local v1       #property:Z
    :cond_2
    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellLayoutParams;->getCellSize()I

    move-result v2

    .line 123
    .local v2, size:I
    const v6, 0x10001

    if-ne v2, v6, :cond_3

    move v3, v4

    goto :goto_1

    .line 124
    :cond_3
    const v4, 0x40002

    if-ne v2, v4, :cond_4

    move v3, v5

    goto :goto_1

    .line 125
    :cond_4
    const v4, 0x20002

    if-ne v2, v4, :cond_0

    const/4 v3, 0x2

    goto :goto_1
.end method

.method public getWidgetId()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v0, v0, Lcom/lx/launcher8/bean/AppWidgetCell;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v0, Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v0, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public hasFunction()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public isEditable()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 130
    iget-object v0, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isTextShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 167
    iget v1, p0, Lcom/lx/launcher8/view/CellView;->mProperyFLags:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 168
    iget-object v1, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v1, v1, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v1, v1, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method protected onBackAlphaSet(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 250
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 251
    iget v1, p0, Lcom/lx/launcher8/view/CellView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 253
    :cond_0
    return-void
.end method

.method protected onBackColorSet(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 290
    return-void
.end method

.method public onConfigChange(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, -0x1

    .line 215
    iget-object v4, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v4}, Lcom/lx/launcher8/bean/ItemCell;->getCellAlphaBg()I

    move-result v0

    .line 216
    .local v0, bgAlpha:I
    iget-object v4, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v4}, Lcom/lx/launcher8/bean/ItemCell;->getCellAlphaFg()I

    move-result v1

    .line 217
    .local v1, fgAlpha:I
    iget-object v4, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v4}, Lcom/lx/launcher8/bean/ItemCell;->getTextAlpha()I

    move-result v4

    rsub-int v2, v4, 0xff

    .line 218
    .local v2, textAlpha:I
    const/4 v3, 0x1

    .line 219
    .local v3, textPos:Z
    iget-object v4, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    if-eq v4, p1, :cond_0

    .line 220
    iget-object v4, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v4}, Lcom/lx/launcher8/bean/ItemCell;->getTextGravity()I

    move-result v4

    invoke-virtual {p1}, Lcom/lx/launcher8/bean/ItemCell;->getTextGravity()I

    move-result v5

    if-eq v4, v5, :cond_4

    const/4 v3, 0x1

    .line 221
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v4, p1}, Lcom/lx/launcher8/bean/ItemCell;->setValue(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 223
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->onTitlePosChange()V

    .line 224
    :cond_1
    iget v4, p1, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    if-eq v4, v6, :cond_2

    .line 225
    invoke-virtual {p0, v6}, Lcom/lx/launcher8/view/CellView;->setBackgroundColor(I)V

    .line 227
    :cond_2
    iget-object v4, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v4}, Lcom/lx/launcher8/bean/ItemCell;->getCellAlphaBg()I

    move-result v4

    iget v5, p0, Lcom/lx/launcher8/view/CellView;->mAlpha:I

    invoke-direct {p0, v0, v4, v5}, Lcom/lx/launcher8/view/CellView;->getAlpha(III)I

    move-result v4

    iput v4, p0, Lcom/lx/launcher8/view/CellView;->mAlpha:I

    .line 228
    iget-object v4, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v4}, Lcom/lx/launcher8/bean/ItemCell;->getCellAlphaFg()I

    move-result v4

    iget v5, p0, Lcom/lx/launcher8/view/CellView;->mFGAlpha:I

    invoke-direct {p0, v1, v4, v5}, Lcom/lx/launcher8/view/CellView;->getAlpha(III)I

    move-result v4

    iput v4, p0, Lcom/lx/launcher8/view/CellView;->mFGAlpha:I

    .line 229
    iget-object v4, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v4}, Lcom/lx/launcher8/bean/ItemCell;->getTextAlpha()I

    move-result v4

    rsub-int v4, v4, 0xff

    iget v5, p0, Lcom/lx/launcher8/view/CellView;->mTextAlpha:I

    invoke-direct {p0, v2, v4, v5}, Lcom/lx/launcher8/view/CellView;->getAlpha(III)I

    move-result v4

    iput v4, p0, Lcom/lx/launcher8/view/CellView;->mTextAlpha:I

    .line 230
    iget v4, p0, Lcom/lx/launcher8/view/CellView;->mAlpha:I

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/CellView;->onBackAlphaSet(I)V

    .line 231
    iget v4, p0, Lcom/lx/launcher8/view/CellView;->mFGAlpha:I

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/CellView;->onIconAlphaSet(I)V

    .line 232
    iget v4, p0, Lcom/lx/launcher8/view/CellView;->mTextAlpha:I

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/CellView;->onTextAlphaSet(I)V

    .line 233
    iget-object v4, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v4, v4, Lcom/lx/launcher8/bean/AppWidgetCell;

    if-eqz v4, :cond_3

    .line 234
    iget-object v5, p0, Lcom/lx/launcher8/view/CellView;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v4, Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v4, v4, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 235
    iget-object v5, p0, Lcom/lx/launcher8/view/CellView;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v4}, Lcom/lx/launcher8/bean/ItemCell;->getImgGravity()I

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 237
    :cond_3
    return-void

    .line 220
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 235
    :cond_5
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_1
.end method

.method public onDelete()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method protected onIconAlphaSet(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/lx/launcher8/view/CellView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/lx/launcher8/view/CellView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 261
    :cond_0
    return-void
.end method

.method public onSizeChange(II)V
    .locals 4
    .parameter "oldSize"
    .parameter "newSize"

    .prologue
    const/4 v2, 0x1

    .line 197
    shr-int/lit8 v1, p1, 0x10

    .line 198
    .local v1, oldSpanX:I
    shr-int/lit8 v0, p2, 0x10

    .line 199
    .local v0, newSpanX:I
    if-eq v1, v0, :cond_1

    if-eq v1, v2, :cond_0

    .line 200
    if-ne v0, v2, :cond_1

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->onTitleEnable()V

    .line 202
    iget-object v2, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/ItemCell;->getTextGravity()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->onTitlePosChange()V

    .line 206
    :cond_1
    return-void
.end method

.method protected onTextAlphaSet(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lx/launcher8/view/CellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/lx/launcher8/view/CellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/AlphaLayout;->setAlpha(I)V

    .line 271
    :cond_0
    return-void
.end method

.method protected onTitleEnable()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method protected onTitlePosChange()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public setAppWidgetView(Landroid/appwidget/AppWidgetManager;Landroid/appwidget/AppWidgetHost;)V
    .locals 11
    .parameter "am"
    .parameter "ah"

    .prologue
    const/4 v9, -0x1

    .line 70
    iget-object v7, p0, Lcom/lx/launcher8/view/CellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->addAlphaLayout()V

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v2, Lcom/lx/launcher8/bean/AppWidgetCell;

    .line 73
    .local v2, awCell:Lcom/lx/launcher8/bean/AppWidgetCell;
    iget v6, v2, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    .line 74
    .local v6, widgetId:I
    if-eq v6, v9, :cond_2

    .line 75
    invoke-virtual {p1, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 76
    .local v0, appInfo:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p2, v7, v6, v0}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    .line 77
    .local v1, appView:Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {v1, v6, v0}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 78
    iget-object v7, p0, Lcom/lx/launcher8/view/CellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1, v8}, Lcom/lx/launcher8/view/AlphaLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v8, p0, Lcom/lx/launcher8/view/CellView;->mImageView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v7}, Lcom/lx/launcher8/bean/ItemCell;->getImgGravity()I

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 80
    iget-object v7, p0, Lcom/lx/launcher8/view/CellView;->mImageView:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    .end local v0           #appInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v1           #appView:Landroid/appwidget/AppWidgetHostView;
    :goto_2
    iget v7, p0, Lcom/lx/launcher8/view/CellView;->mTextAlpha:I

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/view/CellView;->onTextAlphaSet(I)V

    .line 92
    return-void

    .line 71
    .end local v2           #awCell:Lcom/lx/launcher8/bean/AppWidgetCell;
    .end local v6           #widgetId:I
    :cond_0
    iget-object v7, p0, Lcom/lx/launcher8/view/CellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    invoke-virtual {v7}, Lcom/lx/launcher8/view/AlphaLayout;->removeAllViews()V

    goto :goto_0

    .line 79
    .restart local v0       #appInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v1       #appView:Landroid/appwidget/AppWidgetHostView;
    .restart local v2       #awCell:Lcom/lx/launcher8/bean/AppWidgetCell;
    .restart local v6       #widgetId:I
    :cond_1
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    .line 82
    .end local v0           #appInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v1           #appView:Landroid/appwidget/AppWidgetHostView;
    :cond_2
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 83
    .local v3, context:Landroid/content/Context;
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 84
    .local v5, tv:Landroid/widget/TextView;
    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 85
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    const/high16 v7, 0x4150

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 87
    iget-object v7, p0, Lcom/lx/launcher8/view/CellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v5, v8}, Lcom/lx/launcher8/view/AlphaLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    const v7, 0x7f0a00f5

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v7, Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v7, v7, Lcom/lx/launcher8/bean/AppWidgetCell;->appName:Ljava/lang/String;

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget p1, v0, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/view/CellView;->onBackColorSet(I)V

    .line 155
    iget v0, p0, Lcom/lx/launcher8/view/CellView;->mAlpha:I

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/CellView;->setGlobalAlpha(I)V

    .line 156
    return-void
.end method

.method public setGlobalAlpha(I)V
    .locals 2
    .parameter "a"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v0}, Lcom/lx/launcher8/bean/ItemCell;->getCellAlphaBg()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v0}, Lcom/lx/launcher8/bean/ItemCell;->getCellAlphaBg()I

    move-result p1

    .line 175
    :cond_0
    iput p1, p0, Lcom/lx/launcher8/view/CellView;->mAlpha:I

    .line 176
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/view/CellView;->onBackAlphaSet(I)V

    .line 177
    return-void
.end method

.method public setGlobalFGAlpha(I)V
    .locals 2
    .parameter "a"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v0}, Lcom/lx/launcher8/bean/ItemCell;->getCellAlphaFg()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v0}, Lcom/lx/launcher8/bean/ItemCell;->getCellAlphaFg()I

    move-result p1

    .line 183
    :cond_0
    iput p1, p0, Lcom/lx/launcher8/view/CellView;->mFGAlpha:I

    .line 184
    iget v0, p0, Lcom/lx/launcher8/view/CellView;->mFGAlpha:I

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/CellView;->onIconAlphaSet(I)V

    .line 185
    return-void
.end method

.method public setPressed(Z)V
    .locals 2
    .parameter "pressed"

    .prologue
    const/4 v1, 0x2

    .line 332
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/view/CellView;->setProperyFlag(II)V

    .line 334
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->invalidate()V

    .line 335
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setProperyFlag(II)V
    .locals 2
    .parameter "value"
    .parameter "mask"

    .prologue
    .line 63
    iget v0, p0, Lcom/lx/launcher8/view/CellView;->mProperyFLags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lx/launcher8/view/CellView;->mProperyFLags:I

    .line 64
    return-void
.end method

.method public setTextAlpha(I)V
    .locals 2
    .parameter "a"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/lx/launcher8/view/CellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v1}, Lcom/lx/launcher8/bean/ItemCell;->getTextAlpha()I

    move-result v1

    rsub-int v0, v1, 0xff

    .line 188
    .local v0, textAlpha:I
    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 189
    move p1, v0

    .line 191
    :cond_0
    iput p1, p0, Lcom/lx/launcher8/view/CellView;->mTextAlpha:I

    .line 192
    iget v1, p0, Lcom/lx/launcher8/view/CellView;->mTextAlpha:I

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/CellView;->onTextAlphaSet(I)V

    .line 193
    return-void
.end method

.method public setTextDisplay(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 159
    iget v3, p0, Lcom/lx/launcher8/view/CellView;->mProperyFLags:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v2, :cond_2

    const/4 v0, 0x1

    .line 160
    .local v0, old:Z
    :goto_0
    if-eq v0, p1, :cond_1

    .line 161
    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/lx/launcher8/view/CellView;->setProperyFlag(II)V

    .line 162
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->onTitleEnable()V

    .line 164
    :cond_1
    return-void

    .end local v0           #old:Z
    :cond_2
    move v0, v1

    .line 159
    goto :goto_0
.end method

.method protected setupViews()V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 102
    iput v0, p0, Lcom/lx/launcher8/view/CellView;->mAlpha:I

    .line 103
    iput v0, p0, Lcom/lx/launcher8/view/CellView;->mFGAlpha:I

    .line 104
    iput v0, p0, Lcom/lx/launcher8/view/CellView;->mTextAlpha:I

    .line 105
    return-void
.end method

.method viewTranslation(Landroid/graphics/Canvas;IFZ)V
    .locals 11
    .parameter "canvas"
    .parameter "cellHeight"
    .parameter "input"
    .parameter "finish"

    .prologue
    const/4 v10, 0x1

    const-wide/high16 v8, 0x4000

    const-wide v6, 0x3f847ae147ae147bL

    .line 338
    iget v4, p0, Lcom/lx/launcher8/view/CellView;->mProperyFLags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    .line 340
    .local v1, offsetX:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    .line 341
    .local v2, offsetY:I
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 342
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 343
    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 345
    .end local v1           #offsetX:I
    .end local v2           #offsetY:I
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->getLayoutParams()Lcom/lx/launcher8/view/CellLayoutParams;

    move-result-object v4

    iget v0, v4, Lcom/lx/launcher8/view/CellLayoutParams;->mDstY:I

    .line 346
    .local v0, detalY:I
    if-nez v0, :cond_1

    .line 353
    :goto_0
    return-void

    .line 347
    :cond_1
    if-eqz p4, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/lx/launcher8/view/CellView;->getLayoutParams()Lcom/lx/launcher8/view/CellLayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    iput v5, v4, Lcom/lx/launcher8/view/CellLayoutParams;->mDstY:I

    goto :goto_0

    .line 350
    :cond_2
    const/high16 v4, 0x3f80

    sub-float/2addr v4, p3

    neg-float v4, v4

    int-to-float v5, v0

    mul-float/2addr v4, v5

    int-to-float v5, p2

    mul-float v3, v4, v5

    .line 351
    .local v3, translate:F
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method
