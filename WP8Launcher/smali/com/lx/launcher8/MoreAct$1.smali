.class Lcom/lx/launcher8/MoreAct$1;
.super Ljava/lang/Object;
.source "MoreAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/MoreAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/MoreAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/MoreAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/MoreAct$1;->this$0:Lcom/lx/launcher8/MoreAct;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 44
    :try_start_0
    const-string v2, "http://client.anall.cn/android/red/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 45
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lx/launcher8/MoreAct$1;->this$0:Lcom/lx/launcher8/MoreAct;

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/MoreAct;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v2

    goto :goto_0
.end method
