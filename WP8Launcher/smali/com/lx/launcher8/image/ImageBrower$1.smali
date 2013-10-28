.class Lcom/lx/launcher8/image/ImageBrower$1;
.super Landroid/os/Handler;
.source "ImageBrower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/image/ImageBrower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/image/ImageBrower;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/image/ImageBrower;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/image/ImageBrower$1;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    .line 125
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 127
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 130
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/image/Image;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 132
    iget-object v4, p0, Lcom/lx/launcher8/image/ImageBrower$1;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    const v5, 0x7f0a01d3

    #calls: Lcom/lx/launcher8/image/ImageBrower;->showHitText(I)V
    invoke-static {v4, v5}, Lcom/lx/launcher8/image/ImageBrower;->access$0(Lcom/lx/launcher8/image/ImageBrower;I)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v4, p0, Lcom/lx/launcher8/image/ImageBrower$1;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    const v5, 0x7f0a01d4

    #calls: Lcom/lx/launcher8/image/ImageBrower;->showHitText(I)V
    invoke-static {v4, v5}, Lcom/lx/launcher8/image/ImageBrower;->access$0(Lcom/lx/launcher8/image/ImageBrower;I)V

    goto :goto_0

    .line 138
    :cond_3
    iget-object v4, p0, Lcom/lx/launcher8/image/ImageBrower$1;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    #calls: Lcom/lx/launcher8/image/ImageBrower;->hideHitText()V
    invoke-static {v4}, Lcom/lx/launcher8/image/ImageBrower;->access$1(Lcom/lx/launcher8/image/ImageBrower;)V

    .line 139
    iget-object v4, p0, Lcom/lx/launcher8/image/ImageBrower$1;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    #getter for: Lcom/lx/launcher8/image/ImageBrower;->mAdpater:Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;
    invoke-static {v4}, Lcom/lx/launcher8/image/ImageBrower;->access$2(Lcom/lx/launcher8/image/ImageBrower;)Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;->updateData(Ljava/util/List;)V

    goto :goto_0

    .line 142
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/image/Image;>;"
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/widget/ImageView;

    .line 143
    .local v3, view:Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    .line 144
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 145
    .local v2, realPos:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "bitmap"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 147
    .local v0, bt:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 148
    iget-object v4, p0, Lcom/lx/launcher8/image/ImageBrower$1;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    #getter for: Lcom/lx/launcher8/image/ImageBrower;->mAdpater:Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;
    invoke-static {v4}, Lcom/lx/launcher8/image/ImageBrower;->access$2(Lcom/lx/launcher8/image/ImageBrower;)Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v0}, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;->cacheBitmap(ILandroid/graphics/Bitmap;)V

    .line 149
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_0

    .line 150
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
