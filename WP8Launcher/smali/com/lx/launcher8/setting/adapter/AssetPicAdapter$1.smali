.class Lcom/lx/launcher8/setting/adapter/AssetPicAdapter$1;
.super Landroid/os/Handler;
.source "AssetPicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    .line 109
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 113
    iget v3, p1, Landroid/os/Message;->what:I

    .line 114
    .local v3, position:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/widget/ImageView;

    .line 115
    .local v2, iv:Landroid/widget/ImageView;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    #getter for: Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->parentPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->access$0(Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    #getter for: Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->paths:[Ljava/lang/String;
    invoke-static {v5}, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->access$1(Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, abPath:Ljava/lang/String;
    iget-object v4, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    #getter for: Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->access$2(Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 117
    .local v1, bit:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->access$3()Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    :cond_0
    return-void
.end method
