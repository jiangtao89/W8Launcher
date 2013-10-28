.class Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$1;
.super Ljava/lang/Object;
.source "ThemeTypeView.java"

# interfaces
.implements Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRefreshText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRefresh(Lcom/lx/launcher8/view/PullToRefreshBase;)V
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
    .line 150
    .local p1, refreshView:Lcom/lx/launcher8/view/PullToRefreshBase;,"Lcom/lx/launcher8/view/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->onLoadTask(Z)V

    .line 151
    return-void
.end method
