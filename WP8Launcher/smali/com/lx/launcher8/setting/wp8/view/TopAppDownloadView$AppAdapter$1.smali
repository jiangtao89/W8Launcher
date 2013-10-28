.class Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$1;
.super Ljava/lang/Object;
.source "TopAppDownloadView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;

.field private final synthetic val$seed:Lcom/lx/launcher8/download/FileSeed;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;Lcom/lx/launcher8/download/FileSeed;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$1;->val$seed:Lcom/lx/launcher8/download/FileSeed;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 461
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$1;->val$seed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v3}, Lcom/lx/launcher8/download/FileSeed;->getPkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 462
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->startActivity(Landroid/content/Intent;)V

    .line 463
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v1

    const/4 v2, 0x1

    #setter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mClickUninstall:Z
    invoke-static {v1, v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$10(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v1

    goto :goto_0
.end method
