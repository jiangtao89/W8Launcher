.class Lcom/lx/launcher8/setting/wp8/IconPickAct$3;
.super Ljava/lang/Object;
.source "IconPickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/IconPickAct;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/IconPickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 69
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 70
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 71
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v3, "crop"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    new-array v2, v6, [I

    .line 76
    .local v2, size:[I
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;

    #calls: Lcom/lx/launcher8/setting/wp8/IconPickAct;->computeCropSize([I)V
    invoke-static {v3, v2}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->access$5(Lcom/lx/launcher8/setting/wp8/IconPickAct;[I)V

    .line 77
    const-string v3, "outputX"

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const-string v3, "outputY"

    aget v4, v2, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    const-string v3, "return-data"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;

    invoke-virtual {v3, v1, v6}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
