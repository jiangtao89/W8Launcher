.class Lcom/lx/launcher8/task/CheckUpdateTask$3;
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

.field private final synthetic val$downloadState:I

.field private final synthetic val$softSeed:Lcom/app/download/bean/FileSeed;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/task/CheckUpdateTask;Lcom/app/download/bean/FileSeed;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/task/CheckUpdateTask$3;->this$0:Lcom/lx/launcher8/task/CheckUpdateTask;

    iput-object p2, p0, Lcom/lx/launcher8/task/CheckUpdateTask$3;->val$softSeed:Lcom/app/download/bean/FileSeed;

    iput p3, p0, Lcom/lx/launcher8/task/CheckUpdateTask$3;->val$downloadState:I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask$3;->this$0:Lcom/lx/launcher8/task/CheckUpdateTask;

    #getter for: Lcom/lx/launcher8/task/CheckUpdateTask;->mAct:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lx/launcher8/task/CheckUpdateTask;->access$0(Lcom/lx/launcher8/task/CheckUpdateTask;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/task/CheckUpdateTask$3;->val$softSeed:Lcom/app/download/bean/FileSeed;

    iget v2, p0, Lcom/lx/launcher8/task/CheckUpdateTask$3;->val$downloadState:I

    invoke-static {v0, v1, v2}, Lcom/lx/launcher8/util/Utils;->downloadingDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;I)V

    .line 127
    return-void
.end method
