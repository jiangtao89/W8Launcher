.class Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$2;
.super Ljava/lang/Object;
.source "LockScreenPaperOnlineView.java"

# interfaces
.implements Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2",
        "<",
        "Landroid/widget/GridView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRefreshText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mCurPage:Lcom/app/common/bll/CPage;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->access$2(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)Lcom/app/common/bll/CPage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mCurPage:Lcom/app/common/bll/CPage;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->access$2(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)Lcom/app/common/bll/CPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/common/bll/CPage;->hasNextPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->access$3(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    move-result-object v0

    const v1, 0x7f0a026c

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPullDownToRefresh(Lcom/lx/launcher8/view/PullToRefreshBase;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lx/launcher8/view/PullToRefreshBase",
            "<",
            "Landroid/widget/GridView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, refreshView:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<Landroid/widget/GridView;>;"
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    #calls: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->onRefresh()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)V

    .line 336
    return-void
.end method

.method public onPullUpToRefresh(Lcom/lx/launcher8/view/PullToRefreshBase;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lx/launcher8/view/PullToRefreshBase",
            "<",
            "Landroid/widget/GridView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, refreshView:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<Landroid/widget/GridView;>;"
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    #calls: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->onLoadMore()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->access$1(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)V

    .line 341
    return-void
.end method
