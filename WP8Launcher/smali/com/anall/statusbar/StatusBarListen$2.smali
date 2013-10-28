.class Lcom/anall/statusbar/StatusBarListen$2;
.super Ljava/lang/Object;
.source "StatusBarListen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anall/statusbar/StatusBarListen;->createView()Landroid/view/View;
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
.field final synthetic this$0:Lcom/anall/statusbar/StatusBarListen;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/StatusBarListen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarListen$2;->this$0:Lcom/anall/statusbar/StatusBarListen;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/16 v3, 0x8

    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;

    .line 76
    .local v0, vh:Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarListen$2;->this$0:Lcom/anall/statusbar/StatusBarListen;

    #getter for: Lcom/anall/statusbar/StatusBarListen;->mLastExpendView:Landroid/view/View;
    invoke-static {v1}, Lcom/anall/statusbar/StatusBarListen;->access$5(Lcom/anall/statusbar/StatusBarListen;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->checkLayout:Landroid/view/View;

    if-eq v1, v2, :cond_2

    .line 78
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarListen$2;->this$0:Lcom/anall/statusbar/StatusBarListen;

    #getter for: Lcom/anall/statusbar/StatusBarListen;->mLastExpendView:Landroid/view/View;
    invoke-static {v1}, Lcom/anall/statusbar/StatusBarListen;->access$5(Lcom/anall/statusbar/StatusBarListen;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarListen$2;->this$0:Lcom/anall/statusbar/StatusBarListen;

    #getter for: Lcom/anall/statusbar/StatusBarListen;->mLastExpendView:Landroid/view/View;
    invoke-static {v1}, Lcom/anall/statusbar/StatusBarListen;->access$5(Lcom/anall/statusbar/StatusBarListen;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarListen$2;->this$0:Lcom/anall/statusbar/StatusBarListen;

    iget-object v2, v0, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->checkLayout:Landroid/view/View;

    #setter for: Lcom/anall/statusbar/StatusBarListen;->mLastExpendView:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/anall/statusbar/StatusBarListen;->access$6(Lcom/anall/statusbar/StatusBarListen;Landroid/view/View;)V

    .line 81
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarListen$2;->this$0:Lcom/anall/statusbar/StatusBarListen;

    #getter for: Lcom/anall/statusbar/StatusBarListen;->mLastExpendView:Landroid/view/View;
    invoke-static {v1}, Lcom/anall/statusbar/StatusBarListen;->access$5(Lcom/anall/statusbar/StatusBarListen;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarListen$2;->this$0:Lcom/anall/statusbar/StatusBarListen;

    #getter for: Lcom/anall/statusbar/StatusBarListen;->mLastExpendView:Landroid/view/View;
    invoke-static {v1}, Lcom/anall/statusbar/StatusBarListen;->access$5(Lcom/anall/statusbar/StatusBarListen;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarListen$2;->this$0:Lcom/anall/statusbar/StatusBarListen;

    const/4 v2, 0x0

    #setter for: Lcom/anall/statusbar/StatusBarListen;->mLastExpendView:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/anall/statusbar/StatusBarListen;->access$6(Lcom/anall/statusbar/StatusBarListen;Landroid/view/View;)V

    goto :goto_0
.end method
