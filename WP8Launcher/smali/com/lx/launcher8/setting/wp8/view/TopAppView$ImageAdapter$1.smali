.class Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$1;
.super Ljava/lang/Object;
.source "TopAppView.java"

# interfaces
.implements Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;

.field private final synthetic val$h:Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$1;->val$h:Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$1;->val$h:Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/lx/launcher8/util/TopAppUtil;->setBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 340
    return-void
.end method

.method public onLoading(I)V
    .locals 0
    .parameter "loadSize"

    .prologue
    .line 335
    return-void
.end method
