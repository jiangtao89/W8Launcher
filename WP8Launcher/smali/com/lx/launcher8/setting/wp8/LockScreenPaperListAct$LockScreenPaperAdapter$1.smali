.class Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$1;
.super Ljava/lang/Object;
.source "LockScreenPaperListAct.java"

# interfaces
.implements Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;

.field private final synthetic val$h:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$1;->val$h:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 371
    if-eqz p1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$1;->val$h:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$1;->val$h:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$1;->val$h:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->selectedPaperPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$8(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$1;->val$h:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$1;->val$h:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->selected:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    :cond_0
    return-void
.end method

.method public onLoading(I)V
    .locals 0
    .parameter "loadSize"

    .prologue
    .line 380
    return-void
.end method
