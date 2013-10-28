.class Lcom/lx/launcher8/setting/PageSetAct$3;
.super Ljava/lang/Object;
.source "PageSetAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/PageSetAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/PageSetAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/PageSetAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/PageSetAct$3;->this$0:Lcom/lx/launcher8/setting/PageSetAct;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct$3;->this$0:Lcom/lx/launcher8/setting/PageSetAct;

    #getter for: Lcom/lx/launcher8/setting/PageSetAct;->mMenuView:Lcom/lx/launcher8/setting/view/MenuBar;
    invoke-static {v0}, Lcom/lx/launcher8/setting/PageSetAct;->access$0(Lcom/lx/launcher8/setting/PageSetAct;)Lcom/lx/launcher8/setting/view/MenuBar;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lx/launcher8/setting/view/MenuBar;->setClickedView(I)V

    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct$3;->this$0:Lcom/lx/launcher8/setting/PageSetAct;

    invoke-virtual {v0, p3}, Lcom/lx/launcher8/setting/PageSetAct;->scrollToPage(I)V

    .line 64
    return-void
.end method
