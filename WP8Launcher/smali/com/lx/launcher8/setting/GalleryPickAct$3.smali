.class Lcom/lx/launcher8/setting/GalleryPickAct$3;
.super Ljava/lang/Object;
.source "GalleryPickAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/GalleryPickAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/GalleryPickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/GalleryPickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/GalleryPickAct$3;)Lcom/lx/launcher8/setting/GalleryPickAct;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    .line 66
    iget-object v6, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    #getter for: Lcom/lx/launcher8/setting/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;
    invoke-static {v6}, Lcom/lx/launcher8/setting/GalleryPickAct;->access$1(Lcom/lx/launcher8/setting/GalleryPickAct;)Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;

    move-result-object v6

    iget-object v6, v6, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne p3, v6, :cond_0

    .line 67
    iget-object v6, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/GalleryPickAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-interface {v6, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 90
    :goto_0
    return v8

    .line 70
    :cond_0
    iget-object v6, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    #getter for: Lcom/lx/launcher8/setting/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;
    invoke-static {v6}, Lcom/lx/launcher8/setting/GalleryPickAct;->access$1(Lcom/lx/launcher8/setting/GalleryPickAct;)Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 71
    .local v4, path:Ljava/lang/String;
    new-instance v2, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    iget-object v6, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    const v7, 0x7f0e0005

    invoke-direct {v2, v6, v7}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 72
    .local v2, dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v6, Lcom/lx/launcher8/setting/GalleryPickAct$3$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/lx/launcher8/setting/GalleryPickAct$3$1;-><init>(Lcom/lx/launcher8/setting/GalleryPickAct$3;Ljava/lang/String;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    invoke-virtual {v2, v6}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v6, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    const v7, 0x7f0a01c4

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    const v7, 0x7f0a018f

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, about:Ljava/lang/String;
    iget-object v6, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    const v7, 0x7f0a0077

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, ok:Ljava/lang/String;
    iget-object v6, p0, Lcom/lx/launcher8/setting/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    const v7, 0x7f0a0078

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, cancel:Ljava/lang/String;
    invoke-virtual {v2, v5, v0, v3, v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->createWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    goto :goto_0
.end method
