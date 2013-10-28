.class Lcom/lx/launcher8/setting/wp8/TopAppAct$1;
.super Ljava/lang/Object;
.source "TopAppAct.java"

# interfaces
.implements Lcom/app/common/task/BaseTask$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/TopAppAct;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/TopAppAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskEnd(IZLandroid/os/Message;)V
    .locals 12
    .parameter "type"
    .parameter "reload"
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 42
    iget-object v6, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v6, :cond_0

    .line 43
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    #calls: Lcom/lx/launcher8/setting/wp8/TopAppAct;->initDownload(I)V
    invoke-static {v6, v7}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->access$0(Lcom/lx/launcher8/setting/wp8/TopAppAct;I)V

    .line 76
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lx/launcher8/bll/TopAppCateBll;

    .line 48
    .local v0, bll:Lcom/lx/launcher8/bll/TopAppCateBll;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/lx/launcher8/bll/TopAppCateBll;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 49
    :cond_1
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    #calls: Lcom/lx/launcher8/setting/wp8/TopAppAct;->initDownload(I)V
    invoke-static {v6, v7}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->access$0(Lcom/lx/launcher8/setting/wp8/TopAppAct;I)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0}, Lcom/lx/launcher8/bll/TopAppCateBll;->getCateList()Ljava/util/List;

    move-result-object v3

    .line 54
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/bean/TopAppCateInfo;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 55
    :cond_3
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    #calls: Lcom/lx/launcher8/setting/wp8/TopAppAct;->initDownload(I)V
    invoke-static {v6, v7}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->access$0(Lcom/lx/launcher8/setting/wp8/TopAppAct;I)V

    goto :goto_0

    .line 59
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 60
    .local v5, size:I
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    invoke-static {v6}, Lcom/lx/launcher8/util/Utils;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, language:Ljava/lang/String;
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    new-instance v7, Ljava/util/ArrayList;

    add-int/lit8 v8, v5, 0x2

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    #setter for: Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;
    invoke-static {v6, v7}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->access$1(Lcom/lx/launcher8/setting/wp8/TopAppAct;Ljava/util/ArrayList;)V

    .line 62
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v5, :cond_5

    .line 75
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    #calls: Lcom/lx/launcher8/setting/wp8/TopAppAct;->initDownload(I)V
    invoke-static {v6, v5}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->access$0(Lcom/lx/launcher8/setting/wp8/TopAppAct;I)V

    goto :goto_0

    .line 63
    :cond_5
    if-nez v1, :cond_7

    .line 64
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->access$2(Lcom/lx/launcher8/setting/wp8/TopAppAct;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;

    invoke-virtual {v6}, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;->getCateId()I

    move-result v6

    invoke-virtual {v0}, Lcom/lx/launcher8/bll/TopAppCateBll;->getAppList()Ljava/util/List;

    move-result-object v10

    .line 65
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    iget-object v11, v11, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v8, v9, v6, v10, v11}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppAct;ILjava/util/List;Landroid/support/v4/view/ViewPager;)V

    .line 64
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :goto_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;

    invoke-virtual {v6}, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;->getEName()Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, name:Ljava/lang/String;
    const-string v6, "zh"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 71
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;

    invoke-virtual {v6}, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;->getCateName()Ljava/lang/String;

    move-result-object v4

    .line 73
    :cond_6
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->access$2(Lcom/lx/launcher8/setting/wp8/TopAppAct;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v6}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    .end local v4           #name:Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->access$2(Lcom/lx/launcher8/setting/wp8/TopAppAct;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;

    invoke-virtual {v6}, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;->getCateId()I

    move-result v6

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    iget-object v11, v11, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v8, v9, v6, v10, v11}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppAct;ILjava/util/List;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public onTaskStart(IZ)V
    .locals 3
    .parameter "type"
    .parameter "reload"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    const v2, 0x7f0a0266

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    return-void
.end method
