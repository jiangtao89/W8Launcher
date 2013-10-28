.class public Lcom/lx/launcher8/AnallLauncher;
.super Landroid/app/Activity;
.source "AnallLauncher.java"

# interfaces
.implements Lcom/lx/launcher8/db/LauncherModel$Callbacks;
.implements Lcom/lx/launcher8/view/CellLayout$OnItemClickListener;
.implements Lcom/lx/launcher8/view/CellLayout$OnItemLongClickListener;
.implements Lcom/lx/launcher8/receiver/LauncherNotificationManager$MessageReceiveListener;
.implements Lcom/lx/launcher8/receiver/LauncherNotificationManager$CallReceiveListener;
.implements Lcom/lx/launcher8/receiver/AirPlaneReceiver$OnAirplaneModeChange;


# static fields
.field public static final APPWIDGET_HOST_ID:I = 0x100

.field public static final CELL_DELETE_OR_NOT:Ljava/lang/String; = "cell_delete_or_not"

.field public static final REQUEST_ADD_CELL:I = 0x9

.field public static final REQUEST_BATCH_APP:I = 0xd

.field public static final REQUEST_CREATE_APP:I = 0x5

.field public static final REQUEST_CREATE_APPWIDGET:I = 0x3

.field public static final REQUEST_CREATE_SHORTCUT:I = 0x7

.field public static final REQUEST_EDIT_CELL:I = 0xa

.field public static final REQUEST_EDIT_FOLDER:I = 0xc

.field public static final REQUEST_HIDE_APP:I = 0xb

.field public static final REQUEST_PICK_APP:I = 0x4

.field public static final REQUEST_PICK_APPWIDGET:I = 0x2

.field public static final REQUEST_PICK_SHORTCUT:I = 0x6

.field public static final REQUEST_PICK_SPECIAL:I = 0x8

.field public static final REQUEST_SET_WALLPAPER:I = 0x1

.field static final TAG:Ljava/lang/String; = null

.field static final WALLPAPER_SCREEN_SPAN:I = 0x2

.field public static isRestore:Z


# instance fields
.field private isLedClick:Z

.field private led:Lcom/lx/launcher8/util/LEDManager;

.field mAirReceiver:Lcom/lx/launcher8/receiver/AirPlaneReceiver;

.field mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

.field mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

.field private mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

.field public mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field public mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppsRootLayout:Landroid/widget/RelativeLayout;

.field private mCellLayout:Lcom/lx/launcher8/view/CellLayout;

.field private mDragController:Lcom/lx/launcher8/view/DragController;

.field private mDynViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/view/DynamicCell;",
            ">;"
        }
    .end annotation
.end field

.field mEditCell:Lcom/lx/launcher8/bean/ItemCell;

.field private mEnterRunnable:Ljava/lang/Runnable;

.field private mExitRunnable:Ljava/lang/Runnable;

.field public mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

.field private mFunDialViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/view/SimpleCellView;",
            ">;"
        }
    .end annotation
.end field

.field private mFunSmsViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/view/SimpleCellView;",
            ">;"
        }
    .end annotation
.end field

.field mGridHeadLayout:Landroid/widget/RelativeLayout;

.field mGridSearch:Landroid/widget/ImageView;

.field mGridSort:Landroid/widget/ImageView;

.field mGridTitle:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field mInitAppListIv:Landroid/widget/ImageView;

.field mInitAppListLoading:Lcom/lx/launcher8/view/LoadingText;

.field private mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemLongClick:Landroid/widget/AdapterView$OnItemLongClickListener;

.field mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

.field private mLightSv:Landroid/view/SurfaceView;

.field mMenuOpened:Z

.field private mModel:Lcom/lx/launcher8/db/LauncherModel;

.field private mNetCheckRunnable:Ljava/lang/Runnable;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mOnResumeNeedsLoad:Z

.field private mPaused:Z

.field mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mRecentDialog:Landroid/app/Dialog;

.field private mRestoring:Z

.field private mSOFFReceiver:Landroid/content/BroadcastReceiver;

.field mSaveState:Landroid/os/Bundle;

.field mSearch:Landroid/widget/TextView;

.field mSearchEditText:Landroid/widget/EditText;

.field private mSearchIv:Landroid/widget/ImageView;

.field private mSearchListener:Landroid/view/View$OnClickListener;

.field private mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

.field mSidebar:Landroid/widget/LinearLayout;

.field private mStateBarHideRunnable:Ljava/lang/Runnable;

.field private mStatusBarHeight:I

.field private mTextWatcher:Landroid/text/TextWatcher;

.field mWaitingForResult:Z

.field mWidgetUpView:Lcom/lx/launcher8/view/CellView;

.field private mWorkspace:Lcom/lx/launcher8/view/Workspace;

.field private mWpAd:Landroid/widget/ImageView;

.field private mWpClose:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const-class v0, Lcom/lx/launcher8/AnallLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lx/launcher8/AnallLauncher;->TAG:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 136
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mDynViews:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mFunSmsViews:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mFunDialViews:Ljava/util/ArrayList;

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/AnallLauncher;->mPaused:Z

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    .line 293
    new-instance v0, Lcom/lx/launcher8/AnallLauncher$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/AnallLauncher$1;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mEnterRunnable:Ljava/lang/Runnable;

    .line 301
    new-instance v0, Lcom/lx/launcher8/AnallLauncher$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/AnallLauncher$2;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mExitRunnable:Ljava/lang/Runnable;

    .line 1040
    new-instance v0, Lcom/lx/launcher8/AnallLauncher$3;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/AnallLauncher$3;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1062
    new-instance v0, Lcom/lx/launcher8/AnallLauncher$4;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/AnallLauncher$4;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mItemLongClick:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 1130
    new-instance v0, Lcom/lx/launcher8/AnallLauncher$5;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/AnallLauncher$5;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSearchListener:Landroid/view/View$OnClickListener;

    .line 1156
    new-instance v0, Lcom/lx/launcher8/AnallLauncher$6;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/AnallLauncher$6;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 1167
    new-instance v0, Lcom/lx/launcher8/AnallLauncher$7;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/AnallLauncher$7;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mTextWatcher:Landroid/text/TextWatcher;

    .line 1434
    new-instance v0, Lcom/lx/launcher8/AnallLauncher$8;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/AnallLauncher$8;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 2157
    new-instance v0, Lcom/lx/launcher8/AnallLauncher$9;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/AnallLauncher$9;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mStateBarHideRunnable:Ljava/lang/Runnable;

    .line 2168
    new-instance v0, Lcom/lx/launcher8/AnallLauncher$10;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/AnallLauncher$10;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mNetCheckRunnable:Ljava/lang/Runnable;

    .line 136
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/AnallLauncher;)I
    .locals 1
    .parameter

    .prologue
    .line 203
    iget v0, p0, Lcom/lx/launcher8/AnallLauncher;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/AnallLauncher;Landroid/content/Context;Landroid/content/Intent;Z)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2136
    invoke-direct {p0, p1, p2, p3}, Lcom/lx/launcher8/AnallLauncher;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/lx/launcher8/AnallLauncher;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mStateBarHideRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lx/launcher8/AnallLauncher;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2250
    invoke-direct {p0, p1}, Lcom/lx/launcher8/AnallLauncher;->changeNotificationStatus(Z)V

    return-void
.end method

