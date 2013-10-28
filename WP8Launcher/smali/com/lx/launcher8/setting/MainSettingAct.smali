.class public Lcom/lx/launcher8/setting/MainSettingAct;
.super Lcom/lx/launcher8/setting/PageSetAct;
.source "MainSettingAct.java"


# static fields
.field public static final EXTRAL_PAGE:Ljava/lang/String; = "extral_page"


# instance fields
.field private mAppListSettingView:Lcom/lx/launcher8/setting/view/AppListSettingView;

.field private mDeskSettingView:Lcom/lx/launcher8/setting/view/DeskSettingView;

.field private mLockSettingView:Lcom/lx/launcher8/setting/view/LockSettingView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/lx/launcher8/setting/PageSetAct;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 40
    if-nez p2, :cond_1

    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/PageSetAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/MainSettingAct;->mDeskSettingView:Lcom/lx/launcher8/setting/view/DeskSettingView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/view/DeskSettingView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/setting/MainSettingAct;->mLockSettingView:Lcom/lx/launcher8/setting/view/LockSettingView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/view/LockSettingView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/setting/MainSettingAct;->mAppListSettingView:Lcom/lx/launcher8/setting/view/AppListSettingView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/view/AppListSettingView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/lx/launcher8/setting/PageSetAct;->onResume()V

    .line 34
    iget-object v0, p0, Lcom/lx/launcher8/setting/MainSettingAct;->mDeskSettingView:Lcom/lx/launcher8/setting/view/DeskSettingView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/DeskSettingView;->onResume()V

    .line 35
    iget-object v0, p0, Lcom/lx/launcher8/setting/MainSettingAct;->mLockSettingView:Lcom/lx/launcher8/setting/view/LockSettingView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockSettingView;->onResume()V

    .line 36
    iget-object v0, p0, Lcom/lx/launcher8/setting/MainSettingAct;->mAppListSettingView:Lcom/lx/launcher8/setting/view/AppListSettingView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/AppListSettingView;->onResume()V

    .line 37
    return-void
.end method

.method protected onSeekChange(Lcom/lx/launcher8/view/SeekButton;Z)V
    .locals 0
    .parameter "v"
    .parameter "enable"

    .prologue
    .line 57
    return-void
.end method

.method protected setupViews()V
    .locals 4

    .prologue
    .line 20
    new-instance v1, Lcom/lx/launcher8/setting/view/DeskSettingView;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/DeskSettingView;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/MainSettingAct;->mDeskSettingView:Lcom/lx/launcher8/setting/view/DeskSettingView;

    .line 21
    const v1, 0x7f0a000d

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/MainSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/MainSettingAct;->mDeskSettingView:Lcom/lx/launcher8/setting/view/DeskSettingView;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/view/DeskSettingView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/lx/launcher8/setting/MainSettingAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 22
    new-instance v1, Lcom/lx/launcher8/setting/view/LockSettingView;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/LockSettingView;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/MainSettingAct;->mLockSettingView:Lcom/lx/launcher8/setting/view/LockSettingView;

    .line 23
    const v1, 0x7f0a00c2

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/MainSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/MainSettingAct;->mLockSettingView:Lcom/lx/launcher8/setting/view/LockSettingView;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/view/LockSettingView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/lx/launcher8/setting/MainSettingAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 24
    new-instance v1, Lcom/lx/launcher8/setting/view/AppListSettingView;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/AppListSettingView;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/MainSettingAct;->mAppListSettingView:Lcom/lx/launcher8/setting/view/AppListSettingView;

    .line 25
    const v1, 0x7f0a002a

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/MainSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/MainSettingAct;->mAppListSettingView:Lcom/lx/launcher8/setting/view/AppListSettingView;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/view/AppListSettingView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/lx/launcher8/setting/MainSettingAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 27
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/MainSettingAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extral_page"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 28
    .local v0, page:I
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/MainSettingAct;->scrollToPage(I)V

    .line 29
    return-void
.end method
