.class Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;
.super Ljava/lang/Object;
.source "ThemeTypeView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeMainAct;)V
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
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 60
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mShowIndex:I
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->access$1(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)I

    move-result v3

    if-lez v3, :cond_0

    .line 61
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;

    .line 62
    .local v0, cate:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;
    new-array v2, v5, [Ljava/lang/String;

    .line 63
    .local v2, urls:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://client.anall.cn/wp8/ThemeList.aspx?classid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 64
    new-array v1, v5, [Ljava/lang/String;

    .line 65
    .local v1, titles:[Ljava/lang/String;
    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;->name:Ljava/lang/String;

    aput-object v3, v1, v6

    .line 66
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    invoke-virtual {v3, v1, v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->startOnlineList([Ljava/lang/String;[Ljava/lang/String;)V

    .line 90
    .end local v0           #cate:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;
    .end local v1           #titles:[Ljava/lang/String;
    .end local v2           #urls:[Ljava/lang/String;
    :goto_0
    return-void

    .line 68
    :cond_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 70
    :pswitch_0
    new-array v1, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-result-object v3

    const v4, 0x7f0a01a5

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 71
    .restart local v1       #titles:[Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "http://client.anall.cn/wp8/ThemeList.aspx?sort=2"

    aput-object v3, v2, v6

    .line 72
    .restart local v2       #urls:[Ljava/lang/String;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    invoke-virtual {v3, v1, v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->startOnlineList([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v1           #titles:[Ljava/lang/String;
    .end local v2           #urls:[Ljava/lang/String;
    :pswitch_1
    new-array v1, v9, [Ljava/lang/String;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-result-object v3

    const v4, 0x7f0a01a7

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-result-object v3

    const v4, 0x7f0a01a8

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 76
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-result-object v3

    const v4, 0x7f0a01a9

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-result-object v3

    const v4, 0x7f0a01aa

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    .line 77
    .restart local v1       #titles:[Ljava/lang/String;
    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "http://client.anall.cn/wp8/ThemeList.aspx?sort=3"

    aput-object v3, v2, v6

    const-string v3, "http://client.anall.cn/wp8/ThemeList.aspx?sort=4"

    aput-object v3, v2, v5

    .line 78
    const-string v3, "http://client.anall.cn/wp8/ThemeList.aspx?sort=5"

    aput-object v3, v2, v7

    const-string v3, "http://client.anall.cn/wp8/ThemeList.aspx?sort=6"

    aput-object v3, v2, v8

    .line 79
    .restart local v2       #urls:[Ljava/lang/String;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    invoke-virtual {v3, v1, v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->startOnlineList([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v1           #titles:[Ljava/lang/String;
    .end local v2           #urls:[Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    #setter for: Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mShowIndex:I
    invoke-static {v3, v5}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->access$2(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;I)V

    .line 83
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    #calls: Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->changeToPullMode()V
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->access$3(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)V

    .line 84
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAdapters:[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->access$4(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;

    move-result-object v3

    aget-object v3, v3, v5

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAdapters:[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->access$4(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 85
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    invoke-virtual {v3, v6}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->onLoadTask(Z)V

    goto/16 :goto_0

    .line 86
    :cond_2
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->access$5(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)Lcom/lx/launcher8/view/PullToRefreshListView;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAdapters:[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->access$4(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/view/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
