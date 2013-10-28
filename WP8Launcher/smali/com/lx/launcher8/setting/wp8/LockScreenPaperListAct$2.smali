.class Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$2;
.super Ljava/lang/Object;
.source "LockScreenPaperListAct.java"

# interfaces
.implements Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;
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
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRefreshText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mCurPage:Lcom/app/common/bll/CPage;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$2(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)Lcom/app/common/bll/CPage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mCurPage:Lcom/app/common/bll/CPage;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$2(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)Lcom/app/common/bll/CPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/common/bll/CPage;->hasNextPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    const v1, 0x7f0a026c

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 310
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
    .line 297
    .local p1, refreshView:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<Landroid/widget/GridView;>;"
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    #calls: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->onRefresh()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$0(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)V

    .line 298
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
    .line 302
    .local p1, refreshView:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<Landroid/widget/GridView;>;"
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    #calls: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->onLoadMore()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$1(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)V

    .line 303
    return-void
.end method
