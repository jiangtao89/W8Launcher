.class public Lcom/lx/launcher8/view/SimpleCellView;
.super Lcom/lx/launcher8/view/CellView;
.source "SimpleCellView.java"

# interfaces
.implements Lcom/anall/statusbar/AppListen$OnNoticeChangeListener;


# static fields
.field static final UNREAD_MAX_MESSAGE:I = 0x3


# instance fields
.field protected mIconMargin:I

.field private mNumTv:Landroid/widget/TextView;

.field private mTextPolicy:Lcom/lx/launcher8/policy/TextNumPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 0
    .parameter "context"
    .parameter "info"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/CellView;-><init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V

    .line 31
    return-void
.end method

.method private createNumTv()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 135
    iget-object v1, p0, Lcom/lx/launcher8/view/SimpleCellView;->mNumTv:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/lx/launcher8/view/SimpleCellView;->mNumTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/view/SimpleCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    if-ne v1, v2, :cond_0

    .line 137
    iget-object v1, p0, Lcom/lx/launcher8/view/SimpleCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    iget-object v2, p0, Lcom/lx/launcher8/view/SimpleCellView;->mNumTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/AlphaLayout;->removeView(Landroid/view/View;)V

    .line 139
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/view/SimpleCellView;->mNumTv:Landroid/widget/TextView;

    .line 140
    iget-object v1, p0, Lcom/lx/launcher8/view/SimpleCellView;->mNumTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getCellInfo()Lcom/lx/launcher8/bean/AppCell;

    move-result-object v2

    iget v2, v2, Lcom/lx/launcher8/bean/AppCell;->textColor:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    iget v3, p0, Lcom/lx/launcher8/view/SimpleCellView;->mTextAlpha:I

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 142
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x15

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 143
    iget-object v1, p0, Lcom/lx/launcher8/view/SimpleCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    iget-object v2, p0, Lcom/lx/launcher8/view/SimpleCellView;->mNumTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Lcom/lx/launcher8/view/AlphaLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    return-void
.end method

.method private getFunTv()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lx/launcher8/view/SimpleCellView;->mNumTv:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/lx/launcher8/view/SimpleCellView;->createNumTv()V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/SimpleCellView;->mNumTv:Landroid/widget/TextView;

    return-object v0
.end method

