.class Lcom/lx/launcher8/setting/GalleryPickAct$3$1;
.super Ljava/lang/Object;
.source "GalleryPickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/GalleryPickAct$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/GalleryPickAct$3;

.field private final synthetic val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/GalleryPickAct$3;Ljava/lang/String;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3$1;->this$1:Lcom/lx/launcher8/setting/GalleryPickAct$3;

    iput-object p2, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900dc

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3$1;->val$path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/util/DynTileManager;->deleteGalleryItem(Ljava/lang/String;)Z

    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3$1;->this$1:Lcom/lx/launcher8/setting/GalleryPickAct$3;

    #getter for: Lcom/lx/launcher8/setting/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/GalleryPickAct$3;->access$0(Lcom/lx/launcher8/setting/GalleryPickAct$3;)Lcom/lx/launcher8/setting/GalleryPickAct;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/GalleryPickAct;->access$1(Lcom/lx/launcher8/setting/GalleryPickAct;)Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->scanFiles()I

    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3$1;->this$1:Lcom/lx/launcher8/setting/GalleryPickAct$3;

    #getter for: Lcom/lx/launcher8/setting/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/GalleryPickAct$3;->access$0(Lcom/lx/launcher8/setting/GalleryPickAct$3;)Lcom/lx/launcher8/setting/GalleryPickAct;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/GalleryPickAct;->access$1(Lcom/lx/launcher8/setting/GalleryPickAct;)Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->notifyDataSetChanged()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->dismiss()V

    .line 83
    return-void
.end method
