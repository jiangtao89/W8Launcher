.class Lcom/lx/launcher8/view/MutiChooseView$1;
.super Ljava/lang/Object;
.source "MutiChooseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/MutiChooseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/MutiChooseView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/MutiChooseView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/MutiChooseView$1;->this$0:Lcom/lx/launcher8/view/MutiChooseView;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/view/MutiChooseView$1;->this$0:Lcom/lx/launcher8/view/MutiChooseView;

    #getter for: Lcom/lx/launcher8/view/MutiChooseView;->isOpen:Z
    invoke-static {v0}, Lcom/lx/launcher8/view/MutiChooseView;->access$0(Lcom/lx/launcher8/view/MutiChooseView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/view/MutiChooseView$1;->this$0:Lcom/lx/launcher8/view/MutiChooseView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lx/launcher8/view/MutiChooseView$1;->this$0:Lcom/lx/launcher8/view/MutiChooseView;

    #getter for: Lcom/lx/launcher8/view/MutiChooseView;->mSelect:I
    invoke-static {v2}, Lcom/lx/launcher8/view/MutiChooseView;->access$1(Lcom/lx/launcher8/view/MutiChooseView;)I

    move-result v2

    #calls: Lcom/lx/launcher8/view/MutiChooseView;->changeItemsVisible(ZI)V
    invoke-static {v0, v1, v2}, Lcom/lx/launcher8/view/MutiChooseView;->access$2(Lcom/lx/launcher8/view/MutiChooseView;ZI)V

    .line 69
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    iget-object v0, p0, Lcom/lx/launcher8/view/MutiChooseView$1;->this$0:Lcom/lx/launcher8/view/MutiChooseView;

    #getter for: Lcom/lx/launcher8/view/MutiChooseView;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v0}, Lcom/lx/launcher8/view/MutiChooseView;->access$3(Lcom/lx/launcher8/view/MutiChooseView;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 71
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/view/MutiChooseView$1;->this$0:Lcom/lx/launcher8/view/MutiChooseView;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    #setter for: Lcom/lx/launcher8/view/MutiChooseView;->mSelect:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/view/MutiChooseView;->access$4(Lcom/lx/launcher8/view/MutiChooseView;I)V

    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/view/MutiChooseView$1;->this$0:Lcom/lx/launcher8/view/MutiChooseView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lx/launcher8/view/MutiChooseView$1;->this$0:Lcom/lx/launcher8/view/MutiChooseView;

    #getter for: Lcom/lx/launcher8/view/MutiChooseView;->mSelect:I
    invoke-static {v2}, Lcom/lx/launcher8/view/MutiChooseView;->access$1(Lcom/lx/launcher8/view/MutiChooseView;)I

    move-result v2

    #calls: Lcom/lx/launcher8/view/MutiChooseView;->changeItemsVisible(ZI)V
    invoke-static {v0, v1, v2}, Lcom/lx/launcher8/view/MutiChooseView;->access$2(Lcom/lx/launcher8/view/MutiChooseView;ZI)V

    .line 73
    iget-object v0, p0, Lcom/lx/launcher8/view/MutiChooseView$1;->this$0:Lcom/lx/launcher8/view/MutiChooseView;

    #getter for: Lcom/lx/launcher8/view/MutiChooseView;->mItemSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Lcom/lx/launcher8/view/MutiChooseView;->access$5(Lcom/lx/launcher8/view/MutiChooseView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/lx/launcher8/view/MutiChooseView$1;->this$0:Lcom/lx/launcher8/view/MutiChooseView;

    #getter for: Lcom/lx/launcher8/view/MutiChooseView;->mItemSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Lcom/lx/launcher8/view/MutiChooseView;->access$5(Lcom/lx/launcher8/view/MutiChooseView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lx/launcher8/view/MutiChooseView$1;->this$0:Lcom/lx/launcher8/view/MutiChooseView;

    #getter for: Lcom/lx/launcher8/view/MutiChooseView;->mSelect:I
    invoke-static {v2}, Lcom/lx/launcher8/view/MutiChooseView;->access$1(Lcom/lx/launcher8/view/MutiChooseView;)I

    move-result v3

    iget-object v2, p0, Lcom/lx/launcher8/view/MutiChooseView$1;->this$0:Lcom/lx/launcher8/view/MutiChooseView;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/MutiChooseView;->getId()I

    move-result v2

    int-to-long v4, v2

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method
