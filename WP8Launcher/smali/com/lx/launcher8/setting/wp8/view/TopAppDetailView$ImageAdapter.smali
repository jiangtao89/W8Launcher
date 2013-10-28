.class Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "TopAppDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final mColumn:I = 0x2


# instance fields
.field private mHeight:I

.field private mWidth:I

.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)V
    .locals 5
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 354
    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;
    invoke-static {p1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$1(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 355
    .local v0, width:I
    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mSpacing:I
    invoke-static {p1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$6(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, -0x14

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;->mWidth:I

    .line 356
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;->mWidth:I

    int-to-double v1, v1

    const-wide v3, 0x3ffa8f5c28f5c28fL

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;->mHeight:I

    .line 357
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mPicList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$7(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mPicList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$7(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mPicList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$7(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 371
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    const/4 v9, -0x1

    .line 376
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mPicList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$7(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/bean/TopAppPicInfo;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/bean/TopAppPicInfo;->getActUrl()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, url:Ljava/lang/String;
    const/4 v8, 0x0

    .line 379
    .local v8, vh:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 380
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$1(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030075

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 382
    new-instance v8, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$ViewHolder;

    .end local v8           #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$ViewHolder;
    invoke-direct {v8, p0, v3}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$ViewHolder;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$ViewHolder;)V

    .line 383
    .restart local v8       #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$ViewHolder;
    const v0, 0x7f0901f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v8, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    .line 384
    iget-object v0, v8, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;->mWidth:I

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;->mHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 390
    :goto_0
    move-object v7, v8

    .line 391
    .local v7, h:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$ViewHolder;
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v0

    invoke-static {v1}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$1;

    invoke-direct {v3, p0, v7}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$ViewHolder;)V

    .line 401
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;->mWidth:I

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;->mHeight:I

    .line 391
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 402
    .local v6, bit:Landroid/graphics/Bitmap;
    iget-object v0, v7, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    invoke-static {v9, v9}, Lcom/app/common/utils/ViewHelper;->getRLParam(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-static {v0, v6, v2}, Lcom/lx/launcher8/util/TopAppUtil;->setBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 403
    return-object p2

    .line 387
    .end local v6           #bit:Landroid/graphics/Bitmap;
    .end local v7           #h:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$ViewHolder;
    check-cast v8, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$ViewHolder;

    .restart local v8       #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter$ViewHolder;
    goto :goto_0
.end method
