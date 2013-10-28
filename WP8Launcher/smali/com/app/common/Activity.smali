.class public abstract Lcom/app/common/Activity;
.super Landroid/app/Activity;
.source "Activity.java"


# static fields
.field static final MSG_FIRST_SHOW:I = -0x1

.field private static mActCount:I

.field public static mCurActivity:Lcom/app/common/Activity;

.field private static volatile mIsStopProsses:Z


# instance fields
.field protected bundle:Landroid/os/Bundle;

.field protected bundleReceive:Landroid/os/Bundle;

.field protected mHandler:Landroid/os/Handler;

.field protected mSelf:Lcom/app/common/Activity;

.field protected showStatus:Z

.field protected showTitle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput v0, Lcom/app/common/Activity;->mActCount:I

    .line 27
    sput-boolean v0, Lcom/app/common/Activity;->mIsStopProsses:Z

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/app/common/Activity;->bundle:Landroid/os/Bundle;

    .line 31
    iput-object v0, p0, Lcom/app/common/Activity;->bundleReceive:Landroid/os/Bundle;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/common/Activity;->showTitle:Z

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/common/Activity;->showStatus:Z

    .line 176
    new-instance v0, Lcom/app/common/Activity$1;

    invoke-direct {v0, p0}, Lcom/app/common/Activity$1;-><init>(Lcom/app/common/Activity;)V

    iput-object v0, p0, Lcom/app/common/Activity;->mHandler:Landroid/os/Handler;

    .line 16
    return-void
.end method


# virtual methods
.method protected config()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public createView()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public exec()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public final executeMethodDelay(IJ)V
    .locals 1
    .parameter "codeNum"
    .parameter "delayTime"

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/app/common/Activity;->executeMethodDelay(IJLandroid/os/Bundle;)V

    .line 193
    return-void
.end method

.method public final executeMethodDelay(IJLandroid/os/Bundle;)V
    .locals 2
    .parameter "codeNum"
    .parameter "delayTime"
    .parameter "bundle"

    .prologue
    .line 201
    iget-object v1, p0, Lcom/app/common/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 202
    .local v0, msg:Landroid/os/Message;
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/app/common/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 204
    return-void
.end method

.method public exitSystem()V
    .locals 2

    .prologue
    .line 118
    const/4 v1, 0x1

    sput-boolean v1, Lcom/app/common/Activity;->mIsStopProsses:Z

    .line 120
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/app/common/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 121
    .local v0, manager:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 123
    invoke-virtual {p0}, Lcom/app/common/Activity;->finish()V

    .line 124
    return-void
.end method

.method public getExtras(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/app/common/Activity;->bundleReceive:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/app/common/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/app/common/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public goToHome()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 128
    iget-object v0, p0, Lcom/app/common/Activity;->mSelf:Lcom/app/common/Activity;

    invoke-virtual {v0}, Lcom/app/common/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/app/common/Activity;->mSelf:Lcom/app/common/Activity;

    invoke-virtual {v0}, Lcom/app/common/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/app/common/Activity;->mSelf:Lcom/app/common/Activity;

    invoke-virtual {v0, v1}, Lcom/app/common/Activity;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method protected handleMsg(ILandroid/os/Message;)V
    .locals 0
    .parameter "codeNum"
    .parameter "msg"

    .prologue
    .line 183
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 139
    invoke-virtual {p0}, Lcom/app/common/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/app/common/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 144
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x400

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iput-object p1, p0, Lcom/app/common/Activity;->bundle:Landroid/os/Bundle;

    .line 40
    invoke-virtual {p0}, Lcom/app/common/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 41
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/app/common/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/app/common/Activity;->bundleReceive:Landroid/os/Bundle;

    .line 46
    :goto_0
    iput-object p0, p0, Lcom/app/common/Activity;->mSelf:Lcom/app/common/Activity;

    .line 47
    sget v1, Lcom/app/common/Activity;->mActCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/app/common/Activity;->mActCount:I

    .line 48
    invoke-virtual {p0}, Lcom/app/common/Activity;->config()V

    .line 49
    iget-boolean v1, p0, Lcom/app/common/Activity;->showTitle:Z

    if-nez v1, :cond_0

    .line 50
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/app/common/Activity;->requestWindowFeature(I)Z

    .line 51
    :cond_0
    iget-boolean v1, p0, Lcom/app/common/Activity;->showStatus:Z

    if-nez v1, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/app/common/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/app/common/Activity;->createView()V

    .line 56
    invoke-virtual {p0}, Lcom/app/common/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/app/common/Activity$2;

    invoke-direct {v2, p0}, Lcom/app/common/Activity$2;-><init>(Lcom/app/common/Activity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 68
    return-void

    .line 44
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/app/common/Activity;->bundleReceive:Landroid/os/Bundle;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 109
    sget v0, Lcom/app/common/Activity;->mActCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/app/common/Activity;->mActCount:I

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/app/common/Activity;->mCurActivity:Lcom/app/common/Activity;

    .line 111
    sget v0, Lcom/app/common/Activity;->mActCount:I

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/app/common/Activity;->mIsStopProsses:Z

    .line 113
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 99
    sget-boolean v0, Lcom/app/common/Activity;->mIsStopProsses:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/app/common/Activity;->finish()V

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    sput-object p0, Lcom/app/common/Activity;->mCurActivity:Lcom/app/common/Activity;

    goto :goto_0
.end method

.method public reFresh()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/app/common/Activity;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 152
    return-void
.end method
