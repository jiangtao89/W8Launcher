.class Lcom/lx/launcher8/db/LauncherModel$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/db/LauncherModel;->unbindWorkspaceItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/db/LauncherModel;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/LauncherModel;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel$1;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$1;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #calls: Lcom/lx/launcher8/db/LauncherModel;->unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lx/launcher8/db/LauncherModel;->access$9(Lcom/lx/launcher8/db/LauncherModel;)Ljava/util/ArrayList;

    .line 156
    return-void
.end method
