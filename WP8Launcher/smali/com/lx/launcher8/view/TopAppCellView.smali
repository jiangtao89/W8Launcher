.class public Lcom/lx/launcher8/view/TopAppCellView;
.super Lcom/lx/launcher8/view/SimpleCellView;
.source "TopAppCellView.java"

# interfaces
.implements Lcom/lx/launcher8/view/DynamicCell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;,
        Lcom/lx/launcher8/view/TopAppCellView$IconItem;
    }
.end annotation


# instance fields
.field private countX:I

.field private countY:I

.field private itemCount:I

.field private mAnimIndex:I

.field private mBgColor:I

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mDefBitmap:Landroid/graphics/Bitmap;

.field private mHandler:Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;

.field private mIconCount:I

.field private mIconItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/view/TopAppCellView$IconItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPlaying:Z

.field private mRootView:Landroid/widget/LinearLayout;

.field private mSpanX:I

.field private mSpanY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/SimpleCellView;-><init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mAnimIndex:I

    .line 42
    invoke-virtual {p0, v1, v1}, Lcom/lx/launcher8/view/TopAppCellView;->setProperyFlag(II)V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/view/TopAppCellView;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->countX:I

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/view/TopAppCellView;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->countY:I

    return v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/view/TopAppCellView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/view/TopAppCellView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mRootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/view/TopAppCellView;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/view/TopAppCellView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/lx/launcher8/view/TopAppCellView;->mIsPlaying:Z

    return-void
.end method

