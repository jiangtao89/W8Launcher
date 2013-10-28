.class Lcom/lx/launcher8/task/CheckUpdateTask$4;
.super Ljava/lang/Object;
.source "CheckUpdateTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/task/CheckUpdateTask;->upgradeDialog(Lcom/app/download/bean/FileSeed;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/task/CheckUpdateTask;

.field private final synthetic val$forece:Z


# direct methods
.method constructor <init>(Lcom/lx/launcher8/task/CheckUpdateTask;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/task/CheckUpdateTask$4;->this$0:Lcom/lx/launcher8/task/CheckUpdateTask;

    iput-boolean p2, p0, Lcom/lx/launcher8/task/CheckUpdateTask$4;->val$forece:Z

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask$4;->val$forece:Z

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask$4;->this$0:Lcom/lx/launcher8/task/CheckUpdateTask;

    #getter for: Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lx/launcher8/task/CheckUpdateTask;->access$0(Lcom/lx/launcher8/task/CheckUpdateTask;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/app/common/Activity;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask$4;->this$0:Lcom/lx/launcher8/task/CheckUpdateTask;

    #getter for: Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lx/launcher8/task/CheckUpdateTask;->access$0(Lcom/lx/launcher8/task/CheckUpdateTask;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/app/common/Activity;

    invoke-virtual {v0}, Lcom/app/common/Activity;->exitSystem()V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask$4;->this$0:Lcom/lx/launcher8/task/CheckUpdateTask;

    #getter for: Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lx/launcher8/task/CheckUpdateTask;->access$0(Lcom/lx/launcher8/task/CheckUpdateTask;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
