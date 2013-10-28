.class Lcom/lx/launcher8/util/Utils$1;
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
.method constructor <init>(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/util/Utils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lx/launcher8/util/Utils$1;->val$softSeed:Lcom/app/download/bean/FileSeed;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 295
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/util/Utils$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/lx/launcher8/util/Utils$1;->val$softSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v2}, Lcom/app/download/bean/DownloadManager;->openFile(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    .line 296
    return-void
.end method
