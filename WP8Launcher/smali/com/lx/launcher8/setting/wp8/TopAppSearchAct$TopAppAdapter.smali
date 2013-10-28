.class Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "TopAppSearchAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopAppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 263
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;)Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;
    .locals 1
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mAppList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$4(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mAppList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$4(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mAppList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$4(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 277
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mAppList:Ljava/util/List;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$4(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)Ljava/util/List;

    move-result-object v2

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lx/launcher8/setting/bean/TopAppInfo;

    .line 283
    .local v13, info:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    invoke-static {v2}, Lcom/lx/launcher8/download/DownloadHandler;->getInstance(Landroid/content/Context;)Lcom/lx/launcher8/download/DownloadHandler;

    move-result-object v2

    invoke-virtual {v13}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getDownUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/download/DownloadHandler;->getFileState(Ljava/lang/String;)I

    move-result v16

    .line 284
    .local v16, state:I
    invoke-static/range {v16 .. v16}, Lcom/lx/launcher8/util/TopAppUtil;->getResId(I)I

    move-result v14

    .line 285
    .local v14, resId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mbgColorValue:I
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$5(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)I

    move-result v3

    move/from16 v0, v16

    invoke-static {v2, v0, v3}, Lcom/lx/launcher8/util/TopAppUtil;->getDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 287
    .local v9, drawable:Landroid/graphics/drawable/Drawable;
    const/16 v18, 0x0

    .line 288
    .local v18, vh:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mbgColorValue:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$5(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)I

    move-result v2

    invoke-static {v2}, Lcom/lx/launcher8/util/TopAppUtil;->getTextColor(I)I

    move-result v17

    .line 290
    .local v17, textColor:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 291
    new-instance v18, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;

    .end local v18           #vh:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;)V

    .line 292
    .restart local v18       #vh:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;
    const v2, 0x7f0900b5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 293
    const v2, 0x7f0900f8

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvDownCount:Landroid/widget/TextView;

    .line 294
    const v2, 0x7f0900f9

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvIntro:Landroid/widget/TextView;

    .line 295
    const v2, 0x7f0900fa

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    .line 296
    const v2, 0x7f0900f2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 297
    const v2, 0x7f0900f3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivStar1:Landroid/widget/ImageView;

    .line 298
    const v2, 0x7f0900f4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivStar2:Landroid/widget/ImageView;

    .line 299
    const v2, 0x7f0900f5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivStar3:Landroid/widget/ImageView;

    .line 300
    const v2, 0x7f0900f6

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivStar4:Landroid/widget/ImageView;

    .line 301
    const v2, 0x7f0900f7

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivStar5:Landroid/widget/ImageView;

    .line 302
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mTitleColorValue:I
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$6(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvDownCount:Landroid/widget/TextView;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvIntro:Landroid/widget/TextView;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 311
    .end local v17           #textColor:I
    :goto_0
    invoke-virtual {v13}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getAppId()I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->appId:I

    .line 312
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v13}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvDownCount:Landroid/widget/TextView;

    invoke-virtual {v13}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getDownCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    invoke-static {v3, v4}, Lcom/lx/launcher8/util/Utils;->trans2Times(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvIntro:Landroid/widget/TextView;

    invoke-virtual {v13}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getIntro()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivStar1:Landroid/widget/ImageView;

    const v3, 0x7f0200d7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivStar2:Landroid/widget/ImageView;

    const v3, 0x7f0200d7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivStar3:Landroid/widget/ImageView;

    const v3, 0x7f0200d7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivStar4:Landroid/widget/ImageView;

    const v3, 0x7f0200d7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivStar5:Landroid/widget/ImageView;

    const v3, 0x7f0200d7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    const/4 v12, 0x1

    .local v12, i:I
    :goto_1
    invoke-virtual {v13}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getStar()I

    move-result v2

    if-le v12, v2, :cond_3

    .line 334
    move-object/from16 v11, v18

    .line 335
    .local v11, h:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v2

    invoke-virtual {v13}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getIcon()Ljava/lang/String;

    move-result-object v3

    .line 336
    invoke-virtual {v13}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v11}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$1;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;)V

    .line 345
    const/16 v6, 0x41

    const/16 v7, 0x41

    .line 335
    invoke-virtual/range {v2 .. v7}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 346
    .local v8, bit:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    iget-object v3, v11, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    #calls: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->setBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    invoke-static {v2, v3, v8}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$7(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 348
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(I)V

    .line 349
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 350
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    new-instance v3, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$2;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;Lcom/lx/launcher8/setting/bean/TopAppInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mDownloadList:Ljava/util/List;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$8(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mDownloadList:Ljava/util/List;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$8(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mDownloadList:Ljava/util/List;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$8(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    .line 402
    :cond_1
    :goto_2
    new-instance v2, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$4;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    return-object p2

    .line 308
    .end local v8           #bit:Landroid/graphics/Bitmap;
    .end local v11           #h:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;
    .end local v12           #i:I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    .end local v18           #vh:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;
    check-cast v18, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;

    .restart local v18       #vh:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;
    goto/16 :goto_0

    .line 321
    .restart local v12       #i:I
    :cond_3
    const/4 v2, 0x1

    if-ne v12, v2, :cond_5

    .line 322
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivStar1:Landroid/widget/ImageView;

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    :cond_4
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 323
    :cond_5
    const/4 v2, 0x2

    if-ne v12, v2, :cond_6

    .line 324
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivStar2:Landroid/widget/ImageView;

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 325
    :cond_6
    const/4 v2, 0x3

    if-ne v12, v2, :cond_7

    .line 326
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivStar3:Landroid/widget/ImageView;

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 327
    :cond_7
    const/4 v2, 0x4

    if-ne v12, v2, :cond_8

    .line 328
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivStar4:Landroid/widget/ImageView;

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 329
    :cond_8
    const/4 v2, 0x5

    if-ne v12, v2, :cond_4

    .line 330
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivStar5:Landroid/widget/ImageView;

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 357
    .restart local v8       #bit:Landroid/graphics/Bitmap;
    .restart local v11       #h:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lx/launcher8/download/FileSeed;

    .line 358
    .local v10, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-virtual {v10}, Lcom/lx/launcher8/download/FileSeed;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getDownUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    invoke-virtual {v10}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 379
    :goto_4
    move-object v15, v10

    .line 380
    .local v15, seed:Lcom/lx/launcher8/download/FileSeed;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    new-instance v3, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$3;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;Lcom/lx/launcher8/download/FileSeed;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 361
    .end local v15           #seed:Lcom/lx/launcher8/download/FileSeed;
    :sswitch_0
    const v14, 0x7f0a028c

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    invoke-virtual {v10}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v3

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mbgColorValue:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$5(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)I

    move-result v4

    .line 362
    invoke-static {v2, v3, v4}, Lcom/lx/launcher8/util/TopAppUtil;->getDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 364
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(I)V

    .line 365
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 369
    :sswitch_1
    invoke-virtual {v10}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/lx/launcher8/util/TopAppUtil;->getResId(I)I

    move-result v14

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    invoke-virtual {v10}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v3

    .line 371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mbgColorValue:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$5(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)I

    move-result v4

    .line 370
    invoke-static {v2, v3, v4}, Lcom/lx/launcher8/util/TopAppUtil;->getDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 372
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(I)V

    .line 373
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 359
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method
