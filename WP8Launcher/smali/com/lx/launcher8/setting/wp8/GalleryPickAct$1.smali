.class Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;
.super Ljava/lang/Object;
.source "GalleryPickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/GalleryPickAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 126
    :sswitch_0
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.PICK"

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    .local v3, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 129
    .local v2, e:Landroid/content/ActivityNotFoundException;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v0, choose:Landroid/content/Intent;
    const-string v5, "image/*"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    invoke-virtual {v5, v0, v7}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 137
    .end local v0           #choose:Landroid/content/Intent;
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    :sswitch_1
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    #calls: Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->isDefaultPath()Z
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->access$0(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)Z

    move-result v4

    .line 138
    .local v4, isDefault:Z
    if-eqz v4, :cond_0

    const v1, 0x7f0a018e

    .line 139
    .local v1, contentId:I
    :goto_1
    new-instance v5, Lcom/lx/launcher8/view/PopupDialog;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    invoke-direct {v5, v6}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    const v7, 0x7f0a01c4

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    invoke-virtual {v6, v1}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v5

    .line 140
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    const v7, 0x7f0a0077

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1$1;

    invoke-direct {v7, p0, v4}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1$1;-><init>(Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;Z)V

    invoke-virtual {v5, v6, v7}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v5

    .line 150
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    const v7, 0x7f0a0078

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1$2;

    invoke-direct {v7, p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1$2;-><init>(Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;)V

    invoke-virtual {v5, v6, v7}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v5

    .line 154
    invoke-virtual {v5}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    goto :goto_0

    .line 138
    .end local v1           #contentId:I
    :cond_0
    const v1, 0x7f0a0190

    goto :goto_1

    .line 157
    .end local v4           #isDefault:Z
    :sswitch_2
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    const-class v6, Lcom/lx/launcher8/image/ImageBrower;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    const/4 v6, 0x3

    invoke-virtual {v5, v3, v6}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 122
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x7f090055 -> :sswitch_2
        0x7f090059 -> :sswitch_1
        0x7f09007f -> :sswitch_0
    .end sparse-switch
.end method
