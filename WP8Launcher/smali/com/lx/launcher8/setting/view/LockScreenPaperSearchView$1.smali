.class Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$1;
.super Ljava/lang/Object;
.source "LockScreenPaperSearchView.java"

# interfaces
.implements Lcom/lx/launcher8/task/OnLoadingOverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$1;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingOver(Lcom/app/common/bll/BllXmlPull;)V
    .locals 3
    .parameter "bll"

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 132
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 127
    check-cast v0, Lcom/lx/launcher8/bll/SearchKeyBll;

    .line 128
    .local v0, searchKeyBll:Lcom/lx/launcher8/bll/SearchKeyBll;
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$1;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    iget-object v2, v0, Lcom/lx/launcher8/bll/SearchKeyBll;->searchKeys:Ljava/util/ArrayList;

    #setter for: Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->searchKeys:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;Ljava/util/ArrayList;)V

    .line 129
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$1;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->mKeywordsFlow:Lcom/lx/launcher8/view/KeywordsFlow;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->access$1(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;)Lcom/lx/launcher8/view/KeywordsFlow;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$1;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->searchKeys:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->access$2(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/KeywordsFlow;->setKeyWord(Ljava/util/ArrayList;)V

    .line 130
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$1;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->mKeywordsFlow:Lcom/lx/launcher8/view/KeywordsFlow;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->access$1(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;)Lcom/lx/launcher8/view/KeywordsFlow;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/KeywordsFlow;->go2Show(I)Z

    goto :goto_0
.end method
