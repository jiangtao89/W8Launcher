.class Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1;
.super Landroid/os/Handler;
.source "LockScreenPaperTypeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1;->this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;

    .line 299
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 303
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 304
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;

    .line 305
    .local v7, vh:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;
    const/4 v6, 0x0

    .line 306
    .local v6, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, v7, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->ti:Lcom/lx/launcher8/setting/bean/TypeInfo;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/bean/TypeInfo;->getImgurl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1;->this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;)Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v0

    iget-object v1, v7, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->ti:Lcom/lx/launcher8/setting/bean/TypeInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/TypeInfo;->getImgurl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->ti:Lcom/lx/launcher8/setting/bean/TypeInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/TypeInfo;->getImgurl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 308
    new-instance v3, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1$1;

    invoke-direct {v3, p0, v7}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1$1;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1;Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;)V

    .line 321
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1;->this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;)Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    move-result-object v4

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->screenWidth:I
    invoke-static {v4}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$1(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)I

    move-result v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1;->this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;)Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    move-result-object v5

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->screenHeight:I
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$2(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)I

    move-result v5

    .line 307
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 323
    :cond_0
    if-eqz v6, :cond_1

    .line 324
    iget-object v0, v7, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 325
    iget-object v0, v7, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 326
    iget-object v0, v7, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    iget-object v0, v7, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #vh:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;
    :cond_1
    return-void
.end method
