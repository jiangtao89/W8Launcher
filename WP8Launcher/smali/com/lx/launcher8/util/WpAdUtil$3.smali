.class Lcom/lx/launcher8/util/WpAdUtil$3;
.super Ljava/lang/Object;
.source "WpAdUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/util/WpAdUtil;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/util/WpAdUtil;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/util/WpAdUtil;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/util/WpAdUtil$3;->this$0:Lcom/lx/launcher8/util/WpAdUtil;

    iput-object p2, p0, Lcom/lx/launcher8/util/WpAdUtil$3;->val$url:Ljava/lang/String;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 160
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lx/launcher8/util/WpAdUtil$3;->val$url:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/lx/launcher8/util/WpAdUtil$3;->val$url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 173
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/lx/launcher8/util/WpAdUtil$3;->this$0:Lcom/lx/launcher8/util/WpAdUtil;

    #getter for: Lcom/lx/launcher8/util/WpAdUtil;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lx/launcher8/util/WpAdUtil;->access$2(Lcom/lx/launcher8/util/WpAdUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_1
    return-void

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/util/WpAdUtil$3;->val$url:Ljava/lang/String;

    const-string v3, "share"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lx/launcher8/util/WpAdUtil$3;->this$0:Lcom/lx/launcher8/util/WpAdUtil;

    #getter for: Lcom/lx/launcher8/util/WpAdUtil;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lx/launcher8/util/WpAdUtil;->access$2(Lcom/lx/launcher8/util/WpAdUtil;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/ShareAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 167
    :cond_1
    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lx/launcher8/util/WpAdUtil$3;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/lx/launcher8/util/WpAdUtil$3;->this$0:Lcom/lx/launcher8/util/WpAdUtil;

    #getter for: Lcom/lx/launcher8/util/WpAdUtil;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lx/launcher8/util/WpAdUtil;->access$2(Lcom/lx/launcher8/util/WpAdUtil;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01bd

    invoke-static {v2, v3}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    goto :goto_1
.end method