.method static synthetic access$12(Lcom/lx/launcher8/AnallLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 2179
    invoke-direct {p0}, Lcom/lx/launcher8/AnallLauncher;->launcherNetCheck()V

    return-void
.end method

.method static synthetic access$13(Lcom/lx/launcher8/AnallLauncher;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 2168
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mNetCheckRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/util/LEDManager;
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->led:Lcom/lx/launcher8/util/LEDManager;

    return-object v0
.end method

.method static synthetic access$15(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/view/CellLayout;
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lx/launcher8/AnallLauncher;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1403
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/AnallLauncher;->rebake(ZZ)V

    return-void
.end method

.method static synthetic access$17(Lcom/lx/launcher8/AnallLauncher;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mEnterRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$18(Lcom/lx/launcher8/AnallLauncher;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mFunDialViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$19(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/cfg/AppSetting;
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/db/LauncherModel;
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    return-object v0
.end method

.method static synthetic access$20(Lcom/lx/launcher8/AnallLauncher;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1899
    invoke-direct {p0, p1}, Lcom/lx/launcher8/AnallLauncher;->setFunDialNum(I)V

    return-void
.end method

.method static synthetic access$21(Lcom/lx/launcher8/AnallLauncher;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1886
    invoke-direct {p0, p1}, Lcom/lx/launcher8/AnallLauncher;->setFunSmsNum(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/cfg/DeskSetting;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/AnallLauncher;Lcom/anall/app/bean/AppInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 818
    invoke-direct {p0, p1}, Lcom/lx/launcher8/AnallLauncher;->completeAddApp(Lcom/anall/app/bean/AppInfo;)V

    return-void
.end method

.method static synthetic access$5(Lcom/lx/launcher8/AnallLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 2290
    invoke-direct {p0}, Lcom/lx/launcher8/AnallLauncher;->goSearch()V

    return-void
.end method

.method static synthetic access$6(Lcom/lx/launcher8/AnallLauncher;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSearchIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/view/Workspace;
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mWorkspace:Lcom/lx/launcher8/view/Workspace;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/AnallLauncher;)Z
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/lx/launcher8/AnallLauncher;->mPaused:Z

    return v0
.end method

.method static synthetic access$9(Lcom/lx/launcher8/AnallLauncher;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addAppWidget(Landroid/content/Intent;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x3

    const/4 v4, -0x1

    .line 836
    const-string v3, "appWidgetId"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 837
    .local v1, appWidgetId:I
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 838
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 840
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 841
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 842
    const-string v3, "appWidgetId"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 843
    invoke-virtual {p0, v2, v5}, Lcom/lx/launcher8/AnallLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 848
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 846
    :cond_0
    invoke-virtual {p0, v5, v4, p1}, Lcom/lx/launcher8/AnallLauncher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private addCell(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 10
    .parameter "cellInfo"

    .prologue
    const/4 v6, 0x0

    .line 686
    if-nez p1, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    invoke-direct {p0, p1}, Lcom/lx/launcher8/AnallLauncher;->createViewFromInfo(Lcom/lx/launcher8/bean/ItemCell;)Lcom/lx/launcher8/view/CellView;

    move-result-object v5

    .line 689
    .local v5, view:Lcom/lx/launcher8/view/CellView;
    if-eqz v5, :cond_0

    .line 690
    iget-object v7, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v7}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/lx/launcher8/view/CellView;->setBackgroundColor(I)V

    .line 691
    iget-object v7, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v7}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellAlpha()I

    move-result v7

    mul-int/lit16 v7, v7, 0xff

    div-int/lit8 v0, v7, 0x64

    .line 692
    .local v0, alpha:I
    iget-object v7, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v7}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellFGAlpha()I

    move-result v7

    mul-int/lit16 v7, v7, 0xff

    div-int/lit8 v1, v7, 0x64

    .line 693
    .local v1, foreAlpha:I
    iget-object v7, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v7}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellTextAlpha()I

    move-result v7

    mul-int/lit16 v7, v7, 0xff

    div-int/lit8 v3, v7, 0x64

    .line 694
    .local v3, textAlpha:I
    invoke-virtual {v5, v0}, Lcom/lx/launcher8/view/CellView;->setGlobalAlpha(I)V

    .line 695
    invoke-virtual {v5, v1}, Lcom/lx/launcher8/view/CellView;->setGlobalFGAlpha(I)V

    .line 696
    invoke-virtual {v5, v3}, Lcom/lx/launcher8/view/CellView;->setTextAlpha(I)V

    .line 697
    iget-object v7, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v7, v5}, Lcom/lx/launcher8/view/CellLayout;->addViewBottom(Lcom/lx/launcher8/view/CellView;)V

    .line 698
    iget-object v7, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v7}, Lcom/lx/launcher8/cfg/DeskSetting;->getDisplayCellText()I

    move-result v7

    if-nez v7, :cond_3

    const/4 v4, 0x1

    .line 699
    .local v4, textDis:Z
    :goto_1
    invoke-virtual {v5, v4}, Lcom/lx/launcher8/view/CellView;->setTextDisplay(Z)V

    .line 700
    instance-of v7, v5, Lcom/lx/launcher8/view/DynamicCell;

    if-eqz v7, :cond_2

    .line 701
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 702
    .local v2, fresh:Z
    check-cast v5, Lcom/lx/launcher8/view/DynamicCell;

    .end local v5           #view:Lcom/lx/launcher8/view/CellView;
    invoke-interface {v5, v2}, Lcom/lx/launcher8/view/DynamicCell;->onRefresh(Z)V

    .line 705
    .end local v2           #fresh:Z
    :cond_2
    iget-object v7, p0, Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {v7, p1}, Lcom/lx/launcher8/db/LauncherModel;->addCellToDatabase(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 707
    iget-object v7, p0, Lcom/lx/launcher8/AnallLauncher;->mWorkspace:Lcom/lx/launcher8/view/Workspace;

    invoke-virtual {v7, v6}, Lcom/lx/launcher8/view/Workspace;->snapToScreen(I)V

    .line 708
    iget-object v6, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    new-instance v7, Lcom/lx/launcher8/AnallLauncher$16;

    invoke-direct {v7, p0}, Lcom/lx/launcher8/AnallLauncher$16;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    .line 713
    const-wide/16 v8, 0xc8

    .line 708
    invoke-virtual {v6, v7, v8, v9}, Lcom/lx/launcher8/view/CellLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v4           #textDis:Z
    .restart local v5       #view:Lcom/lx/launcher8/view/CellView;
    :cond_3
    move v4, v6

    .line 698
    goto :goto_1
.end method

.method private applyAppStyle()V
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppList()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->applyAppStyle(I)V

    .line 1192
    return-void
.end method

.method private applyPaper(I)V
    .locals 5
    .parameter "themePaper"

    .prologue
    const v4, 0x7f020166

    const v2, 0x7f020165

    const/high16 v3, 0x10

    .line 1569
    const/4 v0, 0x0

    .line 1570
    .local v0, bgColor:I
    packed-switch p1, :pswitch_data_0

    .line 1586
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mWorkspace:Lcom/lx/launcher8/view/Workspace;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/view/Workspace;->setBackgroundColor(I)V

    .line 1587
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/adapter/AppAdapter;->setPaperColor(I)V

    .line 1588
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/view/CellLayout;->setChildCacheDrawColor(I)V

    .line 1589
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 1590
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1593
    :goto_1
    invoke-direct {p0, p1}, Lcom/lx/launcher8/AnallLauncher;->changeAppTextColor(I)V

    .line 1594
    return-void

    .line 1572
    :pswitch_0
    const/high16 v0, -0x100

    .line 1573
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mSearch:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1574
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mGridSearch:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1575
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mGridSort:Landroid/widget/ImageView;

    const v2, 0x7f020169

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1578
    :pswitch_1
    const/4 v0, -0x1

    .line 1579
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mSearch:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1580
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mGridSearch:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1581
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mGridSort:Landroid/widget/ImageView;

    const v2, 0x7f02016a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1592
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 1570
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private changeAppBackColor(I)V
    .locals 3
    .parameter "themePaper"

    .prologue
    const/4 v2, -0x1

    .line 1550
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/AppSetting;->getAppIconColor()I

    move-result v0

    .line 1551
    .local v0, backColor:I
    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeColor()I

    move-result v0

    .line 1552
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/high16 v1, -0x100

    if-ne v0, v1, :cond_2

    .line 1553
    const/4 v0, -0x1

    .line 1557
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/adapter/AppAdapter;->setAppBackColor(I)V

    .line 1558
    return-void

    .line 1554
    :cond_2
    if-nez p1, :cond_1

    if-ne v0, v2, :cond_1

    .line 1555
    const/high16 v0, -0x100

    goto :goto_0
.end method

.method private changeAppIndex(Z)V
    .locals 4
    .parameter "filter"

    .prologue
    .line 1561
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/AppSetting;->isShowAppListHeader()Z

    move-result v0

    .line 1562
    .local v0, showHeader:Z
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/AppSetting;->getAppSort()I

    move-result v1

    .line 1563
    .local v1, sortType:I
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/lx/launcher8/adapter/AppAdapter;->setShowIndex(Z)V

    .line 1564
    if-eqz p1, :cond_0

    .line 1565
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/FilterGridView;->setFilterText(Ljava/lang/String;)V

    .line 1566
    :cond_0
    return-void

    .line 1563
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private changeAppTextColor(I)V
    .locals 2
    .parameter "themePaper"

    .prologue
    .line 1538
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppTextColor()I

    move-result v0

    .line 1539
    .local v0, textColor:I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/high16 v1, -0x100

    if-ne v0, v1, :cond_1

    .line 1540
    const/4 v0, -0x1

    .line 1544
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mGridTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1545
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/adapter/AppAdapter;->setAppTextColor(I)V

    .line 1546
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1547
    return-void

    .line 1541
    :cond_1
    if-nez p1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1542
    const/high16 v0, -0x100

    goto :goto_0
.end method

.method private changeNotificationStatus(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const/16 v8, 0x400

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 2251
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v6

    .line 2252
    .local v6, statusStyle:I
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellGap()I

    move-result v1

    .line 2253
    .local v1, gap:I
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppsRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 2254
    packed-switch v6, :pswitch_data_0

    .line 2284
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->addFlags(I)V

    .line 2285
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/CellLayout;->setPadding(IIIIZ)V

    .line 2288
    :goto_0
    return-void

    .line 2256
    :pswitch_0
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 2257
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/CellLayout;->setPadding(IIIIZ)V

    goto :goto_0

    .line 2260
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    iget v2, p0, Lcom/lx/launcher8/AnallLauncher;->mStatusBarHeight:I

    add-int/2addr v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/CellLayout;->setPadding(IIIIZ)V

    .line 2261
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppsRootLayout:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/lx/launcher8/AnallLauncher;->mStatusBarHeight:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v7, v2, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 2262
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 2265
    :pswitch_2
    if-eqz p1, :cond_0

    .line 2266
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 2270
    :goto_1
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/CellLayout;->setPadding(IIIIZ)V

    goto :goto_0

    .line 2268
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 2273
    :pswitch_3
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->addFlags(I)V

    .line 2274
    if-eqz p1, :cond_1

    .line 2275
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    iget v2, p0, Lcom/lx/launcher8/AnallLauncher;->mStatusBarHeight:I

    add-int/2addr v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/CellLayout;->setPadding(IIIIZ)V

    .line 2276
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppsRootLayout:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/lx/launcher8/AnallLauncher;->mStatusBarHeight:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v7, v2, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 2277
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.anall.launcher.statusbar.show"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2279
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.anall.launcher.statusbar.hide"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->sendBroadcast(Landroid/content/Intent;)V

    .line 2280
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/CellLayout;->setPadding(IIIIZ)V

    goto :goto_0

    .line 2254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private completeAddApp(Lcom/anall/app/bean/AppInfo;)V
    .locals 2
    .parameter "app"

    .prologue
    const/4 v1, 0x1

    .line 819
    new-instance v0, Lcom/lx/launcher8/bean/AppCell;

    invoke-direct {v0}, Lcom/lx/launcher8/bean/AppCell;-><init>()V

    .line 820
    .local v0, cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-virtual {v0, v1, v1}, Lcom/lx/launcher8/bean/AppCell;->setSize(II)V

    .line 821
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/bean/AppCell;->setTextGarivty(I)V

    .line 822
    iget-object v1, p1, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    .line 823
    iget-object v1, p1, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    .line 824
    iget-object v1, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    .line 825
    iget-object v1, p1, Lcom/anall/app/bean/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 826
    const/4 v1, 0x0

    iput v1, v0, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    .line 827
    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 828
    return-void
.end method

.method private completeAddAppWidget(Landroid/content/Intent;)V
    .locals 8
    .parameter "data"

    .prologue
    .line 851
    const-string v5, "appWidgetId"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 852
    .local v1, appWidgetId:I
    iget-object v5, p0, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v5, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 853
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v5, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    iget v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v5, v6, v7}, Lcom/lx/launcher8/view/CellLayout;->computeSize(II)I

    move-result v4

    .line 855
    .local v4, size:I
    iget-object v5, p0, Lcom/lx/launcher8/AnallLauncher;->mWidgetUpView:Lcom/lx/launcher8/view/CellView;

    if-eqz v5, :cond_0

    .line 856
    iget-object v5, p0, Lcom/lx/launcher8/AnallLauncher;->mWidgetUpView:Lcom/lx/launcher8/view/CellView;

    invoke-virtual {v5}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/bean/AppWidgetCell;

    .line 857
    .local v2, awc:Lcom/lx/launcher8/bean/AppWidgetCell;
    iput v1, v2, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    .line 858
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iput-object v5, v2, Lcom/lx/launcher8/bean/AppWidgetCell;->intent:Landroid/content/Intent;

    .line 859
    iget-object v5, v2, Lcom/lx/launcher8/bean/AppWidgetCell;->intent:Landroid/content/Intent;

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 860
    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v5, v2, Lcom/lx/launcher8/bean/AppWidgetCell;->appName:Ljava/lang/String;

    .line 861
    iget-object v5, p0, Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {v5, v2}, Lcom/lx/launcher8/db/LauncherModel;->updateCellToDatabase(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 863
    iget-object v5, p0, Lcom/lx/launcher8/AnallLauncher;->mWidgetUpView:Lcom/lx/launcher8/view/CellView;

    iget-object v6, p0, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v7, p0, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5, v6, v7}, Lcom/lx/launcher8/view/CellView;->setAppWidgetView(Landroid/appwidget/AppWidgetManager;Landroid/appwidget/AppWidgetHost;)V

    .line 864
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lx/launcher8/AnallLauncher;->mWidgetUpView:Lcom/lx/launcher8/view/CellView;

    .line 876
    .end local v2           #awc:Lcom/lx/launcher8/bean/AppWidgetCell;
    :goto_0
    return-void

    .line 867
    :cond_0
    new-instance v3, Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-direct {v3}, Lcom/lx/launcher8/bean/AppWidgetCell;-><init>()V

    .line 868
    .local v3, cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;
    invoke-virtual {v3, v4}, Lcom/lx/launcher8/bean/AppWidgetCell;->setSize(I)V

    .line 869
    iput v1, v3, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    .line 870
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iput-object v5, v3, Lcom/lx/launcher8/bean/AppWidgetCell;->intent:Landroid/content/Intent;

    .line 871
    iget-object v5, v3, Lcom/lx/launcher8/bean/AppWidgetCell;->intent:Landroid/content/Intent;

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 872
    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v5, v3, Lcom/lx/launcher8/bean/AppWidgetCell;->appName:Ljava/lang/String;

    .line 874
    invoke-direct {p0, v3}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_0
.end method

.method private completeAddShortcut(Landroid/content/Intent;)V
    .locals 15
    .parameter "data"

    .prologue
    .line 879
    const-string v12, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 880
    .local v8, intent:Landroid/content/Intent;
    const-string v12, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 881
    .local v9, name:Ljava/lang/String;
    const-string v12, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 882
    .local v1, bitmap:Landroid/os/Parcelable;
    const/4 v4, 0x0

    .line 883
    .local v4, icon:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 884
    .local v6, iconType:I
    const/4 v5, 0x0

    .line 885
    .local v5, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v1, :cond_2

    instance-of v12, v1, Landroid/graphics/Bitmap;

    if-eqz v12, :cond_2

    move-object v4, v1

    .line 886
    check-cast v4, Landroid/graphics/Bitmap;

    .line 887
    const/4 v6, 0x0

    .line 902
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 903
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0200da

    invoke-static {v12, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 904
    const/4 v6, -0x1

    .line 906
    :cond_1
    new-instance v2, Lcom/lx/launcher8/bean/AppCell;

    invoke-direct {v2}, Lcom/lx/launcher8/bean/AppCell;-><init>()V

    .line 907
    .local v2, cellInfo:Lcom/lx/launcher8/bean/AppCell;
    const v12, 0x38001

    iput v12, v2, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    .line 909
    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Lcom/lx/launcher8/bean/AppCell;->setSize(II)V

    .line 910
    const/4 v12, 0x3

    invoke-virtual {v2, v12}, Lcom/lx/launcher8/bean/AppCell;->setTextGarivty(I)V

    .line 911
    iput-object v8, v2, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    .line 912
    iput-object v9, v2, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    .line 913
    iget-object v12, v2, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    iput-object v12, v2, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    .line 914
    iput-object v4, v2, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 915
    iput v6, v2, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    .line 917
    invoke-direct {p0, v2}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 918
    return-void

    .line 889
    .end local v2           #cellInfo:Lcom/lx/launcher8/bean/AppCell;
    :cond_2
    const-string v12, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 890
    .local v3, extra:Landroid/os/Parcelable;
    if-eqz v3, :cond_0

    instance-of v12, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v12, :cond_0

    .line 892
    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v5, v0

    .line 893
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 894
    .local v10, packageManager:Landroid/content/pm/PackageManager;
    iget-object v12, v5, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 895
    .local v11, resources:Landroid/content/res/Resources;
    iget-object v12, v5, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 896
    .local v7, id:I
    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-static {v12, p0}, Lcom/anall/app/bean/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 897
    const/4 v6, 0x0

    goto :goto_0

    .line 898
    .end local v7           #id:I
    .end local v10           #packageManager:Landroid/content/pm/PackageManager;
    .end local v11           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v12

    goto :goto_0
.end method

.method private completeEditCell(Lcom/lx/launcher8/bean/ItemCell;I)V
    .locals 13
    .parameter "item"
    .parameter "delete"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    iget-wide v2, p1, Lcom/lx/launcher8/bean/ItemCell;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/lx/launcher8/view/CellLayout;->findCellById(J)Lcom/lx/launcher8/view/CellView;

    move-result-object v1

    .line 922
    .local v1, view:Lcom/lx/launcher8/view/CellView;
    if-eqz v1, :cond_0

    .line 923
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 924
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/AnallLauncher;->deleteCellView(Lcom/lx/launcher8/view/CellView;)V

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/db/LauncherModel;->updateCellToDatabase(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 927
    invoke-virtual {v1}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/bean/ItemCell;->getSize()I

    move-result v9

    .line 928
    .local v9, oldSize:I
    invoke-virtual {p1}, Lcom/lx/launcher8/bean/ItemCell;->getSize()I

    move-result v8

    .line 929
    .local v8, newSize:I
    if-eq v9, v8, :cond_7

    const/4 v12, 0x1

    .line 930
    .local v12, sizeAble:Z
    :goto_1
    invoke-virtual {v1}, Lcom/lx/launcher8/view/CellView;->getWidgetId()I

    move-result v10

    .line 931
    .local v10, oldWidgetId:I
    invoke-virtual {v1, p1}, Lcom/lx/launcher8/view/CellView;->onConfigChange(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 932
    invoke-virtual {v1}, Lcom/lx/launcher8/view/CellView;->getWidgetId()I

    move-result v0

    if-eq v10, v0, :cond_2

    .line 933
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0, v10}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 934
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1, v0, v2}, Lcom/lx/launcher8/view/CellView;->setAppWidgetView(Landroid/appwidget/AppWidgetManager;Landroid/appwidget/AppWidgetHost;)V

    .line 936
    :cond_2
    invoke-virtual {p1}, Lcom/lx/launcher8/bean/ItemCell;->getCellAlphaBg()I

    move-result v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_3

    .line 937
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellAlpha()I

    move-result v0

    invoke-static {v0}, Lcom/lx/launcher8/util/Utils;->alphaTranslate(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/view/CellView;->setGlobalAlpha(I)V

    .line 939
    :cond_3
    invoke-virtual {p1}, Lcom/lx/launcher8/bean/ItemCell;->getCellAlphaFg()I

    move-result v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_4

    .line 940
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellFGAlpha()I

    move-result v0

    invoke-static {v0}, Lcom/lx/launcher8/util/Utils;->alphaTranslate(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/view/CellView;->setGlobalFGAlpha(I)V

    .line 942
    :cond_4
    invoke-virtual {p1}, Lcom/lx/launcher8/bean/ItemCell;->getTextAlpha()I

    move-result v0

    if-nez v0, :cond_5

    .line 943
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellTextAlpha()I

    move-result v0

    invoke-static {v0}, Lcom/lx/launcher8/util/Utils;->alphaTranslate(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/view/CellView;->setTextAlpha(I)V

    .line 945
    :cond_5
    if-eqz v12, :cond_6

    .line 946
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 947
    .local v7, loc:[I
    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/CellView;->getLocationOnScreen([I)V

    .line 948
    invoke-virtual {v1, v9, v8}, Lcom/lx/launcher8/view/CellView;->onSizeChange(II)V

    .line 949
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    const/4 v2, 0x0

    aget v2, v7, v2

    const/4 v3, 0x1

    aget v3, v7, v3

    shr-int/lit8 v4, v9, 0x10

    const v5, 0xffff

    and-int/2addr v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/CellLayout;->onCellSizeChange(Lcom/lx/launcher8/view/CellView;IIII)V

    .line 951
    .end local v7           #loc:[I
    :cond_6
    instance-of v0, v1, Lcom/lx/launcher8/view/SimpleCellView;

    if-eqz v0, :cond_0

    move-object v11, v1

    .line 952
    check-cast v11, Lcom/lx/launcher8/view/SimpleCellView;

    .line 953
    .local v11, sc:Lcom/lx/launcher8/view/SimpleCellView;
    invoke-virtual {v11}, Lcom/lx/launcher8/view/SimpleCellView;->getFunctionType()I

    move-result v6

    .line 954
    .local v6, funType:I
    const/4 v0, 0x1

    if-ne v6, v0, :cond_8

    .line 955
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mFunSmsViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mFunSmsViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mFunDialViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 958
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    invoke-virtual {v0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->getUnReadMsg()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/lx/launcher8/view/SimpleCellView;->setFunNum(I)V

    goto/16 :goto_0

    .line 929
    .end local v6           #funType:I
    .end local v10           #oldWidgetId:I
    .end local v11           #sc:Lcom/lx/launcher8/view/SimpleCellView;
    .end local v12           #sizeAble:Z
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 960
    .restart local v6       #funType:I
    .restart local v10       #oldWidgetId:I
    .restart local v11       #sc:Lcom/lx/launcher8/view/SimpleCellView;
    .restart local v12       #sizeAble:Z
    :cond_8
    const/4 v0, 0x2

    if-ne v6, v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mFunDialViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mFunDialViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mFunSmsViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 964
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    invoke-virtual {v0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->getMissedCall()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/lx/launcher8/view/SimpleCellView;->setFunNum(I)V

    goto/16 :goto_0
.end method

.method private completeSpecial(I)V
    .locals 9
    .parameter "change"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/16 v4, 0x20

    .line 718
    const/4 v2, 0x0

    .line 719
    .local v2, view:Lcom/lx/launcher8/view/CellView;
    invoke-static {}, Lcom/lx/launcher8/bean/CellFactory;->getInstance()Lcom/lx/launcher8/bean/CellFactory;

    move-result-object v1

    .line 720
    .local v1, cf:Lcom/lx/launcher8/bean/CellFactory;
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_0

    .line 721
    invoke-virtual {p0, v8}, Lcom/lx/launcher8/AnallLauncher;->findSpecialCell(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    .line 722
    if-eqz v2, :cond_a

    .line 723
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/AnallLauncher;->deleteCellView(Lcom/lx/launcher8/view/CellView;)V

    .line 729
    :cond_0
    :goto_0
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_1

    .line 730
    invoke-virtual {p0, v7}, Lcom/lx/launcher8/AnallLauncher;->findSpecialCell(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    .line 731
    if-eqz v2, :cond_b

    .line 732
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/AnallLauncher;->deleteCellView(Lcom/lx/launcher8/view/CellView;)V

    .line 738
    :cond_1
    :goto_1
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_2

    .line 739
    invoke-virtual {p0, v5}, Lcom/lx/launcher8/AnallLauncher;->findSpecialCell(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    .line 740
    if-eqz v2, :cond_c

    .line 741
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/AnallLauncher;->deleteCellView(Lcom/lx/launcher8/view/CellView;)V

    .line 747
    :cond_2
    :goto_2
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_3

    .line 748
    invoke-virtual {p0, v6}, Lcom/lx/launcher8/AnallLauncher;->findSpecialCell(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    .line 749
    if-eqz v2, :cond_d

    .line 750
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/AnallLauncher;->deleteCellView(Lcom/lx/launcher8/view/CellView;)V

    .line 756
    :cond_3
    :goto_3
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_4

    .line 757
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/AnallLauncher;->findSpecialCell(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    .line 758
    if-eqz v2, :cond_e

    .line 759
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/AnallLauncher;->deleteCellView(Lcom/lx/launcher8/view/CellView;)V

    .line 765
    :cond_4
    :goto_4
    and-int/lit8 v3, p1, 0x20

    if-eqz v3, :cond_10

    .line 766
    invoke-virtual {p0, v4}, Lcom/lx/launcher8/AnallLauncher;->findSpecialCell(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    .line 767
    if-eqz v2, :cond_f

    .line 768
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/AnallLauncher;->deleteCellView(Lcom/lx/launcher8/view/CellView;)V

    .line 779
    :cond_5
    :goto_5
    and-int/lit8 v3, p1, 0x40

    if-eqz v3, :cond_6

    .line 780
    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/AnallLauncher;->findSpecialCell(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    .line 781
    if-eqz v2, :cond_11

    .line 782
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/AnallLauncher;->deleteCellView(Lcom/lx/launcher8/view/CellView;)V

    .line 788
    :cond_6
    :goto_6
    and-int/lit16 v3, p1, 0x80

    if-eqz v3, :cond_7

    .line 789
    const/16 v3, 0x80

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/AnallLauncher;->findSpecialCell(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    .line 790
    if-eqz v2, :cond_12

    .line 791
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/AnallLauncher;->deleteCellView(Lcom/lx/launcher8/view/CellView;)V

    .line 797
    :cond_7
    :goto_7
    and-int/lit16 v3, p1, 0x100

    if-eqz v3, :cond_8

    .line 798
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/AnallLauncher;->findSpecialCell(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    .line 799
    if-eqz v2, :cond_13

    .line 800
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/AnallLauncher;->deleteCellView(Lcom/lx/launcher8/view/CellView;)V

    .line 806
    :cond_8
    :goto_8
    and-int/lit16 v3, p1, 0x200

    if-eqz v3, :cond_9

    .line 807
    const/16 v3, 0x81

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/AnallLauncher;->findSpecialCell(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    .line 808
    if-eqz v2, :cond_14

    .line 809
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/AnallLauncher;->deleteCellView(Lcom/lx/launcher8/view/CellView;)V

    .line 815
    :cond_9
    :goto_9
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v3}, Lcom/lx/launcher8/view/CellLayout;->forceLayout()V

    .line 816
    return-void

    .line 725
    :cond_a
    invoke-virtual {v1, p0, v8}, Lcom/lx/launcher8/bean/CellFactory;->createSpecialBean(Landroid/content/Context;I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    .line 726
    .local v0, cell:Lcom/lx/launcher8/bean/ItemCell;
    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    goto/16 :goto_0

    .line 734
    .end local v0           #cell:Lcom/lx/launcher8/bean/ItemCell;
    :cond_b
    invoke-virtual {v1, p0, v7}, Lcom/lx/launcher8/bean/CellFactory;->createSpecialBean(Landroid/content/Context;I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    .line 735
    .restart local v0       #cell:Lcom/lx/launcher8/bean/ItemCell;
    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    goto/16 :goto_1

    .line 743
    .end local v0           #cell:Lcom/lx/launcher8/bean/ItemCell;
    :cond_c
    invoke-virtual {v1, p0, v5}, Lcom/lx/launcher8/bean/CellFactory;->createSpecialBean(Landroid/content/Context;I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    .line 744
    .restart local v0       #cell:Lcom/lx/launcher8/bean/ItemCell;
    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    goto/16 :goto_2

    .line 752
    .end local v0           #cell:Lcom/lx/launcher8/bean/ItemCell;
    :cond_d
    invoke-virtual {v1, p0, v6}, Lcom/lx/launcher8/bean/CellFactory;->createSpecialBean(Landroid/content/Context;I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    .line 753
    .restart local v0       #cell:Lcom/lx/launcher8/bean/ItemCell;
    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_3

    .line 761
    .end local v0           #cell:Lcom/lx/launcher8/bean/ItemCell;
    :cond_e
    const/16 v3, 0x8

    invoke-virtual {v1, p0, v3}, Lcom/lx/launcher8/bean/CellFactory;->createSpecialBean(Landroid/content/Context;I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    .line 762
    .restart local v0       #cell:Lcom/lx/launcher8/bean/ItemCell;
    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_4

    .line 770
    .end local v0           #cell:Lcom/lx/launcher8/bean/ItemCell;
    :cond_f
    invoke-virtual {v1, p0, v4}, Lcom/lx/launcher8/bean/CellFactory;->createSpecialBean(Landroid/content/Context;I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    .line 771
    .restart local v0       #cell:Lcom/lx/launcher8/bean/ItemCell;
    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_5

    .line 774
    .end local v0           #cell:Lcom/lx/launcher8/bean/ItemCell;
    :cond_10
    invoke-virtual {p0, v4}, Lcom/lx/launcher8/AnallLauncher;->findSpecialCell(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    .line 775
    if-eqz v2, :cond_5

    .line 776
    invoke-virtual {v2}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/CellView;->onConfigChange(Lcom/lx/launcher8/bean/ItemCell;)V

    goto/16 :goto_5

    .line 784
    :cond_11
    const/16 v3, 0x21

    invoke-virtual {v1, p0, v3}, Lcom/lx/launcher8/bean/CellFactory;->createSpecialBean(Landroid/content/Context;I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    .line 785
    .restart local v0       #cell:Lcom/lx/launcher8/bean/ItemCell;
    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_6

    .line 793
    .end local v0           #cell:Lcom/lx/launcher8/bean/ItemCell;
    :cond_12
    const/16 v3, 0x80

    invoke-virtual {v1, p0, v3}, Lcom/lx/launcher8/bean/CellFactory;->createSpecialBean(Landroid/content/Context;I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    .line 794
    .restart local v0       #cell:Lcom/lx/launcher8/bean/ItemCell;
    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_7

    .line 802
    .end local v0           #cell:Lcom/lx/launcher8/bean/ItemCell;
    :cond_13
    const/16 v3, 0x9

    invoke-virtual {v1, p0, v3}, Lcom/lx/launcher8/bean/CellFactory;->createSpecialBean(Landroid/content/Context;I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    .line 803
    .restart local v0       #cell:Lcom/lx/launcher8/bean/ItemCell;
    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_8

    .line 811
    .end local v0           #cell:Lcom/lx/launcher8/bean/ItemCell;
    :cond_14
    const/16 v3, 0x81

    invoke-virtual {v1, p0, v3}, Lcom/lx/launcher8/bean/CellFactory;->createSpecialBean(Landroid/content/Context;I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    .line 812
    .restart local v0       #cell:Lcom/lx/launcher8/bean/ItemCell;
    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_9
.end method

.method private createViewFromInfo(Lcom/lx/launcher8/bean/ItemCell;)Lcom/lx/launcher8/view/CellView;
    .locals 6
    .parameter "info"

    .prologue
    .line 1631
    iget v4, p1, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    and-int/lit16 v0, v4, 0xfff

    .line 1632
    .local v0, baseType:I
    invoke-static {}, Lcom/lx/launcher8/bean/CellFactory;->getInstance()Lcom/lx/launcher8/bean/CellFactory;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lcom/lx/launcher8/bean/CellFactory;->createCellView(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)Lcom/lx/launcher8/view/CellView;

    move-result-object v3

    .line 1633
    .local v3, view:Lcom/lx/launcher8/view/CellView;
    if-nez v3, :cond_1

    .line 1660
    :cond_0
    :goto_0
    return-object v3

    .line 1635
    :cond_1
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move-object v2, v3

    .line 1642
    check-cast v2, Lcom/lx/launcher8/view/SimpleCellView;

    .line 1643
    .local v2, sc:Lcom/lx/launcher8/view/SimpleCellView;
    invoke-virtual {v2}, Lcom/lx/launcher8/view/SimpleCellView;->getFunctionType()I

    move-result v1

    .line 1644
    .local v1, funType:I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 1645
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mFunSmsViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1646
    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 1647
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mFunDialViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1651
    .end local v1           #funType:I
    .end local v2           #sc:Lcom/lx/launcher8/view/SimpleCellView;
    :sswitch_1
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v5, p0, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3, v4, v5}, Lcom/lx/launcher8/view/CellView;->setAppWidgetView(Landroid/appwidget/AppWidgetManager;Landroid/appwidget/AppWidgetHost;)V

    goto :goto_0

    .line 1657
    :sswitch_2
    iget-object v5, p0, Lcom/lx/launcher8/AnallLauncher;->mDynViews:Ljava/util/ArrayList;

    move-object v4, v3

    check-cast v4, Lcom/lx/launcher8/view/DynamicCell;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1635
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x20 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method private getAppComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1800
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/AppSetting;->getAppSort()I

    move-result v0

    .line 1801
    .local v0, sortType:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1802
    new-instance v1, Lcom/lx/launcher8/adapter/AppAdapter$AppTimeComparator;

    invoke-direct {v1}, Lcom/lx/launcher8/adapter/AppAdapter$AppTimeComparator;-><init>()V

    .line 1805
    :goto_0
    return-object v1

    .line 1803
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1804
    new-instance v1, Lcom/lx/launcher8/adapter/AppAdapter$AppFrequencyComparator;

    invoke-direct {v1}, Lcom/lx/launcher8/adapter/AppAdapter$AppFrequencyComparator;-><init>()V

    goto :goto_0

    .line 1805
    :cond_1
    new-instance v1, Lcom/lx/launcher8/adapter/AppAdapter$AppCharComparator;

    invoke-direct {v1}, Lcom/lx/launcher8/adapter/AppAdapter$AppCharComparator;-><init>()V

    goto :goto_0
.end method

.method private goSearch()V
    .locals 6

    .prologue
    .line 2291
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2292
    .local v1, text:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2293
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/lx/launcher8/util/UrlPath;->getDefEngine(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/lx/launcher8/util/Utils;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2294
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2295
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->startActivity(Landroid/content/Intent;)V

    .line 2297
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private launcherNetCheck()V
    .locals 11

    .prologue
    const-wide/32 v9, 0x5265c00

    .line 2180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2181
    .local v0, curTime:J
    iget-object v6, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getLastNetCheck()J

    move-result-wide v4

    .line 2182
    .local v4, lastTime:J
    sub-long v6, v0, v4

    cmp-long v6, v6, v9

    if-lez v6, :cond_0

    .line 2183
    new-instance v6, Lcom/lx/launcher8/task/CheckUpdateTask;

    invoke-static {}, Lcom/app/common/config/BaseGlobal;->getSoftId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, p0, v7, v8}, Lcom/lx/launcher8/task/CheckUpdateTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-virtual {v6}, Lcom/lx/launcher8/task/CheckUpdateTask;->exec()Z

    .line 2184
    invoke-static {}, Lcom/lx/launcher8/util/WpAdUtil;->getInstance()Lcom/lx/launcher8/util/WpAdUtil;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/lx/launcher8/util/WpAdUtil;->loadAd(Landroid/content/Context;)V

    .line 2187
    :cond_0
    iget-object v6, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getLastStatistics()J

    move-result-wide v2

    .line 2188
    .local v2, last:J
    sub-long v6, v0, v2

    cmp-long v6, v6, v9

    if-ltz v6, :cond_1

    .line 2189
    new-instance v6, Lcom/lx/launcher8/task/GetAdsDifferentFrom;

    new-instance v7, Lcom/lx/launcher8/AnallLauncher$29;

    invoke-direct {v7, p0, v0, v1}, Lcom/lx/launcher8/AnallLauncher$29;-><init>(Lcom/lx/launcher8/AnallLauncher;J)V

    invoke-direct {v6, p0, v7}, Lcom/lx/launcher8/task/GetAdsDifferentFrom;-><init>(Landroid/app/Activity;Lcom/lx/launcher8/task/GetAdsDifferentFrom$OnDisplayAds;)V

    .line 2195
    invoke-virtual {v6}, Lcom/lx/launcher8/task/GetAdsDifferentFrom;->exec()Z

    .line 2197
    :cond_1
    return-void
.end method

.method private reBuildAppList()V
    .locals 2

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-direct {p0}, Lcom/lx/launcher8/AnallLauncher;->getAppComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/adapter/AppAdapter;->sort(Ljava/util/Comparator;)V

    .line 1794
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/adapter/AppAdapter;->notifyDataSetChanged()V

    .line 1795
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/adapter/AppAdapter;->isSearch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/FilterGridView;->setFilterText(Ljava/lang/String;)V

    .line 1797
    :cond_0
    return-void
.end method

.method private rebake(ZZ)V
    .locals 3
    .parameter "unmounting"
    .parameter "scanning"

    .prologue
    .line 1404
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mDynViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1415
    :cond_0
    return-void

    .line 1406
    :cond_1
    if-eqz p1, :cond_2

    .line 1407
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mDynViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/DynamicCell;

    .line 1408
    .local v0, dc:Lcom/lx/launcher8/view/DynamicCell;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/lx/launcher8/view/DynamicCell;->onRefresh(Z)V

    goto :goto_0

    .line 1410
    .end local v0           #dc:Lcom/lx/launcher8/view/DynamicCell;
    :cond_2
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1411
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mDynViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/DynamicCell;

    .line 1412
    .restart local v0       #dc:Lcom/lx/launcher8/view/DynamicCell;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/lx/launcher8/view/DynamicCell;->onRefresh(Z)V

    goto :goto_1
.end method

.method private registSDReceiver()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1341
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1342
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1343
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1344
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1345
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1346
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1347
    new-instance v1, Lcom/lx/launcher8/AnallLauncher$17;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/AnallLauncher$17;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    iput-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1367
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lx/launcher8/AnallLauncher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1369
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.anall.action.screen.unlock"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1370
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lx/launcher8/AnallLauncher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1371
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/lx/launcher8/AnallLauncher;->rebake(ZZ)V

    .line 1372
    return-void

    .line 1371
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private registerTimeUpdate()V
    .locals 2

    .prologue
    .line 1376
    new-instance v1, Lcom/lx/launcher8/AnallLauncher$18;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/AnallLauncher$18;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    iput-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mSOFFReceiver:Landroid/content/BroadcastReceiver;

    .line 1391
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1392
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1393
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mSOFFReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lx/launcher8/AnallLauncher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1394
    return-void
.end method

.method private requestEditFolder(Landroid/content/Intent;)V
    .locals 18
    .parameter "data"

    .prologue
    .line 629
    invoke-static/range {p1 .. p1}, Lcom/lx/launcher8/bean/ItemCell;->getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v10

    check-cast v10, Lcom/lx/launcher8/bean/FolderCell;

    .line 630
    .local v10, fc:Lcom/lx/launcher8/bean/FolderCell;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    iget-wide v3, v10, Lcom/lx/launcher8/bean/FolderCell;->id:J

    invoke-virtual {v1, v3, v4}, Lcom/lx/launcher8/view/CellLayout;->findCellById(J)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/view/FolderCellView;

    .line 631
    .local v2, fCellView:Lcom/lx/launcher8/view/FolderCellView;
    const-string v1, "cell_delete_or_not"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 632
    .local v9, delete:I
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    if-ne v9, v1, :cond_0

    .line 633
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/AnallLauncher;->deleteCellView(Lcom/lx/launcher8/view/CellView;)V

    .line 635
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    invoke-virtual {v1}, Lcom/lx/launcher8/DispalyFolderDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    invoke-virtual {v1, v10}, Lcom/lx/launcher8/DispalyFolderDialog;->setDataChanged(Lcom/lx/launcher8/bean/FolderCell;)V

    .line 638
    :cond_1
    if-eqz v2, :cond_3

    .line 639
    invoke-virtual {v2}, Lcom/lx/launcher8/view/FolderCellView;->getCellInfo()Lcom/lx/launcher8/bean/AppCell;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v1}, Lcom/lx/launcher8/bean/FolderCell;->getFolderSettings()[I

    move-result-object v1

    const/4 v3, 0x2

    aget v15, v1, v3

    .line 640
    .local v15, old_display:I
    invoke-virtual {v10}, Lcom/lx/launcher8/bean/FolderCell;->getFolderSettings()[I

    move-result-object v1

    const/4 v3, 0x2

    aget v13, v1, v3

    .line 641
    .local v13, new_display:I
    const-string v1, "extral_page"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 642
    .local v17, whichway:I
    if-eq v15, v13, :cond_2

    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_2

    .line 643
    invoke-virtual {v10}, Lcom/lx/launcher8/bean/FolderCell;->getFolderSettings()[I

    move-result-object v1

    const/4 v3, 0x2

    aget v1, v1, v3

    if-nez v1, :cond_2

    .line 644
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    if-nez v1, :cond_4

    .line 645
    new-instance v1, Lcom/lx/launcher8/DispalyFolderDialog;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v10}, Lcom/lx/launcher8/DispalyFolderDialog;-><init>(Lcom/lx/launcher8/AnallLauncher;Lcom/lx/launcher8/bean/FolderCell;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    .line 646
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/lx/launcher8/DispalyFolderDialog;->setCanceledOnTouchOutside(Z)V

    .line 647
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    invoke-virtual {v1}, Lcom/lx/launcher8/DispalyFolderDialog;->show()V

    .line 657
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {v1, v10}, Lcom/lx/launcher8/db/LauncherModel;->updateCellToDatabase(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 658
    invoke-virtual {v2}, Lcom/lx/launcher8/view/FolderCellView;->getCellInfo()Lcom/lx/launcher8/bean/AppCell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/bean/AppCell;->getSize()I

    move-result v14

    .line 659
    .local v14, oldSize:I
    invoke-virtual {v10}, Lcom/lx/launcher8/bean/FolderCell;->getSize()I

    move-result v12

    .line 661
    .local v12, newSize:I
    if-eq v14, v12, :cond_6

    const/16 v16, 0x1

    .line 662
    .local v16, sizeAble:Z
    :goto_1
    invoke-virtual {v2, v10}, Lcom/lx/launcher8/view/FolderCellView;->onConfigChange(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getDisplayCellText()I

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/lx/launcher8/view/FolderCellView;->setTextDisplay(Z)V

    .line 664
    if-eqz v16, :cond_8

    .line 665
    const/4 v1, 0x2

    new-array v11, v1, [I

    .line 666
    .local v11, loc:[I
    invoke-virtual {v2, v11}, Lcom/lx/launcher8/view/FolderCellView;->getLocationOnScreen([I)V

    .line 667
    invoke-virtual {v2, v14, v12}, Lcom/lx/launcher8/view/FolderCellView;->onSizeChange(II)V

    .line 668
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    const/4 v3, 0x0

    aget v3, v11, v3

    const/4 v4, 0x1

    aget v4, v11, v4

    shr-int/lit8 v5, v14, 0x10

    const v6, 0xffff

    and-int/2addr v6, v14

    invoke-virtual/range {v1 .. v6}, Lcom/lx/launcher8/view/CellLayout;->onCellSizeChange(Lcom/lx/launcher8/view/CellView;IIII)V

    .line 672
    .end local v11           #loc:[I
    :goto_3
    iget v1, v10, Lcom/lx/launcher8/bean/FolderCell;->backColor:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_9

    .line 673
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/view/FolderCellView;->setBackgroundColor(I)V

    .line 677
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellAlpha()I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v7, v1, 0x64

    .line 678
    .local v7, alpha:I
    invoke-virtual {v2, v7}, Lcom/lx/launcher8/view/FolderCellView;->setGlobalAlpha(I)V

    .line 680
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellFGAlpha()I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v8, v1, 0x64

    .line 681
    .local v8, alphaFG:I
    invoke-virtual {v2, v8}, Lcom/lx/launcher8/view/FolderCellView;->setGlobalFGAlpha(I)V

    .line 683
    .end local v7           #alpha:I
    .end local v8           #alphaFG:I
    .end local v12           #newSize:I
    .end local v13           #new_display:I
    .end local v14           #oldSize:I
    .end local v15           #old_display:I
    .end local v16           #sizeAble:Z
    .end local v17           #whichway:I
    :cond_3
    return-void

    .line 649
    .restart local v13       #new_display:I
    .restart local v15       #old_display:I
    .restart local v17       #whichway:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    invoke-virtual {v1}, Lcom/lx/launcher8/DispalyFolderDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 650
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    invoke-virtual {v1}, Lcom/lx/launcher8/DispalyFolderDialog;->dismiss()V

    goto/16 :goto_0

    .line 652
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    invoke-virtual {v1}, Lcom/lx/launcher8/DispalyFolderDialog;->show()V

    goto/16 :goto_0

    .line 661
    .restart local v12       #newSize:I
    .restart local v14       #oldSize:I
    :cond_6
    const/16 v16, 0x0

    goto :goto_1

    .line 663
    .restart local v16       #sizeAble:Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 670
    :cond_8
    invoke-virtual {v2}, Lcom/lx/launcher8/view/FolderCellView;->styleChanged()V

    goto :goto_3

    .line 675
    :cond_9
    iget v1, v10, Lcom/lx/launcher8/bean/FolderCell;->backColor:I

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/view/FolderCellView;->setBackgroundColor(I)V

    goto :goto_4
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "saveState"

    .prologue
    .line 434
    if-nez p1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mSaveState:Landroid/os/Bundle;

    .line 437
    const-string v3, "EDIT_CELL_ID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 438
    .local v0, id:J
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lx/launcher8/AnallApp;->getParam()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/bean/ItemCell;

    .line 440
    .local v2, item:Lcom/lx/launcher8/bean/ItemCell;
    if-eqz v2, :cond_0

    iget-wide v3, v2, Lcom/lx/launcher8/bean/ItemCell;->id:J

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 441
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/lx/launcher8/AnallLauncher;->completeEditCell(Lcom/lx/launcher8/bean/ItemCell;I)V

    goto :goto_0
.end method

.method private safeStartActivity(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .locals 5
    .parameter "context"
    .parameter "intent"
    .parameter "hit"

    .prologue
    const/4 v2, 0x0

    .line 2137
    if-nez p2, :cond_1

    .line 2154
    :cond_0
    :goto_0
    return v2

    .line 2140
    :cond_1
    const/high16 v3, 0x1000

    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2142
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2143
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2145
    .local v0, cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2146
    :cond_2
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mExitRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2148
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 2149
    .end local v0           #cn:Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 2150
    .local v1, e:Landroid/content/ActivityNotFoundException;
    if-eqz p3, :cond_0

    .line 2151
    const v3, 0x7f0a0031

    invoke-static {p1, v3}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 2152
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private setFunDialNum(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 1900
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mFunDialViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1910
    :cond_0
    return-void

    .line 1902
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mFunDialViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1903
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mFunDialViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/view/SimpleCellView;

    .line 1904
    .local v1, sc:Lcom/lx/launcher8/view/SimpleCellView;
    invoke-virtual {v1}, Lcom/lx/launcher8/view/SimpleCellView;->hasFunction()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1905
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mFunDialViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1902
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1908
    :cond_2
    invoke-virtual {v1, p1}, Lcom/lx/launcher8/view/SimpleCellView;->setFunNum(I)V

    goto :goto_1
.end method

.method private setFunSmsNum(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 1887
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mFunSmsViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1897
    :cond_0
    return-void

    .line 1889
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mFunSmsViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1890
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mFunSmsViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/view/SimpleCellView;

    .line 1891
    .local v1, sc:Lcom/lx/launcher8/view/SimpleCellView;
    invoke-virtual {v1}, Lcom/lx/launcher8/view/SimpleCellView;->hasFunction()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1892
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mFunSmsViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1889
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1895
    :cond_2
    invoke-virtual {v1, p1}, Lcom/lx/launcher8/view/SimpleCellView;->setFunNum(I)V

    goto :goto_1
.end method

.method private setupViews()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 973
    iget-object v6, p0, Lcom/lx/launcher8/AnallLauncher;->mDragController:Lcom/lx/launcher8/view/DragController;

    .line 974
    .local v6, dragControler:Lcom/lx/launcher8/view/DragController;
    const v0, 0x7f09004c

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/DragLayer;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/DragLayer;->setDragController(Lcom/lx/launcher8/view/DragController;)V

    .line 975
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/Workspace;

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mWorkspace:Lcom/lx/launcher8/view/Workspace;

    .line 976
    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/CellLayout;

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    .line 978
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v6, p0, v0}, Lcom/lx/launcher8/view/DragController;->setEditView(Lcom/lx/launcher8/AnallLauncher;Lcom/lx/launcher8/view/CellLayout;)V

    .line 979
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mWorkspace:Lcom/lx/launcher8/view/Workspace;

    invoke-virtual {v0, p0}, Lcom/lx/launcher8/view/Workspace;->setDragController(Lcom/lx/launcher8/AnallLauncher;)V

    .line 980
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mDragController:Lcom/lx/launcher8/view/DragController;

    const v2, 0x7f09004e

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/DragController;->setDragView(Landroid/view/View;)V

    .line 981
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/CellLayout;->setDragControl(Lcom/lx/launcher8/view/DragController;)V

    .line 982
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellGap()I

    move-result v1

    .line 983
    .local v1, gap:I
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/CellLayout;->setPadding(IIIIZ)V

    .line 984
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0, v1, v1}, Lcom/lx/launcher8/view/CellLayout;->setSpacing(II)V

    .line 985
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getAnimationSwitch()I

    move-result v0

    if-ne v0, v5, :cond_0

    move v0, v5

    :goto_0
    invoke-virtual {v2, v0}, Lcom/lx/launcher8/view/CellLayout;->setStartAnimaEnable(Z)V

    .line 986
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getScrollAllowed()I

    move-result v0

    if-ne v0, v5, :cond_1

    move v0, v5

    :goto_1
    invoke-virtual {v2, v0}, Lcom/lx/launcher8/view/CellLayout;->setCacheScroll(Z)V

    .line 987
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0, p0}, Lcom/lx/launcher8/view/CellLayout;->setOnItemClickListener(Lcom/lx/launcher8/view/CellLayout$OnItemClickListener;)V

    .line 988
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0, p0}, Lcom/lx/launcher8/view/CellLayout;->setOnItemLongClickListener(Lcom/lx/launcher8/view/CellLayout$OnItemLongClickListener;)V

    .line 991
    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppsRootLayout:Landroid/widget/RelativeLayout;

    .line 993
    const v0, 0x7f09010e

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mGridHeadLayout:Landroid/widget/RelativeLayout;

    .line 994
    const v0, 0x7f090112

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mGridSearch:Landroid/widget/ImageView;

    .line 995
    const v0, 0x7f090111

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mGridSort:Landroid/widget/ImageView;

    .line 997
    const v0, 0x7f090115

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSidebar:Landroid/widget/LinearLayout;

    .line 998
    const v0, 0x7f090117

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSearch:Landroid/widget/TextView;

    .line 1000
    const v0, 0x7f090118

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSearchEditText:Landroid/widget/EditText;

    .line 1001
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSearchEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1002
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSearchEditText:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1003
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSearchEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1004
    const v0, 0x7f090119

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSearchIv:Landroid/widget/ImageView;

    .line 1005
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSearchIv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mSearchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1006
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSearch:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mSearchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1007
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mGridSearch:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mSearchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1008
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mGridSort:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mSearchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1009
    const v0, 0x7f09011a

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/FilterGridView;

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    .line 1010
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    invoke-virtual {v0, v5}, Lcom/lx/launcher8/view/FilterGridView;->setTextFilterEnabled(Z)V

    .line 1011
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/FilterGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1012
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mItemLongClick:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/FilterGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1013
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    invoke-virtual {v0, v5}, Lcom/lx/launcher8/view/FilterGridView;->setNumColumns(I)V

    .line 1014
    new-instance v0, Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/adapter/AppAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    .line 1016
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/FilterGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1017
    const/high16 v0, 0x40c0

    invoke-static {p0, v0}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v0

    float-to-int v7, v0

    .line 1018
    .local v7, padding:I
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    invoke-virtual {v0, v9, v9, v7, v7}, Lcom/lx/launcher8/view/FilterGridView;->setPadding(IIII)V

    .line 1020
    const v0, 0x7f090110

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mGridTitle:Landroid/widget/TextView;

    .line 1021
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mGridTitle:Landroid/widget/TextView;

    add-int/lit8 v2, v7, 0x3

    invoke-virtual {v0, v2, v7, v9, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1022
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mGridTitle:Landroid/widget/TextView;

    const v2, 0x7f0a00b1

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    const v0, 0x7f09011b

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mInitAppListIv:Landroid/widget/ImageView;

    .line 1025
    const v0, 0x7f09011c

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/LoadingText;

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mInitAppListLoading:Lcom/lx/launcher8/view/LoadingText;

    .line 1026
    const v0, 0x7f090104

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mWpAd:Landroid/widget/ImageView;

    .line 1027
    const v0, 0x7f090105

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mWpClose:Landroid/widget/ImageView;

    .line 1028
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mInitAppListLoading:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/LoadingText;->startAnimation()V

    .line 1029
    invoke-direct {p0}, Lcom/lx/launcher8/AnallLauncher;->applyAppStyle()V

    .line 1030
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v8

    .line 1031
    .local v8, themePaper:I
    invoke-direct {p0, v8}, Lcom/lx/launcher8/AnallLauncher;->applyPaper(I)V

    .line 1032
    invoke-direct {p0, v8}, Lcom/lx/launcher8/AnallLauncher;->changeAppTextColor(I)V

    .line 1033
    invoke-direct {p0, v8}, Lcom/lx/launcher8/AnallLauncher;->changeAppBackColor(I)V

    .line 1034
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/AppSetting;->getAppAlphaBg()I

    move-result v2

    invoke-static {v2}, Lcom/lx/launcher8/util/Utils;->alphaTranslate(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/adapter/AppAdapter;->setBackAlpha(I)V

    .line 1035
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/AppSetting;->getAppAlphaFg()I

    move-result v2

    invoke-static {v2}, Lcom/lx/launcher8/util/Utils;->alphaTranslate(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/adapter/AppAdapter;->setIconAlpha(I)V

    .line 1036
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/AppSetting;->isAppIndexBlod()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/adapter/AppAdapter;->setIndexBlod(Z)V

    .line 1037
    invoke-direct {p0, v5}, Lcom/lx/launcher8/AnallLauncher;->changeAppIndex(Z)V

    .line 1038
    return-void

    .end local v7           #padding:I
    .end local v8           #themePaper:I
    :cond_0
    move v0, v9

    .line 985
    goto/16 :goto_0

    :cond_1
    move v0, v9

    .line 986
    goto/16 :goto_1
.end method

.method private startStatusBar()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x7d0

    .line 269
    new-instance v2, Lcom/lx/launcher8/AnallLauncher$12;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/AnallLauncher$12;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    .line 283
    .local v2, run:Ljava/lang/Runnable;
    const-wide/16 v0, 0x1f4

    .line 284
    .local v0, delay:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 285
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 290
    :goto_0
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mEnterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    return-void

    .line 287
    :cond_0
    add-long/2addr v0, v7

    .line 288
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private unRegisterSDReceiver()V
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1422
    :cond_0
    return-void
.end method

.method private unregisterTimeUpdate()V
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSOFFReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSOFFReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSOFFReceiver:Landroid/content/BroadcastReceiver;

    .line 1401
    :cond_0
    return-void
.end method

.method private xxxYyy()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2300
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/lx/launcher8/util/Utils;->yyyXxxx(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2301
    .local v1, local:Ljava/lang/String;
    const-string v5, "f64121653fc7a000552912cb6d411994"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ac8542c8c223e7ca8879ae8c87f3d3bc"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2302
    const-string v5, "3de593f6105bcbd4974e8514386f0673"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2303
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2304
    .local v0, language:Ljava/lang/String;
    const-string v3, ""

    .line 2305
    .local v3, warning:Ljava/lang/String;
    const-string v2, ""

    .line 2306
    .local v2, msg:Ljava/lang/String;
    const-string v4, "zh"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2307
    const-string v3, "\u6e29\u99a8\u63d0\u793a"

    .line 2308
    const-string v2, "\u3000\u3000\u60a8\u5f53\u524d\u4f7f\u7528\u7684WP8\u684c\u9762\u975e\u5b89\u7a9d\u7f51\u51fa\u54c1\uff0c\u7ee7\u7eed\u4f7f\u7528\u53ef\u80fd\u4f1a\u5f71\u54cd\u60a8\u7684\u4f53\u9a8c\u4e0e\u5347\u7ea7\uff0c\u4e86\u89e3\u66f4\u591a\u8bf7\u8bbf\u95ee\uff1ahttp://wp8.anall.cn \u786e\u8ba4\u4e0b\u8f7d\u5b89\u88c5\u5b89\u7a9d\u7f51WP8\u684c\u9762\uff1f"

    .line 2313
    :goto_0
    new-instance v4, Lcom/lx/launcher8/view/PopupDialog;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v4

    .line 2314
    const v5, 0x7f0a0077

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/lx/launcher8/AnallLauncher$30;

    invoke-direct {v6, p0}, Lcom/lx/launcher8/AnallLauncher$30;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    invoke-virtual {v4, v5, v6}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v4

    .line 2319
    const v5, 0x7f0a0078

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/lx/launcher8/AnallLauncher$31;

    invoke-direct {v6, p0}, Lcom/lx/launcher8/AnallLauncher$31;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    invoke-virtual {v4, v5, v6}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v4

    .line 2323
    invoke-virtual {v4}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    .line 2324
    const/4 v4, 0x1

    .line 2326
    .end local v0           #language:Ljava/lang/String;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #warning:Ljava/lang/String;
    :cond_0
    return v4

    .line 2310
    .restart local v0       #language:Ljava/lang/String;
    .restart local v2       #msg:Ljava/lang/String;
    .restart local v3       #warning:Ljava/lang/String;
    :cond_1
    const-string v3, "warning"

    .line 2311
    const-string v2, "Attention Please!We have detected that you are not using LauncherWP8 app made by Anall.cn. If you continue using this app, it may cause unexpected results to your user experience and software updates. For more information, please click here: http://wp8.anall.cn Are you sure to downlaod and install our LauncherWP8 from anall.cn?"

    goto :goto_0
.end method


# virtual methods
.method public OnItemClick(Lcom/lx/launcher8/view/CellView;II)V
    .locals 21
    .parameter "cell"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1992
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/lx/launcher8/AnallLauncher;->isLedClick:Z

    .line 1993
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mDragController:Lcom/lx/launcher8/view/DragController;

    invoke-virtual {v4}, Lcom/lx/launcher8/view/DragController;->isNeedBlockTouch()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1994
    if-nez p1, :cond_1

    .line 1995
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/AnallLauncher;->endDeskEdit()V

    .line 2134
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1997
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mDragController:Lcom/lx/launcher8/view/DragController;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/lx/launcher8/view/DragController;->beginDrag(Lcom/lx/launcher8/view/CellView;)V

    goto :goto_0

    .line 1999
    :cond_2
    if-eqz p1, :cond_0

    .line 2000
    invoke-virtual/range {p1 .. p1}, Lcom/lx/launcher8/view/CellView;->getCellType()I

    move-result v20

    .line 2001
    .local v20, type:I
    sparse-switch v20, :sswitch_data_0

    .line 2130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->led:Lcom/lx/launcher8/util/LEDManager;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/util/LEDManager;->setLight(Ljava/lang/Boolean;)V

    goto :goto_0

    :sswitch_0
    move-object/from16 v4, p1

    .line 2004
    check-cast v4, Lcom/lx/launcher8/view/SimpleCellView;

    invoke-virtual {v4}, Lcom/lx/launcher8/view/SimpleCellView;->clearNoticeNum()V

    .line 2008
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v4

    iget-object v13, v4, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    .line 2009
    .local v13, intent:Landroid/content/Intent;
    if-nez v13, :cond_3

    .line 2010
    invoke-virtual/range {p0 .. p1}, Lcom/lx/launcher8/AnallLauncher;->startCellViewSet(Lcom/lx/launcher8/view/CellView;)V

    goto :goto_0

    .line 2013
    :cond_3
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v17, v0

    .line 2014
    .local v17, loc:[I
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/CellView;->getLocationOnScreen([I)V

    .line 2015
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    aget v5, v17, v5

    const/4 v6, 0x1

    aget v6, v17, v6

    invoke-virtual/range {p1 .. p1}, Lcom/lx/launcher8/view/CellView;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/lx/launcher8/view/CellView;->getHeight()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v13, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2016
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    new-instance v5, Lcom/lx/launcher8/AnallLauncher$26;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v13, v1}, Lcom/lx/launcher8/AnallLauncher$26;-><init>(Lcom/lx/launcher8/AnallLauncher;Landroid/content/Intent;Lcom/lx/launcher8/view/CellView;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/lx/launcher8/view/CellLayout;->startItemAnima(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2026
    .end local v13           #intent:Landroid/content/Intent;
    .end local v17           #loc:[I
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v4

    iget-object v4, v4, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5}, Lcom/lx/launcher8/AnallLauncher;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2027
    new-instance v4, Lcom/lx/launcher8/view/PopupDialog;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a01c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v4

    .line 2028
    const v5, 0x7f0a0018

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v4

    .line 2029
    const v5, 0x7f0a01cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/lx/launcher8/AnallLauncher$27;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/lx/launcher8/AnallLauncher$27;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    invoke-virtual {v4, v5, v6}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v4

    .line 2049
    const v5, 0x7f0a0078

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/lx/launcher8/AnallLauncher$28;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/lx/launcher8/AnallLauncher$28;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    invoke-virtual {v4, v5, v6}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v4

    .line 2053
    invoke-virtual {v4}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    goto/16 :goto_0

    .line 2057
    :sswitch_3
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/lx/launcher8/AnallLauncher;->onMenuOpened(ILandroid/view/Menu;)Z

    goto/16 :goto_0

    .line 2060
    :sswitch_4
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lx/launcher8/AnallLauncher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2063
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v10

    check-cast v10, Lcom/lx/launcher8/bean/AppWidgetCell;

    .line 2064
    .local v10, awc:Lcom/lx/launcher8/bean/AppWidgetCell;
    iget v4, v10, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 2065
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lx/launcher8/AnallLauncher;->mWidgetUpView:Lcom/lx/launcher8/view/CellView;

    .line 2066
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/AnallLauncher;->pickWidget()V

    goto/16 :goto_0

    .line 2069
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/lx/launcher8/view/CellView;->requestFocus()Z

    .line 2070
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2071
    .local v2, donwTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x5

    sub-long/2addr v4, v6

    .line 2072
    const/4 v6, 0x0

    move/from16 v0, p2

    int-to-float v7, v0

    move/from16 v0, p3

    int-to-float v8, v0

    const/4 v9, 0x0

    .line 2071
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    .line 2073
    .local v18, md:Landroid/view/MotionEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    .line 2074
    const/4 v6, 0x1

    move/from16 v0, p2

    int-to-float v7, v0

    move/from16 v0, p3

    int-to-float v8, v0

    const/4 v9, 0x0

    .line 2073
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v19

    .line 2075
    .local v19, mu:Landroid/view/MotionEvent;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/CellView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2076
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/CellView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 2079
    .end local v2           #donwTime:J
    .end local v10           #awc:Lcom/lx/launcher8/bean/AppWidgetCell;
    .end local v18           #md:Landroid/view/MotionEvent;
    .end local v19           #mu:Landroid/view/MotionEvent;
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v11

    check-cast v11, Lcom/lx/launcher8/bean/FolderCell;

    .line 2080
    .local v11, cf:Lcom/lx/launcher8/bean/FolderCell;
    invoke-virtual {v11}, Lcom/lx/launcher8/bean/FolderCell;->getFolderSettings()[I

    move-result-object v4

    const/4 v5, 0x2

    aget v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 2081
    new-instance v12, Landroid/content/Intent;

    const-class v4, Lcom/lx/launcher8/DisplayFolderAct;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2082
    .local v12, fi:Landroid/content/Intent;
    invoke-virtual {v11, v12}, Lcom/lx/launcher8/bean/FolderCell;->setIntentParam(Landroid/content/Intent;)V

    .line 2083
    const/16 v4, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Lcom/lx/launcher8/AnallLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2085
    .end local v12           #fi:Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    if-nez v4, :cond_6

    .line 2086
    new-instance v4, Lcom/lx/launcher8/DispalyFolderDialog;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Lcom/lx/launcher8/DispalyFolderDialog;-><init>(Lcom/lx/launcher8/AnallLauncher;Lcom/lx/launcher8/bean/FolderCell;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    .line 2087
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/DispalyFolderDialog;->setCanceledOnTouchOutside(Z)V

    .line 2088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    invoke-virtual {v4}, Lcom/lx/launcher8/DispalyFolderDialog;->show()V

    goto/16 :goto_0

    .line 2090
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    invoke-virtual {v4}, Lcom/lx/launcher8/DispalyFolderDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2091
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    invoke-virtual {v4}, Lcom/lx/launcher8/DispalyFolderDialog;->dismiss()V

    goto/16 :goto_0

    .line 2093
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    invoke-virtual {v4}, Lcom/lx/launcher8/DispalyFolderDialog;->show()V

    goto/16 :goto_0

    .line 2099
    .end local v11           #cf:Lcom/lx/launcher8/bean/FolderCell;
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v16

    check-cast v16, Lcom/lx/launcher8/bean/LightCell;

    .line 2100
    .local v16, lc:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v4

    check-cast p1, Lcom/lx/launcher8/view/SimpleCellView;

    .end local p1
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/lx/launcher8/AnallApp;->setSCView(Lcom/lx/launcher8/view/SimpleCellView;)V

    .line 2101
    move-object/from16 v0, v16

    iget v4, v0, Lcom/lx/launcher8/bean/LightCell;->openMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    move-object/from16 v0, v16

    iget v4, v0, Lcom/lx/launcher8/bean/LightCell;->lightMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 2102
    :cond_8
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/lx/launcher8/AnallLauncher;->isLedClick:Z

    .line 2103
    const/4 v15, 0x0

    .line 2104
    .local v15, lIntent:Landroid/content/Intent;
    move-object/from16 v0, v16

    iget v4, v0, Lcom/lx/launcher8/bean/LightCell;->lightMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 2105
    new-instance v15, Landroid/content/Intent;

    .end local v15           #lIntent:Landroid/content/Intent;
    const-class v4, Lcom/lx/launcher8/setting/wp8/LightScreenAct;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2106
    .restart local v15       #lIntent:Landroid/content/Intent;
    const-string v4, "lightLong_int"

    move-object/from16 v0, v16

    iget v5, v0, Lcom/lx/launcher8/bean/LightCell;->lightLong:I

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2110
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lx/launcher8/AnallLauncher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2108
    :cond_9
    new-instance v15, Landroid/content/Intent;

    .end local v15           #lIntent:Landroid/content/Intent;
    const-class v4, Lcom/lx/launcher8/setting/wp8/LightAct;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v15       #lIntent:Landroid/content/Intent;
    goto :goto_1

    .line 2112
    .end local v15           #lIntent:Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->led:Lcom/lx/launcher8/util/LEDManager;

    if-nez v4, :cond_b

    .line 2113
    new-instance v4, Lcom/lx/launcher8/util/LEDManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lx/launcher8/AnallLauncher;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lx/launcher8/AnallLauncher;->mLightSv:Landroid/view/SurfaceView;

    invoke-direct {v4, v5, v6}, Lcom/lx/launcher8/util/LEDManager;-><init>(Landroid/os/Handler;Landroid/view/SurfaceView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->led:Lcom/lx/launcher8/util/LEDManager;

    .line 2115
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->led:Lcom/lx/launcher8/util/LEDManager;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/util/LEDManager;->setLight(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 2119
    .end local v16           #lc:Lcom/lx/launcher8/bean/LightCell;
    .restart local p1
    :sswitch_8
    new-instance v14, Landroid/content/Intent;

    const-class v4, Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2120
    .local v14, intent2:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lx/launcher8/AnallLauncher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2123
    .end local v14           #intent2:Landroid/content/Intent;
    :sswitch_9
    new-instance v14, Landroid/content/Intent;

    const-class v4, Lcom/lx/launcher8/setting/wp8/SearchAct;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2124
    .restart local v14       #intent2:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lx/launcher8/AnallLauncher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2127
    .end local v14           #intent2:Landroid/content/Intent;
    :sswitch_a
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lx/launcher8/setting/wp8/ShareAct;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lx/launcher8/AnallLauncher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2001
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x3 -> :sswitch_6
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0x20 -> :sswitch_7
        0x21 -> :sswitch_8
        0x80 -> :sswitch_9
        0x81 -> :sswitch_a
    .end sparse-switch
.end method

.method public OnItemLongClick(Lcom/lx/launcher8/view/CellView;)Z
    .locals 1
    .parameter "cell"

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getLockLauncherEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1971
    const/4 v0, 0x0

    .line 1978
    :goto_0
    return v0

    .line 1972
    :cond_0
    if-eqz p1, :cond_1

    .line 1973
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mDragController:Lcom/lx/launcher8/view/DragController;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/DragController;->beginDrag(Lcom/lx/launcher8/view/CellView;)V

    .line 1974
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->onDynStop()V

    .line 1978
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1976
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->endDeskEdit()V

    goto :goto_1
.end method

.method public applyAppStyle(I)V
    .locals 8
    .parameter "themeStyle"

    .prologue
    const/4 v5, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1195
    const/high16 v4, 0x40c0

    invoke-static {p0, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v4

    float-to-int v2, v4

    .line 1196
    .local v2, padding:I
    const v4, 0x7f090114

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1197
    .local v0, line:Landroid/view/View;
    const v4, 0x7f090113

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1198
    .local v1, line1:Landroid/view/View;
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v3

    .line 1199
    .local v3, themeColor:I
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v4, p1}, Lcom/lx/launcher8/adapter/AppAdapter;->setDisplay(I)V

    .line 1200
    if-nez p1, :cond_1

    .line 1201
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mSidebar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1202
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mGridHeadLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1203
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/FilterGridView;->setNumColumns(I)V

    .line 1204
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    const/high16 v5, 0x4100

    invoke-static {p0, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/FilterGridView;->setVerticalSpacing(I)V

    .line 1228
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    invoke-virtual {v4, p1, v3}, Lcom/lx/launcher8/view/FilterGridView;->applyStyle(II)V

    .line 1229
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/FilterGridView;->setFilterText(Ljava/lang/String;)V

    .line 1230
    return-void

    .line 1205
    :cond_1
    if-ne p1, v5, :cond_2

    .line 1206
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mSidebar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1207
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mGridHeadLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1208
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/FilterGridView;->setNumColumns(I)V

    .line 1209
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    invoke-virtual {v4, v2}, Lcom/lx/launcher8/view/FilterGridView;->setHorizontalSpacing(I)V

    .line 1210
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    mul-int/lit8 v5, v2, 0x2

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/FilterGridView;->setVerticalSpacing(I)V

    .line 1211
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mGridTitle:Landroid/widget/TextView;

    const/high16 v5, 0x420c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1212
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mGridTitle:Landroid/widget/TextView;

    const v5, 0x7f0a00b1

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1214
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1215
    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 1216
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mSidebar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1217
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mGridHeadLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1218
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/FilterGridView;->setNumColumns(I)V

    .line 1219
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    invoke-virtual {v4, v2}, Lcom/lx/launcher8/view/FilterGridView;->setHorizontalSpacing(I)V

    .line 1220
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    invoke-virtual {v4, v6}, Lcom/lx/launcher8/view/FilterGridView;->setVerticalSpacing(I)V

    .line 1221
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mGridTitle:Landroid/widget/TextView;

    const/high16 v5, 0x4180

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1222
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mGridTitle:Landroid/widget/TextView;

    const v5, 0x7f0a00b2

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1224
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1225
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1226
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    const/16 v2, 0x8

    .line 1732
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v1, p1}, Lcom/lx/launcher8/adapter/AppAdapter;->setApps(Ljava/util/ArrayList;)V

    .line 1734
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mInitAppListIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1735
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mWorkspace:Lcom/lx/launcher8/view/Workspace;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/Workspace;->getCurScreen()I

    move-result v1

    if-nez v1, :cond_1

    .line 1736
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mInitAppListIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1737
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mInitAppListLoading:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/LoadingText;->stopAnimation()V

    .line 1738
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mInitAppListLoading:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 1760
    :cond_0
    :goto_0
    return-void

    .line 1741
    :cond_1
    const v1, 0x7f04000d

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1742
    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mInitAppListIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1743
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mInitAppListLoading:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/LoadingText;->stopAnimation()V

    .line 1744
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mInitAppListLoading:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 1745
    new-instance v1, Lcom/lx/launcher8/AnallLauncher$22;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/AnallLauncher$22;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter
    .parameter "loaded"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1764
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/adapter/AppAdapter;->add(Ljava/util/ArrayList;)V

    .line 1765
    if-nez p2, :cond_0

    .line 1766
    invoke-direct {p0}, Lcom/lx/launcher8/AnallLauncher;->reBuildAppList()V

    .line 1768
    :cond_0
    return-void
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1782
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->freshAppload()V

    .line 1783
    return-void
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1776
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/adapter/AppAdapter;->isSearch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/FilterGridView;->setFilterText(Ljava/lang/String;)V

    .line 1778
    :cond_0
    return-void
.end method

.method public bindCell(Ljava/util/ArrayList;II)V
    .locals 4
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/ItemCell;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1618
    .local p1, cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/ItemCell;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, p3, :cond_1

    .line 1628
    :cond_0
    return-void

    .line 1620
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/DeskSetting;->getDisplayCellText()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    .line 1621
    .local v0, enable:Z
    :goto_0
    move v1, p2

    .local v1, i:I
    :goto_1
    if-ge v1, p3, :cond_0

    .line 1622
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/bean/ItemCell;

    invoke-direct {p0, v3}, Lcom/lx/launcher8/AnallLauncher;->createViewFromInfo(Lcom/lx/launcher8/bean/ItemCell;)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    .line 1623
    .local v2, view:Lcom/lx/launcher8/view/CellView;
    if-eqz v2, :cond_2

    .line 1624
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v3, v2}, Lcom/lx/launcher8/view/CellLayout;->addViewInLayout(Landroid/view/View;)Z

    .line 1625
    invoke-virtual {v2, v0}, Lcom/lx/launcher8/view/CellView;->setTextDisplay(Z)V

    .line 1621
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1620
    .end local v0           #enable:Z
    .end local v1           #i:I
    .end local v2           #view:Lcom/lx/launcher8/view/CellView;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method changeAppPreview()V
    .locals 2

    .prologue
    .line 1185
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppList()I

    move-result v0

    .line 1186
    .local v0, themeStyle:I
    add-int/lit8 v1, v0, 0x1

    rem-int/lit8 v0, v1, 0x3

    .line 1187
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppList(I)V

    .line 1188
    return-void
.end method

.method changeAppSort()V
    .locals 11

    .prologue
    const/16 v10, 0x11

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1809
    iget-object v5, p0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/AppSetting;->getAppSort()I

    move-result v3

    .line 1810
    .local v3, sortType:I
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f030077

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1811
    .local v2, popView:Landroid/view/View;
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    const/4 v8, -0x2

    invoke-direct {v1, v2, v5, v8, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 1812
    .local v1, pop:Landroid/widget/PopupWindow;
    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1813
    new-instance v0, Lcom/lx/launcher8/AnallLauncher$23;

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/AnallLauncher$23;-><init>(Lcom/lx/launcher8/AnallLauncher;Landroid/widget/PopupWindow;)V

    .line 1830
    .local v0, click:Landroid/view/View$OnClickListener;
    new-instance v5, Lcom/lx/launcher8/view/ColorDrawable;

    iget-object v8, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v8}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v8

    invoke-direct {v5, v8}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1831
    const v5, 0x7f0901fd

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1832
    .local v4, tv:Landroid/widget/TextView;
    const v5, 0x7f0a0191

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1833
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1834
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1835
    if-nez v3, :cond_0

    move v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1836
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1837
    const v5, 0x7f0901fe

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #tv:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 1838
    .restart local v4       #tv:Landroid/widget/TextView;
    const v5, 0x7f0a0192

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1839
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1840
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1841
    if-ne v3, v6, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1842
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1843
    const v5, 0x7f0901ff

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #tv:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 1844
    .restart local v4       #tv:Landroid/widget/TextView;
    const v5, 0x7f0a0193

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1845
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1846
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1847
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1848
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1850
    iget-object v5, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    invoke-virtual {v1, v5, v10, v7, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1851
    return-void

    :cond_0
    move v5, v7

    .line 1835
    goto :goto_0

    :cond_1
    move v5, v7

    .line 1841
    goto :goto_1

    :cond_2
    move v6, v7

    .line 1847
    goto :goto_2
.end method

.method public changeLockService(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/anall/screenlock/LockScreenService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 314
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public compoundScreenshot()Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    .line 2201
    iget-object v12, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v12}, Lcom/lx/launcher8/view/CellLayout;->getRealHeight()I

    move-result v6

    .line 2202
    .local v6, height:I
    iget-object v12, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v12}, Lcom/lx/launcher8/view/CellLayout;->getWidth()I

    move-result v10

    .line 2203
    .local v10, width:I
    const/4 v0, 0x0

    .line 2205
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v12, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v12}, Lcom/lx/launcher8/view/CellLayout;->getWidth()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v6, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2210
    iget-object v12, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/lx/launcher8/view/CellLayout;->scrollTo(II)V

    .line 2212
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2214
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v12, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v12}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v8

    .line 2215
    .local v8, paper:I
    if-nez v8, :cond_1

    .line 2216
    const/4 v12, -0x1

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2241
    :cond_0
    :goto_0
    iget-object v12, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    const/high16 v13, 0x4000

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 2242
    const/high16 v14, 0x4000

    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 2241
    invoke-virtual {v12, v13, v14}, Lcom/lx/launcher8/view/CellLayout;->measure(II)V

    .line 2243
    iget-object v12, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v10, v6}, Lcom/lx/launcher8/view/CellLayout;->layout(IIII)V

    .line 2245
    iget-object v12, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v12, v1}, Lcom/lx/launcher8/view/CellLayout;->draw(Landroid/graphics/Canvas;)V

    move-object v12, v0

    .line 2247
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v8           #paper:I
    :goto_1
    return-object v12

    .line 2206
    :catch_0
    move-exception v4

    .line 2207
    .local v4, e:Ljava/lang/OutOfMemoryError;
    const-string v12, "compound screenshot outOfMemerry!!"

    invoke-static {v12}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;)V

    .line 2208
    const/4 v12, 0x0

    goto :goto_1

    .line 2217
    .end local v4           #e:Ljava/lang/OutOfMemoryError;
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    .restart local v8       #paper:I
    :cond_1
    const/4 v12, 0x1

    if-ne v8, v12, :cond_2

    .line 2218
    const/high16 v12, -0x100

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 2220
    :cond_2
    const/4 v3, 0x0

    .line 2221
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v11

    .line 2223
    .local v11, wm:Landroid/app/WallpaperManager;
    if-eqz v11, :cond_3

    .line 2224
    :try_start_1
    invoke-virtual {v11}, Landroid/app/WallpaperManager;->peekDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 2227
    :cond_3
    :goto_2
    if-eqz v3, :cond_0

    .line 2228
    iget-object v12, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v12}, Lcom/lx/launcher8/view/CellLayout;->getHeight()I

    move-result v5

    .line 2229
    .local v5, h:I
    const/4 v12, 0x1

    if-le v5, v12, :cond_0

    .line 2230
    add-int v12, v6, v5

    add-int/lit8 v12, v12, -0x1

    div-int v2, v12, v5

    .line 2231
    .local v2, count:I
    const/4 v9, 0x0

    .line 2232
    .local v9, start:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    if-ge v7, v2, :cond_0

    .line 2233
    mul-int v9, v7, v5

    .line 2234
    const/4 v12, 0x0

    mul-int/lit8 v13, v10, 0x2

    add-int v14, v9, v5

    invoke-virtual {v3, v12, v9, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2235
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2232
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2225
    .end local v2           #count:I
    .end local v5           #h:I
    .end local v7           #i:I
    .end local v9           #start:I
    :catch_1
    move-exception v12

    goto :goto_2
.end method

.method public createFolder()V
    .locals 2

    .prologue
    .line 1267
    new-instance v0, Lcom/lx/launcher8/bean/FolderCell;

    invoke-direct {v0}, Lcom/lx/launcher8/bean/FolderCell;-><init>()V

    .line 1268
    .local v0, fc:Lcom/lx/launcher8/bean/FolderCell;
    const-string v1, "pic/folder_closed.png"

    invoke-static {p0, v1}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/bean/FolderCell;->icon:Landroid/graphics/Bitmap;

    .line 1269
    const v1, 0x7f0a01da

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/bean/FolderCell;->title:Ljava/lang/String;

    .line 1270
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/bean/FolderCell;->setTextGarivty(I)V

    .line 1271
    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 1272
    return-void
.end method

.method public deleteCellView(Lcom/lx/launcher8/view/CellView;)V
    .locals 6
    .parameter "cell"

    .prologue
    .line 1947
    if-nez p1, :cond_1

    .line 1966
    :cond_0
    :goto_0
    return-void

    .line 1949
    :cond_1
    invoke-virtual {p1}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    .line 1950
    .local v2, item:Lcom/lx/launcher8/bean/ItemCell;
    invoke-virtual {p1}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v4

    iget-wide v0, v4, Lcom/lx/launcher8/bean/ItemCell;->id:J

    .line 1951
    .local v0, id:J
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {v4, v2}, Lcom/lx/launcher8/db/LauncherModel;->removeCellToDatabase(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 1953
    instance-of v4, p1, Lcom/lx/launcher8/view/FolderCellView;

    if-eqz v4, :cond_2

    .line 1954
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {v4, v0, v1}, Lcom/lx/launcher8/db/LauncherModel;->removeFolderItems(J)V

    .line 1956
    :cond_2
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mDynViews:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1957
    instance-of v4, p1, Lcom/lx/launcher8/view/SimpleCellView;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 1958
    check-cast v3, Lcom/lx/launcher8/view/SimpleCellView;

    .line 1959
    .local v3, sc:Lcom/lx/launcher8/view/SimpleCellView;
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mFunDialViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1960
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mFunSmsViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1962
    .end local v3           #sc:Lcom/lx/launcher8/view/SimpleCellView;
    :cond_3
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v4, p1}, Lcom/lx/launcher8/view/CellLayout;->onDelCell(Lcom/lx/launcher8/view/CellView;)V

    .line 1963
    invoke-virtual {p1}, Lcom/lx/launcher8/view/CellView;->getCellType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1964
    iget-object v5, p0, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p1}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v4, v4, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    invoke-virtual {v5, v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0
.end method

.method public endDeskEdit()V
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mDragController:Lcom/lx/launcher8/view/DragController;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/DragController;->cancelDrag()V

    .line 1236
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->storeCellInfo()V

    .line 1237
    return-void
.end method

.method enterSearchMode()V
    .locals 2

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->endDeskEdit()V

    .line 462
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mWorkspace:Lcom/lx/launcher8/view/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/Workspace;->snapToScreen(I)V

    .line 463
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSearch:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 464
    return-void
.end method

.method public exitAppSearchMode()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1240
    invoke-direct {p0}, Lcom/lx/launcher8/AnallLauncher;->applyAppStyle()V

    .line 1241
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/adapter/AppAdapter;->setSearch(Z)V

    .line 1242
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/FilterGridView;->setFilterText(Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1244
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mSearchIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1245
    return-void
.end method

.method public findSpecialCell(I)Lcom/lx/launcher8/view/CellView;
    .locals 4
    .parameter "type"

    .prologue
    .line 1326
    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    .line 1327
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 1328
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mDynViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1334
    const/4 v1, 0x0

    .line 1336
    :goto_0
    return-object v1

    .line 1328
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/DynamicCell;

    .local v0, cell:Lcom/lx/launcher8/view/DynamicCell;
    move-object v1, v0

    .line 1329
    check-cast v1, Lcom/lx/launcher8/view/CellView;

    .line 1330
    .local v1, view:Lcom/lx/launcher8/view/CellView;
    invoke-virtual {v1}, Lcom/lx/launcher8/view/CellView;->getCellType()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    .line 1336
    .end local v0           #cell:Lcom/lx/launcher8/view/DynamicCell;
    .end local v1           #view:Lcom/lx/launcher8/view/CellView;
    :cond_3
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v2, p1}, Lcom/lx/launcher8/view/CellLayout;->findViewByType(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v1

    goto :goto_0
.end method

.method public finishBindingApps()V
    .locals 0

    .prologue
    .line 1771
    invoke-direct {p0}, Lcom/lx/launcher8/AnallLauncher;->reBuildAppList()V

    .line 1772
    return-void
.end method

.method public finishBindingCell()V
    .locals 13

    .prologue
    const/16 v12, 0x81

    const/16 v11, 0x80

    const/16 v10, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1665
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    iget-object v6, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/lx/launcher8/view/CellLayout;->applyTheme(I)V

    .line 1666
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    iget-object v6, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellAlpha()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/lx/launcher8/view/CellLayout;->applyAlpha(I)V

    .line 1667
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    iget-object v6, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellFGAlpha()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/lx/launcher8/view/CellLayout;->applyFGAlpha(I)V

    .line 1668
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    iget-object v6, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellTextAlpha()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/lx/launcher8/view/CellLayout;->appTextAlpha(I)V

    .line 1670
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v3}, Lcom/lx/launcher8/view/CellLayout;->forceLayout()V

    .line 1672
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mSaveState:Landroid/os/Bundle;

    invoke-direct {p0, v3}, Lcom/lx/launcher8/AnallLauncher;->restoreState(Landroid/os/Bundle;)V

    .line 1674
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mAirReceiver:Lcom/lx/launcher8/receiver/AirPlaneReceiver;

    if-eqz v3, :cond_0

    .line 1675
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mAirReceiver:Lcom/lx/launcher8/receiver/AirPlaneReceiver;

    invoke-virtual {v3, p0}, Lcom/lx/launcher8/receiver/AirPlaneReceiver;->isAirOpen(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {p0, v3, v4}, Lcom/lx/launcher8/AnallLauncher;->onAirplaneChanged(ZZ)V

    .line 1678
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v6, "mounted"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    invoke-direct {p0, v3, v4}, Lcom/lx/launcher8/AnallLauncher;->rebake(ZZ)V

    .line 1679
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->freshFunctions()V

    .line 1680
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->onDynStart()V

    .line 1682
    const/4 v0, 0x0

    .line 1684
    .local v0, curVersion:I
    :try_start_0
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1687
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/32 v8, 0x2bf20

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    if-lez v0, :cond_3

    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/DeskSetting;->getLastVersion()I

    move-result v3

    if-eq v3, v0, :cond_3

    .line 1688
    invoke-static {p0}, Lcom/lx/launcher8/util/Utils;->checkLauncherIsDefault(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1689
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v3, v0}, Lcom/lx/launcher8/cfg/DeskSetting;->setLastVersion(I)V

    .line 1690
    new-instance v3, Lcom/lx/launcher8/view/PopupDialog;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0003

    invoke-virtual {p0, v6}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v3

    .line 1691
    const v6, 0x7f0a0002

    invoke-virtual {p0, v6}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    const v8, 0x7f0a0001

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v3

    .line 1692
    const v4, 0x7f0a0077

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/lx/launcher8/AnallLauncher$20;

    invoke-direct {v6, p0}, Lcom/lx/launcher8/AnallLauncher$20;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    invoke-virtual {v3, v4, v6}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v3

    .line 1697
    const v4, 0x7f0a0078

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/lx/launcher8/AnallLauncher$21;

    invoke-direct {v6, p0}, Lcom/lx/launcher8/AnallLauncher$21;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    invoke-virtual {v3, v4, v6}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v3

    .line 1701
    invoke-virtual {v3}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    .line 1704
    invoke-virtual {p0, v10}, Lcom/lx/launcher8/AnallLauncher;->findSpecialCell(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    .line 1705
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_1

    .line 1706
    invoke-static {}, Lcom/lx/launcher8/bean/CellFactory;->getInstance()Lcom/lx/launcher8/bean/CellFactory;

    move-result-object v3

    invoke-virtual {v3, p0, v10}, Lcom/lx/launcher8/bean/CellFactory;->createSpecialBean(Landroid/content/Context;I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v1

    .line 1707
    .local v1, itemCell:Lcom/lx/launcher8/bean/ItemCell;
    invoke-direct {p0, v1}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 1711
    .end local v1           #itemCell:Lcom/lx/launcher8/bean/ItemCell;
    :cond_1
    invoke-virtual {p0, v11}, Lcom/lx/launcher8/AnallLauncher;->findSpecialCell(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    .line 1712
    if-nez v2, :cond_2

    .line 1713
    invoke-static {}, Lcom/lx/launcher8/bean/CellFactory;->getInstance()Lcom/lx/launcher8/bean/CellFactory;

    move-result-object v3

    invoke-virtual {v3, p0, v11}, Lcom/lx/launcher8/bean/CellFactory;->createSpecialBean(Landroid/content/Context;I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v1

    .line 1714
    .restart local v1       #itemCell:Lcom/lx/launcher8/bean/ItemCell;
    invoke-direct {p0, v1}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 1718
    .end local v1           #itemCell:Lcom/lx/launcher8/bean/ItemCell;
    :cond_2
    invoke-virtual {p0, v12}, Lcom/lx/launcher8/AnallLauncher;->findSpecialCell(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    .line 1719
    if-nez v2, :cond_3

    .line 1720
    invoke-static {}, Lcom/lx/launcher8/bean/CellFactory;->getInstance()Lcom/lx/launcher8/bean/CellFactory;

    move-result-object v3

    invoke-virtual {v3, p0, v12}, Lcom/lx/launcher8/bean/CellFactory;->createSpecialBean(Landroid/content/Context;I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v1

    .line 1721
    .restart local v1       #itemCell:Lcom/lx/launcher8/bean/ItemCell;
    invoke-direct {p0, v1}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 1725
    .end local v1           #itemCell:Lcom/lx/launcher8/bean/ItemCell;
    .end local v2           #view:Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeLock()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 1726
    invoke-virtual {p0, v5}, Lcom/lx/launcher8/AnallLauncher;->changeLockService(Z)V

    .line 1728
    :cond_4
    return-void

    .end local v0           #curVersion:I
    :cond_5
    move v3, v5

    .line 1678
    goto/16 :goto_0

    .line 1685
    .restart local v0       #curVersion:I
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method public forbidWorkspaceScroll()Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mDragController:Lcom/lx/launcher8/view/DragController;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/DragController;->isNeedBlockTouch()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/adapter/AppAdapter;->isSearch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public freshAppload()V
    .locals 2

    .prologue
    .line 1855
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {v1}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v1

    iget-object v1, v1, Lcom/anall/app/bean/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1856
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/adapter/AppAdapter;->setApps(Ljava/util/ArrayList;)V

    .line 1857
    invoke-direct {p0}, Lcom/lx/launcher8/AnallLauncher;->reBuildAppList()V

    .line 1858
    return-void
.end method

.method public freshFunctions()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    invoke-virtual {v0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->getUnReadMsg()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->setFunSmsNum(I)V

    .line 403
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    invoke-virtual {v0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->getMissedCall()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->setFunDialNum(I)V

    .line 404
    return-void
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mWorkspace:Lcom/lx/launcher8/view/Workspace;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/Workspace;->getCurScreen()I

    move-result v0

    return v0
.end method

.method public getPickSpecialValue()I
    .locals 6

    .prologue
    .line 1275
    const/4 v0, 0x0

    .line 1277
    .local v0, exists:I
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/CellLayout;->findViewByType(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1278
    or-int/lit8 v0, v0, 0x1

    .line 1280
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/CellLayout;->findViewByType(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1281
    or-int/lit8 v0, v0, 0x10

    .line 1283
    :cond_1
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/CellLayout;->findViewByType(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1284
    or-int/lit8 v0, v0, 0x20

    .line 1286
    :cond_2
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/CellLayout;->findViewByType(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1287
    or-int/lit8 v0, v0, 0x40

    .line 1289
    :cond_3
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/CellLayout;->findViewByType(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1290
    or-int/lit16 v0, v0, 0x80

    .line 1292
    :cond_4
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/CellLayout;->findViewByType(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1293
    or-int/lit16 v0, v0, 0x100

    .line 1295
    :cond_5
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    const/16 v5, 0x81

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/CellLayout;->findViewByType(I)Lcom/lx/launcher8/view/CellView;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1296
    or-int/lit16 v0, v0, 0x200

    .line 1298
    :cond_6
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mDynViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1299
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_7

    .line 1313
    return v0

    .line 1300
    :cond_7
    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher;->mDynViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/view/CellView;

    .line 1301
    .local v3, view:Lcom/lx/launcher8/view/CellView;
    invoke-virtual {v3}, Lcom/lx/launcher8/view/CellView;->getCellType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1299
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1303
    :pswitch_0
    or-int/lit8 v0, v0, 0x2

    .line 1304
    goto :goto_1

    .line 1306
    :pswitch_1
    or-int/lit8 v0, v0, 0x4

    .line 1307
    goto :goto_1

    .line 1309
    :pswitch_2
    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 1301
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isAllAppsVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1787
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mWorkspace:Lcom/lx/launcher8/view/Workspace;

    if-nez v2, :cond_1

    .line 1789
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mWorkspace:Lcom/lx/launcher8/view/Workspace;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/Workspace;->getCurScreen()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 566
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/lx/launcher8/AnallLauncher;->mEditCell:Lcom/lx/launcher8/bean/ItemCell;

    .line 567
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/lx/launcher8/AnallLauncher;->mWaitingForResult:Z

    .line 569
    const/4 v12, -0x1

    move/from16 v0, p2

    if-eq v0, v12, :cond_1

    .line 570
    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 571
    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_0

    .line 572
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/lx/launcher8/AnallLauncher;->mWidgetUpView:Lcom/lx/launcher8/view/CellView;

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 624
    :pswitch_0
    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 578
    :pswitch_1
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 581
    :pswitch_2
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->completeAddAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 584
    :pswitch_3
    const-string v12, "extral_info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 585
    .local v6, cn:Landroid/content/ComponentName;
    iget-object v12, p0, Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {v12}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v12

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/anall/app/bean/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;

    move-result-object v1

    .line 586
    .local v1, app:Lcom/anall/app/bean/AppInfo;
    invoke-direct {p0, v1}, Lcom/lx/launcher8/AnallLauncher;->completeAddApp(Lcom/anall/app/bean/AppInfo;)V

    goto :goto_0

    .line 589
    .end local v1           #app:Lcom/anall/app/bean/AppInfo;
    .end local v6           #cn:Landroid/content/ComponentName;
    :pswitch_4
    const/4 v12, 0x7

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v12}, Lcom/lx/launcher8/AnallLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 592
    :pswitch_5
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->completeAddShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 595
    :pswitch_6
    invoke-static/range {p3 .. p3}, Lcom/lx/launcher8/bean/ItemCell;->getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v4

    .line 596
    .local v4, cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-direct {p0, v4}, Lcom/lx/launcher8/AnallLauncher;->addCell(Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_0

    .line 599
    .end local v4           #cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    :pswitch_7
    const-string v12, "cell_delete_or_not"

    const/4 v13, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 600
    .local v7, delete:I
    invoke-static/range {p3 .. p3}, Lcom/lx/launcher8/bean/ItemCell;->getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v8

    .line 601
    .local v8, item:Lcom/lx/launcher8/bean/ItemCell;
    invoke-direct {p0, v8, v7}, Lcom/lx/launcher8/AnallLauncher;->completeEditCell(Lcom/lx/launcher8/bean/ItemCell;I)V

    goto :goto_0

    .line 604
    .end local v7           #delete:I
    .end local v8           #item:Lcom/lx/launcher8/bean/ItemCell;
    :pswitch_8
    const-string v12, "special"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 605
    .local v10, old:I
    const-string v12, "extral_info"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 606
    .local v9, newValue:I
    xor-int v5, v9, v10

    .line 607
    .local v5, change:I
    invoke-direct {p0, v5}, Lcom/lx/launcher8/AnallLauncher;->completeSpecial(I)V

    goto :goto_0

    .line 610
    .end local v5           #change:I
    .end local v9           #newValue:I
    .end local v10           #old:I
    :pswitch_9
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->requestEditFolder(Landroid/content/Intent;)V

    goto :goto_0

    .line 613
    :pswitch_a
    const-string v12, "return-data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, batchs:[Ljava/lang/String;
    array-length v13, v3

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_0

    aget-object v11, v3, v12

    .line 615
    .local v11, str:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 614
    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 617
    :cond_3
    iget-object v14, p0, Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {v14}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/anall/app/bean/AllAppsList;->get(Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;

    move-result-object v2

    .line 618
    .local v2, appinfo:Lcom/anall/app/bean/AppInfo;
    if-eqz v2, :cond_2

    .line 620
    invoke-direct {p0, v2}, Lcom/lx/launcher8/AnallLauncher;->completeAddApp(Lcom/anall/app/bean/AppInfo;)V

    goto :goto_2

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onAirplaneChanged(ZZ)V
    .locals 4
    .parameter "enable"
    .parameter "delay"

    .prologue
    .line 1525
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/lx/launcher8/AnallLauncher$19;

    invoke-direct {v3, p0, p1}, Lcom/lx/launcher8/AnallLauncher$19;-><init>(Lcom/lx/launcher8/AnallLauncher;Z)V

    .line 1534
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x2ee0

    .line 1525
    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1535
    return-void

    .line 1534
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public onCallIncoming(Ljava/lang/String;)V
    .locals 0
    .parameter "incomingNumber"

    .prologue
    .line 1874
    return-void
.end method

.method public onCallReceive(ILjava/lang/String;)V
    .locals 4
    .parameter "missedCall"
    .parameter "incomingNumber"

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lx/launcher8/AnallLauncher$24;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/AnallLauncher$24;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    .line 1868
    const-wide/16 v2, 0x258

    .line 1862
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1869
    return-void
.end method

.method public onChanged(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 16
    .parameter "key"
    .parameter "preference"

    .prologue
    .line 1442
    sget-boolean v2, Lcom/lx/launcher8/AnallLauncher;->isRestore:Z

    if-eqz v2, :cond_1

    .line 1521
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    const-string v2, "ThemeColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1446
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 1447
    .local v15, themecolor:I
    const v2, 0x7f090114

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1448
    .local v10, line:Landroid/view/View;
    const v2, 0x7f090113

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1449
    .local v11, line1:Landroid/view/View;
    invoke-virtual {v10, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1450
    invoke-virtual {v11, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v2, v15}, Lcom/lx/launcher8/view/CellLayout;->applyTheme(I)V

    .line 1452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lx/launcher8/AnallLauncher;->changeAppBackColor(I)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppList()I

    move-result v4

    invoke-virtual {v2, v4, v15}, Lcom/lx/launcher8/view/FilterGridView;->applyStyle(II)V

    goto :goto_0

    .line 1454
    .end local v10           #line:Landroid/view/View;
    .end local v11           #line1:Landroid/view/View;
    .end local v15           #themecolor:I
    :cond_2
    const-string v2, "ThemeWallPaper"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v13

    .line 1456
    .local v13, paper:I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lx/launcher8/AnallLauncher;->applyPaper(I)V

    .line 1457
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lx/launcher8/AnallLauncher;->changeAppBackColor(I)V

    .line 1458
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.anall.launcher.settings.changed"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/AnallLauncher;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1459
    .end local v13           #paper:I
    :cond_3
    const-string v2, "CellText"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getDisplayCellText()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v8, 0x1

    .line 1461
    .local v8, enable:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v2, v8}, Lcom/lx/launcher8/view/CellLayout;->setCellTextDisplay(Z)V

    goto/16 :goto_0

    .line 1460
    .end local v8           #enable:Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 1462
    :cond_5
    const-string v2, "AnimationSwitch"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getAnimationSwitch()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v4, v2}, Lcom/lx/launcher8/view/CellLayout;->setStartAnimaEnable(Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 1464
    :cond_7
    const-string v2, "ScrollAllowed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getScrollAllowed()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_8

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v4, v2}, Lcom/lx/launcher8/view/CellLayout;->setCacheScroll(Z)V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    .line 1466
    :cond_9
    const-string v2, "CellGap"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellGap()I

    move-result v3

    .line 1468
    .local v3, gap:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    const/4 v7, 0x1

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v2 .. v7}, Lcom/lx/launcher8/view/CellLayout;->setPadding(IIIIZ)V

    .line 1469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v2, v3, v3}, Lcom/lx/launcher8/view/CellLayout;->setSpacing(II)V

    goto/16 :goto_0

    .line 1470
    .end local v3           #gap:I
    :cond_a
    const-string v2, "CellAlpha"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellAlpha()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/view/CellLayout;->applyAlpha(I)V

    goto/16 :goto_0

    .line 1472
    :cond_b
    const-string v2, "CellfgAlpha"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellFGAlpha()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/view/CellLayout;->applyFGAlpha(I)V

    goto/16 :goto_0

    .line 1474
    :cond_c
    const-string v2, "celltextalpha"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellTextAlpha()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/view/CellLayout;->appTextAlpha(I)V

    goto/16 :goto_0

    .line 1477
    :cond_d
    const-string v2, "ThemeLock"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeLock()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/AnallLauncher;->changeLockService(Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    goto :goto_4

    .line 1479
    :cond_f
    const-string v2, "ThemeAppTextColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/AppSetting;->getThemePaper()I

    move-result v14

    .line 1481
    .local v14, themePaper:I
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lx/launcher8/AnallLauncher;->changeAppTextColor(I)V

    goto/16 :goto_0

    .line 1482
    .end local v14           #themePaper:I
    :cond_10
    const-string v2, "AppIconColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lx/launcher8/AnallLauncher;->changeAppBackColor(I)V

    goto/16 :goto_0

    .line 1484
    :cond_11
    const-string v2, "ThemeAppHeader"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1485
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lx/launcher8/AnallLauncher;->changeAppIndex(Z)V

    goto/16 :goto_0

    .line 1486
    :cond_12
    const-string v2, "appsort"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1487
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lx/launcher8/AnallLauncher;->changeAppIndex(Z)V

    .line 1488
    invoke-direct/range {p0 .. p0}, Lcom/lx/launcher8/AnallLauncher;->reBuildAppList()V

    goto/16 :goto_0

    .line 1489
    :cond_13
    const-string v2, "appindexblod"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/AppSetting;->isAppIndexBlod()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/adapter/AppAdapter;->setIndexBlod(Z)V

    goto/16 :goto_0

    .line 1491
    :cond_14
    const-string v2, "ThemeAppList"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1492
    invoke-direct/range {p0 .. p0}, Lcom/lx/launcher8/AnallLauncher;->applyAppStyle()V

    goto/16 :goto_0

    .line 1493
    :cond_15
    const-string v2, "appbgalpha"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/AppSetting;->getAppAlphaBg()I

    move-result v4

    invoke-static {v4}, Lcom/lx/launcher8/util/Utils;->alphaTranslate(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/adapter/AppAdapter;->setBackAlpha(I)V

    goto/16 :goto_0

    .line 1496
    :cond_16
    const-string v2, "appfgalpha"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/AppSetting;->getAppAlphaFg()I

    move-result v4

    invoke-static {v4}, Lcom/lx/launcher8/util/Utils;->alphaTranslate(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/adapter/AppAdapter;->setIconAlpha(I)V

    goto/16 :goto_0

    .line 1498
    :cond_17
    const-string v2, "lockeygap"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1499
    new-instance v9, Landroid/content/Intent;

    const-string v2, "com.anall.screen.LOCK_MODE_CHANGE"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1500
    .local v9, intent:Landroid/content/Intent;
    const-string v2, "value"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1501
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/lx/launcher8/AnallLauncher;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1502
    .end local v9           #intent:Landroid/content/Intent;
    :cond_18
    const-string v2, "LockStatusBar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1503
    new-instance v9, Landroid/content/Intent;

    const-class v2, Lcom/anall/statusbar/BarService;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1504
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v4, "LockStatusBar"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_19

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v9, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1505
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/lx/launcher8/AnallLauncher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1504
    :cond_19
    const/4 v2, 0x0

    goto :goto_5

    .line 1506
    .end local v9           #intent:Landroid/content/Intent;
    :cond_1a
    const-string v2, "ThemeStatusBar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1507
    new-instance v9, Landroid/content/Intent;

    const-class v2, Lcom/anall/statusbar/BarService;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1508
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v2, "ThemeStatusBar"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v4

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1509
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/lx/launcher8/AnallLauncher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1510
    .end local v9           #intent:Landroid/content/Intent;
    :cond_1b
    const-string v2, "StatusDisplayRange"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1511
    new-instance v9, Landroid/content/Intent;

    const-class v2, Lcom/anall/statusbar/BarService;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1512
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v2, "StatusDisplayRange"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusDispaly()Z

    move-result v4

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1513
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/lx/launcher8/AnallLauncher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1514
    .end local v9           #intent:Landroid/content/Intent;
    :cond_1c
    const-string v2, "StatusHoldTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1515
    const-string v2, "StatusBattey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1516
    :cond_1d
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.anall.launcher.settings.changed"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/AnallLauncher;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1517
    :cond_1e
    const-string v2, "screenorietation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1518
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/lx/launcher8/util/Utils;->trans2System(I)I

    move-result v12

    .line 1519
    .local v12, orientation:I
    sput v12, Lcom/lx/launcher8/NoSearchAct;->mScreenOrientation:I

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1983
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1984
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    if-eqz v0, :cond_0

    .line 1985
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    invoke-virtual {v0}, Lcom/lx/launcher8/DispalyFolderDialog;->dismiss()V

    .line 1986
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    .line 1988
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0, v4}, Lcom/lx/launcher8/AnallLauncher;->requestWindowFeature(I)Z

    .line 211
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/AnallApp;

    .line 212
    .local v0, app:Lcom/lx/launcher8/AnallApp;
    invoke-virtual {v0, p0}, Lcom/lx/launcher8/AnallApp;->setLauncher(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    .line 214
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 215
    new-instance v2, Landroid/appwidget/AppWidgetHost;

    const/16 v3, 0x100

    invoke-direct {v2, p0, v3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 216
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->startListening()V

    .line 218
    new-instance v2, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 219
    new-instance v2, Lcom/lx/launcher8/cfg/AppSetting;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/cfg/AppSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;

    .line 220
    new-instance v2, Lcom/lx/launcher8/view/DragController;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/view/DragController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mDragController:Lcom/lx/launcher8/view/DragController;

    .line 222
    if-eqz p1, :cond_0

    .line 223
    iput-boolean v4, p0, Lcom/lx/launcher8/AnallLauncher;->mRestoring:Z

    .line 224
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher;->mSaveState:Landroid/os/Bundle;

    .line 226
    :cond_0
    const v2, 0x7f03000a

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/AnallLauncher;->setContentView(I)V

    .line 227
    invoke-direct {p0}, Lcom/lx/launcher8/AnallLauncher;->setupViews()V

    .line 229
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-static {p0, v2}, Lcom/lx/launcher8/util/LocaleUtil;->checkLocaleConfig(Landroid/content/Context;Lcom/lx/launcher8/db/LauncherModel;)V

    .line 230
    iget-boolean v2, p0, Lcom/lx/launcher8/AnallLauncher;->mRestoring:Z

    if-nez v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {v2, p0, v4}, Lcom/lx/launcher8/db/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 233
    :cond_1
    new-instance v2, Lcom/lx/launcher8/AnallLauncher$11;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/AnallLauncher$11;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    iput-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mHandler:Landroid/os/Handler;

    .line 243
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mNetCheckRunnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->registPreference()V

    .line 246
    invoke-static {}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->getInstance()Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    .line 247
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    invoke-virtual {v2, p0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->setCallReceiveListener(Lcom/lx/launcher8/receiver/LauncherNotificationManager$CallReceiveListener;)V

    .line 248
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    invoke-virtual {v2, p0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->setMessageReceiveListener(Lcom/lx/launcher8/receiver/LauncherNotificationManager$MessageReceiveListener;)V

    .line 249
    new-instance v2, Lcom/lx/launcher8/receiver/AirPlaneReceiver;

    invoke-direct {v2}, Lcom/lx/launcher8/receiver/AirPlaneReceiver;-><init>()V

    iput-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mAirReceiver:Lcom/lx/launcher8/receiver/AirPlaneReceiver;

    .line 250
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mAirReceiver:Lcom/lx/launcher8/receiver/AirPlaneReceiver;

    invoke-virtual {v2, p0}, Lcom/lx/launcher8/receiver/AirPlaneReceiver;->setOnAirListener(Lcom/lx/launcher8/receiver/AirPlaneReceiver$OnAirplaneModeChange;)V

    .line 251
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mAirReceiver:Lcom/lx/launcher8/receiver/AirPlaneReceiver;

    invoke-virtual {v2, p0}, Lcom/lx/launcher8/receiver/AirPlaneReceiver;->listen(Landroid/content/Context;)V

    .line 252
    invoke-direct {p0}, Lcom/lx/launcher8/AnallLauncher;->registerTimeUpdate()V

    .line 255
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 256
    .local v1, heightId:I
    if-nez v1, :cond_2

    .line 257
    const/16 v2, 0x28

    iput v2, p0, Lcom/lx/launcher8/AnallLauncher;->mStatusBarHeight:I

    .line 262
    :goto_0
    const v2, 0x7f09004f

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/AnallLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mLightSv:Landroid/view/SurfaceView;

    .line 263
    return-void

    .line 259
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/AnallLauncher;->mStatusBarHeight:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 527
    const-string v0, "menu"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 468
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    iput-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 474
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->unRegistPreference()V

    .line 475
    invoke-direct {p0}, Lcom/lx/launcher8/AnallLauncher;->unregisterTimeUpdate()V

    .line 476
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    invoke-virtual {v0, p0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->removeListener(Lcom/lx/launcher8/receiver/LauncherNotificationManager$ReceiveListener;)V

    .line 477
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mAirReceiver:Lcom/lx/launcher8/receiver/AirPlaneReceiver;

    invoke-virtual {v0, p0}, Lcom/lx/launcher8/receiver/AirPlaneReceiver;->unListen(Landroid/content/Context;)V

    .line 478
    iput-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mAirReceiver:Lcom/lx/launcher8/receiver/AirPlaneReceiver;

    .line 479
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mFunDialViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 480
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mFunSmsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 481
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mDynViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 482
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellLayout;->removeAllViews()V

    .line 483
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mWorkspace:Lcom/lx/launcher8/view/Workspace;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/Workspace;->removeAllViews()V

    .line 484
    return-void

    .line 471
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDynStart()V
    .locals 3

    .prologue
    .line 386
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mWorkspace:Lcom/lx/launcher8/view/Workspace;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/Workspace;->getCurScreen()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mDynViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mDynViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 391
    :cond_0
    return-void

    .line 387
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/DynamicCell;

    .line 388
    .local v0, dc:Lcom/lx/launcher8/view/DynamicCell;
    invoke-interface {v0}, Lcom/lx/launcher8/view/DynamicCell;->onStart()V

    goto :goto_0
.end method

.method public onDynStop()V
    .locals 3

    .prologue
    .line 394
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mDynViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mDynViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 399
    :cond_0
    return-void

    .line 395
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/DynamicCell;

    .line 396
    .local v0, dc:Lcom/lx/launcher8/view/DynamicCell;
    invoke-interface {v0}, Lcom/lx/launcher8/view/DynamicCell;->onStop()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 510
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 511
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v1}, Lcom/lx/launcher8/adapter/AppAdapter;->isSearch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->exitAppSearchMode()V

    .line 523
    :goto_0
    return v0

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mDragController:Lcom/lx/launcher8/view/DragController;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/DragController;->isNeedBlockTouch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->endDeskEdit()V

    goto :goto_0

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mWorkspace:Lcom/lx/launcher8/view/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/Workspace;->snapToScreen(I)V

    .line 519
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/CellLayout;->scrollTop()V

    goto :goto_0

    .line 523
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 5
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 535
    iget-boolean v2, p0, Lcom/lx/launcher8/AnallLauncher;->mMenuOpened:Z

    if-eqz v2, :cond_0

    .line 561
    :goto_0
    return v3

    .line 537
    :cond_0
    iput-boolean v4, p0, Lcom/lx/launcher8/AnallLauncher;->mMenuOpened:Z

    .line 538
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mWorkspace:Lcom/lx/launcher8/view/Workspace;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/Workspace;->getCurScreen()I

    move-result v1

    .line 539
    .local v1, whichScreen:I
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v2}, Lcom/lx/launcher8/adapter/AppAdapter;->isSearch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 540
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->exitAppSearchMode()V

    .line 542
    :cond_1
    new-instance v0, Lcom/lx/launcher8/MenuDialog;

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v0, p0, v2, v1}, Lcom/lx/launcher8/MenuDialog;-><init>(Lcom/lx/launcher8/AnallLauncher;Lcom/lx/launcher8/cfg/DeskSetting;I)V

    .line 543
    .local v0, dialog:Lcom/lx/launcher8/MenuDialog;
    new-instance v2, Lcom/lx/launcher8/AnallLauncher$14;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/AnallLauncher$14;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/MenuDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 553
    new-instance v2, Lcom/lx/launcher8/AnallLauncher$15;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/AnallLauncher$15;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/MenuDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 559
    invoke-virtual {v0, v4}, Lcom/lx/launcher8/MenuDialog;->setCanceledOnTouchOutside(Z)V

    .line 560
    invoke-virtual {v0}, Lcom/lx/launcher8/MenuDialog;->showNow()V

    goto :goto_0
.end method

.method public onMessageReceive(ILjava/lang/String;)V
    .locals 1
    .parameter "unReadCount"
    .parameter "lastMsgBody"

    .prologue
    .line 1878
    new-instance v0, Lcom/lx/launcher8/AnallLauncher$25;

    invoke-direct {v0, p0, p1}, Lcom/lx/launcher8/AnallLauncher$25;-><init>(Lcom/lx/launcher8/AnallLauncher;I)V

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1884
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 488
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mRecentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mRecentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mRecentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mRecentDialog:Landroid/app/Dialog;

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->forbidWorkspaceScroll()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mDragController:Lcom/lx/launcher8/view/DragController;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/DragController;->cancelDrag()V

    .line 494
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->exitAppSearchMode()V

    .line 502
    :cond_1
    :goto_0
    return-void

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mWorkspace:Lcom/lx/launcher8/view/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/Workspace;->snapToScreen(I)V

    .line 497
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellLayout;->scrollTop()V

    .line 498
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    invoke-virtual {v0}, Lcom/lx/launcher8/DispalyFolderDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    invoke-virtual {v0}, Lcom/lx/launcher8/DispalyFolderDialog;->dismiss()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 408
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/AnallLauncher;->mPaused:Z

    .line 410
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->onDynStop()V

    .line 411
    invoke-direct {p0}, Lcom/lx/launcher8/AnallLauncher;->unRegisterSDReceiver()V

    .line 412
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lx/launcher8/AnallLauncher$13;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/AnallLauncher$13;-><init>(Lcom/lx/launcher8/AnallLauncher;)V

    .line 417
    const-wide/16 v2, 0x320

    .line 412
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 418
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 345
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 346
    sput-boolean v2, Lcom/lx/launcher8/AnallLauncher;->isRestore:Z

    .line 347
    sget-boolean v1, Lcom/lx/launcher8/NoSearchAct;->mStop:Z

    if-eqz v1, :cond_1

    .line 349
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/anall/screenlock/LockScreenService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/AnallLauncher;->stopService(Landroid/content/Intent;)Z

    .line 351
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/anall/statusbar/BarService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/AnallLauncher;->stopService(Landroid/content/Intent;)Z

    .line 353
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-direct {p0}, Lcom/lx/launcher8/AnallLauncher;->xxxYyy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    iput-boolean v2, p0, Lcom/lx/launcher8/AnallLauncher;->mPaused:Z

    .line 361
    sget v1, Lcom/lx/launcher8/NoSearchAct;->mScreenOrientation:I

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/AnallLauncher;->setRequestedOrientation(I)V

    .line 363
    invoke-direct {p0}, Lcom/lx/launcher8/AnallLauncher;->registSDReceiver()V

    .line 364
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->onDynStart()V

    .line 365
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->freshFunctions()V

    .line 368
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/AnallApp;

    invoke-virtual {v1}, Lcom/lx/launcher8/AnallApp;->getChangeSpecial()I

    move-result v0

    .line 369
    .local v0, special:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 370
    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->completeSpecial(I)V

    .line 372
    :cond_2
    iget-boolean v1, p0, Lcom/lx/launcher8/AnallLauncher;->mRestoring:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/lx/launcher8/AnallLauncher;->mOnResumeNeedsLoad:Z

    if-eqz v1, :cond_4

    .line 373
    :cond_3
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {v1, p0, v4}, Lcom/lx/launcher8/db/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 374
    iput-boolean v2, p0, Lcom/lx/launcher8/AnallLauncher;->mOnResumeNeedsLoad:Z

    .line 375
    iput-boolean v2, p0, Lcom/lx/launcher8/AnallLauncher;->mRestoring:Z

    .line 377
    :cond_4
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v1}, Lcom/lx/launcher8/adapter/AppAdapter;->isSearch()Z

    move-result v1

    if-nez v1, :cond_5

    .line 378
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/FilterGridView;->setFilterText(Ljava/lang/String;)V

    .line 381
    :cond_5
    invoke-direct {p0}, Lcom/lx/launcher8/AnallLauncher;->startStatusBar()V

    .line 382
    invoke-static {}, Lcom/lx/launcher8/util/WpAdUtil;->getInstance()Lcom/lx/launcher8/util/WpAdUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mWpAd:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher;->mWpClose:Landroid/widget/ImageView;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/lx/launcher8/util/WpAdUtil;->showAd(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {v0}, Lcom/lx/launcher8/db/LauncherModel;->stopLoader()V

    .line 325
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 424
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mEditCell:Lcom/lx/launcher8/bean/ItemCell;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lx/launcher8/AnallLauncher;->mWaitingForResult:Z

    if-eqz v0, :cond_0

    .line 425
    const-string v0, "EDIT_CELL_ID"

    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mEditCell:Lcom/lx/launcher8/bean/ItemCell;

    iget-wide v1, v1, Lcom/lx/launcher8/bean/ItemCell;->id:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->led:Lcom/lx/launcher8/util/LEDManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lx/launcher8/AnallLauncher;->isLedClick:Z

    if-nez v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->led:Lcom/lx/launcher8/util/LEDManager;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/util/LEDManager;->setLight(Ljava/lang/Boolean;)V

    .line 430
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/AnallLauncher;->isLedClick:Z

    .line 431
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->enterSearchMode()V

    .line 457
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 331
    sget v0, Lcom/lx/launcher8/NoSearchAct;->mLauchActCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lx/launcher8/NoSearchAct;->mLauchActCount:I

    .line 332
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 336
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 337
    sget v0, Lcom/lx/launcher8/NoSearchAct;->mLauchActCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lx/launcher8/NoSearchAct;->mLauchActCount:I

    .line 338
    sget v0, Lcom/lx/launcher8/NoSearchAct;->mLauchActCount:I

    if-gtz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mExitRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 341
    :cond_0
    return-void
.end method

.method public pickSpecial()V
    .locals 3

    .prologue
    .line 1317
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lx/launcher8/setting/AddSpecialAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1318
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1319
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1321
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "special"

    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->getPickSpecialValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1322
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/AnallLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1323
    return-void
.end method

.method public pickWidget()V
    .locals 3

    .prologue
    .line 1257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1258
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1260
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/AnallLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1261
    return-void
.end method

.method public registPreference()V
    .locals 2

    .prologue
    .line 1425
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1426
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1425
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1427
    return-void
.end method

.method public setDeskEdit()V
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mDragController:Lcom/lx/launcher8/view/DragController;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/DragController;->startDrag()V

    .line 1253
    invoke-virtual {p0}, Lcom/lx/launcher8/AnallLauncher;->onDynStop()V

    .line 1254
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1603
    iget-boolean v1, p0, Lcom/lx/launcher8/AnallLauncher;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1604
    iput-boolean v0, p0, Lcom/lx/launcher8/AnallLauncher;->mOnResumeNeedsLoad:Z

    .line 1607
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showStateBarIfNeed()V
    .locals 4

    .prologue
    .line 317
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lx/launcher8/AnallLauncher;->changeNotificationStatus(Z)V

    .line 318
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mStateBarHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 447
    if-nez p1, :cond_0

    .line 452
    :goto_0
    return-void

    .line 449
    :cond_0
    if-ltz p2, :cond_1

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/AnallLauncher;->mWaitingForResult:Z

    .line 451
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startBinding()V
    .locals 1

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mCellLayout:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellLayout;->removeAllViews()V

    .line 1614
    return-void
.end method

.method public startCellViewSet(Lcom/lx/launcher8/view/CellView;)V
    .locals 5
    .parameter "cell"

    .prologue
    const/4 v4, 0x0

    .line 1918
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1919
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0xa

    .line 1920
    .local v1, requestCode:I
    instance-of v2, p1, Lcom/lx/launcher8/view/FolderCellView;

    if-eqz v2, :cond_1

    .line 1921
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v2

    if-nez v2, :cond_0

    .line 1922
    const-class v2, Lcom/lx/launcher8/setting/FolderSettingAct;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1923
    const-string v2, "extral_page"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1928
    :goto_0
    const/16 v1, 0xc

    .line 1935
    :goto_1
    const-string v2, "cell_delete_or_not"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1936
    invoke-virtual {p1}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mEditCell:Lcom/lx/launcher8/bean/ItemCell;

    .line 1937
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mEditCell:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/bean/ItemCell;->setIntentParam(Landroid/content/Intent;)V

    .line 1938
    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/AnallLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1939
    return-void

    .line 1925
    :cond_0
    const-class v2, Lcom/lx/launcher8/setting/wp8/FolderSettingsActWP8;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1926
    const-string v2, "extral_page"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1930
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1931
    const-class v2, Lcom/lx/launcher8/setting/wp8/EditCellAct;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 1933
    :cond_2
    const-class v2, Lcom/lx/launcher8/setting/EditCellAct;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public storeCellInfo()V
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {v0}, Lcom/lx/launcher8/db/LauncherModel;->updateCellAllToDatabase()V

    .line 1249
    return-void
.end method

.method public unRegistPreference()V
    .locals 2

    .prologue
    .line 1430
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1431
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher;->mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1430
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1432
    return-void
.end method
