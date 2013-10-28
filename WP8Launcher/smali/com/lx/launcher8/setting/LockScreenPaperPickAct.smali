.class public Lcom/lx/launcher8/setting/LockScreenPaperPickAct;
.super Lcom/lx/launcher8/setting/PageSetAct;
.source "LockScreenPaperPickAct.java"


# instance fields
.field private mLockScreenPaperLocalView:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

.field private mLockScreenPaperTabHostView:Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lcom/lx/launcher8/setting/PageSetAct;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperPickAct;->mLockScreenPaperLocalView:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    .line 15
    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperPickAct;->mLockScreenPaperTabHostView:Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;

    .line 12
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperPickAct;->mLockScreenPaperLocalView:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/PageSetAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 48
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/lx/launcher8/setting/PageSetAct;->onDestroy()V

    .line 35
    new-instance v0, Lcom/lx/launcher8/setting/LockScreenPaperPickAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/LockScreenPaperPickAct$1;-><init>(Lcom/lx/launcher8/setting/LockScreenPaperPickAct;)V

    .line 41
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/LockScreenPaperPickAct$1;->start()V

    .line 42
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/lx/launcher8/setting/PageSetAct;->onResume()V

    .line 28
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperPickAct;->mLockScreenPaperLocalView:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->onResume()V

    .line 29
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperPickAct;->mLockScreenPaperTabHostView:Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->onResume()V

    .line 30
    return-void
.end method

.method protected onSeekChange(Lcom/lx/launcher8/view/SeekButton;Z)V
    .locals 0
    .parameter "v"
    .parameter "enable"

    .prologue
    .line 53
    return-void
.end method

.method protected setupViews()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperPickAct;->mLockScreenPaperLocalView:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    .line 20
    const v0, 0x7f0a00f0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenPaperPickAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperPickAct;->mLockScreenPaperLocalView:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/LockScreenPaperPickAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 21
    new-instance v0, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperPickAct;->mLockScreenPaperTabHostView:Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;

    .line 22
    const v0, 0x7f0a00f1

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenPaperPickAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperPickAct;->mLockScreenPaperTabHostView:Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperTabHostView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/LockScreenPaperPickAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 23
    return-void
.end method
