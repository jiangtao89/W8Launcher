.class Lcom/lx/launcher8/db/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/db/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsLaunching:Z

.field private mLoadAndBindStepFinished:Z

.field private mStopped:Z

.field private mWaitThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/lx/launcher8/db/LauncherModel;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/LauncherModel;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput-object p2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 552
    iput-boolean p3, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mIsLaunching:Z

    .line 554
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 547
    iput-boolean p1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1050
    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->loadAllAppsByBatch()V

    return-void
.end method

.method private bindWorkspace(Z)V
    .locals 12
    .parameter "reload"

    .prologue
    .line 936
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 940
    .local v9, t:J
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/lx/launcher8/db/LauncherModel;->access$3(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    .line 941
    .local v2, oldCallbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    if-nez v2, :cond_0

    .line 943
    const-string v0, "LauncherModel"

    const-string v1, "LoaderTask bindWorkspace with no launcher"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mHandler:Lcom/lx/launcher8/db/DeferredHandler;
    invoke-static {v0}, Lcom/lx/launcher8/db/LauncherModel;->access$2(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$2;

    invoke-direct {v1, p0, v2}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$2;-><init>(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;Lcom/lx/launcher8/db/LauncherModel$Callbacks;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/db/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 958
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #calls: Lcom/lx/launcher8/db/LauncherModel;->unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lx/launcher8/db/LauncherModel;->access$9(Lcom/lx/launcher8/db/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 961
    .local v3, workspaceItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/ItemCell;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 962
    .local v6, N:I
    if-eqz p1, :cond_1

    const/4 v7, 0x6

    .line 963
    .local v7, chunk:I
    :goto_1
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-lt v8, v6, :cond_2

    .line 976
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mHandler:Lcom/lx/launcher8/db/DeferredHandler;
    invoke-static {v0}, Lcom/lx/launcher8/db/LauncherModel;->access$2(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$4;

    invoke-direct {v1, p0, v2, v9, v10}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$4;-><init>(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;Lcom/lx/launcher8/db/LauncherModel$Callbacks;J)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/db/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v7           #chunk:I
    .end local v8           #i:I
    :cond_1
    move v7, v6

    .line 962
    goto :goto_1

    .line 964
    .restart local v7       #chunk:I
    .restart local v8       #i:I
    :cond_2
    move v4, v8

    .line 965
    .local v4, start:I
    add-int v0, v8, v7

    if-gt v0, v6, :cond_3

    move v5, v7

    .line 966
    .local v5, chunkSize:I
    :goto_3
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mHandler:Lcom/lx/launcher8/db/DeferredHandler;
    invoke-static {v0}, Lcom/lx/launcher8/db/LauncherModel;->access$2(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DeferredHandler;

    move-result-object v11

    new-instance v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$3;-><init>(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;Lcom/lx/launcher8/db/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V

    invoke-virtual {v11, v0}, Lcom/lx/launcher8/db/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 963
    add-int/2addr v8, v7

    goto :goto_2

    .line 965
    .end local v5           #chunkSize:I
    :cond_3
    sub-int v5, v6, v8

    goto :goto_3
.end method

.method private loadAllAppsByBatch()V
    .locals 1

    .prologue
    .line 1051
    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->loadCacheApps()V

    .line 1052
    iget-boolean v0, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_0

    .line 1053
    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->loadPackageApps()V

    .line 1054
    :cond_0
    return-void
.end method

.method private loadAndBindAllApps()V
    .locals 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v0}, Lcom/lx/launcher8/db/LauncherModel;->access$10(Lcom/lx/launcher8/db/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 997
    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->loadAllAppsByBatch()V

    .line 998
    monitor-enter p0

    .line 999
    :try_start_0
    iget-boolean v0, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 1000
    monitor-exit p0

    .line 1007
    :goto_0
    return-void

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    const/4 v1, 0x1

    #setter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v0, v1}, Lcom/lx/launcher8/db/LauncherModel;->access$11(Lcom/lx/launcher8/db/LauncherModel;Z)V

    .line 998
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1005
    :cond_1
    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->onlyBindAllApps()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 565
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v1}, Lcom/lx/launcher8/db/LauncherModel;->access$0(Lcom/lx/launcher8/db/LauncherModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 566
    .local v0, reload:Z
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v1}, Lcom/lx/launcher8/db/LauncherModel;->access$0(Lcom/lx/launcher8/db/LauncherModel;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 567
    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->loadWorkspace()V

    .line 568
    monitor-enter p0

    .line 569
    :try_start_0
    iget-boolean v1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v1, :cond_1

    .line 570
    monitor-exit p0

    .line 578
    :goto_0
    return-void

    .line 572
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    const/4 v2, 0x1

    #setter for: Lcom/lx/launcher8/db/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v1, v2}, Lcom/lx/launcher8/db/LauncherModel;->access$1(Lcom/lx/launcher8/db/LauncherModel;Z)V

    .line 568
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :cond_2
    invoke-direct {p0, v0}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->bindWorkspace(Z)V

    goto :goto_0

    .line 568
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private loadCacheApps()V
    .locals 14

    .prologue
    .line 1057
    const-wide/16 v9, 0x0

    .line 1060
    .local v9, t:J
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$3(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    .line 1061
    .local v6, oldCallbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    if-nez v6, :cond_0

    .line 1063
    const-string v12, "LauncherModel"

    const-string v13, "LoaderTask running with no launcher (loadCacheApps)"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :goto_0
    return-void

    .line 1066
    :cond_0
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mDBApp:Lcom/lx/launcher8/db/DBApp;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$13(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DBApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lx/launcher8/db/DBApp;->queryAll()Landroid/database/Cursor;

    move-result-object v1

    .line 1068
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/anall/app/bean/AllAppsList;->appRecoderClear()V

    .line 1069
    const-string v12, "_id"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1071
    .local v3, idIndex:I
    const-string v12, "intent"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 1072
    .local v5, intentIndex:I
    const-string v12, "pkg"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1073
    .local v7, pkgIndex:I
    const-string v12, "isSystem"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1074
    .local v8, sysIndex:I
    const-string v12, "visible"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1075
    .local v11, visibleIndex:I
    const-string v12, "launchCount"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1076
    .local v0, countIndex:I
    :goto_1
    iget-boolean v12, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v12, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-nez v12, :cond_2

    .line 1099
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1077
    :cond_2
    :try_start_1
    new-instance v4, Lcom/anall/app/bean/AppInfo;

    invoke-direct {v4}, Lcom/anall/app/bean/AppInfo;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1079
    .local v4, info:Lcom/anall/app/bean/AppInfo;
    :try_start_2
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    iput-object v12, v4, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1085
    :try_start_3
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v4, Lcom/anall/app/bean/AppInfo;->id:J

    .line 1087
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/anall/app/bean/AppInfo;->pkg:Ljava/lang/String;

    .line 1088
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v4, Lcom/anall/app/bean/AppInfo;->isSystem:I

    .line 1089
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v4, Lcom/anall/app/bean/AppInfo;->isVisible:I

    .line 1090
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v4, Lcom/anall/app/bean/AppInfo;->lauchCount:I

    .line 1091
    iget-object v12, v4, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    iput-object v12, v4, Lcom/anall/app/bean/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 1093
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v12

    iget-object v13, v4, Lcom/anall/app/bean/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12, v13, v4}, Lcom/anall/app/bean/AllAppsList;->addAppRecoder(Landroid/content/ComponentName;Lcom/anall/app/bean/AppInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1094
    :catch_0
    move-exception v2

    .line 1095
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    const-string v12, "LauncherModel"

    const-string v13, "apps cache loading interrupted:"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1098
    .end local v0           #countIndex:I
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #idIndex:I
    .end local v4           #info:Lcom/anall/app/bean/AppInfo;
    .end local v5           #intentIndex:I
    .end local v7           #pkgIndex:I
    .end local v8           #sysIndex:I
    .end local v11           #visibleIndex:I
    :catchall_0
    move-exception v12

    .line 1099
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1100
    throw v12

    .line 1080
    .restart local v0       #countIndex:I
    .restart local v3       #idIndex:I
    .restart local v4       #info:Lcom/anall/app/bean/AppInfo;
    .restart local v5       #intentIndex:I
    .restart local v7       #pkgIndex:I
    .restart local v8       #sysIndex:I
    .restart local v11       #visibleIndex:I
    :catch_1
    move-exception v2

    .line 1081
    .local v2, e:Ljava/net/URISyntaxException;
    :try_start_5
    const-string v12, "LauncherModel"

    const-string v13, "parser apps intent errror !!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private loadPackageApps()V
    .locals 25

    .prologue
    .line 1104
    const-wide/16 v19, 0x0

    .line 1108
    .local v19, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static/range {v23 .. v23}, Lcom/lx/launcher8/db/LauncherModel;->access$3(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    .line 1109
    .local v13, oldCallbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    if-nez v13, :cond_1

    .line 1111
    const-string v23, "LauncherModel"

    const-string v24, "LoaderTask running with no launcher (loadPackageApps)"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    new-instance v12, Landroid/content/Intent;

    const-string v23, "android.intent.action.MAIN"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1116
    .local v12, mainIntent:Landroid/content/Intent;
    const-string v23, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1119
    .local v14, packageManager:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 1121
    .local v4, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v2, 0x7fffffff

    .line 1124
    .local v2, N:I
    const/4 v8, 0x0

    .line 1125
    .local v8, i:I
    const/4 v5, -0x1

    .line 1126
    .local v5, batchSize:I
    :cond_2
    :goto_1
    if-ge v8, v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mStopped:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 1209
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/lx/launcher8/db/LauncherModel$Callbacks;)Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    move-result-object v6

    .line 1210
    .local v6, callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mHandler:Lcom/lx/launcher8/db/DeferredHandler;
    invoke-static/range {v23 .. v23}, Lcom/lx/launcher8/db/LauncherModel;->access$2(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DeferredHandler;

    move-result-object v23

    new-instance v24, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$8;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$8;-><init>(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;Lcom/lx/launcher8/db/LauncherModel$Callbacks;)V

    invoke-virtual/range {v23 .. v24}, Lcom/lx/launcher8/db/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1127
    .end local v6           #callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    :cond_4
    if-nez v8, :cond_5

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static/range {v23 .. v23}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/anall/app/bean/AllAppsList;->clear()V

    .line 1129
    const-wide/16 v15, 0x0

    .line 1130
    .local v15, qiaTime:J
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1135
    if-eqz v4, :cond_0

    .line 1138
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1142
    if-eqz v2, :cond_0

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mBatchSize:I
    invoke-static/range {v23 .. v23}, Lcom/lx/launcher8/db/LauncherModel;->access$14(Lcom/lx/launcher8/db/LauncherModel;)I

    move-result v23

    if-nez v23, :cond_7

    .line 1147
    move v5, v2

    .line 1153
    .end local v15           #qiaTime:J
    :cond_5
    :goto_2
    const-wide/16 v21, 0x0

    .line 1155
    .local v21, t2:J
    move/from16 v18, v8

    .line 1156
    .local v18, startIndex:I
    const/4 v11, 0x0

    .local v11, j:I
    :goto_3
    if-ge v8, v2, :cond_6

    if-lt v11, v5, :cond_8

    .line 1170
    :cond_6
    if-gt v8, v5, :cond_c

    const/4 v7, 0x1

    .line 1171
    .local v7, first:Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/lx/launcher8/db/LauncherModel$Callbacks;)Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    move-result-object v6

    .line 1172
    .restart local v6       #callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static/range {v23 .. v23}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/anall/app/bean/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1173
    .local v3, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static/range {v23 .. v23}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v23

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/anall/app/bean/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mHandler:Lcom/lx/launcher8/db/DeferredHandler;
    invoke-static/range {v23 .. v23}, Lcom/lx/launcher8/db/LauncherModel;->access$2(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DeferredHandler;

    move-result-object v23

    new-instance v24, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$7;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v7, v3}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$7;-><init>(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;Lcom/lx/launcher8/db/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V

    invoke-virtual/range {v23 .. v24}, Lcom/lx/launcher8/db/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsLoadDelay:I
    invoke-static/range {v23 .. v23}, Lcom/lx/launcher8/db/LauncherModel;->access$16(Lcom/lx/launcher8/db/LauncherModel;)I

    move-result v23

    if-lez v23, :cond_2

    if-ge v8, v2, :cond_2

    .line 1205
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsLoadDelay:I
    invoke-static/range {v23 .. v23}, Lcom/lx/launcher8/db/LauncherModel;->access$16(Lcom/lx/launcher8/db/LauncherModel;)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1206
    :catch_0
    move-exception v23

    goto/16 :goto_1

    .line 1149
    .end local v3           #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    .end local v6           #callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    .end local v7           #first:Z
    .end local v11           #j:I
    .end local v18           #startIndex:I
    .end local v21           #t2:J
    .restart local v15       #qiaTime:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mBatchSize:I
    invoke-static/range {v23 .. v23}, Lcom/lx/launcher8/db/LauncherModel;->access$14(Lcom/lx/launcher8/db/LauncherModel;)I

    move-result v5

    goto :goto_2

    .line 1158
    .end local v15           #qiaTime:J
    .restart local v11       #j:I
    .restart local v18       #startIndex:I
    .restart local v21       #t2:J
    :cond_8
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 1159
    .local v17, resinfo:Landroid/content/pm/ResolveInfo;
    new-instance v9, Lcom/anall/app/bean/AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mIconCache:Lcom/anall/app/bean/IconCache;
    invoke-static/range {v23 .. v23}, Lcom/lx/launcher8/db/LauncherModel;->access$15(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/IconCache;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v9, v0, v1}, Lcom/anall/app/bean/AppInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/anall/app/bean/IconCache;)V

    .line 1160
    .local v9, info:Lcom/anall/app/bean/AppInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_a

    const/4 v10, 0x1

    .line 1162
    .local v10, isSystem:Z
    :goto_5
    if-eqz v10, :cond_b

    const/16 v23, 0x1

    :goto_6
    move/from16 v0, v23

    iput v0, v9, Lcom/anall/app/bean/AppInfo;->isSystem:I

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    iget-object v0, v9, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/lx/launcher8/util/Utils;->getFirstChar(Landroid/content/Context;Ljava/lang/CharSequence;)C

    move-result v23

    move/from16 v0, v23

    iput-char v0, v9, Lcom/anall/app/bean/AppInfo;->firstChar:C

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static/range {v23 .. v23}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/anall/app/bean/AllAppsList;->add(Lcom/anall/app/bean/AppInfo;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    move-object/from16 v23, v0

    iget-object v0, v9, Lcom/anall/app/bean/AppInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Lcom/lx/launcher8/db/LauncherModel;->getAppInfoInstallTime(Landroid/content/ComponentName;Landroid/content/pm/PackageManager;)J

    move-result-wide v23

    move-wide/from16 v0, v23

    iput-wide v0, v9, Lcom/anall/app/bean/AppInfo;->installTime:J

    .line 1167
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 1156
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 1160
    .end local v10           #isSystem:Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    .line 1162
    .restart local v10       #isSystem:Z
    :cond_b
    const/16 v23, 0x0

    goto :goto_6

    .line 1170
    .end local v9           #info:Lcom/anall/app/bean/AppInfo;
    .end local v10           #isSystem:Z
    .end local v17           #resinfo:Landroid/content/pm/ResolveInfo;
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_4
.end method

.method private loadWorkspace()V
    .locals 55

    .prologue
    .line 726
    const-wide/16 v50, 0x0

    .line 728
    .local v50, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    .line 729
    .local v19, context:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v54

    .line 730
    .local v54, widgets:Landroid/appwidget/AppWidgetManager;
    new-instance v37, Landroid/appwidget/AppWidgetHost;

    const/16 v2, 0x100

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 734
    .local v37, awh:Landroid/appwidget/AppWidgetHost;
    sget-object v2, Lcom/lx/launcher8/db/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 735
    sget-object v2, Lcom/lx/launcher8/db/LauncherModel;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 737
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v47, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mDBCell:Lcom/lx/launcher8/db/DBCell;
    invoke-static {v2}, Lcom/lx/launcher8/db/LauncherModel;->access$7(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DBCell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/db/DBCell;->queryAll()Landroid/database/Cursor;

    move-result-object v3

    .line 740
    .local v3, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v2, "_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 741
    .local v5, idIndex:I
    const-string v2, "title"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 742
    .local v15, titleIndex:I
    const-string v2, "appName"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 743
    .local v14, nameIndex:I
    const-string v2, "intent"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 744
    .local v13, intentIndex:I
    const-string v2, "cellX"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 745
    .local v6, cellXIndex:I
    const-string v2, "cellY"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 746
    .local v7, cellYIndex:I
    const-string v2, "spanX"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 747
    .local v8, spanXIndex:I
    const-string v2, "spanY"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 748
    .local v9, spanYIndex:I
    const-string v2, "cellType"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 749
    .local v39, celltypeIndex:I
    const-string v2, "container"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 750
    .local v12, containerIndex:I
    const-string v2, "widgetId"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v53

    .line 751
    .local v53, widgetIndex:I
    const-string v2, "gravity"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 752
    .local v17, gravityIndex:I
    const-string v2, "textColor"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 753
    .local v16, textIndex:I
    const-string v2, "backColor"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 754
    .local v10, backIndex:I
    const-string v2, "alpha"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 755
    .local v11, alphaIndex:I
    const-string v2, "iconType"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 756
    .local v22, iconTypeIndex:I
    const-string v2, "icon"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 757
    .local v23, iconIndex:I
    const-string v2, "iconRes"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 758
    .local v24, iconResIndex:I
    const-string v2, "icon2"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 760
    .local v43, icon2Index:I
    const/16 v35, 0x1

    .line 761
    .local v35, add:Z
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 890
    :cond_1
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 891
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_e

    .line 896
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 898
    return-void

    .line 763
    :cond_3
    :try_start_1
    move/from16 v0, v39

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 764
    .local v38, cellType:I
    invoke-static {}, Lcom/lx/launcher8/bean/CellFactory;->getInstance()Lcom/lx/launcher8/bean/CellFactory;

    move-result-object v2

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/bean/CellFactory;->createCellBean(I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v4

    .line 765
    .local v4, cell:Lcom/lx/launcher8/bean/ItemCell;
    if-eqz v4, :cond_0

    .line 766
    const/16 v35, 0x1

    move-object/from16 v2, p0

    .line 767
    invoke-virtual/range {v2 .. v17}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->getItemCellFromCursor(Landroid/database/Cursor;Lcom/lx/launcher8/bean/ItemCell;IIIIIIIIIIIII)V

    .line 769
    move/from16 v0, v38

    and-int/lit16 v2, v0, 0xfff

    sparse-switch v2, :sswitch_data_0

    .line 882
    :cond_4
    :goto_2
    if-eqz v35, :cond_0

    .line 883
    invoke-virtual {v4}, Lcom/lx/launcher8/bean/ItemCell;->onInitFromDatabse()V

    .line 884
    sget-object v2, Lcom/lx/launcher8/db/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 886
    .end local v4           #cell:Lcom/lx/launcher8/bean/ItemCell;
    .end local v38           #cellType:I
    :catch_0
    move-exception v42

    .line 887
    .local v42, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "LauncherModel"

    const-string v18, "desktop items loading interrupted:"

    move-object/from16 v0, v18

    move-object/from16 v1, v42

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 895
    .end local v5           #idIndex:I
    .end local v6           #cellXIndex:I
    .end local v7           #cellYIndex:I
    .end local v8           #spanXIndex:I
    .end local v9           #spanYIndex:I
    .end local v10           #backIndex:I
    .end local v11           #alphaIndex:I
    .end local v12           #containerIndex:I
    .end local v13           #intentIndex:I
    .end local v14           #nameIndex:I
    .end local v15           #titleIndex:I
    .end local v16           #textIndex:I
    .end local v17           #gravityIndex:I
    .end local v22           #iconTypeIndex:I
    .end local v23           #iconIndex:I
    .end local v24           #iconResIndex:I
    .end local v35           #add:Z
    .end local v39           #celltypeIndex:I
    .end local v42           #e:Ljava/lang/Exception;
    .end local v43           #icon2Index:I
    .end local v53           #widgetIndex:I
    :catchall_0
    move-exception v2

    .line 896
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 897
    throw v2

    .line 778
    .restart local v4       #cell:Lcom/lx/launcher8/bean/ItemCell;
    .restart local v5       #idIndex:I
    .restart local v6       #cellXIndex:I
    .restart local v7       #cellYIndex:I
    .restart local v8       #spanXIndex:I
    .restart local v9       #spanYIndex:I
    .restart local v10       #backIndex:I
    .restart local v11       #alphaIndex:I
    .restart local v12       #containerIndex:I
    .restart local v13       #intentIndex:I
    .restart local v14       #nameIndex:I
    .restart local v15       #titleIndex:I
    .restart local v16       #textIndex:I
    .restart local v17       #gravityIndex:I
    .restart local v22       #iconTypeIndex:I
    .restart local v23       #iconIndex:I
    .restart local v24       #iconResIndex:I
    .restart local v35       #add:Z
    .restart local v38       #cellType:I
    .restart local v39       #celltypeIndex:I
    .restart local v43       #icon2Index:I
    .restart local v53       #widgetIndex:I
    :sswitch_0
    :try_start_3
    move-object v0, v4

    check-cast v0, Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v20, v0

    .local v20, app:Lcom/lx/launcher8/bean/AppCell;
    move-object/from16 v18, p0

    move-object/from16 v21, v3

    .line 779
    invoke-virtual/range {v18 .. v24}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->getIconFromCursor(Landroid/content/Context;Lcom/lx/launcher8/bean/AppCell;Landroid/database/Cursor;III)V

    .line 780
    move/from16 v0, v38

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    .line 781
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/lx/launcher8/bean/AppCell;->container:J

    move-wide/from16 v25, v0

    const-wide/16 v28, -0x1

    cmp-long v2, v25, v28

    if-eqz v2, :cond_5

    .line 782
    sget-object v2, Lcom/lx/launcher8/db/LauncherModel;->sFolders:Ljava/util/HashMap;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/lx/launcher8/bean/AppCell;->container:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    #calls: Lcom/lx/launcher8/db/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v2, v0, v1}, Lcom/lx/launcher8/db/LauncherModel;->access$8(Ljava/util/HashMap;J)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v27

    .line 783
    .local v27, fc:Lcom/lx/launcher8/bean/FolderCell;
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    const/16 v35, 0x0

    goto :goto_2

    .line 786
    .end local v27           #fc:Lcom/lx/launcher8/bean/FolderCell;
    :cond_5
    move/from16 v0, v43

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v40

    .line 787
    .local v40, data:[B
    if-eqz v40, :cond_4

    .line 789
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v40

    move/from16 v1, v18

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 790
    :catch_1
    move-exception v2

    goto :goto_2

    .line 796
    .end local v20           #app:Lcom/lx/launcher8/bean/AppCell;
    .end local v40           #data:[B
    :sswitch_1
    :try_start_5
    move-object v0, v4

    check-cast v0, Lcom/lx/launcher8/bean/AppWidgetCell;

    move-object/from16 v36, v0

    .line 797
    .local v36, appWidget:Lcom/lx/launcher8/bean/AppWidgetCell;
    move/from16 v0, v53

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v36

    iput v2, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    .line 799
    move-object/from16 v0, v36

    iget v2, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_8

    .line 801
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_6

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 802
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    .line 804
    :cond_6
    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->id:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 807
    :cond_7
    invoke-virtual/range {v37 .. v37}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v2

    move-object/from16 v0, v36

    iput v2, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 809
    :try_start_6
    move-object/from16 v0, v36

    iget v2, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    move-object/from16 v0, v54

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 815
    :cond_8
    :goto_3
    :try_start_7
    move-object/from16 v0, v36

    iget v2, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v2, v0, :cond_a

    .line 816
    move-object/from16 v0, v36

    iget v2, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    move-object/from16 v0, v54

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v46

    .line 817
    .local v46, info:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v46, :cond_9

    move-object/from16 v0, v46

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v2, :cond_9

    move-object/from16 v0, v46

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    .line 819
    :cond_9
    move-object/from16 v0, v36

    iget v2, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 820
    const/4 v2, -0x1

    move-object/from16 v0, v36

    iput v2, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    .line 821
    const-string v2, "LauncherModel"

    const-string v18, "check appwidget uninstall"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    .end local v46           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_a
    move/from16 v0, v38

    move-object/from16 v1, v36

    iput v0, v1, Lcom/lx/launcher8/bean/AppWidgetCell;->cellType:I

    .line 825
    move/from16 v0, v23

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v40

    .line 826
    .restart local v40       #data:[B
    if-eqz v40, :cond_4

    .line 828
    const/4 v2, 0x0

    :try_start_8
    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v40

    move/from16 v1, v18

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    .line 829
    :catch_2
    move-exception v2

    goto/16 :goto_2

    .line 810
    .end local v40           #data:[B
    :catch_3
    move-exception v42

    .line 811
    .local v42, e:Ljava/lang/SecurityException;
    :try_start_9
    const-string v2, "LauncherModel"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v21, "bind appwidget id "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    iget v0, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v21, " securityException exception "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/4 v2, -0x1

    move-object/from16 v0, v36

    iput v2, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    goto/16 :goto_3

    .line 834
    .end local v36           #appWidget:Lcom/lx/launcher8/bean/AppWidgetCell;
    .end local v42           #e:Ljava/lang/SecurityException;
    :sswitch_2
    sget-object v2, Lcom/lx/launcher8/db/LauncherModel;->sFolders:Ljava/util/HashMap;

    iget-wide v0, v4, Lcom/lx/launcher8/bean/ItemCell;->id:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    #calls: Lcom/lx/launcher8/db/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v2, v0, v1}, Lcom/lx/launcher8/db/LauncherModel;->access$8(Ljava/util/HashMap;J)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v27

    .line 835
    .restart local v27       #fc:Lcom/lx/launcher8/bean/FolderCell;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    .line 836
    .local v48, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/AppCell;>;"
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/lx/launcher8/bean/FolderCell;->setValue(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 837
    move-object/from16 v0, v48

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    .line 838
    move-object/from16 v4, v27

    .line 839
    move/from16 v0, v53

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v27

    iput v2, v0, Lcom/lx/launcher8/bean/FolderCell;->folder_style:I

    .line 840
    move/from16 v0, v38

    move-object/from16 v1, v27

    iput v0, v1, Lcom/lx/launcher8/bean/FolderCell;->cellType:I

    move-object/from16 v25, p0

    move-object/from16 v26, v19

    move-object/from16 v28, v3

    move/from16 v29, v22

    move/from16 v30, v23

    move/from16 v31, v24

    .line 841
    invoke-virtual/range {v25 .. v31}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->getIconFromCursor(Landroid/content/Context;Lcom/lx/launcher8/bean/AppCell;Landroid/database/Cursor;III)V

    .line 842
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/lx/launcher8/bean/FolderCell;->appName:Ljava/lang/String;

    goto/16 :goto_2

    .line 845
    .end local v27           #fc:Lcom/lx/launcher8/bean/FolderCell;
    .end local v48           #l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/AppCell;>;"
    :sswitch_3
    move-object v0, v4

    check-cast v0, Lcom/lx/launcher8/bean/TimeCell;

    move-object/from16 v52, v0

    .line 846
    .local v52, tc:Lcom/lx/launcher8/bean/TimeCell;
    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v52

    iput v2, v0, Lcom/lx/launcher8/bean/TimeCell;->gravity:I

    .line 847
    move/from16 v0, v23

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v40

    .line 848
    .restart local v40       #data:[B
    if-eqz v40, :cond_b

    .line 850
    const/4 v2, 0x0

    :try_start_a
    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v40

    move/from16 v1, v18

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v52

    iput-object v2, v0, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_2

    .line 851
    :catch_4
    move-exception v2

    goto/16 :goto_2

    .line 854
    :cond_b
    :try_start_b
    move/from16 v0, v24

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 855
    .local v49, path:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v52

    iput-object v2, v0, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 860
    .end local v40           #data:[B
    .end local v49           #path:Ljava/lang/String;
    .end local v52           #tc:Lcom/lx/launcher8/bean/TimeCell;
    :sswitch_4
    move-object v0, v4

    check-cast v0, Lcom/lx/launcher8/bean/DynCell;

    move-object/from16 v41, v0

    .line 861
    .local v41, dc:Lcom/lx/launcher8/bean/DynCell;
    const/high16 v2, 0x1

    or-int v2, v2, v38

    move-object/from16 v0, v41

    iput v2, v0, Lcom/lx/launcher8/bean/DynCell;->cellType:I

    .line 862
    move/from16 v0, v23

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move-result-object v40

    .line 863
    .restart local v40       #data:[B
    if-eqz v40, :cond_c

    .line 865
    const/4 v2, 0x0

    :try_start_c
    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v40

    move/from16 v1, v18

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v41

    iput-object v2, v0, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 869
    :cond_c
    :goto_4
    :try_start_d
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 870
    move/from16 v0, v38

    and-int/lit16 v2, v0, 0xfff

    const/16 v18, 0x6

    move/from16 v0, v18

    if-ne v2, v0, :cond_d

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const-string v18, "pic/contacts.png"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v41

    iput-object v2, v0, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 872
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const-string v18, "pic/ie.png"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v41

    iput-object v2, v0, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 876
    .end local v40           #data:[B
    .end local v41           #dc:Lcom/lx/launcher8/bean/DynCell;
    :sswitch_5
    move-object v0, v4

    check-cast v0, Lcom/lx/launcher8/bean/TopAppCell;

    move-object/from16 v30, v0

    .line 877
    .local v30, tpc:Lcom/lx/launcher8/bean/TopAppCell;
    move/from16 v0, v38

    move-object/from16 v1, v30

    iput v0, v1, Lcom/lx/launcher8/bean/TopAppCell;->cellType:I

    move-object/from16 v28, p0

    move-object/from16 v29, v19

    move-object/from16 v31, v3

    move/from16 v32, v22

    move/from16 v33, v23

    move/from16 v34, v24

    .line 878
    invoke-virtual/range {v28 .. v34}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->getIconFromCursor(Landroid/content/Context;Lcom/lx/launcher8/bean/AppCell;Landroid/database/Cursor;III)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_2

    .line 891
    .end local v4           #cell:Lcom/lx/launcher8/bean/ItemCell;
    .end local v30           #tpc:Lcom/lx/launcher8/bean/TopAppCell;
    .end local v38           #cellType:I
    :cond_e
    :try_start_e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    .line 892
    .local v44, id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mDBCell:Lcom/lx/launcher8/db/DBCell;
    invoke-static {v2}, Lcom/lx/launcher8/db/LauncherModel;->access$7(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DBCell;

    move-result-object v2

    move-wide/from16 v0, v44

    invoke-virtual {v2, v0, v1}, Lcom/lx/launcher8/db/DBCell;->delete(J)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 866
    .end local v44           #id:J
    .restart local v4       #cell:Lcom/lx/launcher8/bean/ItemCell;
    .restart local v38       #cellType:I
    .restart local v40       #data:[B
    .restart local v41       #dc:Lcom/lx/launcher8/bean/DynCell;
    :catch_5
    move-exception v2

    goto :goto_4

    .line 769
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_4
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
        0x21 -> :sswitch_5
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
    .end sparse-switch
.end method

.method private onlyBindAllApps()V
    .locals 5

    .prologue
    .line 1010
    iget-object v3, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/lx/launcher8/db/LauncherModel;->access$3(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    .line 1011
    .local v2, oldCallbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    if-nez v2, :cond_0

    .line 1013
    const-string v3, "LauncherModel"

    const-string v4, "LoaderTask running with no launcher (onlyBindAllApps)"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :goto_0
    return-void

    .line 1020
    :cond_0
    iget-object v3, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static {v3}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v3

    iget-object v3, v3, Lcom/anall/app/bean/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1021
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    iget-object v3, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mHandler:Lcom/lx/launcher8/db/DeferredHandler;
    invoke-static {v3}, Lcom/lx/launcher8/db/LauncherModel;->access$2(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$5;

    invoke-direct {v4, p0, v2, v1}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$5;-><init>(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;Lcom/lx/launcher8/db/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/db/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1034
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/lx/launcher8/db/LauncherModel$Callbacks;)Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    move-result-object v0

    .line 1035
    .local v0, callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    iget-object v3, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mHandler:Lcom/lx/launcher8/db/DeferredHandler;
    invoke-static {v3}, Lcom/lx/launcher8/db/LauncherModel;->access$2(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$6;

    invoke-direct {v4, p0, v0}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$6;-><init>(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;Lcom/lx/launcher8/db/LauncherModel$Callbacks;)V

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/db/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private waitForIdle()V
    .locals 4

    .prologue
    .line 584
    monitor-enter p0

    .line 585
    const-wide/16 v0, 0x0

    .line 587
    .local v0, workspaceWaitTime:J
    :try_start_0
    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mHandler:Lcom/lx/launcher8/db/DeferredHandler;
    invoke-static {v2}, Lcom/lx/launcher8/db/LauncherModel;->access$2(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask$1;-><init>(Lcom/lx/launcher8/db/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/db/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 599
    :goto_0
    iget-boolean v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    if-eqz v2, :cond_1

    .line 584
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    return-void

    .line 601
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 602
    :catch_0
    move-exception v2

    goto :goto_0

    .line 584
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .prologue
    .line 1230
    const-string v0, "LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLoaderTask.mContext="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const-string v0, "LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLoaderTask.mWaitThread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mWaitThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const-string v0, "LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLoaderTask.mIsLaunching="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const-string v0, "LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLoaderTask.mStopped="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const-string v0, "LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLoaderTask.mLoadAndBindStepFinished="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const-string v0, "LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mItems size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lx/launcher8/db/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    return-void
.end method

.method getIconFromCursor(Landroid/content/Context;Lcom/lx/launcher8/bean/AppCell;Landroid/database/Cursor;III)V
    .locals 5
    .parameter "context"
    .parameter "app"
    .parameter "c"
    .parameter "iconTypeIndex"
    .parameter "iconIndex"
    .parameter "iconResIndex"

    .prologue
    .line 918
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p2, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    .line 919
    iget v1, p2, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    if-nez v1, :cond_2

    .line 920
    invoke-interface {p3, p5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 922
    .local v0, data:[B
    const/4 v1, 0x0

    :try_start_0
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p2, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    .end local v0           #data:[B
    :cond_0
    :goto_0
    iget-object v1, p2, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 930
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "ic_cell_default"

    invoke-static {v2, v3, v4}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p2, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 931
    :cond_1
    return-void

    .line 925
    :cond_2
    iget v1, p2, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 926
    invoke-interface {p3, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/lx/launcher8/bean/AppCell;->iconPath:Ljava/lang/String;

    .line 927
    iget-object v1, p2, Lcom/lx/launcher8/bean/AppCell;->iconPath:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p2, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 923
    .restart local v0       #data:[B
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method getItemCellFromCursor(Landroid/database/Cursor;Lcom/lx/launcher8/bean/ItemCell;IIIIIIIIIIIII)V
    .locals 4
    .parameter "c"
    .parameter "cell"
    .parameter "idIndex"
    .parameter "cellXIndex"
    .parameter "cellYIndex"
    .parameter "spanXIndex"
    .parameter "spanYIndex"
    .parameter "backIndex"
    .parameter "alphaIndex"
    .parameter "containerIndex"
    .parameter "intentIndex"
    .parameter "nameIndex"
    .parameter "titleIndex"
    .parameter "colorIndex"
    .parameter "gravityIndex"

    .prologue
    .line 901
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p2, Lcom/lx/launcher8/bean/ItemCell;->id:J

    .line 902
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p2, Lcom/lx/launcher8/bean/ItemCell;->cellX:I

    .line 903
    invoke-interface {p1, p5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p2, Lcom/lx/launcher8/bean/ItemCell;->cellY:I

    .line 904
    invoke-interface {p1, p6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p2, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    .line 905
    invoke-interface {p1, p7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p2, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    .line 906
    invoke-interface {p1, p8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p2, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    .line 907
    invoke-interface {p1, p9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p2, Lcom/lx/launcher8/bean/ItemCell;->cellAlpha:I

    .line 908
    invoke-interface {p1, p10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p2, Lcom/lx/launcher8/bean/ItemCell;->container:J

    .line 909
    move/from16 v0, p12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    .line 910
    move/from16 v0, p14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p2, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    .line 911
    move/from16 v0, p13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    .line 912
    move/from16 v0, p15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p2, Lcom/lx/launcher8/bean/ItemCell;->gravity:I

    .line 913
    invoke-interface {p1, p11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 914
    .local v1, str:Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/lx/launcher8/bean/ItemCell;->setIntent(Ljava/lang/String;)V

    .line 915
    return-void
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v3, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 618
    iget-object v4, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/lx/launcher8/db/LauncherModel;->access$3(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    .line 619
    .local v0, cbk:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/lx/launcher8/db/LauncherModel$Callbacks;->isAllAppsVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 624
    .local v1, loadWorkspaceFirst:Z
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/lx/launcher8/db/LauncherModel;->access$4(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 627
    :try_start_0
    iget-boolean v5, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v5, :cond_2

    :goto_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 624
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    if-eqz v1, :cond_3

    .line 632
    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    .line 638
    :goto_1
    iget-boolean v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v2, :cond_4

    .line 676
    :goto_2
    iput-object v6, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 678
    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/lx/launcher8/db/LauncherModel;->access$4(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 680
    :try_start_1
    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mLoaderTask:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;
    invoke-static {v2}, Lcom/lx/launcher8/db/LauncherModel;->access$5(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/LauncherModel$LoaderTask;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 681
    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    const/4 v4, 0x0

    #setter for: Lcom/lx/launcher8/db/LauncherModel;->mLoaderTask:Lcom/lx/launcher8/db/LauncherModel$LoaderTask;
    invoke-static {v2, v4}, Lcom/lx/launcher8/db/LauncherModel;->access$6(Lcom/lx/launcher8/db/LauncherModel;Lcom/lx/launcher8/db/LauncherModel$LoaderTask;)V

    .line 678
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 684
    return-void

    :cond_2
    move v2, v3

    .line 628
    goto :goto_0

    .line 624
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 635
    :cond_3
    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    goto :goto_1

    .line 644
    :cond_4
    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/lx/launcher8/db/LauncherModel;->access$4(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 645
    :try_start_3
    iget-boolean v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v2, :cond_5

    .line 647
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 644
    :cond_5
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 650
    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->waitForIdle()V

    .line 653
    if-eqz v1, :cond_6

    .line 655
    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    .line 662
    :goto_3
    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/lx/launcher8/db/LauncherModel;->access$4(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 663
    const/4 v2, 0x0

    :try_start_4
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 662
    monitor-exit v3

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 644
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 658
    :cond_6
    invoke-direct {p0}, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    goto :goto_3

    .line 678
    :catchall_3
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 687
    monitor-enter p0

    .line 688
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mStopped:Z

    .line 689
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 687
    monitor-exit p0

    .line 691
    return-void

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/lx/launcher8/db/LauncherModel$Callbacks;)Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    .locals 5
    .parameter "oldCallbacks"

    .prologue
    const/4 v1, 0x0

    .line 701
    iget-object v2, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/lx/launcher8/db/LauncherModel;->access$4(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 702
    :try_start_0
    iget-boolean v3, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_0

    .line 703
    monitor-exit v2

    move-object v0, v1

    .line 721
    :goto_0
    return-object v0

    .line 706
    :cond_0
    iget-object v3, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/lx/launcher8/db/LauncherModel;->access$3(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 707
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 710
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/db/LauncherModel$LoaderTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/lx/launcher8/db/LauncherModel;->access$3(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    .line 711
    .local v0, callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 714
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 716
    :cond_2
    if-nez v0, :cond_3

    .line 717
    const-string v3, "LauncherModel"

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 721
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 701
    .end local v0           #callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
