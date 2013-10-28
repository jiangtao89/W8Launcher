.class public Lcom/lx/launcher8/NoSearchAct;
.super Landroid/app/Activity;
.source "NoSearchAct.java"


# static fields
.field public static mLauchActCount:I

.field public static mScreenOrientation:I

.field public static mStop:Z


# instance fields
.field protected mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

.field private mStatusBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lx/launcher8/NoSearchAct;->mStop:Z

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private postEnter()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;->startStatusBar()V

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.anall.activity.launcher"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/NoSearchAct;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method private startStatusBar()V
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/lx/launcher8/NoSearchAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v0

    .line 91
    .local v0, statusStyle:I
    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 95
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/anall/statusbar/BarService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/NoSearchAct;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 99
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/anall/statusbar/BarService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/NoSearchAct;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 91
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
.method protected changeNotificationStatus(Z)V
    .locals 8
    .parameter "visible"

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x0

    .line 111
    iget-object v6, p0, Lcom/lx/launcher8/NoSearchAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v2

    .line 112
    .local v2, statusStyle:I
    invoke-virtual {p0}, Lcom/lx/launcher8/NoSearchAct;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 113
    iget-object v6, p0, Lcom/lx/launcher8/NoSearchAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v1

    .line 114
    .local v1, paper:I
    if-nez v1, :cond_0

    const/4 v0, -0x1

    .line 115
    .local v0, bgColor:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/NoSearchAct;->setContentBackColor(I)V

    .line 116
    invoke-virtual {p0}, Lcom/lx/launcher8/NoSearchAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 117
    .local v3, window:Landroid/view/Window;
    packed-switch v2, :pswitch_data_0

    .line 129
    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 132
    :goto_2
    return-void

    .line 114
    .end local v0           #bgColor:I
    .end local v3           #window:Landroid/view/Window;
    :cond_0
    const/high16 v0, -0x100

    goto :goto_0

    .line 119
    .restart local v0       #bgColor:I
    .restart local v3       #window:Landroid/view/Window;
    :pswitch_0
    invoke-virtual {v3, v5}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_2

    .line 122
    :pswitch_1
    if-eqz p1, :cond_1

    :goto_3
    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    goto :goto_2

    :cond_1
    move v4, v5

    goto :goto_3

    .line 126
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget v7, p0, Lcom/lx/launcher8/NoSearchAct;->mStatusBarHeight:I

    invoke-virtual {v6, v4, v7, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance v2, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/NoSearchAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 25
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/NoSearchAct;->setResult(I)V

    .line 27
    const v1, 0x7f0e000b

    .line 28
    .local v1, themeId:I
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/NoSearchAct;->setTheme(I)V

    .line 31
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 32
    .local v0, heightId:I
    if-nez v0, :cond_0

    .line 33
    const/16 v2, 0x28

    iput v2, p0, Lcom/lx/launcher8/NoSearchAct;->mStatusBarHeight:I

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/NoSearchAct;->mStatusBarHeight:I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 67
    sget-boolean v0, Lcom/lx/launcher8/NoSearchAct;->mStop:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/lx/launcher8/NoSearchAct;->finish()V

    .line 69
    :cond_0
    sget v0, Lcom/lx/launcher8/NoSearchAct;->mScreenOrientation:I

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/NoSearchAct;->setRequestedOrientation(I)V

    .line 70
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 57
    sget v0, Lcom/lx/launcher8/NoSearchAct;->mLauchActCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lx/launcher8/NoSearchAct;->mLauchActCount:I

    .line 58
    sget v0, Lcom/lx/launcher8/NoSearchAct;->mLauchActCount:I

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;->postEnter()V

    .line 61
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/NoSearchAct;->changeNotificationStatus(Z)V

    .line 62
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 75
    sget v0, Lcom/lx/launcher8/NoSearchAct;->mLauchActCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lx/launcher8/NoSearchAct;->mLauchActCount:I

    .line 76
    sget v0, Lcom/lx/launcher8/NoSearchAct;->mLauchActCount:I

    if-gtz v0, :cond_0

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.anall.launcher.activity.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/NoSearchAct;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    :cond_0
    return-void
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
    .line 40
    .local p1, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/lx/launcher8/NoSearchAct;->finish()V

    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/NoSearchAct;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method

.method protected setContentBackColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/lx/launcher8/NoSearchAct;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 108
    return-void
.end method
