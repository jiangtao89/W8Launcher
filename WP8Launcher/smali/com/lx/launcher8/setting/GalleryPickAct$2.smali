.class Lcom/lx/launcher8/setting/GalleryPickAct$2;
.super Landroid/os/Handler;
.source "GalleryPickAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/GalleryPickAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/GalleryPickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/GalleryPickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/GalleryPickAct$2;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    .line 225
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 227
    iget v3, p1, Landroid/os/Message;->what:I

    .line 229
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    .line 230
    .local v1, iv:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 232
    .local v2, pos:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_0

    .line 233
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "bitmap"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 234
    .local v0, bt:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/lx/launcher8/setting/GalleryPickAct$2;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    #getter for: Lcom/lx/launcher8/setting/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;
    invoke-static {v3}, Lcom/lx/launcher8/setting/GalleryPickAct;->access$1(Lcom/lx/launcher8/setting/GalleryPickAct;)Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v0}, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->cacheBitmap(ILandroid/graphics/Bitmap;)V

    .line 235
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    .end local v0           #bt:Landroid/graphics/Bitmap;
    .end local v2           #pos:Ljava/lang/Integer;
    :cond_0
    return-void
.end method
