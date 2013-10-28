.class Lcom/lx/launcher8/setting/wp8/GalleryPickAct$2;
.super Landroid/os/Handler;
.source "GalleryPickAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/GalleryPickAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    .line 240
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 242
    iget v3, p1, Landroid/os/Message;->what:I

    .line 244
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    .line 245
    .local v1, iv:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 247
    .local v2, pos:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "bitmap"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 249
    .local v0, bt:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->access$1(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->cacheBitmap(ILandroid/graphics/Bitmap;)V

    .line 250
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 254
    .end local v0           #bt:Landroid/graphics/Bitmap;
    .end local v2           #pos:Ljava/lang/Integer;
    :cond_0
    return-void
.end method
