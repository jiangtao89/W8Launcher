.class Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemeRecomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecommandAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 236
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->setBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private setBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "iv"
    .parameter "bt"

    .prologue
    .line 315
    if-nez p2, :cond_0

    const v0, -0xcececf

    .line 316
    .local v0, color:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 317
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 318
    return-void

    .line 315
    .end local v0           #color:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mThemeList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$2(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mThemeList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$2(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mThemeList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$2(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 250
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 255
    const/4 v10, 0x0

    .line 256
    .local v10, vh:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 257
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$1(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03003d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 258
    new-instance v10, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;

    .end local v10           #vh:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;
    invoke-direct {v10, p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;)V

    .line 259
    .restart local v10       #vh:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;
    const v0, 0x7f0900e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    .line 260
    const v0, 0x7f090100

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    .line 261
    const v0, 0x7f0900e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;->screenIv:Landroid/widget/ImageView;

    .line 262
    const v0, 0x7f090102

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;->paperIv:Landroid/widget/ImageView;

    .line 263
    const v0, 0x7f0900ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 264
    .local v11, view:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 265
    .local v8, rlp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mItemWidth:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$3(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)I

    move-result v0

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 266
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mItemHeight:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$4(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)I

    move-result v0

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 267
    const v0, 0x7f090101

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 268
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 269
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mItemWidth:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$3(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)I

    move-result v0

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 270
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mItemHeight:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$4(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)I

    move-result v0

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 271
    iget-object v0, v10, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$1(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-result-object v2

    iget v2, v2, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->mTitleColorValue:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    iget-object v0, v10, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    const v2, -0xff3301

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    invoke-virtual {p2, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 276
    .end local v8           #rlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v11           #view:Landroid/view/View;
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mThemeList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$2(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lx/launcher8/setting/bean/Theme;

    .line 277
    .local v9, theme:Lcom/lx/launcher8/setting/bean/Theme;
    iget-object v0, v10, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    iget-object v2, v9, Lcom/lx/launcher8/setting/bean/Theme;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, v10, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    iget-object v2, v9, Lcom/lx/launcher8/setting/bean/Theme;->author:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, v9, Lcom/lx/launcher8/setting/bean/Theme;->screenUrl:Ljava/lang/String;

    .line 280
    .local v1, url:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 281
    move-object v7, v10

    .line 282
    .local v7, h:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v0

    invoke-static {v1}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$1;

    invoke-direct {v3, p0, v7}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;)V

    .line 292
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->screenWidth:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$5(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)I

    move-result v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->screenHeight:I
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$6(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)I

    move-result v5

    .line 282
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 293
    .local v6, bit:Landroid/graphics/Bitmap;
    iget-object v0, v7, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;->screenIv:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v6}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->setBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 295
    .end local v6           #bit:Landroid/graphics/Bitmap;
    .end local v7           #h:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;
    :cond_0
    iget-object v1, v9, Lcom/lx/launcher8/setting/bean/Theme;->lockUrl:Ljava/lang/String;

    .line 296
    if-eqz v1, :cond_1

    .line 297
    move-object v7, v10

    .line 298
    .restart local v7       #h:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v0

    invoke-static {v1}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$2;

    invoke-direct {v3, p0, v7}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;)V

    .line 308
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->screenWidth:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$5(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)I

    move-result v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->screenHeight:I
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$6(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)I

    move-result v5

    .line 298
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 309
    .restart local v6       #bit:Landroid/graphics/Bitmap;
    iget-object v0, v7, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;->paperIv:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v6}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->setBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 311
    .end local v6           #bit:Landroid/graphics/Bitmap;
    .end local v7           #h:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;
    :cond_1
    return-object p2

    .line 275
    .end local v1           #url:Ljava/lang/String;
    .end local v9           #theme:Lcom/lx/launcher8/setting/bean/Theme;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #vh:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;
    check-cast v10, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;

    .restart local v10       #vh:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;
    goto :goto_0
.end method
