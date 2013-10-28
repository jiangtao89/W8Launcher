.class Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;
.super Landroid/os/Handler;
.source "GalleryPickAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/GalleryPickAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    .line 259
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 260
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x15e

    .line 263
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->access$1(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 264
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 265
    invoke-static {v1, v5, v5}, Lcom/lx/launcher8/util/DynTileManager;->getLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    .local v0, bt:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 267
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    iget-object v3, v3, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mUIHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 268
    .local v2, uiMsg:Landroid/os/Message;
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 269
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "bitmap"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 270
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 271
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 274
    .end local v0           #bt:Landroid/graphics/Bitmap;
    .end local v2           #uiMsg:Landroid/os/Message;
    :cond_0
    return-void
.end method
