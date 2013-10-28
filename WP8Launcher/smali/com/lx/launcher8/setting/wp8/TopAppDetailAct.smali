.class public Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "TopAppDetailAct.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "app_id"


# instance fields
.field private mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

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
    .line 18
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "app_id"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 28
    .local v0, appId:I
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mTitleBar:Landroid/widget/TextView;

    const v2, 0x7f0a0281

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mViewLists:Ljava/util/ArrayList;

    .line 30
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mViewLists:Ljava/util/ArrayList;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    invoke-direct {v2, p0, v0, v3}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mViewLists:Ljava/util/ArrayList;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    invoke-direct {v2, p0, v0, v4}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    const v1, 0x7f0a0284

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 33
    const v1, 0x7f0a0285

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 35
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->onViewToFont(Landroid/view/View;)V

    .line 36
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, result:Z
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 110
    if-nez v0, :cond_1

    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 113
    :cond_1
    return-void

    .line 105
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/view/SettingView;

    .line 106
    .local v1, sv:Lcom/lx/launcher8/setting/view/SettingView;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mFontView:Landroid/view/View;

    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 107
    invoke-interface {v1, p1, p2, p3}, Lcom/lx/launcher8/setting/view/SettingView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onDestroy()V

    .line 77
    new-instance v0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;)V

    .line 82
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct$1;->start()V

    .line 83
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, result:Z
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    :goto_0
    if-eqz v0, :cond_2

    .line 125
    const/4 v2, 0x1

    .line 127
    :goto_1
    return v2

    .line 118
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/view/SettingView;

    .line 119
    .local v1, sv:Lcom/lx/launcher8/setting/view/SettingView;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mFontView:Landroid/view/View;

    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 120
    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->onBack()Z

    move-result v2

    or-int/2addr v0, v2

    .line 121
    goto :goto_0

    .line 127
    .end local v1           #sv:Lcom/lx/launcher8/setting/view/SettingView;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onPause()V

    .line 62
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 68
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    .line 72
    :cond_1
    return-void

    .line 62
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    .line 63
    .local v0, sv:Lcom/lx/launcher8/setting/view/SettingView;
    instance-of v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    if-eqz v2, :cond_0

    .line 64
    check-cast v0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    .end local v0           #sv:Lcom/lx/launcher8/setting/view/SettingView;
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->onPause()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 40
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onResume()V

    .line 41
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->setRequestedOrientation(I)V

    .line 42
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mFontView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 51
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    if-eqz v1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    .line 55
    :cond_2
    new-instance v1, Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/download/DownloadChangeBroadcast;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    .line 56
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "app_download_broadcast_action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    return-void

    .line 43
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    .line 44
    .local v0, sv:Lcom/lx/launcher8/setting/view/SettingView;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mFontView:Landroid/view/View;

    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 45
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->onResume()V

    goto :goto_0
.end method

.method protected onViewToFont(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mFontView:Landroid/view/View;

    .line 88
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 100
    :goto_1
    return-void

    .line 88
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    .line 89
    .local v0, sv:Lcom/lx/launcher8/setting/view/SettingView;
    instance-of v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    if-eqz v2, :cond_0

    .line 90
    check-cast v0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    .end local v0           #sv:Lcom/lx/launcher8/setting/view/SettingView;
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->onPause()V

    goto :goto_0

    .line 93
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    .line 94
    .restart local v0       #sv:Lcom/lx/launcher8/setting/view/SettingView;
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 95
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getBottomBtns()[Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->addBottomBtn([Landroid/widget/LinearLayout;)V

    .line 96
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->onViewMovingFront()V

    goto :goto_1
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    return-void

    .line 131
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    .line 132
    .local v0, sv:Lcom/lx/launcher8/setting/view/SettingView;
    instance-of v2, v0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    if-eqz v2, :cond_0

    .line 133
    check-cast v0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    .end local v0           #sv:Lcom/lx/launcher8/setting/view/SettingView;
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->refresh()V

    goto :goto_0
.end method
