.class public Lcom/lx/launcher8/view/FolderCellView;
.super Lcom/lx/launcher8/view/SimpleCellView;
.source "FolderCellView.java"

# interfaces
.implements Lcom/lx/launcher8/view/DynamicCell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/view/FolderCellView$AnimHandler;,
        Lcom/lx/launcher8/view/FolderCellView$FolderItem;
    }
.end annotation


# instance fields
.field private animIndex:I

.field private count:I

.field private countX:I

.field private countY:I

.field private defaultBit:Landroid/graphics/Bitmap;

.field private folderItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/view/FolderCellView$FolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/lx/launcher8/view/FolderCellView$AnimHandler;

.field private imgIndex:I

.field private isAnimation:Z

.field private isPlaying:Z

.field private itemCount:I

.field private mBgColor:I

.field private mContext:Landroid/content/Context;

.field private mRootView:Landroid/widget/LinearLayout;

.field private spanX:I

.field private spanY:I

.field private style:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/SimpleCellView;-><init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V

    .line 76
    iput v0, p0, Lcom/lx/launcher8/view/FolderCellView;->animIndex:I

    .line 77
    iput v0, p0, Lcom/lx/launcher8/view/FolderCellView;->imgIndex:I

    .line 37
    invoke-virtual {p0, v1, v1}, Lcom/lx/launcher8/view/FolderCellView;->setProperyFlag(II)V

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/view/FolderCellView;)I
    .locals 1
    .parameter

    .prologue
    .line 172
    iget v0, p0, Lcom/lx/launcher8/view/FolderCellView;->countX:I

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/view/FolderCellView;)I
    .locals 1
    .parameter

    .prologue
    .line 173
    iget v0, p0, Lcom/lx/launcher8/view/FolderCellView;->countY:I

    return v0
.end method

