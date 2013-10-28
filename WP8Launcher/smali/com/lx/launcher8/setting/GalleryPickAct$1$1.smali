.class Lcom/lx/launcher8/setting/GalleryPickAct$1$1;
.super Ljava/lang/Object;
.source "GalleryPickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/GalleryPickAct$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/GalleryPickAct$1;

.field private final synthetic val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

.field private final synthetic val$isDefault:Z


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/GalleryPickAct$1;ZLcom/lx/launcher8/setting/view/DialogSaveTheme;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1$1;->this$1:Lcom/lx/launcher8/setting/GalleryPickAct$1;

    iput-boolean p2, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1$1;->val$isDefault:Z

    iput-object p3, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900dc

    if-ne v0, v1, :cond_0

    .line 148
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1$1;->val$isDefault:Z

    if-eqz v0, :cond_1

    .line 149
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/util/DynTileManager;->deleteGallery()V

    .line 150
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1$1;->this$1:Lcom/lx/launcher8/setting/GalleryPickAct$1;

    #getter for: Lcom/lx/launcher8/setting/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/GalleryPickAct$1;->access$0(Lcom/lx/launcher8/setting/GalleryPickAct$1;)Lcom/lx/launcher8/setting/GalleryPickAct;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/GalleryPickAct;->access$1(Lcom/lx/launcher8/setting/GalleryPickAct;)Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->removeAll()V

    .line 155
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->dismiss()V

    .line 156
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1$1;->this$1:Lcom/lx/launcher8/setting/GalleryPickAct$1;

    #getter for: Lcom/lx/launcher8/setting/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/GalleryPickAct$1;->access$0(Lcom/lx/launcher8/setting/GalleryPickAct$1;)Lcom/lx/launcher8/setting/GalleryPickAct;

    move-result-object v0

    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/GalleryPickAct;->resetPath(Ljava/lang/String;)V

    goto :goto_0
.end method
