.class Lcom/app/common/SimpleWebViewAct$1;
.super Landroid/webkit/WebViewClient;
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
    iput-object p1, p0, Lcom/app/common/SimpleWebViewAct$1;->this$0:Lcom/app/common/SimpleWebViewAct;

    .line 63
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 66
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    return v0
.end method
