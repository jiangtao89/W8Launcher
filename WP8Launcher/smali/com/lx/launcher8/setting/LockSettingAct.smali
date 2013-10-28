.class public Lcom/lx/launcher8/setting/LockSettingAct;
.super Landroid/app/Activity;
.source "LockSettingAct.java"


# instance fields
.field private mAppListSettingView:Lcom/lx/launcher8/setting/view/AppListSettingView;

.field private mLockSettingView:Lcom/lx/launcher8/setting/view/LockSettingView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/lx/launcher8/setting/LockSettingAct;->mLockSettingView:Lcom/lx/launcher8/setting/view/LockSettingView;

    .line 14
    iput-object v0, p0, Lcom/lx/launcher8/setting/LockSettingAct;->mAppListSettingView:Lcom/lx/launcher8/setting/view/AppListSettingView;

    .line 10
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockSettingAct;->mLockSettingView:Lcom/lx/launcher8/setting/view/LockSettingView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/view/LockSettingView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 38
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v0, Lcom/lx/launcher8/setting/view/LockSettingView;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/view/LockSettingView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockSettingAct;->mLockSettingView:Lcom/lx/launcher8/setting/view/LockSettingView;

    .line 20
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockSettingAct;->mLockSettingView:Lcom/lx/launcher8/setting/view/LockSettingView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockSettingView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockSettingAct;->setContentView(Landroid/view/View;)V

    .line 23
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 28
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockSettingAct;->mLockSettingView:Lcom/lx/launcher8/setting/view/LockSettingView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockSettingView;->onResume()V

    .line 30
    return-void
.end method
