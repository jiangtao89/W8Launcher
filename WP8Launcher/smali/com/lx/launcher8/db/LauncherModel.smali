.class public Lcom/lx/launcher8/db/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/db/LauncherModel$Callbacks;,
        Lcom/lx/launcher8/db/LauncherModel$LoaderTask;,
        Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;
    }
.end annotation


# static fields
.field static final DEBUG_LOADERS:Z = false

.field private static final ITEMS_CHUNK:I = 0x6

.field static final TAG:Ljava/lang/String; = "LauncherModel"

.field static final sFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lx/launcher8/bean/FolderCell;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;

.field static final sWorkspaceItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/ItemCell;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllAppsList:Lcom/anall/app/bean/AllAppsList;

.field private mAllAppsLoadDelay:I

.field private mAllAppsLoaded:Z

.field private final mApp:Lcom/lx/launcher8/AnallApp;

.field private mBatchSize:I

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lx/launcher8/db/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDBApp:Lcom/lx/launcher8/db/DBApp;

.field private mDBCell:Lcom/lx/launcher8/db/DBCell;

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mHandler:Lcom/lx/launcher8/db/DeferredHandler;

.field private mIconCache:Lcom/anall/app/bean/IconCache;

.field private mLoaderTask:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field protected mPreviousConfigMcc:I

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lx/launcher8/db/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 85
    sget-object v0, Lcom/lx/launcher8/db/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 87
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/lx/launcher8/db/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lx/launcher8/db/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lx/launcher8/db/LauncherModel;->sFolders:Ljava/util/HashMap;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/lx/launcher8/AnallApp;Lcom/anall/app/bean/IconCache;)V
    .locals 5
    .parameter "app"
    .parameter "iconCache"

    .prologue
    const/4 v4, 0x0

    .line 129
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 79
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/lx/launcher8/db/LauncherModel;->mLock:Ljava/lang/Object;

    .line 80
    new-instance v2, Lcom/lx/launcher8/db/DeferredHandler;

    invoke-direct {v2}, Lcom/lx/launcher8/db/DeferredHandler;-><init>()V

    iput-object v2, p0, Lcom/lx/launcher8/db/LauncherModel;->mHandler:Lcom/lx/launcher8/db/DeferredHandler;

    .line 131
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel;->mApp:Lcom/lx/launcher8/AnallApp;

    .line 132
    iput-object p2, p0, Lcom/lx/launcher8/db/LauncherModel;->mIconCache:Lcom/anall/app/bean/IconCache;

    .line 133
    new-instance v2, Lcom/anall/app/bean/AllAppsList;

    invoke-direct {v2, p2}, Lcom/anall/app/bean/AllAppsList;-><init>(Lcom/anall/app/bean/IconCache;)V

    iput-object v2, p0, Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;

    .line 135
    new-instance v2, Lcom/lx/launcher8/db/DBCell;

    iget-object v3, p0, Lcom/lx/launcher8/db/LauncherModel;->mApp:Lcom/lx/launcher8/AnallApp;

    invoke-direct {v2, v3}, Lcom/lx/launcher8/db/DBCell;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/db/LauncherModel;->mDBCell:Lcom/lx/launcher8/db/DBCell;

    .line 136
    new-instance v2, Lcom/lx/launcher8/db/DBApp;

    iget-object v3, p0, Lcom/lx/launcher8/db/LauncherModel;->mApp:Lcom/lx/launcher8/AnallApp;

    invoke-direct {v2, v3}, Lcom/lx/launcher8/db/DBApp;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/db/LauncherModel;->mDBApp:Lcom/lx/launcher8/db/DBApp;

    .line 140
    invoke-virtual {p1}, Lcom/lx/launcher8/AnallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 141
    .local v1, res:Landroid/content/res/Resources;
    iput v4, p0, Lcom/lx/launcher8/db/LauncherModel;->mAllAppsLoadDelay:I

    .line 142
    iput v4, p0, Lcom/lx/launcher8/db/LauncherModel;->mBatchSize:I

    .line 143
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 144
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mcc:I

    iput v2, p0, Lcom/lx/launcher8/db/LauncherModel;->mPreviousConfigMcc:I

    .line 145
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/db/LauncherModel;)Z
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/db/LauncherModel;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/lx/launcher8/db/LauncherModel;->mWorkspaceLoaded:Z

    return-void
