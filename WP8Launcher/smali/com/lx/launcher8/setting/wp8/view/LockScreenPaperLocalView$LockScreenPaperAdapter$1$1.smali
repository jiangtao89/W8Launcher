.class Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1$1;
.super Ljava/lang/Object;
.source "LockScreenPaperLocalView.java"

# interfaces
.implements Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1;

.field private final synthetic val$vh:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1;Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1$1;->this$2:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1$1;->val$vh:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 435
    if-eqz p1, :cond_1

    .line 436
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1$1;->val$vh:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 437
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1$1;->val$vh:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 438
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1$1;->val$vh:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1$1;->val$vh:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1$1;->this$2:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1;)Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$2(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1$1;->val$vh:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1$1;->val$vh:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->selected:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    :cond_0
    if-eqz p1, :cond_1

    .line 443
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1$1;->this$2:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1;)Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)Lcom/lx/launcher8/util/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$1$1;->val$vh:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/lx/launcher8/util/BitmapManager;->addCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 445
    :cond_1
    return-void
.end method

.method public onLoading(I)V
    .locals 0
    .parameter "loadSize"

    .prologue
    .line 449
    return-void
.end method
