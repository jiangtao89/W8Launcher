.class Lcom/lx/launcher8/util/ImageLoader$2;
.super Ljava/lang/Thread;
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

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$height:I

.field private final synthetic val$listener:Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;

.field private final synthetic val$savePath:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/lx/launcher8/util/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;IILandroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/util/ImageLoader$2;->this$0:Lcom/lx/launcher8/util/ImageLoader;

    iput-object p2, p0, Lcom/lx/launcher8/util/ImageLoader$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/lx/launcher8/util/ImageLoader$2;->val$savePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/lx/launcher8/util/ImageLoader$2;->val$listener:Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;

    iput p5, p0, Lcom/lx/launcher8/util/ImageLoader$2;->val$width:I

    iput p6, p0, Lcom/lx/launcher8/util/ImageLoader$2;->val$height:I

    iput-object p7, p0, Lcom/lx/launcher8/util/ImageLoader$2;->val$handler:Landroid/os/Handler;

    .line 67
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lx/launcher8/util/ImageLoader$2;->this$0:Lcom/lx/launcher8/util/ImageLoader;

    iget-object v1, p0, Lcom/lx/launcher8/util/ImageLoader$2;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/lx/launcher8/util/ImageLoader$2;->val$savePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/lx/launcher8/util/ImageLoader$2;->val$listener:Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;

    iget v4, p0, Lcom/lx/launcher8/util/ImageLoader$2;->val$width:I

    iget v5, p0, Lcom/lx/launcher8/util/ImageLoader$2;->val$height:I

    #calls: Lcom/lx/launcher8/util/ImageLoader;->getURLBitmap(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;
    invoke-static/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->access$1(Lcom/lx/launcher8/util/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 72
    .local v6, bitmap:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 73
    .local v7, message:Landroid/os/Message;
    const/4 v0, 0x0

    iput v0, v7, Landroid/os/Message;->what:I

    .line 74
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/lx/launcher8/util/ImageLoader$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void
.end method
