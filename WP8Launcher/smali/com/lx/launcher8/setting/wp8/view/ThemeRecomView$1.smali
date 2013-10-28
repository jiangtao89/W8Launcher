.class Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$1;
.super Ljava/lang/Object;
.source "ThemeRecomView.java"

# interfaces
.implements Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;
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
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRefreshText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mCurPage:Lcom/app/common/bll/CPage;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)Lcom/app/common/bll/CPage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mCurPage:Lcom/app/common/bll/CPage;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)Lcom/app/common/bll/CPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/common/bll/CPage;->hasNextPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$1(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-result-object v0

    const v1, 0x7f0a026c

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPullDownToRefresh(Lcom/lx/launcher8/view/PullToRefreshBase;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lx/launcher8/view/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, refreshView:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->onLoadTask(Z)V

    .line 174
    return-void
.end method

.method public onPullUpToRefresh(Lcom/lx/launcher8/view/PullToRefreshBase;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lx/launcher8/view/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, refreshView:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->onLoadTask(Z)V

    .line 179
    return-void
.end method
