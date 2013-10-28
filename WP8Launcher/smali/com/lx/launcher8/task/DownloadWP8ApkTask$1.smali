.class Lcom/lx/launcher8/task/DownloadWP8ApkTask$1;
.super Ljava/lang/Object;
.source "DownloadWP8ApkTask.java"

# interfaces
.implements Lcom/app/common/view/CustomDialog$CustomDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/task/DownloadWP8ApkTask;->installDialog(Lcom/app/download/bean/FileSeed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/task/DownloadWP8ApkTask;

.field private final synthetic val$fileSeed:Lcom/app/download/bean/FileSeed;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/task/DownloadWP8ApkTask;Lcom/app/download/bean/FileSeed;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask$1;->this$0:Lcom/lx/launcher8/task/DownloadWP8ApkTask;

    iput-object p2, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask$1;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/String;)V
    .locals 3
    .parameter "textInputed"

    .prologue
    .line 60
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask$1;->this$0:Lcom/lx/launcher8/task/DownloadWP8ApkTask;

    #getter for: Lcom/lx/launcher8/task/DownloadWP8ApkTask;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->access$0(Lcom/lx/launcher8/task/DownloadWP8ApkTask;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/task/DownloadWP8ApkTask$1;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v2}, Lcom/app/download/bean/DownloadManager;->openFile(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    .line 61
    return-void
.end method
