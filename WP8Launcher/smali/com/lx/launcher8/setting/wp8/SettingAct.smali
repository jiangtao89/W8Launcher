.class public Lcom/lx/launcher8/setting/wp8/SettingAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "SettingAct.java"


# static fields
.field public static final EXTRAL_PAGE:Ljava/lang/String; = "extral_page"


# instance fields
.field private mAppListSettingView:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;

.field private mDeskSettingView:Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;

.field private mLockSettingView:Lcom/lx/launcher8/setting/wp8/view/LockSettingView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingAct;->mTitleBar:Landroid/widget/TextView;

    const v1, 0x7f0a0008

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/SettingAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingAct;->mDeskSettingView:Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;

    .line 23
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/SettingAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingAct;->mDeskSettingView:Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/SettingAct;->addPage(Ljava/lang/String;Landroid/view/View;)V





    .line 26
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingAct;->mAppListSettingView:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;

    .line 27
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/SettingAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingAct;->mAppListSettingView:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/SettingAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 29
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extral_page"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/SettingAct;->whichPage:I

    .line 30
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 41
    if-nez p2, :cond_1

    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingAct;->mDeskSettingView:Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0


    .line 51
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingAct;->mAppListSettingView:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onResume()V

    .line 35
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingAct;->mDeskSettingView:Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->onResume()V

  

    .line 37
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingAct;->mAppListSettingView:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->onResume()V

    .line 38
    return-void
.end method
