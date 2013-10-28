.class Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1$1;
.super Ljava/lang/Object;
.source "GalleryPickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;

.field private final synthetic val$isDefault:Z


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;

    iput-boolean p2, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1$1;->val$isDefault:Z

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1$1;->val$isDefault:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/util/DynTileManager;->deleteGallery()V

    .line 145
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;->access$0(Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->access$1(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->removeAll()V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;->access$0(Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    move-result-object v0

    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->resetPath(Ljava/lang/String;)V

    goto :goto_0
.end method
