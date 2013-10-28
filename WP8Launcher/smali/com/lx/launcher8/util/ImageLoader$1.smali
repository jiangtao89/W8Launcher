.class Lcom/lx/launcher8/util/ImageLoader$1;
.super Landroid/os/Handler;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/util/ImageLoader;

.field private final synthetic val$listener:Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/util/ImageLoader;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/util/ImageLoader$1;->this$0:Lcom/lx/launcher8/util/ImageLoader;

    iput-object p2, p0, Lcom/lx/launcher8/util/ImageLoader$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/lx/launcher8/util/ImageLoader$1;->val$listener:Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;

    .line 57
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 61
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 62
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 63
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/lx/launcher8/util/ImageLoader$1;->this$0:Lcom/lx/launcher8/util/ImageLoader;

    #getter for: Lcom/lx/launcher8/util/ImageLoader;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;
    invoke-static {v1}, Lcom/lx/launcher8/util/ImageLoader;->access$0(Lcom/lx/launcher8/util/ImageLoader;)Lcom/lx/launcher8/util/BitmapManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/util/ImageLoader$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/lx/launcher8/util/BitmapManager;->addCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 64
    iget-object v1, p0, Lcom/lx/launcher8/util/ImageLoader$1;->val$listener:Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/util/ImageLoader$1;->val$listener:Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;

    invoke-interface {v1, v0}, Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;->onLoaded(Landroid/graphics/Bitmap;)V

    .line 66
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method
