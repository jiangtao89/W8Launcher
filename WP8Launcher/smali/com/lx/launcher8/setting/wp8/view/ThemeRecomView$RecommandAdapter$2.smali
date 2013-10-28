.class Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$2;
.super Ljava/lang/Object;
.source "ThemeRecomView.java"

# interfaces
.implements Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;

.field private final synthetic val$h:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$2;->this$1:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$2;->val$h:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$2;->this$1:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$2;->val$h:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter$ViewHolder;->paperIv:Landroid/widget/ImageView;

    #calls: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->setBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, p1}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 307
    return-void
.end method

.method public onLoading(I)V
    .locals 0
    .parameter "loadSize"

    .prologue
    .line 302
    return-void
.end method
