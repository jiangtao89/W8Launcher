.class public Lcom/app/common/SimpleWebViewAct;
.super Lcom/app/common/Activity;
.source "SimpleWebViewAct.java"


# static fields
.field private static KEY_URL:Ljava/lang/String;


# instance fields
.field protected mProgressBar:Landroid/widget/ProgressBar;

.field protected mUrl:Ljava/lang/String;

.field protected mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "url"

    sput-object v0, Lcom/app/common/SimpleWebViewAct;->KEY_URL:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/app/common/Activity;-><init>()V

    return-void
.end method

.method public static loadUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "url"

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/app/common/SimpleWebViewAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/app/common/SimpleWebViewAct;->KEY_URL:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method


# virtual methods
.method public createView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 36
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/app/common/SimpleWebViewAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    .local v6, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 38
    const/high16 v0, -0x100

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 39
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/app/common/SimpleWebViewAct;->mSelf:Lcom/app/common/Activity;

    const/4 v3, 0x0

    const v7, 0x1010078

    invoke-direct {v0, v1, v3, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/app/common/SimpleWebViewAct;->mProgressBar:Landroid/widget/ProgressBar;

    .line 40
    iget-object v0, p0, Lcom/app/common/SimpleWebViewAct;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x3

    invoke-static {v9, v1}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object v0, p0, Lcom/app/common/SimpleWebViewAct;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 42
    iget-object v0, p0, Lcom/app/common/SimpleWebViewAct;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 43
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/app/common/SimpleWebViewAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/SimpleWebViewAct;->mWebView:Landroid/webkit/WebView;

    .line 44
    iget-object v0, p0, Lcom/app/common/SimpleWebViewAct;->mWebView:Landroid/webkit/WebView;

    const/4 v1, -0x2

    invoke-static {v9, v1}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v0, p0, Lcom/app/common/SimpleWebViewAct;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0, v6}, Lcom/app/common/SimpleWebViewAct;->setContentView(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/app/common/SimpleWebViewAct;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 49
    .local v2, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 50
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 51
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 52
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 53
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v10

    .line 54
    .local v4, values:[Ljava/lang/Object;
    new-array v5, v8, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v10

    .line 55
    .local v5, types:[Ljava/lang/Class;
    const-class v1, Landroid/webkit/WebSettings;

    const-string v3, "setDatabaseEnabled"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/app/common/SimpleWebViewAct;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    const-class v1, Landroid/webkit/WebSettings;

    const-string v3, "setDomStorageEnabled"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/app/common/SimpleWebViewAct;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public exec()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/app/common/SimpleWebViewAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/app/common/SimpleWebViewAct;->KEY_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/common/SimpleWebViewAct;->mUrl:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/app/common/SimpleWebViewAct;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/app/common/SimpleWebViewAct;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/app/common/SimpleWebViewAct;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/app/common/SimpleWebViewAct$1;

    invoke-direct {v1, p0}, Lcom/app/common/SimpleWebViewAct$1;-><init>(Lcom/app/common/SimpleWebViewAct;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 71
    iget-object v0, p0, Lcom/app/common/SimpleWebViewAct;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/app/common/SimpleWebViewAct$2;

    invoke-direct {v1, p0}, Lcom/app/common/SimpleWebViewAct$2;-><init>(Lcom/app/common/SimpleWebViewAct;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 77
    return-void
.end method

.method invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .parameter "clzss"
    .parameter "obj"
    .parameter "methodName"
    .parameter "args"
    .parameter "types"

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 105
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1, p3, p5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 106
    invoke-virtual {v1, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 110
    .end local v2           #result:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 107
    .restart local v2       #result:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "lexun.Game"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invoke websettiong method error, msg:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 93
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/app/common/SimpleWebViewAct;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/app/common/SimpleWebViewAct;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 95
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/app/common/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
