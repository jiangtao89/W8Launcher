.class Lcom/lx/launcher8/db/LauncherModel$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/db/LauncherModel;->removeCellToDatabase(Lcom/lx/launcher8/bean/ItemCell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/db/LauncherModel;

.field private final synthetic val$item:Lcom/lx/launcher8/bean/ItemCell;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/LauncherModel;Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel$5;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    iput-object p2, p0, Lcom/lx/launcher8/db/LauncherModel$5;->val$item:Lcom/lx/launcher8/bean/ItemCell;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$5;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mDBCell:Lcom/lx/launcher8/db/DBCell;
    invoke-static {v0}, Lcom/lx/launcher8/db/LauncherModel;->access$7(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DBCell;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$5;->val$item:Lcom/lx/launcher8/bean/ItemCell;

    iget-wide v1, v1, Lcom/lx/launcher8/bean/ItemCell;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/db/DBCell;->delete(J)Z

    .line 230
    sget-object v0, Lcom/lx/launcher8/db/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$5;->val$item:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method
