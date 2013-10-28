.class public Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "ThemeOnlineListAct.java"


# static fields
.field public static final EXTRA_SEARCH:Ljava/lang/String; = "extral_search"

.field public static final EXTRA_TITILE:Ljava/lang/String; = "extral_titles"

.field public static final EXTRA_URLS:Ljava/lang/String; = "extral_urls"


# instance fields
.field private mFontView:Landroid/view/View;

.field private mViewList:Ljava/util/ArrayList;
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
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 29
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mTitleBar:Landroid/widget/TextView;

    const v9, 0x7f0a01a1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 30
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 31
    .local v1, intent:Landroid/content/Intent;
    const-string v8, "extral_titles"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 32
    .local v5, titles:[Ljava/lang/String;
    const-string v8, "extral_urls"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 33
    .local v7, urls:[Ljava/lang/String;
    const-string v8, "extral_search"

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 35
    .local v2, search:Z
    if-nez v2, :cond_1

    .line 36
    array-length v3, v7

    .line 37
    .local v3, size:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mViewList:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 51
    .end local v0           #i:I
    .end local v3           #size:I
    :goto_1
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v8}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->onViewToFont(Landroid/view/View;)V

    .line 52
    return-void

    .line 39
    .restart local v0       #i:I
    .restart local v3       #size:I
    :cond_0
    new-instance v4, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;

    aget-object v8, v7, v0

    invoke-direct {v4, p0, v8}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;Ljava/lang/String;)V

    .line 40
    .local v4, sv:Lcom/lx/launcher8/setting/view/SettingView;
    aget-object v8, v5, v0

    invoke-interface {v4}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 41
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .end local v0           #i:I
    .end local v3           #size:I
    .end local v4           #sv:Lcom/lx/launcher8/setting/view/SettingView;
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mViewList:Ljava/util/ArrayList;

    .line 45
    const-string v6, "http://client.anall.cn/wp8/ThemeList.aspx"

    .line 46
    .local v6, url:Ljava/lang/String;
    new-instance v4, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;

    invoke-direct {v4, p0, v6, v11}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;Ljava/lang/String;Z)V

    .line 47
    .restart local v4       #sv:Lcom/lx/launcher8/setting/view/SettingView;
    const v8, 0x7f0a01c3

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 48
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, result:Z
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 100
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 101
    :cond_1
    return-void

    .line 95
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/view/SettingView;

    .line 96
    .local v1, sv:Lcom/lx/launcher8/setting/view/SettingView;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mFontView:Landroid/view/View;

    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 97
    invoke-interface {v1, p1, p2, p3}, Lcom/lx/launcher8/setting/view/SettingView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onDestroy()V

    .line 70
    new-instance v0, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;)V

    .line 75
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct$1;->start()V

    .line 77
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, result:Z
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    :goto_0
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 113
    :goto_1
    return v2

    .line 106
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/view/SettingView;

    .line 107
    .local v1, sv:Lcom/lx/launcher8/setting/view/SettingView;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mFontView:Landroid/view/View;

    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 108
    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->onBack()Z

    move-result v2

    or-int/2addr v0, v2

    .line 109
    goto :goto_0

    .line 113
    .end local v1           #sv:Lcom/lx/launcher8/setting/view/SettingView;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 56
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onResume()V

    .line 57
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mFontView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    .line 59
    .local v0, sv:Lcom/lx/launcher8/setting/view/SettingView;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mFontView:Landroid/view/View;

    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 60
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->onResume()V

    goto :goto_0
.end method

.method protected onViewToFont(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mFontView:Landroid/view/View;

    .line 83
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    .line 84
    .local v0, sv:Lcom/lx/launcher8/setting/view/SettingView;
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 85
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getBottomBtns()[Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->addBottomBtn([Landroid/widget/LinearLayout;)V

    .line 86
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->onViewMovingFront()V

    goto :goto_0
.end method
