.class Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$1;
.super Ljava/lang/Object;
.source "ThemeOnlineView.java"

# interfaces
.implements Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;

.field private final synthetic val$h:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$1;->val$h:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 334
    if-eqz p1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$1;->val$h:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter$ViewHolder;->screenShotTv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 337
    :cond_0
    return-void
.end method

.method public onLoading(I)V
    .locals 0
    .parameter "loadSize"

    .prologue
    .line 341
    return-void
.end method
