.class Lcom/lx/launcher8/util/WpAdUtil$2;
.super Ljava/lang/Object;
.source "WpAdUtil.java"

# interfaces
.implements Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/util/WpAdUtil;->setAd(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/util/WpAdUtil;

.field private final synthetic val$close:Landroid/widget/ImageView;

.field private final synthetic val$show:Landroid/widget/ImageView;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/util/WpAdUtil;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/util/WpAdUtil$2;->this$0:Lcom/lx/launcher8/util/WpAdUtil;

    iput-object p2, p0, Lcom/lx/launcher8/util/WpAdUtil$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/lx/launcher8/util/WpAdUtil$2;->val$show:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/lx/launcher8/util/WpAdUtil$2;->val$close:Landroid/widget/ImageView;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lx/launcher8/util/WpAdUtil$2;->this$0:Lcom/lx/launcher8/util/WpAdUtil;

    iget-object v1, p0, Lcom/lx/launcher8/util/WpAdUtil$2;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/lx/launcher8/util/WpAdUtil$2;->val$show:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lx/launcher8/util/WpAdUtil$2;->val$close:Landroid/widget/ImageView;

    #calls: Lcom/lx/launcher8/util/WpAdUtil;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/lx/launcher8/util/WpAdUtil;->access$1(Lcom/lx/launcher8/util/WpAdUtil;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 146
    return-void
.end method

.method public onLoading(I)V
    .locals 0
    .parameter "loadSize"

    .prologue
    .line 141
    return-void
.end method
