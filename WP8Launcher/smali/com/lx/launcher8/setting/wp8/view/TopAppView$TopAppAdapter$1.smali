.class Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$1;
.super Ljava/lang/Object;
.source "TopAppView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    .line 401
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
    .line 404
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    move-result-object v1

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$7(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdCount:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$9(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)I

    move-result v2

    rem-int v2, p3, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getAppId()I

    move-result v2

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$7(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    move-result-object v3

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdCount:I
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$9(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)I

    move-result v3

    rem-int v3, p3, v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/bean/TopAppInfo;

    .line 405
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getPkName()Ljava/lang/String;

    move-result-object v0

    .line 404
    #calls: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->openUri(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$13(Lcom/lx/launcher8/setting/wp8/view/TopAppView;ILjava/lang/String;)V

    .line 406
    return-void
.end method
