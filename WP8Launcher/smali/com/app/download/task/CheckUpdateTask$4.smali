.class Lcom/app/download/task/CheckUpdateTask$4;
.super Ljava/lang/Object;
.source "CheckUpdateTask.java"

# interfaces
.implements Lcom/app/common/view/CustomDialog$CustomDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/download/task/CheckUpdateTask;->upgradeDialog(Lcom/app/download/bean/FileSeed;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/download/task/CheckUpdateTask;

.field private final synthetic val$forece:Z


# direct methods
.method constructor <init>(Lcom/app/download/task/CheckUpdateTask;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/download/task/CheckUpdateTask$4;->this$0:Lcom/app/download/task/CheckUpdateTask;

    iput-boolean p2, p0, Lcom/app/download/task/CheckUpdateTask$4;->val$forece:Z

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/String;)V
    .locals 1
    .parameter "textInputed"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/app/download/task/CheckUpdateTask$4;->val$forece:Z

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/app/download/task/CheckUpdateTask$4;->this$0:Lcom/app/download/task/CheckUpdateTask;

    #getter for: Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/app/download/task/CheckUpdateTask;->access$0(Lcom/app/download/task/CheckUpdateTask;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/app/common/Activity;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/app/download/task/CheckUpdateTask$4;->this$0:Lcom/app/download/task/CheckUpdateTask;

    #getter for: Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/app/download/task/CheckUpdateTask;->access$0(Lcom/app/download/task/CheckUpdateTask;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/app/common/Activity;

    invoke-virtual {v0}, Lcom/app/common/Activity;->exitSystem()V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/app/download/task/CheckUpdateTask$4;->this$0:Lcom/app/download/task/CheckUpdateTask;

    #getter for: Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/app/download/task/CheckUpdateTask;->access$0(Lcom/app/download/task/CheckUpdateTask;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
