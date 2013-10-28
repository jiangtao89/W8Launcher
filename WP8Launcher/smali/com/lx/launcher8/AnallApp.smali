.class public Lcom/lx/launcher8/AnallApp;
.super Lcom/app/common/BaseApplication;
.source "AnallApp.java"


# static fields
.field private static INSTANCE:Lcom/lx/launcher8/AnallApp;


# instance fields
.field private mIconCache:Lcom/anall/app/bean/IconCache;

.field public mLauncher:Lcom/lx/launcher8/AnallLauncher;

.field private mModel:Lcom/lx/launcher8/db/LauncherModel;

.field private mParamObjs:Ljava/lang/Object;

.field private mSCView:Lcom/lx/launcher8/view/SimpleCellView;

.field private mSpecialValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/app/common/BaseApplication;-><init>()V

    return-void
.end method

.method public static bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Lcom/lx/launcher8/AnallApp;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/lx/launcher8/AnallApp;->INSTANCE:Lcom/lx/launcher8/AnallApp;

    return-object v0
.end method


# virtual methods
.method public compoundCellScreenshot()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lx/launcher8/AnallApp;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/AnallApp;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    invoke-virtual {v0}, Lcom/lx/launcher8/AnallLauncher;->compoundScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getChangeSpecial()I
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/lx/launcher8/AnallApp;->mSpecialValue:I

    .line 125
    .local v0, tmp:I
    const/4 v1, -0x1

    iput v1, p0, Lcom/lx/launcher8/AnallApp;->mSpecialValue:I

    .line 126
    return v0
.end method

.method public getFromId()I
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, pk:Ljava/lang/String;
    const-string v1, "com.lx.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const/4 v1, 0x1

    .line 145
    :goto_0
    return v1

    .line 142
    :cond_0
    const-string v1, "com.lx.launcher8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    const/4 v1, 0x0

    goto :goto_0

    .line 145
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getIconCache()Lcom/anall/app/bean/IconCache;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/AnallApp;->mIconCache:Lcom/anall/app/bean/IconCache;

    return-object v0
.end method

.method public getModel()Lcom/lx/launcher8/db/LauncherModel;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lx/launcher8/AnallApp;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    return-object v0
.end method

.method public getParam()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lx/launcher8/AnallApp;->mParamObjs:Ljava/lang/Object;

    .line 106
    .local v0, temp:Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lx/launcher8/AnallApp;->mParamObjs:Ljava/lang/Object;

    .line 107
    return-object v0
.end method

.method public getPickSpecial()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lx/launcher8/AnallApp;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/AnallApp;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    invoke-virtual {v0}, Lcom/lx/launcher8/AnallLauncher;->getPickSpecialValue()I

    move-result v0

    goto :goto_0
.end method

.method public getSCView()Lcom/lx/launcher8/view/SimpleCellView;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lx/launcher8/AnallApp;->mSCView:Lcom/lx/launcher8/view/SimpleCellView;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0}, Lcom/app/common/BaseApplication;->onCreate()V

    .line 35
    sput-object p0, Lcom/lx/launcher8/AnallApp;->INSTANCE:Lcom/lx/launcher8/AnallApp;

    .line 36
    const-string v1, "3EAC7283FD66491682B5153FCB89649F"

    invoke-static {v1}, Lcom/app/common/config/BaseGlobal;->setKeyWord(Ljava/lang/String;)V

    .line 37
    invoke-static {p0}, Lcom/app/common/config/BaseGlobal;->init(Landroid/content/Context;)V

    .line 38
    const-string v1, "LauncherWP8"

    invoke-static {p0, v1}, Lcom/lx/launcher8/util/BasePath;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    const-string v1, "LauncherWP8"

    invoke-static {p0, v1}, Lcom/app/common/config/BasePath;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    const v1, 0x7f050002

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 43
    new-instance v1, Lcom/anall/app/bean/IconCache;

    invoke-direct {v1, p0}, Lcom/anall/app/bean/IconCache;-><init>(Lcom/lx/launcher8/AnallApp;)V

    iput-object v1, p0, Lcom/lx/launcher8/AnallApp;->mIconCache:Lcom/anall/app/bean/IconCache;

    .line 44
    new-instance v1, Lcom/lx/launcher8/db/LauncherModel;

    iget-object v2, p0, Lcom/lx/launcher8/AnallApp;->mIconCache:Lcom/anall/app/bean/IconCache;

    invoke-direct {v1, p0, v2}, Lcom/lx/launcher8/db/LauncherModel;-><init>(Lcom/lx/launcher8/AnallApp;Lcom/anall/app/bean/IconCache;)V

    iput-object v1, p0, Lcom/lx/launcher8/AnallApp;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/lx/launcher8/AnallApp;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {p0, v1, v0}, Lcom/lx/launcher8/AnallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/lx/launcher8/AnallApp;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {p0, v1, v0}, Lcom/lx/launcher8/AnallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    new-instance v1, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getScreenOrientation()I

    move-result v1

    invoke-static {v1}, Lcom/lx/launcher8/util/Utils;->trans2System(I)I

    move-result v1

    sput v1, Lcom/lx/launcher8/NoSearchAct;->mScreenOrientation:I

    .line 60
    new-instance v1, Lcom/lx/launcher8/task/ShareTask;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/task/ShareTask;-><init>(Landroid/content/Context;)V

    const-string v2, "http://client.anall.cn/wp8/ShareUrl.aspx"

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/task/ShareTask;->setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/ShareTask;

    move-result-object v1

    const-string v2, "check=1"

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/task/ShareTask;->setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/ShareTask;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/task/ShareTask;->setOnLoadingOverListener(Lcom/lx/launcher8/task/OnLoadingOverListener;)Lcom/lx/launcher8/task/ShareTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/task/ShareTask;->exec()Z

    .line 61
    invoke-static {}, Lcom/lx/launcher8/util/WpAdUtil;->getInstance()Lcom/lx/launcher8/util/WpAdUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lx/launcher8/util/WpAdUtil;->loadAd(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/app/common/BaseApplication;->onTerminate()V

    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/AnallApp;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 69
    return-void
.end method

.method public setLauncher(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/db/LauncherModel;
    .locals 1
    .parameter "launcher"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/AnallApp;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/db/LauncherModel;->initialize(Lcom/lx/launcher8/db/LauncherModel$Callbacks;)V

    .line 73
    iput-object p1, p0, Lcom/lx/launcher8/AnallApp;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    .line 74
    iget-object v0, p0, Lcom/lx/launcher8/AnallApp;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    return-object v0
.end method

.method public setParam(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lx/launcher8/AnallApp;->mParamObjs:Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public setSCView(Lcom/lx/launcher8/view/SimpleCellView;)V
    .locals 0
    .parameter "scView"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/lx/launcher8/AnallApp;->mSCView:Lcom/lx/launcher8/view/SimpleCellView;

    .line 135
    return-void
.end method

.method public setSpecialValue(II)V
    .locals 1
    .parameter "old"
    .parameter "newValue"

    .prologue
    .line 120
    xor-int v0, p1, p2

    iput v0, p0, Lcom/lx/launcher8/AnallApp;->mSpecialValue:I

    .line 121
    return-void
.end method
