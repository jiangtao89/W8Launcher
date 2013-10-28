.class Lcom/lx/launcher8/setting/wp8/ShareAct$1;
.super Ljava/lang/Object;
.source "ShareAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/ShareAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ShareAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ShareAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0900c2

    if-ne v3, v4, :cond_1

    .line 90
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.android.vending"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market://details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ShareAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ShareAct;->mProPackage:Ljava/lang/String;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/ShareAct;->access$0(Lcom/lx/launcher8/setting/wp8/ShareAct;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 95
    :try_start_0
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ShareAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;

    invoke-virtual {v3, v2}, Lcom/lx/launcher8/setting/wp8/ShareAct;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 96
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ShareAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;

    const v4, 0x7f0a01bd

    invoke-static {v3, v4}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 99
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0900c4

    if-ne v3, v4, :cond_0

    .line 100
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ShareAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;

    #calls: Lcom/lx/launcher8/setting/wp8/ShareAct;->initData()V
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/ShareAct;->access$1(Lcom/lx/launcher8/setting/wp8/ShareAct;)V

    .line 101
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ShareAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ShareAct;->mShareUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/ShareAct;->access$2(Lcom/lx/launcher8/setting/wp8/ShareAct;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ShareAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;

    const-string v4, "http://anall.cn/p/default"

    #setter for: Lcom/lx/launcher8/setting/wp8/ShareAct;->mShareUrl:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/lx/launcher8/setting/wp8/ShareAct;->access$3(Lcom/lx/launcher8/setting/wp8/ShareAct;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/app/common/config/BaseGlobal;->getChannelKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "41687188"

    if-eq v3, v4, :cond_2

    .line 104
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ShareAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;

    const-string v4, "http://anall.cn/c/default"

    #setter for: Lcom/lx/launcher8/setting/wp8/ShareAct;->mShareUrl:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/lx/launcher8/setting/wp8/ShareAct;->access$3(Lcom/lx/launcher8/setting/wp8/ShareAct;Ljava/lang/String;)V

    .line 108
    :cond_2
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ShareAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;

    const v4, 0x7f0a027a

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/ShareAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/ShareAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ShareAct;->mShareUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/lx/launcher8/setting/wp8/ShareAct;->access$2(Lcom/lx/launcher8/setting/wp8/ShareAct;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, content:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v3, "android.intent.extra.SUBJECT"

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ShareAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;

    invoke-virtual {v4}, Lcom/lx/launcher8/setting/wp8/ShareAct;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 112
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ShareAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ShareAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;

    const v5, 0x7f0a0280

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/wp8/ShareAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/ShareAct;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
