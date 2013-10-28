.class Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;
.super Ljava/lang/Object;
.source "TopAppDetailView.java"

# interfaces
.implements Lcom/app/common/task/BaseTask$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->onViewMovingFront()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    .line 118
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
    const/16 v4, 0x41

    const/4 v11, 0x1

    const/4 v3, 0x0

    const v10, 0x7f0200d6

    .line 125
    iget-object v7, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/lx/launcher8/bll/TopAppDetailBll;

    .line 126
    .local v7, bll:Lcom/lx/launcher8/bll/TopAppDetailBll;
    if-nez v7, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #setter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->isLoading:Z
    invoke-static {v0, v3}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$8(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;Z)V

    .line 131
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    invoke-virtual {v7}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getAppInfo()Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v1

    #setter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$9(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;Lcom/lx/launcher8/setting/bean/TopAppInfo;)V

    .line 132
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    invoke-virtual {v7}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getPicList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mPicList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$10(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;Ljava/util/List;)V

    .line 133
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #calls: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->createBottom()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$11(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)V

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mPageIndex:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$12(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)I

    move-result v0

    if-ne v0, v11, :cond_4

    .line 137
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$13(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$13(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;->notifyDataSetChanged()V

    .line 142
    :goto_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$15(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$13(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    invoke-direct {v1, v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)V

    #setter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$14(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;)V

    goto :goto_1

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$16(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvVsName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$17(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getVsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvFileSize:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$18(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getFileSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$19(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvDownCount:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$20(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getDownCount()I

    move-result v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$1(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lx/launcher8/util/Utils;->trans2Times(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvAppProfile:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$21(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getIntro()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvAppProfile:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$21(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 154
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 155
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvUpdatesTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$22(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvUpdates:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$23(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvUpdates:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$23(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$24(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/ImageView;

    move-result-object v9

    .line 161
    .local v9, iv:Landroid/widget/ImageView;
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getIcon()Ljava/lang/String;

    move-result-object v1

    .line 162
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2$1;

    invoke-direct {v3, p0, v9}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;Landroid/widget/ImageView;)V

    move v5, v4

    .line 161
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 172
    .local v6, bit:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    invoke-static {v9, v6, v0}, Lcom/lx/launcher8/util/TopAppUtil;->setBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 174
    const/4 v8, 0x1

    .local v8, i:I
    :goto_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getStar()I

    move-result v0

    if-gt v8, v0, :cond_0

    .line 175
    if-ne v8, v11, :cond_7

    .line 176
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvStar1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$25(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 177
    :cond_7
    const/4 v0, 0x2

    if-ne v8, v0, :cond_8

    .line 178
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvStar2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$26(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 179
    :cond_8
    const/4 v0, 0x3

    if-ne v8, v0, :cond_9

    .line 180
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvStar3:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$27(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 181
    :cond_9
    const/4 v0, 0x4

    if-ne v8, v0, :cond_a

    .line 182
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvStar4:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$28(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 183
    :cond_a
    const/4 v0, 0x5

    if-ne v8, v0, :cond_6

    .line 184
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvStar5:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$29(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method public onTaskStart(IZ)V
    .locals 0
    .parameter "type"
    .parameter "reload"

    .prologue
    .line 121
    return-void
.end method