.end method

.method static synthetic access$10(Lcom/lx/launcher8/db/LauncherModel;)Z
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method static synthetic access$11(Lcom/lx/launcher8/db/LauncherModel;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/lx/launcher8/db/LauncherModel;->mAllAppsLoaded:Z

    return-void
.end method

.method static synthetic access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DBApp;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mDBApp:Lcom/lx/launcher8/db/DBApp;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lx/launcher8/db/LauncherModel;)I
    .locals 1
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mBatchSize:I

    return v0
.end method

.method static synthetic access$15(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/IconCache;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mIconCache:Lcom/anall/app/bean/IconCache;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lx/launcher8/db/LauncherModel;)I
    .locals 1
    .parameter

    .prologue
    .line 76
    iget v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mAllAppsLoadDelay:I

    return v0
.end method

.method static synthetic access$17(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/AnallApp;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mApp:Lcom/lx/launcher8/AnallApp;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DeferredHandler;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mHandler:Lcom/lx/launcher8/db/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/LauncherModel$LoaderTask;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mLoaderTask:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/db/LauncherModel;Lcom/lx/launcher8/db/LauncherModel$LoaderTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel;->mLoaderTask:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    return-void
.end method

.method static synthetic access$7(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DBCell;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mDBCell:Lcom/lx/launcher8/db/DBCell;

    return-object v0
.end method

.method static synthetic access$8(Ljava/util/HashMap;J)Lcom/lx/launcher8/bean/FolderCell;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1415
    invoke-static {p0, p1, p2}, Lcom/lx/launcher8/db/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/lx/launcher8/db/LauncherModel;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel;->unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static findOrMakeFolder(Ljava/util/HashMap;J)Lcom/lx/launcher8/bean/FolderCell;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lx/launcher8/bean/FolderCell;",
            ">;J)",
            "Lcom/lx/launcher8/bean/FolderCell;"
        }
    .end annotation

    .prologue
    .line 1417
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/lx/launcher8/bean/FolderCell;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bean/FolderCell;

    .line 1418
    .local v0, folderInfo:Lcom/lx/launcher8/bean/FolderCell;
    if-nez v0, :cond_0

    .line 1420
    new-instance v0, Lcom/lx/launcher8/bean/FolderCell;

    .end local v0           #folderInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-direct {v0}, Lcom/lx/launcher8/bean/FolderCell;-><init>()V

    .line 1421
    .restart local v0       #folderInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    :cond_0
    return-object v0
.end method

.method private forceReload()V
    .locals 2

    .prologue
    .line 414
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 417
    :try_start_0
    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel;->stopLoaderLocked()Z

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mAllAppsLoaded:Z

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mWorkspaceLoaded:Z

    .line 414
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-virtual {p0}, Lcom/lx/launcher8/db/LauncherModel;->startLoaderFromBackground()V

    .line 425
    return-void

    .line 414
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private foreAppsload()V
    .locals 2

    .prologue
    .line 428
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 429
    :try_start_0
    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel;->stopLoaderLocked()Z

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mAllAppsLoaded:Z

    .line 428
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-virtual {p0}, Lcom/lx/launcher8/db/LauncherModel;->startLoaderFromBackground()V

    .line 433
    return-void

    .line 428
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private stopLoaderLocked()Z
    .locals 3

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, isLaunching:Z
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel;->mLoaderTask:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    .line 462
    .local v1, oldTask:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;
    if-eqz v1, :cond_1

    .line 463
    invoke-virtual {v1}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    const/4 v0, 0x1

    .line 466
    :cond_0
    invoke-virtual {v1}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->stopLocked()V

    .line 468
    :cond_1
    return v0
.end method

.method private unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/ItemCell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    sget-object v0, Lcom/lx/launcher8/db/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addAppToDatabase(Ljava/util/ArrayList;)V
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
    .line 251
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    new-instance v0, Lcom/lx/launcher8/db/LauncherModel$7;

    invoke-direct {v0, p0, p1}, Lcom/lx/launcher8/db/LauncherModel$7;-><init>(Lcom/lx/launcher8/db/LauncherModel;Ljava/util/ArrayList;)V

    .line 261
    .local v0, r:Ljava/lang/Runnable;
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 262
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 263
    :cond_2
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public addCellToDatabase(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 170
    new-instance v0, Lcom/lx/launcher8/db/LauncherModel$2;

    invoke-direct {v0, p0, p1}, Lcom/lx/launcher8/db/LauncherModel$2;-><init>(Lcom/lx/launcher8/db/LauncherModel;Lcom/lx/launcher8/bean/ItemCell;)V

    .line 177
    .local v0, r:Ljava/lang/Runnable;
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 178
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 1447
    const-string v0, "LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCallbacks="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mLoaderTask:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mLoaderTask:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->dumpState()V

    .line 1457
    :goto_0
    return-void

    .line 1455
    :cond_0
    const-string v0, "LauncherModel"

    const-string v1, "mLoaderTask=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method enqueuePackageUpdated(Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 1240
    sget-object v0, Lcom/lx/launcher8/db/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1241
    return-void
.end method

.method public freshApps(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 5
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 490
    iget-object v3, p0, Lcom/lx/launcher8/db/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, called:Z
    :try_start_0
    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 496
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel;->mLoaderTask:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    .line 497
    .local v1, oldTask:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-nez v2, :cond_1

    .line 499
    :cond_0
    const/4 v0, 0x1

    .line 500
    sget-object v2, Lcom/lx/launcher8/db/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v4, Lcom/lx/launcher8/db/LauncherModel$11;

    invoke-direct {v4, p0, p1, p2}, Lcom/lx/launcher8/db/LauncherModel$11;-><init>(Lcom/lx/launcher8/db/LauncherModel;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 510
    .end local v1           #oldTask:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;
    :cond_1
    if-nez v0, :cond_2

    .line 511
    if-eqz p2, :cond_2

    .line 512
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 490
    :cond_2
    monitor-exit v3

    .line 518
    return-void

    .line 490
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getAppInfoInstallTime(Landroid/content/ComponentName;Landroid/content/pm/PackageManager;)J
    .locals 5
    .parameter "cn"
    .parameter "pm"

    .prologue
    const-wide/16 v1, 0x0

    .line 1369
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1377
    :cond_0
    :goto_0
    return-wide v1

    .line 1372
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1373
    .local v0, pi:Landroid/content/pm/ApplicationInfo;
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 1374
    .end local v0           #pi:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getAppList()Lcom/anall/app/bean/AllAppsList;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;

    return-object v0
.end method

.method public getDeskTopCells()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/ItemCell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    sget-object v0, Lcom/lx/launcher8/db/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getItemCell(I)Lcom/lx/launcher8/bean/ItemCell;
    .locals 4
    .parameter "cellType"

    .prologue
    const/4 v2, 0x0

    .line 1460
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 1469
    :goto_0
    return-object v1

    .line 1464
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    move-object v1, v2

    .line 1469
    goto :goto_0

    .line 1465
    :cond_2
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/bean/ItemCell;

    iget v1, v1, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    if-ne v1, p1, :cond_3

    .line 1466
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/bean/ItemCell;

    goto :goto_0

    .line 1464
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public initialize(Lcom/lx/launcher8/db/LauncherModel$Callbacks;)V
    .locals 2
    .parameter "callbacks"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 329
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 328
    monitor-exit v1

    .line 331
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAllAppsLoaded()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method public needLoadAllApps()V
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mAllAppsLoaded:Z

    .line 534
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 341
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 344
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 345
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 346
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, packageName:Ljava/lang/String;
    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 349
    .local v5, replacing:Z
    const/4 v2, 0x0

    .line 351
    .local v2, op:I
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 411
    .end local v2           #op:I
    .end local v3           #packageName:Ljava/lang/String;
    .end local v5           #replacing:Z
    :cond_1
    :goto_0
    return-void

    .line 356
    .restart local v2       #op:I
    .restart local v3       #packageName:Ljava/lang/String;
    .restart local v5       #replacing:Z
    :cond_2
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 357
    const/4 v2, 0x2

    .line 372
    :cond_3
    :goto_1
    if-eqz v2, :cond_1

    .line 373
    new-instance v6, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;

    new-array v7, v7, [Ljava/lang/String;

    aput-object v3, v7, v8

    invoke-direct {v6, p0, v2, v7}, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;-><init>(Lcom/lx/launcher8/db/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/lx/launcher8/db/LauncherModel;->enqueuePackageUpdated(Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 358
    :cond_4
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 359
    if-nez v5, :cond_3

    .line 360
    const/4 v2, 0x3

    goto :goto_1

    .line 364
    :cond_5
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 365
    if-nez v5, :cond_6

    .line 366
    const/4 v2, 0x1

    goto :goto_1

    .line 368
    :cond_6
    const/4 v2, 0x2

    goto :goto_1

    .line 376
    .end local v2           #op:I
    .end local v3           #packageName:Ljava/lang/String;
    .end local v5           #replacing:Z
    :cond_7
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 378
    const-string v6, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, packages:[Ljava/lang/String;
    new-instance v6, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;

    invoke-direct {v6, p0, v7, v4}, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;-><init>(Lcom/lx/launcher8/db/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/lx/launcher8/db/LauncherModel;->enqueuePackageUpdated(Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;)V

    .line 381
    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel;->foreAppsload()V

    goto :goto_0

    .line 382
    .end local v4           #packages:[Ljava/lang/String;
    :cond_8
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 383
    const-string v6, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 384
    .restart local v4       #packages:[Ljava/lang/String;
    new-instance v6, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;

    .line 385
    const/4 v7, 0x4

    invoke-direct {v6, p0, v7, v4}, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;-><init>(Lcom/lx/launcher8/db/LauncherModel;I[Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0, v6}, Lcom/lx/launcher8/db/LauncherModel;->enqueuePackageUpdated(Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 386
    .end local v4           #packages:[Ljava/lang/String;
    :cond_9
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 388
    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel;->forceReload()V

    goto :goto_0

    .line 389
    :cond_a
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 393
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 394
    .local v1, currentConfig:Landroid/content/res/Configuration;
    iget v6, p0, Lcom/lx/launcher8/db/LauncherModel;->mPreviousConfigMcc:I

    iget v7, v1, Landroid/content/res/Configuration;->mcc:I

    if-eq v6, v7, :cond_b

    .line 395
    const-string v6, "LauncherModel"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Reload apps on config change. curr_mcc:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    iget v8, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " prevmcc:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lx/launcher8/db/LauncherModel;->mPreviousConfigMcc:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 395
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel;->forceReload()V

    .line 400
    :cond_b
    iget v6, v1, Landroid/content/res/Configuration;->mcc:I

    iput v6, p0, Lcom/lx/launcher8/db/LauncherModel;->mPreviousConfigMcc:I

    goto/16 :goto_0
.end method

.method public queryReverseApps(J)Ljava/util/ArrayList;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mDBCell:Lcom/lx/launcher8/db/DBCell;

    invoke-virtual {v0, p1, p2}, Lcom/lx/launcher8/db/DBCell;->queryReverse(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public removeAppToDatabase(Lcom/anall/app/bean/AppInfo;)V
    .locals 3
    .parameter "app"

    .prologue
    .line 279
    new-instance v0, Lcom/lx/launcher8/db/LauncherModel$9;

    invoke-direct {v0, p0, p1}, Lcom/lx/launcher8/db/LauncherModel$9;-><init>(Lcom/lx/launcher8/db/LauncherModel;Lcom/anall/app/bean/AppInfo;)V

    .line 285
    .local v0, r:Ljava/lang/Runnable;
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 286
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeAppToDatabase(Ljava/util/ArrayList;)V
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
    .line 291
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    new-instance v0, Lcom/lx/launcher8/db/LauncherModel$10;

    invoke-direct {v0, p0, p1}, Lcom/lx/launcher8/db/LauncherModel$10;-><init>(Lcom/lx/launcher8/db/LauncherModel;Ljava/util/ArrayList;)V

    .line 298
    .local v0, r:Ljava/lang/Runnable;
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 299
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 300
    :cond_2
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeCellToDatabase(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 226
    new-instance v0, Lcom/lx/launcher8/db/LauncherModel$5;

    invoke-direct {v0, p0, p1}, Lcom/lx/launcher8/db/LauncherModel$5;-><init>(Lcom/lx/launcher8/db/LauncherModel;Lcom/lx/launcher8/bean/ItemCell;)V

    .line 233
    .local v0, r:Ljava/lang/Runnable;
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 234
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeFolderItems(J)V
    .locals 3
    .parameter "containerId"

    .prologue
    .line 239
    new-instance v0, Lcom/lx/launcher8/db/LauncherModel$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/lx/launcher8/db/LauncherModel$6;-><init>(Lcom/lx/launcher8/db/LauncherModel;J)V

    .line 245
    .local v0, r:Ljava/lang/Runnable;
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 246
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method replaceCellsToDatabase(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/ItemCell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/ItemCell;>;"
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mDBCell:Lcom/lx/launcher8/db/DBCell;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/db/DBCell;->bulkReplase(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 472
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel;->stopLoaderLocked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p2, 0x0

    .line 482
    :goto_0
    new-instance v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;-><init>(Lcom/lx/launcher8/db/LauncherModel;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mLoaderTask:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    .line 483
    sget-object v0, Lcom/lx/launcher8/db/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 484
    sget-object v0, Lcom/lx/launcher8/db/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel;->mLoaderTask:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 472
    :cond_0
    monitor-exit v1

    .line 487
    return-void

    .line 481
    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLoaderFromBackground()V
    .locals 5

    .prologue
    .line 441
    const/4 v1, 0x0

    .line 442
    .local v1, runLoader:Z
    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    .line 444
    .local v0, callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 446
    invoke-interface {v0}, Lcom/lx/launcher8/db/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    const/4 v1, 0x1

    .line 451
    .end local v0           #callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    :cond_0
    const-string v2, "LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start Background "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    if-eqz v1, :cond_1

    .line 453
    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel;->mApp:Lcom/lx/launcher8/AnallApp;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/lx/launcher8/db/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 455
    :cond_1
    return-void
.end method

.method public stopLoader()V
    .locals 2

    .prologue
    .line 521
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mLoaderTask:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mLoaderTask:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->stopLocked()V

    .line 521
    :cond_0
    monitor-exit v1

    .line 526
    return-void

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindWorkspaceItems()V
    .locals 2

    .prologue
    .line 152
    sget-object v0, Lcom/lx/launcher8/db/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/lx/launcher8/db/LauncherModel$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/db/LauncherModel$1;-><init>(Lcom/lx/launcher8/db/LauncherModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method

.method public updateAppToDatabase(Lcom/anall/app/bean/AppInfo;)V
    .locals 3
    .parameter "app"

    .prologue
    .line 267
    new-instance v0, Lcom/lx/launcher8/db/LauncherModel$8;

    invoke-direct {v0, p0, p1}, Lcom/lx/launcher8/db/LauncherModel$8;-><init>(Lcom/lx/launcher8/db/LauncherModel;Lcom/anall/app/bean/AppInfo;)V

    .line 273
    .local v0, r:Ljava/lang/Runnable;
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 274
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public updateCellAllToDatabase()V
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/lx/launcher8/db/LauncherModel;->mWorkspaceLoaded:Z

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/lx/launcher8/db/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/db/LauncherModel;->updateCellToDatabase(Ljava/util/ArrayList;)V

    .line 203
    :cond_0
    return-void
.end method

.method public updateCellToDatabase(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 183
    new-instance v0, Lcom/lx/launcher8/db/LauncherModel$3;

    invoke-direct {v0, p0, p1}, Lcom/lx/launcher8/db/LauncherModel$3;-><init>(Lcom/lx/launcher8/db/LauncherModel;Lcom/lx/launcher8/bean/ItemCell;)V

    .line 193
    .local v0, r:Ljava/lang/Runnable;
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 194
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public updateCellToDatabase(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/ItemCell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/ItemCell;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    new-instance v0, Lcom/lx/launcher8/db/LauncherModel$4;

    invoke-direct {v0, p0, p1}, Lcom/lx/launcher8/db/LauncherModel$4;-><init>(Lcom/lx/launcher8/db/LauncherModel;Ljava/util/ArrayList;)V

    .line 216
    .local v0, r:Ljava/lang/Runnable;
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 217
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 218
    :cond_2
    sget-object v1, Lcom/lx/launcher8/db/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
