.class Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;
.super Landroid/os/Handler;
.source "GalleryPickAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/GalleryPickAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/GalleryPickAct;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/GalleryPickAct;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    .line 244
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 245
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x15e

    .line 248
    iget-object v3, p0, Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    #getter for: Lcom/lx/launcher8/setting/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;
    invoke-static {v3}, Lcom/lx/launcher8/setting/GalleryPickAct;->access$1(Lcom/lx/launcher8/setting/GalleryPickAct;)Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 249
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 250
    invoke-static {v1, v5, v5}, Lcom/lx/launcher8/util/DynTileManager;->getLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    .local v0, bt:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 252
    iget-object v3, p0, Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    iget-object v3, v3, Lcom/lx/launcher8/setting/GalleryPickAct;->mUIHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 253
    .local v2, uiMsg:Landroid/os/Message;
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 254
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "bitmap"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 255
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 256
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 259
    .end local v0           #bt:Landroid/graphics/Bitmap;
    .end local v2           #uiMsg:Landroid/os/Message;
    :cond_0
    return-void
.end method
