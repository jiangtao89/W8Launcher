.class public Lcom/lx/launcher8/BaseFragmentAct;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseFragmentAct.java"


# instance fields
.field private hasFocus:Z

.field private isOnResume:Z

.field protected mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

.field private mStatusBarHeight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private changeNotificationStatus(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    const/16 v6, 0x400

    const/4 v5, 0x0

    .line 120
    iget-object v3, p0, Lcom/lx/launcher8/BaseFragmentAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v2

    .line 121
    .local v2, statusStyle:I
    invoke-virtual {p0}, Lcom/lx/launcher8/BaseFragmentAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 122
    iget-object v3, p0, Lcom/lx/launcher8/BaseFragmentAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v1

    .line 123
    .local v1, paper:I
    if-nez v1, :cond_0

    const/4 v0, -0x1

    .line 124
    .local v0, bgColor:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/BaseFragmentAct;->setContentBackColor(I)V

    .line 125
    packed-switch v2, :pswitch_data_0

    .line 146
    invoke-virtual {p0}, Lcom/lx/launcher8/BaseFragmentAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    .line 149
    :goto_1
    return-void

    .line 123
    .end local v0           #bgColor:I
    :cond_0
    const/high16 v0, -0x100

    goto :goto_0

    .line 127
    .restart local v0       #bgColor:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/lx/launcher8/BaseFragmentAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    .line 130
    :pswitch_1
    invoke-virtual {p0}, Lcom/lx/launcher8/BaseFragmentAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/lx/launcher8/BaseFragmentAct;->mStatusBarHeight:I

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 131
    invoke-virtual {p0}, Lcom/lx/launcher8/BaseFragmentAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 134
    :pswitch_2
    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/lx/launcher8/BaseFragmentAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/BaseFragmentAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 139
    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 143
    :pswitch_3
    invoke-virtual {p0}, Lcom/lx/launcher8/BaseFragmentAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startStatusBar()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/lx/launcher8/BaseFragmentAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v0

    .line 100
    .local v0, statusStyle:I
    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 104
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/anall/statusbar/BarService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/BaseFragmentAct;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 108
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/anall/statusbar/BarService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/BaseFragmentAct;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 19
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/BaseFragmentAct;->requestWindowFeature(I)Z

    .line 20
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    new-instance v2, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/BaseFragmentAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 23
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/BaseFragmentAct;->setResult(I)V

    .line 24
    const v1, 0x7f0e000b

    .line 25
    .local v1, themeId:I
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/BaseFragmentAct;->setTheme(I)V

    .line 28
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 29
    .local v0, heightId:I
    if-nez v0, :cond_0

    .line 30
    const/16 v2, 0x28

    iput v2, p0, Lcom/lx/launcher8/BaseFragmentAct;->mStatusBarHeight:I

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/BaseFragmentAct;->mStatusBarHeight:I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 62
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/BaseFragmentAct;->isOnResume:Z

    .line 45
    iget-boolean v0, p0, Lcom/lx/launcher8/BaseFragmentAct;->hasFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lx/launcher8/BaseFragmentAct;->isOnResume:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/lx/launcher8/BaseFragmentAct;->startStatusBar()V

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lx/launcher8/BaseFragmentAct;->changeNotificationStatus(Z)V

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.anall.activity.launcher"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/BaseFragmentAct;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    :cond_0
    sget-boolean v0, Lcom/lx/launcher8/NoSearchAct;->mStop:Z

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/lx/launcher8/BaseFragmentAct;->finish()V

    .line 52
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    iput-boolean v0, p0, Lcom/lx/launcher8/BaseFragmentAct;->isOnResume:Z

    .line 73
    iput-boolean v0, p0, Lcom/lx/launcher8/BaseFragmentAct;->hasFocus:Z

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.anall.launcher.activity.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/BaseFragmentAct;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 67
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 93
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 82
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lx/launcher8/BaseFragmentAct;->hasFocus:Z

    .line 83
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/lx/launcher8/BaseFragmentAct;->isOnResume:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/lx/launcher8/BaseFragmentAct;->startStatusBar()V

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lx/launcher8/BaseFragmentAct;->changeNotificationStatus(Z)V

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.anall.activity.launcher"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/BaseFragmentAct;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    :cond_0
    return-void

    .line 82
    :cond_1
    iget-boolean v0, p0, Lcom/lx/launcher8/BaseFragmentAct;->hasFocus:Z

    goto :goto_0
.end method

.method protected reFreshTheme(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/lx/launcher8/BaseFragmentAct;->finish()V

    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/BaseFragmentAct;->startActivity(Landroid/content/Intent;)V

    .line 39
    return-void
.end method

.method protected setContentBackColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/lx/launcher8/BaseFragmentAct;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    return-void
.end method
