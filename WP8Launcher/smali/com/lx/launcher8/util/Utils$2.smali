.class Lcom/lx/launcher8/util/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/util/Utils;->downloadingDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$softSeed:Lcom/app/download/bean/FileSeed;


# direct methods
.method constructor <init>(Lcom/app/download/bean/FileSeed;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/util/Utils$2;->val$softSeed:Lcom/app/download/bean/FileSeed;

    iput-object p2, p0, Lcom/lx/launcher8/util/Utils$2;->val$context:Landroid/content/Context;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 302
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/util/Utils$2;->val$softSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v3}, Lcom/app/download/bean/DownloadManager;->deleteFile(Lcom/app/download/bean/FileSeed;Z)V

    .line 303
    iget-object v0, p0, Lcom/lx/launcher8/util/Utils$2;->val$softSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->reset()V

    .line 304
    iget-object v0, p0, Lcom/lx/launcher8/util/Utils$2;->val$softSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v3}, Lcom/app/download/bean/FileSeed;->setOpen(Z)V

    .line 308
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/util/Utils$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/lx/launcher8/util/Utils$2;->val$softSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v2, v3}, Lcom/app/download/bean/DownloadManager;->downLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V

    .line 309
    return-void
.end method
