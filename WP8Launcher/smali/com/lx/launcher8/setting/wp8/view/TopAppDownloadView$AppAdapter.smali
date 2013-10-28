.class Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "TopAppDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 405
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    .locals 1
    .parameter

    .prologue
    .line 402
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAppList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$8(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAppList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$8(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAppList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$8(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 419
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0x2e

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 424
    const/4 v4, 0x0

    .line 425
    .local v4, vh:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 426
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v5

    iget v5, v5, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mbgColorValue:I

    invoke-static {v5}, Lcom/lx/launcher8/util/TopAppUtil;->getTextColor(I)I

    move-result v3

    .line 427
    .local v3, textColor:I
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03003b

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 428
    new-instance v4, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;

    .end local v4           #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;
    invoke-direct {v4, p0, v7}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;)V

    .line 429
    .restart local v4       #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;
    const v5, 0x7f0900f2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 430
    const v5, 0x7f0900b5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 431
    const v5, 0x7f0900fb

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    .line 432
    const v5, 0x7f0900ff

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;->tvAction:Landroid/widget/TextView;

    .line 433
    iget-object v5, v4, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v6}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v6

    iget v6, v6, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mTitleColorValue:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 434
    iget-object v5, v4, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 435
    iget-object v5, v4, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;->tvAction:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 436
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mRes:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$6(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020084

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 437
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v5

    iget v5, v5, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mbgColorValue:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 438
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mRes:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$6(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020085

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 440
    :cond_0
    invoke-virtual {v0, v8, v8, v9, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 441
    iget-object v5, v4, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;->tvAction:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v0, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 443
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 448
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #textColor:I
    :goto_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAppList:Ljava/util/List;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$8(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/download/FileSeed;

    .line 449
    .local v2, seed:Lcom/lx/launcher8/download/FileSeed;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getPkName()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->getAPKInfo(Ljava/lang/String;)Lcom/lx/launcher8/download/WpPackage;
    invoke-static {v5, v6}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$9(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;Ljava/lang/String;)Lcom/lx/launcher8/download/WpPackage;

    move-result-object v1

    .line 450
    .local v1, info:Lcom/lx/launcher8/download/WpPackage;
    if-eqz v1, :cond_1

    .line 451
    iget-object v5, v4, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lx/launcher8/download/WpPackage;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v5, v4, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/lx/launcher8/download/WpPackage;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    :cond_1
    iget-object v5, v4, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    const v6, 0x7f0a028c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 455
    iget-object v5, v4, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    iget-object v5, v4, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;->tvAction:Landroid/widget/TextView;

    const v6, 0x7f0a0076

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 457
    iget-object v5, v4, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;->tvAction:Landroid/widget/TextView;

    new-instance v6, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$1;

    invoke-direct {v6, p0, v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;Lcom/lx/launcher8/download/FileSeed;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    return-object p2

    .line 445
    .end local v1           #info:Lcom/lx/launcher8/download/WpPackage;
    .end local v2           #seed:Lcom/lx/launcher8/download/FileSeed;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;
    check-cast v4, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;

    .restart local v4       #vh:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$ViewHolder;
    goto :goto_0
.end method
