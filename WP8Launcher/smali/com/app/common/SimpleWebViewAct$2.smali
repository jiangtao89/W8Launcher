.class Lcom/app/common/SimpleWebViewAct$2;
.super Landroid/webkit/WebChromeClient;
.source "SimpleWebViewAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/common/SimpleWebViewAct;->exec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/common/SimpleWebViewAct;


# direct methods
.method constructor <init>(Lcom/app/common/SimpleWebViewAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/common/SimpleWebViewAct$2;->this$0:Lcom/app/common/SimpleWebViewAct;

    .line 71
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/app/common/SimpleWebViewAct$2;->this$0:Lcom/app/common/SimpleWebViewAct;

    iget-object v0, v0, Lcom/app/common/SimpleWebViewAct;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 75
    return-void
.end method
