.class Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "TopAppView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mHeight:I

.field private mWidth:I

.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)V
    .locals 2
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 291
    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mScreenWidth:I
    invoke-static {p1}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mSpacing:I
    invoke-static {p1}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$6(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;->mWidth:I

    .line 292
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;->mHeight:I

    .line 293
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$7(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$7(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 298
    :cond_0
    const/4 v0, 0x0

    .line 301
    :goto_0
    return v0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdList:Ljava/util/List;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$7(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    #setter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdCount:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$8(Lcom/lx/launcher8/setting/wp8/view/TopAppView;I)V

    .line 301
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$7(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 311
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 316
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$7(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdCount:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$9(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)I

    move-result v2

    rem-int v2, p1, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, url:Ljava/lang/String;
    const/4 v8, 0x0

    .line 319
    .local v8, vh:Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 320
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030073

    invoke-virtual {v0, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 321
    new-instance v8, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;

    .end local v8           #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;
    invoke-direct {v8, p0, v9}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;)V

    .line 322
    .restart local v8       #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;
    const v0, 0x7f0901f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v8, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    .line 323
    iget-object v0, v8, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;->mWidth:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 324
    iget-object v0, v8, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;->mHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 325
    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 330
    :goto_0
    move-object v7, v8

    .line 331
    .local v7, h:Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v0

    const-string v2, "gallery"

    invoke-static {v1, v2}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$1;

    invoke-direct {v3, p0, v7}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;)V

    .line 341
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;->mWidth:I

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;->mHeight:I

    .line 331
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 342
    .local v6, bit:Landroid/graphics/Bitmap;
    iget-object v0, v7, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    invoke-static {v0, v6, v9}, Lcom/lx/launcher8/util/TopAppUtil;->setBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 344
    return-object p2

    .line 327
    .end local v6           #bit:Landroid/graphics/Bitmap;
    .end local v7           #h:Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;
    check-cast v8, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;

    .restart local v8       #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;
    goto :goto_0
.end method