.method static synthetic access$10(Lcom/lx/launcher8/view/FolderCellView;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/FolderCellView;->getRandom(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/lx/launcher8/view/FolderCellView;)Lcom/lx/launcher8/view/FolderCellView$AnimHandler;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->handler:Lcom/lx/launcher8/view/FolderCellView$AnimHandler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/view/FolderCellView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/view/FolderCellView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mRootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/view/FolderCellView;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/lx/launcher8/view/FolderCellView;->count:I

    return v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/view/FolderCellView;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/lx/launcher8/view/FolderCellView;->isAnimation:Z

    return v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/view/FolderCellView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/lx/launcher8/view/FolderCellView;->count:I

    return-void
.end method

.method static synthetic access$7(Lcom/lx/launcher8/view/FolderCellView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/lx/launcher8/view/FolderCellView;->isPlaying:Z

    return-void
.end method

.method static synthetic access$8(Lcom/lx/launcher8/view/FolderCellView;)I
    .locals 1
    .parameter

    .prologue
    .line 174
    iget v0, p0, Lcom/lx/launcher8/view/FolderCellView;->itemCount:I

    return v0
.end method

.method static synthetic access$9(Lcom/lx/launcher8/view/FolderCellView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/lx/launcher8/view/FolderCellView;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private changeViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 455
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FolderCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mContext:Landroid/content/Context;

    .line 457
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->handler:Lcom/lx/launcher8/view/FolderCellView$AnimHandler;

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;

    invoke-direct {v0, p0, v5}, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;-><init>(Lcom/lx/launcher8/view/FolderCellView;Lcom/lx/launcher8/view/FolderCellView$AnimHandler;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->handler:Lcom/lx/launcher8/view/FolderCellView$AnimHandler;

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v0, Lcom/lx/launcher8/bean/FolderCell;

    iget v0, v0, Lcom/lx/launcher8/bean/FolderCell;->spanX:I

    iput v0, p0, Lcom/lx/launcher8/view/FolderCellView;->spanX:I

    .line 463
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v0, Lcom/lx/launcher8/bean/FolderCell;

    iget v0, v0, Lcom/lx/launcher8/bean/FolderCell;->spanY:I

    iput v0, p0, Lcom/lx/launcher8/view/FolderCellView;->spanY:I

    .line 465
    iput v2, p0, Lcom/lx/launcher8/view/FolderCellView;->imgIndex:I

    .line 466
    iput v2, p0, Lcom/lx/launcher8/view/FolderCellView;->animIndex:I

    .line 468
    invoke-direct {p0}, Lcom/lx/launcher8/view/FolderCellView;->initFolderData()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/FolderCellView;->style:I

    .line 470
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v0, Lcom/lx/launcher8/bean/FolderCell;

    iget-object v0, v0, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/lx/launcher8/view/FolderCellView;->spanX:I

    iget v1, p0, Lcom/lx/launcher8/view/FolderCellView;->spanY:I

    mul-int/2addr v0, v1

    if-eq v0, v3, :cond_1

    .line 471
    iput v2, p0, Lcom/lx/launcher8/view/FolderCellView;->style:I

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/FolderCellView;->removeView(Landroid/view/View;)V

    .line 474
    iput-object v5, p0, Lcom/lx/launcher8/view/FolderCellView;->mRootView:Landroid/widget/LinearLayout;

    .line 475
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    invoke-virtual {v0, v4}, Lcom/lx/launcher8/view/AlphaLayout;->setVisibility(I)V

    .line 477
    iget v0, p0, Lcom/lx/launcher8/view/FolderCellView;->style:I

    packed-switch v0, :pswitch_data_0

    .line 492
    :goto_0
    return-void

    .line 479
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/AlphaLayout;->setVisibility(I)V

    goto :goto_0

    .line 483
    :pswitch_1
    iput-boolean v2, p0, Lcom/lx/launcher8/view/FolderCellView;->isAnimation:Z

    .line 484
    invoke-direct {p0}, Lcom/lx/launcher8/view/FolderCellView;->createFolderWithItem()V

    goto :goto_0

    .line 487
    :pswitch_2
    iput-boolean v3, p0, Lcom/lx/launcher8/view/FolderCellView;->isAnimation:Z

    .line 488
    invoke-direct {p0}, Lcom/lx/launcher8/view/FolderCellView;->createFolderWithItem()V

    goto :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createFolderWithItem()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/high16 v8, 0x3f80

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 179
    iget v4, p0, Lcom/lx/launcher8/view/FolderCellView;->spanX:I

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x3

    iget v5, p0, Lcom/lx/launcher8/view/FolderCellView;->spanX:I

    rem-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/lx/launcher8/view/FolderCellView;->countX:I

    .line 180
    iget v4, p0, Lcom/lx/launcher8/view/FolderCellView;->spanY:I

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x3

    iget v5, p0, Lcom/lx/launcher8/view/FolderCellView;->spanY:I

    rem-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/lx/launcher8/view/FolderCellView;->countY:I

    .line 181
    iget v4, p0, Lcom/lx/launcher8/view/FolderCellView;->spanX:I

    if-ne v4, v7, :cond_0

    iget v4, p0, Lcom/lx/launcher8/view/FolderCellView;->spanY:I

    if-ne v4, v7, :cond_0

    iget-boolean v4, p0, Lcom/lx/launcher8/view/FolderCellView;->isAnimation:Z

    if-eqz v4, :cond_0

    .line 182
    iput v7, p0, Lcom/lx/launcher8/view/FolderCellView;->countX:I

    .line 183
    iput v7, p0, Lcom/lx/launcher8/view/FolderCellView;->countY:I

    .line 185
    :cond_0
    iget v4, p0, Lcom/lx/launcher8/view/FolderCellView;->countX:I

    iget v5, p0, Lcom/lx/launcher8/view/FolderCellView;->countY:I

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/lx/launcher8/view/FolderCellView;->itemCount:I

    .line 186
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lx/launcher8/view/FolderCellView;->folderItemList:Ljava/util/ArrayList;

    .line 187
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v4, p0, Lcom/lx/launcher8/view/FolderCellView;->itemCount:I

    if-lt v0, v4, :cond_3

    .line 199
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/lx/launcher8/view/FolderCellView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lx/launcher8/view/FolderCellView;->mRootView:Landroid/widget/LinearLayout;

    .line 200
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderCellView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 201
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/lx/launcher8/view/FolderCellView;->countY:I

    if-lt v0, v4, :cond_5

    .line 212
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderCellView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v6}, Lcom/lx/launcher8/view/FolderCellView;->addView(Landroid/view/View;I)V

    .line 213
    iget v4, p0, Lcom/lx/launcher8/view/FolderCellView;->itemCount:I

    if-le v4, v7, :cond_1

    .line 214
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    invoke-virtual {v4, v6}, Lcom/lx/launcher8/view/AlphaLayout;->setVisibility(I)V

    .line 216
    :cond_1
    iget-boolean v4, p0, Lcom/lx/launcher8/view/FolderCellView;->isAnimation:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/lx/launcher8/view/FolderCellView;->isPlaying:Z

    if-nez v4, :cond_2

    .line 217
    const/16 v4, 0x19

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/FolderCellView;->playAnimation(I)V

    .line 219
    :cond_2
    return-void

    .line 188
    :cond_3
    new-instance v1, Lcom/lx/launcher8/view/FolderCellView$FolderItem;

    iget-object v4, p0, Lcom/lx/launcher8/view/FolderCellView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v4}, Lcom/lx/launcher8/view/FolderCellView$FolderItem;-><init>(Lcom/lx/launcher8/view/FolderCellView;Landroid/content/Context;)V

    .line 189
    .local v1, item:Lcom/lx/launcher8/view/FolderCellView$FolderItem;
    iget-boolean v4, p0, Lcom/lx/launcher8/view/FolderCellView;->isAnimation:Z

    if-nez v4, :cond_4

    .line 190
    iput-boolean v7, v1, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->isDisplay:Z

    .line 191
    invoke-direct {p0}, Lcom/lx/launcher8/view/FolderCellView;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 196
    :goto_2
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderCellView;->folderItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_4
    iput-boolean v6, v1, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->isDisplay:Z

    .line 194
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v6}, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->setBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_2

    .line 202
    .end local v1           #item:Lcom/lx/launcher8/view/FolderCellView$FolderItem;
    :cond_5
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/view/FolderCellView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 203
    .local v3, linear:Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 205
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    iget v4, p0, Lcom/lx/launcher8/view/FolderCellView;->countX:I

    if-lt v2, v4, :cond_6

    .line 210
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderCellView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    :cond_6
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderCellView;->folderItemList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/lx/launcher8/view/FolderCellView;->countX:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/view/FolderCellView$FolderItem;

    .line 207
    .restart local v1       #item:Lcom/lx/launcher8/view/FolderCellView$FolderItem;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/FolderCellView$FolderItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderCellView;->folderItemList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/lx/launcher8/view/FolderCellView;->countX:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private getImageBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 80
    iget-object v3, p0, Lcom/lx/launcher8/view/FolderCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v3, Lcom/lx/launcher8/bean/FolderCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 82
    iput-object v1, p0, Lcom/lx/launcher8/view/FolderCellView;->defaultBit:Landroid/graphics/Bitmap;

    .line 83
    iget-object v3, p0, Lcom/lx/launcher8/view/FolderCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v3, Lcom/lx/launcher8/bean/FolderCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/FolderCell;->icon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 84
    iget-object v3, p0, Lcom/lx/launcher8/view/FolderCellView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, d:Landroid/graphics/drawable/Drawable;
    move-object v0, v2

    .line 85
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 86
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/view/FolderCellView;->defaultBit:Landroid/graphics/Bitmap;

    .line 91
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget v3, p0, Lcom/lx/launcher8/view/FolderCellView;->itemCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 92
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderCellView;->defaultBit:Landroid/graphics/Bitmap;

    .line 116
    :cond_0
    :goto_1
    return-object v1

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/view/FolderCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v3, Lcom/lx/launcher8/bean/FolderCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/FolderCell;->icon:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/lx/launcher8/view/FolderCellView;->defaultBit:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 98
    :cond_2
    const/4 v1, 0x0

    .line 99
    .local v1, bit:Landroid/graphics/Bitmap;
    iget-boolean v3, p0, Lcom/lx/launcher8/view/FolderCellView;->isAnimation:Z

    if-eqz v3, :cond_4

    .line 100
    iput v5, p0, Lcom/lx/launcher8/view/FolderCellView;->imgIndex:I

    .line 101
    iget v4, p0, Lcom/lx/launcher8/view/FolderCellView;->animIndex:I

    iget-object v3, p0, Lcom/lx/launcher8/view/FolderCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v3, Lcom/lx/launcher8/bean/FolderCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_3

    .line 102
    iget-object v3, p0, Lcom/lx/launcher8/view/FolderCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v3, Lcom/lx/launcher8/bean/FolderCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    iget v4, p0, Lcom/lx/launcher8/view/FolderCellView;->animIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/bean/AppCell;

    iget-object v1, v3, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 107
    :goto_2
    iget v3, p0, Lcom/lx/launcher8/view/FolderCellView;->animIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lx/launcher8/view/FolderCellView;->animIndex:I

    goto :goto_1

    .line 104
    :cond_3
    iput v5, p0, Lcom/lx/launcher8/view/FolderCellView;->animIndex:I

    .line 105
    iget-object v3, p0, Lcom/lx/launcher8/view/FolderCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v3, Lcom/lx/launcher8/bean/FolderCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    iget v4, p0, Lcom/lx/launcher8/view/FolderCellView;->animIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/bean/AppCell;

    iget-object v1, v3, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 109
    :cond_4
    iput v5, p0, Lcom/lx/launcher8/view/FolderCellView;->animIndex:I

    .line 110
    iget v4, p0, Lcom/lx/launcher8/view/FolderCellView;->imgIndex:I

    iget-object v3, p0, Lcom/lx/launcher8/view/FolderCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v3, Lcom/lx/launcher8/bean/FolderCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_5

    .line 111
    iget-object v3, p0, Lcom/lx/launcher8/view/FolderCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v3, Lcom/lx/launcher8/bean/FolderCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    iget v4, p0, Lcom/lx/launcher8/view/FolderCellView;->imgIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/bean/AppCell;

    iget-object v1, v3, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 113
    :cond_5
    iget v3, p0, Lcom/lx/launcher8/view/FolderCellView;->imgIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lx/launcher8/view/FolderCellView;->imgIndex:I

    goto :goto_1
.end method

.method private getRandom(I)I
    .locals 2
    .parameter "max"

    .prologue
    .line 379
    if-nez p1, :cond_0

    .line 380
    const/4 v1, 0x0

    .line 383
    :goto_0
    return v1

    .line 382
    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int v0, v1, p1

    .line 383
    .local v0, i:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_0
.end method

.method private initFolderData()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, ss:I
    iget-object v2, p0, Lcom/lx/launcher8/view/FolderCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v2, Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/FolderCell;->getFolderSettings()[I

    move-result-object v0

    .line 48
    .local v0, settings:[I
    const/4 v2, 0x0

    aget v2, v0, v2

    if-ne v2, v3, :cond_1

    .line 49
    aget v2, v0, v3

    if-ne v2, v3, :cond_0

    .line 50
    const/4 v1, 0x2

    .line 57
    :goto_0
    return v1

    .line 52
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCellStyle()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/lx/launcher8/view/FolderCellView;->style:I

    return v0
.end method

.method protected getDrawAlpha()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mFGAlpha:I

    return v0
.end method

.method public onBackColorSet(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 388
    iput p1, p0, Lcom/lx/launcher8/view/FolderCellView;->mBgColor:I

    .line 403
    invoke-super {p0, p1}, Lcom/lx/launcher8/view/SimpleCellView;->onBackColorSet(I)V

    .line 404
    return-void
.end method

.method public onRefresh(Z)V
    .locals 0
    .parameter "mounted"

    .prologue
    .line 447
    return-void
.end method

.method public onSizeChange(II)V
    .locals 1
    .parameter "oldSize"
    .parameter "newSize"

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/lx/launcher8/view/FolderCellView;->initFolderData()I

    move-result v0

    if-eqz v0, :cond_0

    if-eq p1, p2, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FolderCellView;->styleChanged()V

    .line 414
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/view/SimpleCellView;->onSizeChange(II)V

    .line 416
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 422
    const/16 v0, 0x19

    iput v0, p0, Lcom/lx/launcher8/view/FolderCellView;->count:I

    .line 423
    iget-boolean v0, p0, Lcom/lx/launcher8/view/FolderCellView;->isPlaying:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lx/launcher8/view/FolderCellView;->isAnimation:Z

    if-eqz v0, :cond_0

    .line 424
    iget v0, p0, Lcom/lx/launcher8/view/FolderCellView;->count:I

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/FolderCellView;->playAnimation(I)V

    .line 426
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 430
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/view/FolderCellView;->count:I

    .line 431
    iget v0, p0, Lcom/lx/launcher8/view/FolderCellView;->itemCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/lx/launcher8/view/FolderCellView;->isAnimation:Z

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FolderCellView;->clearAnimation()V

    .line 443
    :cond_0
    return-void
.end method

.method public playAnimation(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lx/launcher8/view/FolderCellView;->playAnimationDelayed(II)V

    .line 297
    return-void
.end method

.method public playAnimationDelayed(II)V
    .locals 4
    .parameter "count"
    .parameter "delayMillis"

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/view/FolderCellView;->isPlaying:Z

    .line 301
    iput p1, p0, Lcom/lx/launcher8/view/FolderCellView;->count:I

    .line 302
    if-lez p1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->handler:Lcom/lx/launcher8/view/FolderCellView$AnimHandler;

    const/4 v1, 0x0

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 305
    :cond_0
    return-void
.end method

.method public setCellStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 66
    iput p1, p0, Lcom/lx/launcher8/view/FolderCellView;->style:I

    .line 67
    return-void
.end method

.method protected setupViews()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-super {p0}, Lcom/lx/launcher8/view/SimpleCellView;->setupViews()V

    .line 125
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FolderCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mContext:Landroid/content/Context;

    .line 127
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->handler:Lcom/lx/launcher8/view/FolderCellView$AnimHandler;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/view/FolderCellView$AnimHandler;-><init>(Lcom/lx/launcher8/view/FolderCellView;Lcom/lx/launcher8/view/FolderCellView$AnimHandler;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->handler:Lcom/lx/launcher8/view/FolderCellView$AnimHandler;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v0, Lcom/lx/launcher8/bean/FolderCell;

    iget v0, v0, Lcom/lx/launcher8/bean/FolderCell;->spanX:I

    iput v0, p0, Lcom/lx/launcher8/view/FolderCellView;->spanX:I

    .line 133
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v0, Lcom/lx/launcher8/bean/FolderCell;

    iget v0, v0, Lcom/lx/launcher8/bean/FolderCell;->spanY:I

    iput v0, p0, Lcom/lx/launcher8/view/FolderCellView;->spanY:I

    .line 135
    iput v2, p0, Lcom/lx/launcher8/view/FolderCellView;->imgIndex:I

    .line 136
    iput v2, p0, Lcom/lx/launcher8/view/FolderCellView;->animIndex:I

    .line 138
    invoke-direct {p0}, Lcom/lx/launcher8/view/FolderCellView;->initFolderData()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/FolderCellView;->style:I

    .line 140
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v0, Lcom/lx/launcher8/bean/FolderCell;

    iget-object v0, v0, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/lx/launcher8/view/FolderCellView;->spanX:I

    iget v1, p0, Lcom/lx/launcher8/view/FolderCellView;->spanY:I

    mul-int/2addr v0, v1

    if-eq v0, v3, :cond_1

    .line 141
    iput v2, p0, Lcom/lx/launcher8/view/FolderCellView;->style:I

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    invoke-virtual {v0, v4}, Lcom/lx/launcher8/view/AlphaLayout;->setVisibility(I)V

    .line 148
    iget v0, p0, Lcom/lx/launcher8/view/FolderCellView;->style:I

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/AlphaLayout;->setVisibility(I)V

    goto :goto_0

    .line 159
    :pswitch_1
    iput-boolean v2, p0, Lcom/lx/launcher8/view/FolderCellView;->isAnimation:Z

    .line 160
    invoke-direct {p0}, Lcom/lx/launcher8/view/FolderCellView;->createFolderWithItem()V

    goto :goto_0

    .line 163
    :pswitch_2
    iput-boolean v3, p0, Lcom/lx/launcher8/view/FolderCellView;->isAnimation:Z

    .line 164
    invoke-direct {p0}, Lcom/lx/launcher8/view/FolderCellView;->createFolderWithItem()V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public styleChanged()V
    .locals 1

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/lx/launcher8/view/FolderCellView;->changeViews()V

    .line 451
    iget v0, p0, Lcom/lx/launcher8/view/FolderCellView;->mBgColor:I

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/FolderCellView;->setBackgroundColor(I)V

    .line 452
    return-void
.end method
