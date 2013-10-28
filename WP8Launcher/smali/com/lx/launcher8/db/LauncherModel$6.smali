.class Lcom/lx/launcher8/db/LauncherModel$6;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/db/LauncherModel;->removeFolderItems(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/db/LauncherModel;

.field private final synthetic val$containerId:J


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/LauncherModel;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel$6;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    iput-wide p2, p0, Lcom/lx/launcher8/db/LauncherModel$6;->val$containerId:J

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$6;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mDBCell:Lcom/lx/launcher8/db/DBCell;
    invoke-static {v0}, Lcom/lx/launcher8/db/LauncherModel;->access$7(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DBCell;

    move-result-object v0

    iget-wide v1, p0, Lcom/lx/launcher8/db/LauncherModel$6;->val$containerId:J

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/db/DBCell;->deleteFolderItems(J)I

    .line 243
    return-void
.end method