.method static synthetic access$6(Lcom/lx/launcher8/view/TopAppCellView;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->itemCount:I

    return v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/view/TopAppCellView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/lx/launcher8/view/TopAppCellView;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/view/TopAppCellView;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/TopAppCellView;->getRandom(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/lx/launcher8/view/TopAppCellView;)Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mHandler:Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;

    return-object v0
.end method

.method private createAppWithItem()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/high16 v8, 0x3f80

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 127
    iget v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mSpanX:I

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x3

    iget v5, p0, Lcom/lx/launcher8/view/TopAppCellView;->mSpanX:I

    rem-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->countX:I

    .line 128
    iget v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mSpanY:I

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x3

    iget v5, p0, Lcom/lx/launcher8/view/TopAppCellView;->mSpanY:I

    rem-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->countY:I

    .line 129
    iget v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mSpanX:I

    if-ne v4, v7, :cond_0

    iget v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mSpanY:I

    if-ne v4, v7, :cond_0

    .line 130
    iput v7, p0, Lcom/lx/launcher8/view/TopAppCellView;->countX:I

    .line 131
    iput v7, p0, Lcom/lx/launcher8/view/TopAppCellView;->countY:I

    .line 133
    :cond_0
    iget v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->countX:I

    iget v5, p0, Lcom/lx/launcher8/view/TopAppCellView;->countY:I

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->itemCount:I

    .line 134
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mIconItemList:Ljava/util/ArrayList;

    .line 135
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->itemCount:I

    if-lt v0, v4, :cond_3

    .line 142
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/lx/launcher8/view/TopAppCellView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mRootView:Landroid/widget/LinearLayout;

    .line 143
    iget-object v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 144
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->countY:I

    if-lt v0, v4, :cond_4

    .line 155
    iget-object v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v6}, Lcom/lx/launcher8/view/TopAppCellView;->addView(Landroid/view/View;I)V

    .line 156
    iget v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->itemCount:I

    if-le v4, v7, :cond_1

    .line 157
    iget-object v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    invoke-virtual {v4, v6}, Lcom/lx/launcher8/view/AlphaLayout;->setVisibility(I)V

    .line 159
    :cond_1
    iget-boolean v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mIsPlaying:Z

    if-nez v4, :cond_2

    .line 160
    invoke-direct {p0}, Lcom/lx/launcher8/view/TopAppCellView;->playAnimation()V

    .line 162
    :cond_2
    return-void

    .line 136
    :cond_3
    new-instance v1, Lcom/lx/launcher8/view/TopAppCellView$IconItem;

    iget-object v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v4}, Lcom/lx/launcher8/view/TopAppCellView$IconItem;-><init>(Lcom/lx/launcher8/view/TopAppCellView;Landroid/content/Context;)V

    .line 137
    .local v1, item:Lcom/lx/launcher8/view/TopAppCellView$IconItem;
    iput-boolean v6, v1, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->isDisplay:Z

    .line 138
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v6}, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 139
    iget-object v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mIconItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v1           #item:Lcom/lx/launcher8/view/TopAppCellView$IconItem;
    :cond_4
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 146
    .local v3, linear:Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 148
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    iget v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->countX:I

    if-lt v2, v4, :cond_5

    .line 153
    iget-object v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    :cond_5
    iget-object v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mIconItemList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/lx/launcher8/view/TopAppCellView;->countX:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/view/TopAppCellView$IconItem;

    .line 150
    .restart local v1       #item:Lcom/lx/launcher8/view/TopAppCellView$IconItem;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/TopAppCellView$IconItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mIconItemList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/lx/launcher8/view/TopAppCellView;->countX:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private getImageBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 308
    iget v3, p0, Lcom/lx/launcher8/view/TopAppCellView;->mIconCount:I

    if-nez v3, :cond_2

    .line 309
    iput-object v1, p0, Lcom/lx/launcher8/view/TopAppCellView;->mDefBitmap:Landroid/graphics/Bitmap;

    .line 310
    iget-object v3, p0, Lcom/lx/launcher8/view/TopAppCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v3, Lcom/lx/launcher8/bean/TopAppCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/TopAppCell;->icon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 311
    iget-object v3, p0, Lcom/lx/launcher8/view/TopAppCellView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02014e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, d:Landroid/graphics/drawable/Drawable;
    move-object v0, v2

    .line 312
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 313
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/view/TopAppCellView;->mDefBitmap:Landroid/graphics/Bitmap;

    .line 318
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget v3, p0, Lcom/lx/launcher8/view/TopAppCellView;->itemCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 319
    iget-object v1, p0, Lcom/lx/launcher8/view/TopAppCellView;->mDefBitmap:Landroid/graphics/Bitmap;

    .line 333
    :cond_0
    :goto_1
    return-object v1

    .line 315
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/view/TopAppCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v3, Lcom/lx/launcher8/bean/TopAppCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/TopAppCell;->icon:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/lx/launcher8/view/TopAppCellView;->mDefBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 324
    :cond_2
    const/4 v1, 0x0

    .line 325
    .local v1, bit:Landroid/graphics/Bitmap;
    iget v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mAnimIndex:I

    iget-object v3, p0, Lcom/lx/launcher8/view/TopAppCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v3, Lcom/lx/launcher8/bean/TopAppCell;

    invoke-virtual {v3}, Lcom/lx/launcher8/bean/TopAppCell;->getIconList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_3

    .line 326
    iget-object v3, p0, Lcom/lx/launcher8/view/TopAppCellView;->mIconList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mAnimIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #bit:Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 331
    .restart local v1       #bit:Landroid/graphics/Bitmap;
    :goto_2
    iget v3, p0, Lcom/lx/launcher8/view/TopAppCellView;->mAnimIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lx/launcher8/view/TopAppCellView;->mAnimIndex:I

    goto :goto_1

    .line 328
    :cond_3
    const/4 v3, 0x0

    iput v3, p0, Lcom/lx/launcher8/view/TopAppCellView;->mAnimIndex:I

    .line 329
    iget-object v3, p0, Lcom/lx/launcher8/view/TopAppCellView;->mIconList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/lx/launcher8/view/TopAppCellView;->mAnimIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #bit:Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .restart local v1       #bit:Landroid/graphics/Bitmap;
    goto :goto_2
.end method

.method private getRandom(I)I
    .locals 2
    .parameter "max"

    .prologue
    .line 337
    if-nez p1, :cond_0

    .line 338
    const/4 v1, 0x0

    .line 341
    :goto_0
    return v1

    .line 340
    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int v0, v1, p1

    .line 341
    .local v0, i:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_0
.end method

