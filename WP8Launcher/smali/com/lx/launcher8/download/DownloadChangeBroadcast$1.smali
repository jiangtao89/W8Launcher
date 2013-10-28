.class Lcom/lx/launcher8/download/DownloadChangeBroadcast$1;
.super Ljava/lang/Object;
.source "DownloadChangeBroadcast.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/download/DownloadChangeBroadcast;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

.field private final synthetic val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

.field private final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/download/DownloadChangeBroadcast;Landroid/content/Context;Lcom/lx/launcher8/download/FileSeed;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast$1;->this$0:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    iput-object p2, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast$1;->val$mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast$1;->val$mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lx/launcher8/download/DownloadChangeBroadcast$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v1}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lx/launcher8/util/Utils;->openApkFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    return-void
.end method
