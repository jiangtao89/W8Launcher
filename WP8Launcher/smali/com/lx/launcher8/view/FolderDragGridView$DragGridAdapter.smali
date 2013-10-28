.class Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderDragGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/FolderDragGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragGridAdapter"
.end annotation


# instance fields
.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/AppCell;",
            ">;"
        }
    .end annotation
.end field

.field positionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lx/launcher8/view/FolderDragGridView;

.field viewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/view/FolderDragGridView;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/AppCell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p2, contains:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/AppCell;>;"
    iput-object p1, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->mData:Ljava/util/ArrayList;

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->positionList:Ljava/util/ArrayList;

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->viewList:Ljava/util/ArrayList;

    .line 324
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->mData:Ljava/util/ArrayList;

    .line 325
    return-void
.end method


# virtual methods
.method public drawImageDropShadow(Landroid/widget/ImageView;I)V
    .locals 12
    .parameter "img"
    .parameter "pos"

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x4100

    const/4 v9, 0x0

    .line 434
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v10, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 435
    .local v0, blurFilter:Landroid/graphics/BlurMaskFilter;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 436
    .local v5, shadowPaint:Landroid/graphics/Paint;
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 437
    iget-object v6, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/bean/AppCell;

    iget-object v2, v6, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 438
    .local v2, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v5, v11}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 439
    .local v4, shadowBitmap:Landroid/graphics/Bitmap;
    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 441
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 442
    .local v3, result:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 443
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v1, v4, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 444
    invoke-virtual {v1, v2, v10, v9, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 445
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 446
    return-void
.end method

.method public exchange(II)V
    .locals 3
    .parameter "startPosition"
    .parameter "endPosition"

    .prologue
    .line 449
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bean/AppCell;

    .line 450
    .local v0, startObject:Lcom/lx/launcher8/bean/AppCell;
    if-ge p1, p2, :cond_0

    .line 451
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->mData:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 452
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 457
    :goto_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->notifyDataSetChanged()V

    .line 458
    return-void

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 455
    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->mData:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 342
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 351
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    #getter for: Lcom/lx/launcher8/view/FolderDragGridView;->mNumColumns:I
    invoke-static {v4}, Lcom/lx/launcher8/view/FolderDragGridView;->access$4(Lcom/lx/launcher8/view/FolderDragGridView;)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 352
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    #setter for: Lcom/lx/launcher8/view/FolderDragGridView;->isEditing:Z
    invoke-static {v4, v6}, Lcom/lx/launcher8/view/FolderDragGridView;->access$5(Lcom/lx/launcher8/view/FolderDragGridView;Z)V

    .line 354
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    #getter for: Lcom/lx/launcher8/view/FolderDragGridView;->isEditing:Z
    invoke-static {v4}, Lcom/lx/launcher8/view/FolderDragGridView;->access$6(Lcom/lx/launcher8/view/FolderDragGridView;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 357
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->positionList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 358
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->positionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_0

    .line 359
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->positionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 360
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 362
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    #getter for: Lcom/lx/launcher8/view/FolderDragGridView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/view/FolderDragGridView;->access$7(Lcom/lx/launcher8/view/FolderDragGridView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03004a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 363
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget-object v4, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    #getter for: Lcom/lx/launcher8/view/FolderDragGridView;->itemWidth:I
    invoke-static {v4}, Lcom/lx/launcher8/view/FolderDragGridView;->access$8(Lcom/lx/launcher8/view/FolderDragGridView;)I

    move-result v4

    iget-object v5, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    #getter for: Lcom/lx/launcher8/view/FolderDragGridView;->itemHeight:I
    invoke-static {v5}, Lcom/lx/launcher8/view/FolderDragGridView;->access$9(Lcom/lx/launcher8/view/FolderDragGridView;)I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    invoke-direct {v2, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .local v2, lp:Landroid/widget/AbsListView$LayoutParams;
    move-object v4, p2

    .line 364
    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    const v4, 0x7f09013a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 366
    .local v0, icon:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    #getter for: Lcom/lx/launcher8/view/FolderDragGridView;->itemWidth:I
    invoke-static {v4}, Lcom/lx/launcher8/view/FolderDragGridView;->access$8(Lcom/lx/launcher8/view/FolderDragGridView;)I

    move-result v4

    iget-object v5, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    #getter for: Lcom/lx/launcher8/view/FolderDragGridView;->itemHeight:I
    invoke-static {v5}, Lcom/lx/launcher8/view/FolderDragGridView;->access$9(Lcom/lx/launcher8/view/FolderDragGridView;)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 367
    .local v1, lParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    const v4, 0x7f09013b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 369
    .local v3, name:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    #getter for: Lcom/lx/launcher8/view/FolderDragGridView;->itemWidth:I
    invoke-static {v4}, Lcom/lx/launcher8/view/FolderDragGridView;->access$8(Lcom/lx/launcher8/view/FolderDragGridView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    .line 370
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne p1, v4, :cond_2

    .line 371
    const v4, 0x7f02000a

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->positionList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v1           #lParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v2           #lp:Landroid/widget/AbsListView$LayoutParams;
    .end local v3           #name:Landroid/widget/TextView;
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 430
    :cond_1
    return-object p2

    .line 374
    .restart local v0       #icon:Landroid/widget/ImageView;
    .restart local v1       #lParams:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2       #lp:Landroid/widget/AbsListView$LayoutParams;
    .restart local v3       #name:Landroid/widget/TextView;
    :cond_2
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/bean/AppCell;

    iget-object v4, v4, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {p0, v0, p1}, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->drawImageDropShadow(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 380
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v1           #lParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v2           #lp:Landroid/widget/AbsListView$LayoutParams;
    .end local v3           #name:Landroid/widget/TextView;
    :cond_3
    iget-object v4, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->viewList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->positionList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/view/View;

    .restart local p2
    goto :goto_1
.end method
