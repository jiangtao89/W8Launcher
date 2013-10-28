.class Lcom/app/download/bean/DownloadManager$4;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/app/common/view/CustomDialog$CustomDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/download/bean/DownloadManager;->openFileDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/download/bean/DownloadManager;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$fileSeed:Lcom/app/download/bean/FileSeed;


# direct methods
.method constructor <init>(Lcom/app/download/bean/DownloadManager;Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/download/bean/DownloadManager$4;->this$0:Lcom/app/download/bean/DownloadManager;

    iput-object p2, p0, Lcom/app/download/bean/DownloadManager$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/app/download/bean/DownloadManager$4;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/String;)V
    .locals 3
    .parameter "textInputed"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/app/download/bean/DownloadManager$4;->this$0:Lcom/app/download/bean/DownloadManager;

    iget-object v1, p0, Lcom/app/download/bean/DownloadManager$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/app/download/bean/DownloadManager$4;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v2}, Lcom/app/download/bean/DownloadManager;->openFile(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    .line 130
    return-void
.end method
