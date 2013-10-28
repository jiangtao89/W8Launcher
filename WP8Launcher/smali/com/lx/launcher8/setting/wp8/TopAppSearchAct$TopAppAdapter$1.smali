.class Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$1;
.super Ljava/lang/Object;
.source "TopAppSearchAct.java"

# interfaces
.implements Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

.field private final synthetic val$h:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$1;->val$h:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;)Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$1;->val$h:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    #calls: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->setBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, p1}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$7(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 344
    return-void
.end method

.method public onLoading(I)V
    .locals 0
    .parameter "loadSize"

    .prologue
    .line 339
    return-void
.end method
