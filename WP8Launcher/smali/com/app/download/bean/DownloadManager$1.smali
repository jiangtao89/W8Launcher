.class Lcom/app/download/bean/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/app/common/view/CustomDialog$CustomDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/download/bean/DownloadManager;->downLoad(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/download/bean/DownloadManager;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/app/download/bean/DownloadManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/download/bean/DownloadManager$1;->this$0:Lcom/app/download/bean/DownloadManager;

    iput-object p2, p0, Lcom/app/download/bean/DownloadManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/app/download/bean/DownloadManager$1;->val$url:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/String;)V
    .locals 4
    .parameter "textInputed"

    .prologue
    const/4 v3, 0x0

    .line 54
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/app/download/bean/DownloadManager$1;->this$0:Lcom/app/download/bean/DownloadManager;

    iget-object v1, p0, Lcom/app/download/bean/DownloadManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/app/download/bean/DownloadManager$1;->val$url:Ljava/lang/String;

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/app/download/bean/DownloadManager;->downLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method
