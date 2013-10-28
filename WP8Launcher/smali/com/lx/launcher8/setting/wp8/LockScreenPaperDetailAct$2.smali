.class Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;
.super Ljava/lang/Object;
.source "LockScreenPaperDetailAct.java"

# interfaces
.implements Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollLeft()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 671
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    #setter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v4, v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$8(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;I)V

    .line 672
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v4

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #setter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v4, v7}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$8(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;I)V

    .line 673
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->imageList:Ljava/util/List;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$10(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v6}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    #setter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;
    invoke-static {v5, v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$11(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;Landroid/widget/ImageView;)V

    .line 674
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->list:Ljava/util/List;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$9(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v6}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/setting/bean/PaperInfo;

    #setter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    invoke-static {v5, v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$12(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;Lcom/lx/launcher8/setting/bean/PaperInfo;)V

    .line 675
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$13(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Lcom/lx/launcher8/setting/bean/PaperInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$14(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Landroid/widget/ImageView;

    move-result-object v6

    #calls: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;I)V
    invoke-static {v4, v5, v6, v8}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$15(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;I)V

    .line 676
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->list:Ljava/util/List;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$9(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    if-gt v4, v5, :cond_2

    .line 677
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->imageList:Ljava/util/List;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$10(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 678
    .local v2, lockIv:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 679
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_2

    .line 680
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 681
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 682
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 683
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;

    .line 684
    .local v3, state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;
    iput-boolean v7, v3, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->isInit:Z

    .line 687
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #lockIv:Landroid/widget/ImageView;
    .end local v3           #state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;
    :cond_2
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v4

    if-lt v4, v8, :cond_3

    .line 688
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->list:Ljava/util/List;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$9(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->imageList:Ljava/util/List;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$10(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Ljava/util/List;

    move-result-object v5

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v7}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/4 v7, 0x3

    #calls: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;I)V
    invoke-static {v6, v4, v5, v7}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$15(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;I)V

    .line 690
    :cond_3
    return-void
.end method

.method public onScrollRight()V
    .locals 8

    .prologue
    .line 648
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    #setter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v4, v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$8(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;I)V

    .line 649
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->list:Ljava/util/List;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$9(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->list:Ljava/util/List;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$9(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    #setter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v4, v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$8(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;I)V

    .line 650
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->imageList:Ljava/util/List;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$10(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v6}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    #setter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;
    invoke-static {v5, v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$11(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;Landroid/widget/ImageView;)V

    .line 651
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->list:Ljava/util/List;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$9(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v6}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/setting/bean/PaperInfo;

    #setter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    invoke-static {v5, v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$12(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;Lcom/lx/launcher8/setting/bean/PaperInfo;)V

    .line 652
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$13(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Lcom/lx/launcher8/setting/bean/PaperInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$14(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Landroid/widget/ImageView;

    move-result-object v6

    const/4 v7, 0x1

    #calls: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;I)V
    invoke-static {v4, v5, v6, v7}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$15(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;I)V

    .line 653
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    .line 654
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->imageList:Ljava/util/List;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$10(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 655
    .local v2, lockIv:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 656
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_2

    .line 657
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 658
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 659
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 660
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;

    .line 661
    .local v3, state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->isInit:Z

    .line 664
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #lockIv:Landroid/widget/ImageView;
    .end local v3           #state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;
    :cond_2
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->list:Ljava/util/List;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$9(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-gt v4, v5, :cond_3

    .line 665
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->list:Ljava/util/List;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$9(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->imageList:Ljava/util/List;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$10(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Ljava/util/List;

    move-result-object v5

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I
    invoke-static {v7}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/4 v7, 0x3

    #calls: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;I)V
    invoke-static {v6, v4, v5, v7}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$15(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;I)V

    .line 667
    :cond_3
    return-void
.end method
