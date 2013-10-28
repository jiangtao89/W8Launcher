.class public Lcom/lx/launcher8/setting/wp8/TopAppAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "TopAppAct.java"


# static fields
.field public static final VIEW_DOWNLOAD:Ljava/lang/String; = "view_download"


# instance fields
.field private mFontView:Landroid/view/View;

.field private mViewLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/setting/view/SettingView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/TopAppAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->initDownload(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/TopAppAct;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/TopAppAct;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initDownload(I)V
    .locals 5
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 167
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "view_download"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 168
    .local v0, page:I
    if-ne v0, v4, :cond_0

    .line 169
    move v0, p1

    .line 171
    :cond_0
    iput v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->whichPage:I

    .line 173
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    invoke-direct {v2, p0, v3}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppAct;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    invoke-direct {v2, p0, v4}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppAct;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const v1, 0x7f0a028a

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 179
    const v1, 0x7f0a028b

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 180
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->onViewToFont(Landroid/view/View;)V

    .line 182
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->initSingleView()V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_2
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->initAction()V

    goto :goto_0
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mTitleBar:Landroid/widget/TextView;

    const v1, 0x7f0a0281

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 34
    new-instance v0, Lcom/lx/launcher8/task/TopAppCateTask;

    const-string v1, "http://client.anall.cn/wp8/TopAppCate.aspx"

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/task/TopAppCateTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/TopAppAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppAct;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/TopAppCateTask;->setTaskListener(Lcom/app/common/task/BaseTask$TaskListener;)Lcom/app/common/task/BaseTask;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/app/common/task/BaseTask;->exec()Z

    .line 78
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, result:Z
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 144
    if-nez v0, :cond_1

    .line 145
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 147
    :cond_1
    return-void

    .line 139
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/view/SettingView;

    .line 140
    .local v1, sv:Lcom/lx/launcher8/setting/view/SettingView;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mFontView:Landroid/view/View;

    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 141
    invoke-interface {v1, p1, p2, p3}, Lcom/lx/launcher8/setting/view/SettingView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onDestroy()V

    .line 109
    new-instance v0, Lcom/lx/launcher8/setting/wp8/TopAppAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/TopAppAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppAct;)V

    .line 114
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/TopAppAct$2;->start()V

    .line 115
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, result:Z
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 160
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 161
    const/4 v2, 0x1

    .line 163
    :goto_1
    return v2

    .line 153
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/view/SettingView;

    .line 154
    .local v1, sv:Lcom/lx/launcher8/setting/view/SettingView;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mFontView:Landroid/view/View;

    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 155
    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->onBack()Z

    move-result v2

    or-int/2addr v0, v2

    .line 156
    goto :goto_0

    .line 163
    .end local v1           #sv:Lcom/lx/launcher8/setting/view/SettingView;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onPause()V

    .line 97
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
    return-void

    .line 97
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    .line 98
    .local v0, sv:Lcom/lx/launcher8/setting/view/SettingView;
    instance-of v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    if-eqz v2, :cond_2

    .line 99
    check-cast v0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    .end local v0           #sv:Lcom/lx/launcher8/setting/view/SettingView;
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->onPause()V

    goto :goto_0

    .line 100
    .restart local v0       #sv:Lcom/lx/launcher8/setting/view/SettingView;
    :cond_2
    instance-of v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    if-eqz v2, :cond_0

    .line 101
    check-cast v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    .end local v0           #sv:Lcom/lx/launcher8/setting/view/SettingView;
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->onPause()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onResume()V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->setRequestedOrientation(I)V

    .line 84
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mFontView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 92
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    .line 86
    .local v0, sv:Lcom/lx/launcher8/setting/view/SettingView;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mFontView:Landroid/view/View;

    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 87
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->onResume()V

    goto :goto_0
.end method

.method protected onViewToFont(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mFontView:Landroid/view/View;

    .line 120
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 134
    :goto_1
    return-void

    .line 120
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    .line 121
    .local v0, sv:Lcom/lx/launcher8/setting/view/SettingView;
    instance-of v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    if-eqz v2, :cond_3

    .line 122
    check-cast v0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    .end local v0           #sv:Lcom/lx/launcher8/setting/view/SettingView;
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->onPause()V

    goto :goto_0

    .line 123
    .restart local v0       #sv:Lcom/lx/launcher8/setting/view/SettingView;
    :cond_3
    instance-of v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    if-eqz v2, :cond_0

    .line 124
    check-cast v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    .end local v0           #sv:Lcom/lx/launcher8/setting/view/SettingView;
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->onPause()V

    goto :goto_0

    .line 127
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    .line 128
    .restart local v0       #sv:Lcom/lx/launcher8/setting/view/SettingView;
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 129
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getBottomBtns()[Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->addBottomBtn([Landroid/widget/LinearLayout;)V

    .line 130
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->onViewMovingFront()V

    goto :goto_1
.end method
