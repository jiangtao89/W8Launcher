.class Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$1;
.super Landroid/os/Handler;
.source "LockScreenPaperListAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$1;->this$1:Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;

    .line 351
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$1;)Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;
    .locals 1
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$1;->this$1:Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 355
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 356
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;

    .line 357
    .local v7, vh:Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;
    const/4 v6, 0x0

    .line 358
    .local v6, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, v7, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$1;->this$1:Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/LockScreenPaperListAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/LockScreenPaperListAct;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/LockScreenPaperListAct;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;
    invoke-static {v0}, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->access$1(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v0

    iget-object v1, v7, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    new-instance v3, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$1$1;

    invoke-direct {v3, p0, v7}, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$1$1;-><init>(Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$1;Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;)V

    .line 374
    iget-object v4, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$1;->this$1:Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/LockScreenPaperListAct;
    invoke-static {v4}, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/LockScreenPaperListAct;

    move-result-object v4

    #getter for: Lcom/lx/launcher8/setting/LockScreenPaperListAct;->screenWidth:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->access$3(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)I

    move-result v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$1;->this$1:Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/LockScreenPaperListAct;
    invoke-static {v5}, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/LockScreenPaperListAct;

    move-result-object v5

    #getter for: Lcom/lx/launcher8/setting/LockScreenPaperListAct;->screenHeight:I
    invoke-static {v5}, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->access$4(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)I

    move-result v5

    .line 359
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 376
    :cond_0
    if-eqz v6, :cond_1

    .line 377
    iget-object v0, v7, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 378
    iget-object v0, v7, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 379
    iget-object v0, v7, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    iget-object v0, v7, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$1;->this$1:Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/LockScreenPaperListAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/LockScreenPaperListAct;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/LockScreenPaperListAct;->selectedPaperPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->access$2(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;->selected:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #vh:Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter$ViewHolder;
    :cond_1
    return-void
.end method