.method private getImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lx/launcher8/view/SimpleCellView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getPkg()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v2, p0, Lcom/lx/launcher8/view/SimpleCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v2, v2, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-object v1

    .line 251
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/view/SimpleCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v2, v2, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 252
    .local v0, cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 90
    const v0, 0x7f09011d

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/SimpleCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private isLargeSize(I)Z
    .locals 2
    .parameter "size"

    .prologue
    const/4 v0, 0x1

    .line 78
    shr-int/lit8 v1, p1, 0x10

    if-eq v1, v0, :cond_0

    const v1, 0xffff

    and-int/2addr v1, p1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmall()Z
    .locals 3

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getImage()Landroid/widget/ImageView;

    move-result-object v0

    .line 125
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/16 v2, 0x78

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearNoticeNum()V
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->hasFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anall/statusbar/AppListen;->getInstance(Landroid/content/Context;)Lcom/anall/statusbar/AppListen;

    move-result-object v0

    invoke-direct {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anall/statusbar/AppListen;->clearNotice(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCellInfo()Lcom/lx/launcher8/bean/AppCell;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bean/AppCell;

    return-object v0
.end method

.method public bridge synthetic getCellInfo()Lcom/lx/launcher8/bean/ItemCell;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getCellInfo()Lcom/lx/launcher8/bean/AppCell;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionType()I
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getCellInfo()Lcom/lx/launcher8/bean/AppCell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/bean/AppCell;->getFunction()I

    move-result v0

    return v0
.end method

.method public hasFunction()Z
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getCellInfo()Lcom/lx/launcher8/bean/AppCell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/bean/AppCell;->getFunction()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigChange(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 148
    invoke-super {p0, p1}, Lcom/lx/launcher8/view/CellView;->onConfigChange(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 149
    iget-object v6, p0, Lcom/lx/launcher8/view/SimpleCellView;->mTextPolicy:Lcom/lx/launcher8/policy/TextNumPolicy;

    iget-object v4, p0, Lcom/lx/launcher8/view/SimpleCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v4}, Lcom/lx/launcher8/bean/ItemCell;->getSize()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/lx/launcher8/view/SimpleCellView;->isLargeSize(I)Z

    move-result v7

    invoke-direct {p0}, Lcom/lx/launcher8/view/SimpleCellView;->isSmall()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v6, v7, v4}, Lcom/lx/launcher8/policy/TextNumPolicy;->onChangeMargins(ZZ)V

    .line 150
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getCellInfo()Lcom/lx/launcher8/bean/AppCell;

    move-result-object v0

    .line 151
    .local v0, cell:Lcom/lx/launcher8/bean/AppCell;
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/SimpleCellView;->setTitleText(Lcom/lx/launcher8/bean/AppCell;)V

    .line 152
    invoke-direct {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getImage()Landroid/widget/ImageView;

    move-result-object v2

    .line 153
    .local v2, image:Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/lx/launcher8/bean/AppCell;->getImgGravity()I

    move-result v1

    .line 154
    .local v1, gravity:I
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 155
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 156
    if-nez v1, :cond_1

    .line 157
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 158
    invoke-virtual {p0, v8}, Lcom/lx/launcher8/view/SimpleCellView;->setFunNum(I)V

    .line 163
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    invoke-virtual {p0, v8}, Lcom/lx/launcher8/view/SimpleCellView;->setFunNum(I)V

    .line 166
    return-void

    .line 149
    .end local v0           #cell:Lcom/lx/launcher8/bean/AppCell;
    .end local v1           #gravity:I
    .end local v2           #image:Landroid/widget/ImageView;
    .end local v3           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 160
    .restart local v0       #cell:Lcom/lx/launcher8/bean/AppCell;
    .restart local v1       #gravity:I
    .restart local v2       #image:Landroid/widget/ImageView;
    .restart local v3       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 161
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Lcom/lx/launcher8/view/CellView;->onDelete()V

    .line 228
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anall/statusbar/AppListen;->getInstance(Landroid/content/Context;)Lcom/anall/statusbar/AppListen;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anall/statusbar/AppListen;->removeNoticeListener(Lcom/anall/statusbar/AppListen$OnNoticeChangeListener;)V

    .line 229
    return-void
.end method

.method public onNoticeChange(ILjava/lang/String;I)V
    .locals 2
    .parameter "num"
    .parameter "pkg"
    .parameter "flag"

    .prologue
    .line 239
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->hasFunction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getPkg()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, ckg:Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    :cond_2
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/view/SimpleCellView;->setFunNum(I)V

    goto :goto_0
.end method

.method public onSizeChange(II)V
    .locals 3
    .parameter "oldSize"
    .parameter "newSize"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/lx/launcher8/view/SimpleCellView;->mTextPolicy:Lcom/lx/launcher8/policy/TextNumPolicy;

    invoke-direct {p0, p2}, Lcom/lx/launcher8/view/SimpleCellView;->isLargeSize(I)Z

    move-result v2

    invoke-direct {p0}, Lcom/lx/launcher8/view/SimpleCellView;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/lx/launcher8/policy/TextNumPolicy;->onChangeMargins(ZZ)V

    .line 74
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/view/CellView;->onSizeChange(II)V

    .line 75
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onTitleEnable()V
    .locals 5

    .prologue
    .line 55
    invoke-super {p0}, Lcom/lx/launcher8/view/CellView;->onTitleEnable()V

    .line 56
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->isTextShow()Z

    move-result v0

    .line 57
    .local v0, show:Z
    invoke-direct {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    .line 58
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 59
    if-eqz v0, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/lx/launcher8/view/SimpleCellView;->mNumTv:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lx/launcher8/view/SimpleCellView;->mNumTv:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 62
    iget-object v3, p0, Lcom/lx/launcher8/view/SimpleCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    iget-object v4, p0, Lcom/lx/launcher8/view/SimpleCellView;->mNumTv:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/view/AlphaLayout;->removeView(Landroid/view/View;)V

    .line 63
    iget-object v3, p0, Lcom/lx/launcher8/view/SimpleCellView;->mNumTv:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, tmp:Ljava/lang/String;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lx/launcher8/view/SimpleCellView;->mNumTv:Landroid/widget/TextView;

    .line 65
    invoke-direct {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getFunTv()Landroid/widget/TextView;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .end local v1           #tmp:Ljava/lang/String;
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/view/SimpleCellView;->setFunNum(I)V

    .line 69
    return-void

    .line 59
    :cond_2
    const/16 v3, 0x8

    goto :goto_0
.end method

.method protected onTitlePosChange()V
    .locals 3

    .prologue
    .line 216
    invoke-super {p0}, Lcom/lx/launcher8/view/CellView;->onTitlePosChange()V

    .line 217
    invoke-direct {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    .line 218
    .local v1, tv:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 220
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/lx/launcher8/view/SimpleCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/ItemCell;->getTextGravity()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/SimpleCellView;->getGravity(I)I

    move-result v2

    or-int/lit8 v2, v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 221
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setAirPlaneMode(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/16 v1, 0x8

    .line 83
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getFunctionType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/view/SimpleCellView;->setProperyFlag(II)V

    .line 86
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getCellInfo()Lcom/lx/launcher8/bean/AppCell;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/SimpleCellView;->setTitleText(Lcom/lx/launcher8/bean/AppCell;)V

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setFunNum(I)V
    .locals 10
    .parameter "num"

    .prologue
    .line 110
    if-lez p1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getFunTv()Landroid/widget/TextView;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/SimpleCellView;->mNumTv:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    .line 113
    if-lez p1, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, showNum:Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getFunTv()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .end local v9           #showNum:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/lx/launcher8/view/SimpleCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v8, Lcom/lx/launcher8/bean/AppCell;

    .line 118
    .local v8, ac:Lcom/lx/launcher8/bean/AppCell;
    iget-object v0, v8, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/SimpleCellView;->setImageIcon(Landroid/graphics/Bitmap;)V

    .line 119
    iget-object v0, p0, Lcom/lx/launcher8/view/SimpleCellView;->mTextPolicy:Lcom/lx/launcher8/policy/TextNumPolicy;

    iget-object v1, p0, Lcom/lx/launcher8/view/SimpleCellView;->mNumTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getImage()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/lx/launcher8/view/SimpleCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v4, v4, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    iget-object v5, p0, Lcom/lx/launcher8/view/SimpleCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v5, v5, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    .line 120
    iget-object v6, p0, Lcom/lx/launcher8/view/SimpleCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v6}, Lcom/lx/launcher8/bean/ItemCell;->getImgGravity()I

    move-result v6

    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->isTextShow()Z

    move-result v7

    .line 119
    invoke-virtual/range {v0 .. v7}, Lcom/lx/launcher8/policy/TextNumPolicy;->setUIMargins(Landroid/widget/TextView;Landroid/widget/ImageView;IIIIZ)V

    .line 121
    return-void

    .line 113
    .end local v8           #ac:Lcom/lx/launcher8/bean/AppCell;
    :cond_2
    const-string v9, ""

    goto :goto_0
.end method

.method public setImageIcon(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "defValue"

    .prologue
    const/4 v2, 0x1

    .line 169
    invoke-direct {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getImage()Landroid/widget/ImageView;

    move-result-object v1

    .line 170
    .local v1, image:Landroid/widget/ImageView;
    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getFunctionType()I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 173
    .local v2, isShowSms:Z
    :goto_1
    if-eqz v2, :cond_5

    .line 174
    invoke-direct {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getFunTv()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, txt:Ljava/lang/String;
    invoke-static {v4}, Lcom/app/common/utils/UConvert;->toInt(Ljava/lang/String;)I

    move-result v3

    .line 176
    .local v3, num:I
    const/4 v5, 0x3

    if-le v3, v5, :cond_4

    .line 177
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getCellInfo()Lcom/lx/launcher8/bean/AppCell;

    move-result-object v5

    iget-object v0, v5, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    .line 178
    .local v0, bt:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 179
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 172
    .end local v0           #bt:Landroid/graphics/Bitmap;
    .end local v2           #isShowSms:Z
    .end local v3           #num:I
    .end local v4           #txt:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 181
    .restart local v0       #bt:Landroid/graphics/Bitmap;
    .restart local v2       #isShowSms:Z
    .restart local v3       #num:I
    .restart local v4       #txt:Ljava/lang/String;
    :cond_3
    const v5, 0x7f0200ec

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 183
    .end local v0           #bt:Landroid/graphics/Bitmap;
    :cond_4
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 187
    .end local v3           #num:I
    .end local v4           #txt:Ljava/lang/String;
    :cond_5
    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected setTitleText(Lcom/lx/launcher8/bean/AppCell;)V
    .locals 10
    .parameter "cell"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 194
    invoke-direct {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getTitle()Landroid/widget/TextView;

    move-result-object v5

    .line 195
    .local v5, tv:Landroid/widget/TextView;
    if-nez v5, :cond_0

    .line 212
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getFunctionType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    move v3, v6

    .line 198
    .local v3, isShowCalls:Z
    :goto_1
    invoke-virtual {p1}, Lcom/lx/launcher8/bean/AppCell;->getTextDisplayType()I

    move-result v8

    if-eq v8, v6, :cond_2

    move v4, v6

    .line 199
    .local v4, isShowPhone:Z
    :goto_2
    iget v8, p1, Lcom/lx/launcher8/bean/AppCell;->textColor:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 201
    iget v8, p0, Lcom/lx/launcher8/view/SimpleCellView;->mProperyFLags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    move v2, v6

    .line 202
    .local v2, isAirMode:Z
    :goto_3
    if-eqz v2, :cond_4

    .line 203
    const v6, 0x7f0a0217

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .end local v2           #isAirMode:Z
    .end local v3           #isShowCalls:Z
    .end local v4           #isShowPhone:Z
    :cond_1
    move v3, v7

    .line 197
    goto :goto_1

    .restart local v3       #isShowCalls:Z
    :cond_2
    move v4, v7

    .line 198
    goto :goto_2

    .restart local v4       #isShowPhone:Z
    :cond_3
    move v2, v7

    .line 201
    goto :goto_3

    .line 205
    .restart local v2       #isAirMode:Z
    :cond_4
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 206
    .local v0, context:Landroid/content/Context;
    const v6, 0x7f0a0216

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, defvalue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lx/launcher8/util/Utils;->getMobileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    
    const-string v10, ""

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 210
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #defvalue:Ljava/lang/String;
    .end local v2           #isAirMode:Z
    :cond_5
    iget-object v6, p1, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setupViews()V
    .locals 4

    .prologue
    .line 35
    invoke-super {p0}, Lcom/lx/launcher8/view/CellView;->setupViews()V

    .line 36
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 37
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/lx/launcher8/policy/TextNumPolicy;

    invoke-direct {v2, v1}, Lcom/lx/launcher8/policy/TextNumPolicy;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/view/SimpleCellView;->mTextPolicy:Lcom/lx/launcher8/policy/TextNumPolicy;

    .line 38
    iget-object v2, p0, Lcom/lx/launcher8/view/SimpleCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    if-nez v2, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->addAlphaLayout()V

    .line 40
    :cond_0
    const v2, 0x7f030044

    iget-object v3, p0, Lcom/lx/launcher8/view/SimpleCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    invoke-static {v1, v2, v3}, Lcom/lx/launcher8/view/SimpleCellView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getCellInfo()Lcom/lx/launcher8/bean/AppCell;

    move-result-object v0

    .line 42
    .local v0, cell:Lcom/lx/launcher8/bean/AppCell;
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/SimpleCellView;->onConfigChange(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 45
    invoke-static {v1}, Lcom/anall/statusbar/AppListen;->getInstance(Landroid/content/Context;)Lcom/anall/statusbar/AppListen;

    move-result-object v2

    invoke-direct {p0}, Lcom/lx/launcher8/view/SimpleCellView;->getPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/anall/statusbar/AppListen;->addNoticeListener(Lcom/anall/statusbar/AppListen$OnNoticeChangeListener;Ljava/lang/String;)V

    .line 46
    return-void
.end method