.method private initViews(Z)V
    .locals 4
    .parameter "isChange"

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/lx/launcher8/view/TopAppCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mContext:Landroid/content/Context;

    .line 99
    iput v2, p0, Lcom/lx/launcher8/view/TopAppCellView;->mAnimIndex:I

    .line 100
    iget-object v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v0, Lcom/lx/launcher8/bean/TopAppCell;

    iget v0, v0, Lcom/lx/launcher8/bean/TopAppCell;->spanX:I

    iput v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mSpanX:I

    .line 101
    iget-object v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v0, Lcom/lx/launcher8/bean/TopAppCell;

    iget v0, v0, Lcom/lx/launcher8/bean/TopAppCell;->spanY:I

    iput v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mSpanY:I

    .line 103
    iget-object v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mHandler:Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;-><init>(Lcom/lx/launcher8/view/TopAppCellView;Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mHandler:Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;

    .line 106
    :cond_0
    if-eqz p1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/TopAppCellView;->removeView(Landroid/view/View;)V

    .line 108
    iput-object v1, p0, Lcom/lx/launcher8/view/TopAppCellView;->mRootView:Landroid/widget/LinearLayout;

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/lx/launcher8/view/TopAppCellView;->loadIcon()V

    .line 112
    iget v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mIconCount:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mSpanX:I

    iget v1, p0, Lcom/lx/launcher8/view/TopAppCellView;->mSpanY:I

    mul-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 113
    iget-object v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/AlphaLayout;->setVisibility(I)V

    .line 115
    invoke-virtual {p0}, Lcom/lx/launcher8/view/TopAppCellView;->clearAnimation()V

    .line 121
    :goto_0
    return-void

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/view/AlphaLayout;->setVisibility(I)V

    .line 119
    invoke-direct {p0}, Lcom/lx/launcher8/view/TopAppCellView;->createAppWithItem()V

    goto :goto_0
.end method

.method private loadIcon()V
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mIconCount:I

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v0, Lcom/lx/launcher8/bean/TopAppCell;

    invoke-virtual {v0}, Lcom/lx/launcher8/bean/TopAppCell;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mIconList:Ljava/util/ArrayList;

    .line 347
    iget-object v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mIconCount:I

    .line 349
    :cond_0
    return-void
.end method

.method private playAnimation()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/TopAppCellView;->playAnimationDelayed(I)V

    .line 228
    return-void
.end method

.method private playAnimationDelayed(I)V
    .locals 4
    .parameter "delayMillis"

    .prologue
    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mIsPlaying:Z

    .line 232
    iput v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mCount:I

    .line 233
    iget-object v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mHandler:Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;

    const/4 v1, 0x0

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/lx/launcher8/view/TopAppCellView$AnimHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 234
    return-void
.end method


# virtual methods
.method protected getDrawAlpha()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mFGAlpha:I

    return v0
.end method

.method public onBackColorSet(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 52
    iput p1, p0, Lcom/lx/launcher8/view/TopAppCellView;->mBgColor:I

    .line 53
    invoke-super {p0, p1}, Lcom/lx/launcher8/view/SimpleCellView;->onBackColorSet(I)V

    .line 54
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lcom/lx/launcher8/view/SimpleCellView;->onDetachedFromWindow()V

    .line 94
    invoke-virtual {p0}, Lcom/lx/launcher8/view/TopAppCellView;->onStop()V

    .line 95
    return-void
.end method

.method public onRefresh(Z)V
    .locals 0
    .parameter "mounted"

    .prologue
    .line 83
    return-void
.end method

.method public onSizeChange(II)V
    .locals 1
    .parameter "oldSize"
    .parameter "newSize"

    .prologue
    .line 58
    if-eq p1, p2, :cond_0

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/TopAppCellView;->initViews(Z)V

    .line 60
    iget v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mBgColor:I

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/TopAppCellView;->setBackgroundColor(I)V

    .line 62
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/view/SimpleCellView;->onSizeChange(II)V

    .line 63
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mCount:I

    .line 68
    iget-boolean v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/lx/launcher8/view/TopAppCellView;->playAnimation()V

    .line 71
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->mCount:I

    .line 76
    iget v0, p0, Lcom/lx/launcher8/view/TopAppCellView;->itemCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/lx/launcher8/view/TopAppCellView;->clearAnimation()V

    .line 79
    :cond_0
    return-void
.end method

.method protected setupViews()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/lx/launcher8/view/SimpleCellView;->setupViews()V

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/TopAppCellView;->initViews(Z)V

    .line 89
    return-void
.end method
