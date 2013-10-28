.class Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;
.super Landroid/os/Handler;
.source "ImageBrower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/image/ImageBrower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/image/ImageBrower;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/image/ImageBrower;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    .line 158
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 159
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x15e

    .line 163
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 171
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 172
    .local v3, pos:I
    iget-object v5, p0, Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    #getter for: Lcom/lx/launcher8/image/ImageBrower;->mAdpater:Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;
    invoke-static {v5}, Lcom/lx/launcher8/image/ImageBrower;->access$2(Lcom/lx/launcher8/image/ImageBrower;)Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/image/Image;

    .line 173
    .local v1, image:Lcom/lx/launcher8/image/Image;
    iget-object v5, v1, Lcom/lx/launcher8/image/Image;->mFirstFile:Ljava/lang/String;

    invoke-static {v5, v6, v6}, Lcom/lx/launcher8/util/DynTileManager;->getLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, bt:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    iget-object v5, v5, Lcom/lx/launcher8/image/ImageBrower;->mUIHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 176
    .local v4, uiMsg:Landroid/os/Message;
    iput v3, v4, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "bitmap"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 178
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 181
    .end local v0           #bt:Landroid/graphics/Bitmap;
    .end local v1           #image:Lcom/lx/launcher8/image/Image;
    .end local v3           #pos:I
    :goto_0
    return-void

    .line 165
    .end local v4           #uiMsg:Landroid/os/Message;
    :pswitch_0
    iget-object v5, p0, Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    invoke-virtual {v5}, Lcom/lx/launcher8/image/ImageBrower;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/lx/launcher8/image/ImageManager;->getImageFileList(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v2

    .line 166
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/image/Image;>;"
    iget-object v5, p0, Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    iget-object v5, v5, Lcom/lx/launcher8/image/ImageBrower;->mUIHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 167
    .restart local v4       #uiMsg:Landroid/os/Message;
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 168
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
