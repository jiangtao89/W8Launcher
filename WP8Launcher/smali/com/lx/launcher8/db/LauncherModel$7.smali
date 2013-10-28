.class Lcom/lx/launcher8/db/LauncherModel$7;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/db/LauncherModel;->addAppToDatabase(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/db/LauncherModel;

.field private final synthetic val$apps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/LauncherModel;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel$7;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    iput-object p2, p0, Lcom/lx/launcher8/db/LauncherModel$7;->val$apps:Ljava/util/ArrayList;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$7;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mDBApp:Lcom/lx/launcher8/db/DBApp;
    invoke-static {v0}, Lcom/lx/launcher8/db/LauncherModel;->access$13(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DBApp;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$7;->val$apps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/db/DBApp;->bulkInsert(Ljava/util/ArrayList;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    goto :goto_0
.end method
