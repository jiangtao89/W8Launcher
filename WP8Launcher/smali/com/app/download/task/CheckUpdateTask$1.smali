.class Lcom/app/download/task/CheckUpdateTask$1;
.super Ljava/lang/Object;
.source "CheckUpdateTask.java"

# interfaces
.implements Lcom/app/common/view/CustomDialog$CustomDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/download/task/CheckUpdateTask;->installDialog(Lcom/app/download/bean/FileSeed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/download/task/CheckUpdateTask;

.field private final synthetic val$fileSeed:Lcom/app/download/bean/FileSeed;


# direct methods
.method constructor <init>(Lcom/app/download/task/CheckUpdateTask;Lcom/app/download/bean/FileSeed;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/download/task/CheckUpdateTask$1;->this$0:Lcom/app/download/task/CheckUpdateTask;

    iput-object p2, p0, Lcom/app/download/task/CheckUpdateTask$1;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/String;)V
    .locals 3
    .parameter "textInputed"

    .prologue
    .line 76
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/app/download/task/CheckUpdateTask$1;->this$0:Lcom/app/download/task/CheckUpdateTask;

    #getter for: Lcom/app/download/task/CheckUpdateTask;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/app/download/task/CheckUpdateTask;->access$0(Lcom/app/download/task/CheckUpdateTask;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/app/download/task/CheckUpdateTask$1;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v2}, Lcom/app/download/bean/DownloadManager;->openFile(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    .line 77
    return-void
.end method
