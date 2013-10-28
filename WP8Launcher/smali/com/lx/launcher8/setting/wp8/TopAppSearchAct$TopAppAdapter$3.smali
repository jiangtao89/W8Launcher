.class Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$3;
.super Ljava/lang/Object;
.source "TopAppSearchAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

.field private final synthetic val$seed:Lcom/lx/launcher8/download/FileSeed;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;Lcom/lx/launcher8/download/FileSeed;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$3;->this$1:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$3;->val$seed:Lcom/lx/launcher8/download/FileSeed;

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$3;->val$seed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v0}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 385
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$3;->this$1:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;)Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    move-result-object v0

    invoke-static {v0}, Lcom/lx/launcher8/download/DownloadHandler;->getInstance(Landroid/content/Context;)Lcom/lx/launcher8/download/DownloadHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$3;->val$seed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/download/DownloadHandler;->continueDownload(Lcom/lx/launcher8/download/FileSeed;)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$3;->val$seed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v0}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$3;->this$1:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;)Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    move-result-object v0

    invoke-static {v0}, Lcom/lx/launcher8/download/DownloadHandler;->getInstance(Landroid/content/Context;)Lcom/lx/launcher8/download/DownloadHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$3;->val$seed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/download/DownloadHandler;->stopDownload(Lcom/lx/launcher8/download/FileSeed;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    goto :goto_0
.end method
