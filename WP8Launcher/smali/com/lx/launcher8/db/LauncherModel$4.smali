.class Lcom/lx/launcher8/db/LauncherModel$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/db/LauncherModel;->updateCellToDatabase(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/db/LauncherModel;

.field private final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/LauncherModel;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel$4;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    iput-object p2, p0, Lcom/lx/launcher8/db/LauncherModel$4;->val$items:Ljava/util/ArrayList;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$4;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mDBCell:Lcom/lx/launcher8/db/DBCell;
    invoke-static {v0}, Lcom/lx/launcher8/db/LauncherModel;->access$7(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DBCell;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$4;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/db/DBCell;->bulkUpdate(Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method
