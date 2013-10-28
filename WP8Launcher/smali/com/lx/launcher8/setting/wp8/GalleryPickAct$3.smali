.class Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;
.super Ljava/lang/Object;
.source "GalleryPickAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->createView()Landroid/view/View;
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
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
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
    const/4 v4, 0x1

    .line 86
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->access$1(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 107
    :goto_0
    return v4

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->access$1(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, path:Ljava/lang/String;
    new-instance v1, Lcom/lx/launcher8/view/PopupDialog;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    invoke-direct {v1, v2}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    const v3, 0x7f0a01c4

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    const v3, 0x7f0a018f

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    const v3, 0x7f0a0077

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3$1;

    invoke-direct {v3, p0, v0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3$1;-><init>(Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    const v3, 0x7f0a0078

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3$2;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3$2;-><init>(Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;)V

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    goto :goto_0
.end method
