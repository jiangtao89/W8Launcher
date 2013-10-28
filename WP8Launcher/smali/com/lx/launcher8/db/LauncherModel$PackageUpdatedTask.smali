.class Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;
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
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_UNAVAILABLE:I = 0x4

.field public static final OP_UPDATE:I = 0x2


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lx/launcher8/db/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/db/LauncherModel;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "op"
    .parameter "packages"

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1255
    iput p2, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->mOp:I

    .line 1256
    iput-object p3, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 1257
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;)Lcom/lx/launcher8/db/LauncherModel;
    .locals 1
    .parameter

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1260
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mApp:Lcom/lx/launcher8/AnallApp;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$17(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/AnallApp;

    move-result-object v4

    .line 1262
    .local v4, context:Landroid/content/Context;
    iget-object v9, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 1263
    .local v9, packages:[Ljava/lang/String;
    array-length v0, v9

    .line 1264
    .local v0, N:I
    iget v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->mOp:I

    packed-switch v12, :pswitch_data_0

    .line 1286
    :cond_0
    const/4 v1, 0x0

    .line 1287
    .local v1, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    const/4 v10, 0x0

    .line 1288
    .local v10, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    const/4 v7, 0x0

    .line 1290
    .local v7, modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v12

    iget-object v12, v12, Lcom/anall/app/bean/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 1291
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v12

    iget-object v1, v12, Lcom/anall/app/bean/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1292
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Lcom/anall/app/bean/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1294
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_6

    .line 1300
    :cond_2
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v12

    iget-object v12, v12, Lcom/anall/app/bean/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 1301
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v12

    iget-object v10, v12, Lcom/anall/app/bean/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 1302
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Lcom/anall/app/bean/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 1303
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_7

    .line 1306
    iget v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v13, 0x4

    if-eq v12, v13, :cond_3

    .line 1307
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    invoke-virtual {v12, v10}, Lcom/lx/launcher8/db/LauncherModel;->removeAppToDatabase(Ljava/util/ArrayList;)V

    .line 1309
    :cond_3
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v12

    iget-object v12, v12, Lcom/anall/app/bean/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_4

    .line 1310
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v12

    iget-object v7, v12, Lcom/anall/app/bean/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 1311
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Lcom/anall/app/bean/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 1315
    :cond_4
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$3(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v12

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$3(Lcom/lx/launcher8/db/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lx/launcher8/db/LauncherModel$Callbacks;

    move-object v3, v12

    .line 1316
    .local v3, callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    :goto_2
    if-nez v3, :cond_9

    .line 1317
    const-string v12, "LauncherModel"

    const-string v13, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_5
    :goto_3
    return-void

    .line 1266
    .end local v1           #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    .end local v3           #callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    .end local v7           #modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    .end local v10           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    :pswitch_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_4
    if-ge v5, v0, :cond_0

    .line 1268
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v12

    aget-object v13, v9, v5

    invoke-virtual {v12, v4, v13}, Lcom/anall/app/bean/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1266
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1272
    .end local v5           #i:I
    :pswitch_1
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_5
    if-ge v5, v0, :cond_0

    .line 1274
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v12

    aget-object v13, v9, v5

    invoke-virtual {v12, v4, v13}, Lcom/anall/app/bean/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1272
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1279
    .end local v5           #i:I
    :pswitch_2
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_6
    if-ge v5, v0, :cond_0

    .line 1281
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mAllAppsList:Lcom/anall/app/bean/AllAppsList;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$12(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/AllAppsList;

    move-result-object v12

    aget-object v13, v9, v5

    invoke-virtual {v12, v13}, Lcom/anall/app/bean/AllAppsList;->removePackage(Ljava/lang/String;)V

    .line 1279
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1294
    .end local v5           #i:I
    .restart local v1       #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    .restart local v7       #modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    .restart local v10       #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/anall/app/bean/AppInfo;

    .line 1295
    .local v6, info:Lcom/anall/app/bean/AppInfo;
    iget-char v13, v6, Lcom/anall/app/bean/AppInfo;->firstChar:C

    if-nez v13, :cond_1

    .line 1296
    iget-object v13, v6, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v4, v13}, Lcom/lx/launcher8/util/Utils;->getFirstChar(Landroid/content/Context;Ljava/lang/CharSequence;)C

    move-result v13

    iput-char v13, v6, Lcom/anall/app/bean/AppInfo;->firstChar:C

    goto/16 :goto_0

    .line 1303
    .end local v6           #info:Lcom/anall/app/bean/AppInfo;
    :cond_7
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/anall/app/bean/AppInfo;

    .line 1304
    .restart local v6       #info:Lcom/anall/app/bean/AppInfo;
    iget-object v13, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mIconCache:Lcom/anall/app/bean/IconCache;
    invoke-static {v13}, Lcom/lx/launcher8/db/LauncherModel;->access$15(Lcom/lx/launcher8/db/LauncherModel;)Lcom/anall/app/bean/IconCache;

    move-result-object v13

    iget-object v14, v6, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/anall/app/bean/IconCache;->remove(Landroid/content/ComponentName;)V

    goto/16 :goto_1

    .line 1315
    .end local v6           #info:Lcom/anall/app/bean/AppInfo;
    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    .line 1321
    .restart local v3       #callbacks:Lcom/lx/launcher8/db/LauncherModel$Callbacks;
    :cond_9
    if-eqz v1, :cond_a

    .line 1322
    move-object v2, v1

    .line 1323
    .local v2, addedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mHandler:Lcom/lx/launcher8/db/DeferredHandler;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$2(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DeferredHandler;

    move-result-object v12

    new-instance v13, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask$1;

    invoke-direct {v13, p0, v3, v2}, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask$1;-><init>(Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;Lcom/lx/launcher8/db/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v12, v13}, Lcom/lx/launcher8/db/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1332
    .end local v2           #addedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    :cond_a
    if-eqz v7, :cond_b

    .line 1333
    move-object v8, v7

    .line 1334
    .local v8, modifiedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mHandler:Lcom/lx/launcher8/db/DeferredHandler;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$2(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DeferredHandler;

    move-result-object v12

    new-instance v13, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask$2;

    invoke-direct {v13, p0, v3, v8}, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask$2;-><init>(Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;Lcom/lx/launcher8/db/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v12, v13}, Lcom/lx/launcher8/db/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1343
    .end local v8           #modifiedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    :cond_b
    if-eqz v10, :cond_5

    .line 1345
    move-object v11, v10

    .line 1346
    .local v11, removedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    iget-object v12, p0, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mHandler:Lcom/lx/launcher8/db/DeferredHandler;
    invoke-static {v12}, Lcom/lx/launcher8/db/LauncherModel;->access$2(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DeferredHandler;

    move-result-object v12

    new-instance v13, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask$3;

    invoke-direct {v13, p0, v3, v11}, Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask$3;-><init>(Lcom/lx/launcher8/db/LauncherModel$PackageUpdatedTask;Lcom/lx/launcher8/db/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v12, v13}, Lcom/lx/launcher8/db/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 1264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
