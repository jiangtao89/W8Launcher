.class Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;
.super Landroid/widget/BaseAdapter;
.source "LockScreenPaperListAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockScreenPaperAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;
    .locals 1
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->paperList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$3(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->paperList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$3(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 327
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 332
    const/4 v11, 0x0

    .line 333
    .local v11, vh:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 334
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$4(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 335
    new-instance v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;

    .end local v11           #vh:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;
    invoke-direct {v11, p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;-><init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;)V

    .line 336
    .restart local v11       #vh:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;
    const v0, 0x7f090079

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    .line 337
    const v0, 0x7f0900ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->fl:Landroid/widget/FrameLayout;

    .line 338
    iget-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->fl:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->w:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$5(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)I

    move-result v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->h:I
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$6(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    iget-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->fl:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->getSecondBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 340
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->w:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$5(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)I

    move-result v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->h:I
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$6(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)I

    move-result v1

    const/16 v2, 0x11

    invoke-direct {v9, v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 342
    .local v9, params:Landroid/widget/FrameLayout$LayoutParams;
    const v0, 0x7f0900ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    .line 343
    iget-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    const v0, 0x7f0900e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->textTv:Landroid/widget/TextView;

    .line 345
    const v0, 0x7f0900f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->selected:Landroid/widget/TextView;

    .line 346
    iget-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->textTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    invoke-virtual {p2, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 352
    .end local v9           #params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    iget-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    iget-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->selected:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->paperList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$3(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lx/launcher8/setting/bean/PaperInfo;

    .line 356
    .local v10, pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    iput-object v10, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    .line 357
    iget-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->textTv:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    const/4 v6, 0x0

    .line 365
    .local v6, bitmap:Landroid/graphics/Bitmap;
    move-object v7, v11

    .line 366
    .local v7, h:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;
    iget-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v0

    iget-object v1, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    new-instance v3, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$1;

    invoke-direct {v3, p0, v7}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$1;-><init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;)V

    .line 380
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->screenWidth:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$9(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)I

    move-result v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->screenHeight:I
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$10(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)I

    move-result v5

    .line 367
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 382
    :cond_0
    if-eqz v6, :cond_1

    .line 383
    iget-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 384
    iget-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    iget-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->selectedPaperPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$8(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->selected:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    :cond_1
    move v8, p1

    .line 390
    .local v8, p:I
    iget-object v0, v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$2;

    invoke-direct {v1, p0, v8}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$2;-><init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    new-instance v0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$3;

    invoke-direct {v0, p0, v8}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$3;-><init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    return-object p2

    .line 351
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #h:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;
    .end local v8           #p:I
    .end local v10           #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #vh:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;
    check-cast v11, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;

    .restart local v11       #vh:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;
    goto/16 :goto_0
.end method
