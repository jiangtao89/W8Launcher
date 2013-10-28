.class Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;
.super Landroid/widget/BaseAdapter;
.source "LockScreenPaperLocalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockScreenPaperAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)V
    .locals 1
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 414
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;
    .locals 1
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$5(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$5(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 303
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 308
    const/4 v14, 0x0

    .line 309
    .local v14, vh:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    if-nez p2, :cond_3

    .line 310
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$1(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030037

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 311
    new-instance v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;

    .end local v14           #vh:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    invoke-direct {v14, p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;)V

    .line 312
    .restart local v14       #vh:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    const v1, 0x7f090079

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    .line 313
    const v1, 0x7f0900ee

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->fl:Landroid/widget/FrameLayout;

    .line 314
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->fl:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->w:I
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$6(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)I

    move-result v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->h:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$7(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->fl:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$8(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->getSecondBgColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 316
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->w:I
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$6(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)I

    move-result v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->h:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$7(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)I

    move-result v2

    const/16 v3, 0x11

    invoke-direct {v12, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 318
    .local v12, params:Landroid/widget/FrameLayout$LayoutParams;
    const v1, 0x7f0900ef

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    .line 319
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    const v1, 0x7f0900e4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->textTv:Landroid/widget/TextView;

    .line 321
    const v1, 0x7f0900f0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->selected:Landroid/widget/TextView;

    .line 327
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 329
    .end local v12           #params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->selected:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$5(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)Ljava/util/List;

    move-result-object v1

    move/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lx/launcher8/setting/bean/PaperInfo;

    .line 333
    .local v13, pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    iput-object v13, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    .line 334
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->textTv:Landroid/widget/TextView;

    invoke-virtual {v13}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->textTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    move-object v9, v14

    .line 343
    .local v9, h:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    const/4 v7, 0x0

    .line 345
    .local v7, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)Lcom/lx/launcher8/util/BitmapManager;

    move-result-object v1

    iget-object v2, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/util/BitmapManager;->getCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 346
    const/4 v10, 0x1

    .line 347
    .local v10, isDefault:Z
    if-nez v7, :cond_0

    .line 348
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 349
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$1(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 373
    :goto_1
    if-eqz v7, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)Lcom/lx/launcher8/util/BitmapManager;

    move-result-object v1

    iget-object v2, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lcom/lx/launcher8/util/BitmapManager;->addCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 375
    :cond_0
    if-eqz v7, :cond_1

    .line 381
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 382
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$2(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->selected:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 392
    .end local v10           #isDefault:Z
    :cond_2
    :goto_2
    move/from16 v11, p1

    .line 393
    .local v11, p:I
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$3;

    invoke-direct {v2, p0, v11}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$3;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$4;

    invoke-direct {v1, p0, v11}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$4;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    return-object p2

    .line 328
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #h:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    .end local v11           #p:I
    .end local v13           #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    .end local v14           #vh:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    check-cast v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;

    .restart local v14       #vh:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    goto/16 :goto_0

    .line 350
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #h:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
    .restart local v10       #isDefault:Z
    .restart local v13       #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    :cond_4
    :try_start_1
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lockscreen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 351
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$1(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_1

    .line 352
    :cond_5
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 353
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v1

    iget-object v2, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v3}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    new-instance v4, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$2;

    invoke-direct {v4, p0, v9}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;)V

    .line 368
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->screenWidth:I
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$3(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)I

    move-result v5

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->screenHeight:I
    invoke-static {v6}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$4(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)I

    move-result v6

    .line 353
    invoke-virtual/range {v1 .. v6}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_1

    .line 370
    :cond_6
    iget-object v1, v14, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->screenWidth:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$3(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)I

    move-result v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->screenHeight:I
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$4(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/lx/launcher8/util/DynTileManager;->getLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 371
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 386
    .end local v10           #isDefault:Z
    :catch_0
    move-exception v8

    .line 387
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 388
    .end local v8           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 389
    .local v8, e:Ljava/lang/Error;
    invoke-virtual {v8}, Ljava/lang/Error;->printStackTrace()V

    goto/16 :goto_2
.end method
