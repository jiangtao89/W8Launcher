.class Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2$1;
.super Ljava/lang/Object;
.source "TopAppDetailView.java"

# interfaces
.implements Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->onTaskEnd(IZLandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;

.field private final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2$1;->val$iv:Landroid/widget/ImageView;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2$1;->val$iv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/lx/launcher8/util/TopAppUtil;->setBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 170
    return-void
.end method

.method public onLoading(I)V
    .locals 0
    .parameter "loadSize"

    .prologue
    .line 165
    return-void
.end method
