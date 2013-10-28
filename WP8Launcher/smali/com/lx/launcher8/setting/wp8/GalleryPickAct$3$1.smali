.class Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3$1;
.super Ljava/lang/Object;
.source "GalleryPickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3$1;->this$1:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3$1;->val$path:Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3$1;->val$path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3$1;->val$path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 97
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3$1;->this$1:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;

    #getter for: Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;->access$0(Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->access$1(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->scanFiles()I

    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3$1;->this$1:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;

    #getter for: Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;->access$0(Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->access$1(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->notifyDataSetChanged()V

    .line 100
    :cond_0
    return-void
.end method
