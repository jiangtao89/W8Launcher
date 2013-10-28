.class Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "TopAppView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopAppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 354
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppView;
    .locals 1
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAppList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$10(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAppList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$10(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->getItemViewType(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAppList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$10(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 368
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mTotalType:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$11(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 374
    const/4 v0, 0x1

    .line 376
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mTotalType:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$11(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->getItemViewType(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 387
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 388
    .local v15, layout:Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 390
    new-instance v11, Lcom/lx/launcher8/view/CustomGallery;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$12(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-direct {v11, v2, v3}, Lcom/lx/launcher8/view/CustomGallery;-><init>(Landroid/content/Context;Landroid/support/v4/view/ViewPager;)V

    .line 391
    .local v11, gallery:Lcom/lx/launcher8/view/CustomGallery;
    const/4 v2, -0x1

    const/16 v3, 0x78

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/lx/launcher8/view/CustomGallery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/lx/launcher8/view/CustomGallery;->setFocusable(Z)V

    .line 393
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/lx/launcher8/view/CustomGallery;->setFadingEdgeLength(I)V

    .line 394
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/lx/launcher8/view/CustomGallery;->setSoundEffectsEnabled(Z)V

    .line 396
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v16

    .line 397
    .local v16, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/16 v5, 0xf

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 398
    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    invoke-direct {v2, v3}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)V

    invoke-virtual {v11, v2}, Lcom/lx/launcher8/view/CustomGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 401
    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;)V

    invoke-virtual {v11, v2}, Lcom/lx/launcher8/view/CustomGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 537
    .end local v11           #gallery:Lcom/lx/launcher8/view/CustomGallery;
    .end local v15           #layout:Landroid/widget/LinearLayout;
    .end local v16           #params:Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-object v15

    .line 411
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mTotalType:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$11(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 412
    add-int/lit8 p1, p1, -0x1

    .line 414
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAppList:Ljava/util/List;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$10(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Ljava/util/List;

    move-result-object v2

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lx/launcher8/setting/bean/TopAppInfo;

    .line 415
    .local v14, info:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v2

    invoke-static {v2}, Lcom/lx/launcher8/download/DownloadHandler;->getInstance(Landroid/content/Context;)Lcom/lx/launcher8/download/DownloadHandler;

    move-result-object v2

    invoke-virtual {v14}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getDownUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/download/DownloadHandler;->getFileState(Ljava/lang/String;)I

    move-result v19

    .line 416
    .local v19, state:I
    invoke-static/range {v19 .. v19}, Lcom/lx/launcher8/util/TopAppUtil;->getResId(I)I

    move-result v17

    .line 417
    .local v17, resId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v3

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mbgColorValue:I

    move/from16 v0, v19

    invoke-static {v2, v0, v3}, Lcom/lx/launcher8/util/TopAppUtil;->getDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 419
    .local v9, drawable:Landroid/graphics/drawable/Drawable;
    const/16 v21, 0x0

    .line 420
    .local v21, vh:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;
    if-nez p2, :cond_4

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v2

    iget v2, v2, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mbgColorValue:I

    invoke-static {v2}, Lcom/lx/launcher8/util/TopAppUtil;->getTextColor(I)I

    move-result v20

    .line 422
    .local v20, textColor:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 423
    new-instance v21, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;

    .end local v21           #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;
    const/4 v2, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;)V

    .line 424
    .restart local v21       #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;
    const v2, 0x7f0900b5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 425
    const v2, 0x7f0900f8

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvDownCount:Landroid/widget/TextView;

    .line 426
    const v2, 0x7f0900f9

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvIntro:Landroid/widget/TextView;

    .line 427
    const v2, 0x7f0900fa

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    .line 428
    const v2, 0x7f0900f2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 429
    const v2, 0x7f0900f3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->ivStar1:Landroid/widget/ImageView;

    .line 430
    const v2, 0x7f0900f4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->ivStar2:Landroid/widget/ImageView;

    .line 431
    const v2, 0x7f0900f5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->ivStar3:Landroid/widget/ImageView;

    .line 432
    const v2, 0x7f0900f6

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->ivStar4:Landroid/widget/ImageView;

    .line 433
    const v2, 0x7f0900f7

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->ivStar5:Landroid/widget/ImageView;

    .line 434
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v3

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mTitleColorValue:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 435
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvDownCount:Landroid/widget/TextView;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 436
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvIntro:Landroid/widget/TextView;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 437
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 438
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 443
    .end local v20           #textColor:I
    :goto_1
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v14}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvDownCount:Landroid/widget/TextView;

    invoke-virtual {v14}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getDownCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lx/launcher8/util/Utils;->trans2Times(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvIntro:Landroid/widget/TextView;

    invoke-virtual {v14}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getIntro()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->ivStar1:Landroid/widget/ImageView;

    const v3, 0x7f0200d7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 447
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->ivStar2:Landroid/widget/ImageView;

    const v3, 0x7f0200d7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 448
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->ivStar3:Landroid/widget/ImageView;

    const v3, 0x7f0200d7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 449
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->ivStar4:Landroid/widget/ImageView;

    const v3, 0x7f0200d7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 450
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->ivStar5:Landroid/widget/ImageView;

    const v3, 0x7f0200d7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 451
    const/4 v13, 0x1

    .local v13, i:I
    :goto_2
    invoke-virtual {v14}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getStar()I

    move-result v2

    if-le v13, v2, :cond_5

    .line 465
    move-object/from16 v12, v21

    .line 466
    .local v12, h:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v2

    invoke-virtual {v14}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getIcon()Ljava/lang/String;

    move-result-object v3

    .line 467
    invoke-virtual {v14}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getIcon()Ljava/lang/String;

    move-result-object v4

    const-string v5, "icon"

    invoke-static {v4, v5}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mScreenWidth:I
    invoke-static {v6}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mScreenHeight:I
    invoke-static {v7}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$14(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)I

    move-result v7

    .line 466
    invoke-virtual/range {v2 .. v7}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 477
    .local v8, bit:Landroid/graphics/Bitmap;
    iget-object v2, v12, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-static {v2, v8, v3}, Lcom/lx/launcher8/util/TopAppUtil;->setBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 479
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 480
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 481
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$3;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;Lcom/lx/launcher8/setting/bean/TopAppInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mDownloadList:Ljava/util/List;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$15(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mDownloadList:Ljava/util/List;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$15(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mDownloadList:Ljava/util/List;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$15(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 531
    :cond_3
    :goto_3
    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$5;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;Lcom/lx/launcher8/setting/bean/TopAppInfo;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v15, p2

    .line 537
    goto/16 :goto_0

    .line 440
    .end local v8           #bit:Landroid/graphics/Bitmap;
    .end local v12           #h:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;
    .end local v13           #i:I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    .end local v21           #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;
    check-cast v21, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;

    .restart local v21       #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;
    goto/16 :goto_1

    .line 452
    .restart local v13       #i:I
    :cond_5
    const/4 v2, 0x1

    if-ne v13, v2, :cond_7

    .line 453
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->ivStar1:Landroid/widget/ImageView;

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 451
    :cond_6
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 454
    :cond_7
    const/4 v2, 0x2

    if-ne v13, v2, :cond_8

    .line 455
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->ivStar2:Landroid/widget/ImageView;

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 456
    :cond_8
    const/4 v2, 0x3

    if-ne v13, v2, :cond_9

    .line 457
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->ivStar3:Landroid/widget/ImageView;

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 458
    :cond_9
    const/4 v2, 0x4

    if-ne v13, v2, :cond_a

    .line 459
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->ivStar4:Landroid/widget/ImageView;

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 460
    :cond_a
    const/4 v2, 0x5

    if-ne v13, v2, :cond_6

    .line 461
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->ivStar5:Landroid/widget/ImageView;

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 488
    .restart local v8       #bit:Landroid/graphics/Bitmap;
    .restart local v12       #h:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lx/launcher8/download/FileSeed;

    .line 489
    .local v10, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-virtual {v10}, Lcom/lx/launcher8/download/FileSeed;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getDownUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 490
    invoke-virtual {v10}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 508
    :goto_5
    move-object/from16 v18, v10

    .line 509
    .local v18, seed:Lcom/lx/launcher8/download/FileSeed;
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$4;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;Lcom/lx/launcher8/download/FileSeed;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 492
    .end local v18           #seed:Lcom/lx/launcher8/download/FileSeed;
    :sswitch_0
    const v17, 0x7f0a028c

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v2

    invoke-virtual {v10}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v4

    iget v4, v4, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mbgColorValue:I

    invoke-static {v2, v3, v4}, Lcom/lx/launcher8/util/TopAppUtil;->getDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 494
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 495
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 499
    :sswitch_1
    invoke-virtual {v10}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/lx/launcher8/util/TopAppUtil;->getResId(I)I

    move-result v17

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v2

    invoke-virtual {v10}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v4

    iget v4, v4, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mbgColorValue:I

    invoke-static {v2, v3, v4}, Lcom/lx/launcher8/util/TopAppUtil;->getDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 501
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 502
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$ViewHolder;->tvDownload:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 490
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mTotalType:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$11(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)I

    move-result v0

    return v0
.end method
