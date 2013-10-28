.class Lcom/lx/launcher8/setting/GalleryPickAct$1;
.super Ljava/lang/Object;
.source "GalleryPickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/GalleryPickAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/GalleryPickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/GalleryPickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/GalleryPickAct$1;)Lcom/lx/launcher8/setting/GalleryPickAct;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x1

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 131
    :sswitch_0
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.PICK"

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .local v5, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    const/4 v10, 0x1

    invoke-virtual {v9, v5, v10}, Lcom/lx/launcher8/setting/GalleryPickAct;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v5           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 134
    .local v4, e:Landroid/content/ActivityNotFoundException;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v2, choose:Landroid/content/Intent;
    const-string v9, "image/*"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v9, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v9, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    invoke-virtual {v9, v2, v11}, Lcom/lx/launcher8/setting/GalleryPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 142
    .end local v2           #choose:Landroid/content/Intent;
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    :sswitch_1
    iget-object v9, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    #calls: Lcom/lx/launcher8/setting/GalleryPickAct;->isDefaultPath()Z
    invoke-static {v9}, Lcom/lx/launcher8/setting/GalleryPickAct;->access$0(Lcom/lx/launcher8/setting/GalleryPickAct;)Z

    move-result v6

    .line 143
    .local v6, isDefault:Z
    new-instance v3, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    iget-object v9, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    const v10, 0x7f0e0005

    invoke-direct {v3, v9, v10}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 144
    .local v3, dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v9, Lcom/lx/launcher8/setting/GalleryPickAct$1$1;

    invoke-direct {v9, p0, v6, v3}, Lcom/lx/launcher8/setting/GalleryPickAct$1$1;-><init>(Lcom/lx/launcher8/setting/GalleryPickAct$1;ZLcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    invoke-virtual {v3, v9}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v9, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    const v10, 0x7f0a01c4

    invoke-virtual {v9, v10}, Lcom/lx/launcher8/setting/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, title:Ljava/lang/String;
    iget-object v10, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    if-eqz v6, :cond_0

    const v9, 0x7f0a018e

    :goto_1
    invoke-virtual {v10, v9}, Lcom/lx/launcher8/setting/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, about:Ljava/lang/String;
    iget-object v9, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    const v10, 0x7f0a0077

    invoke-virtual {v9, v10}, Lcom/lx/launcher8/setting/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, ok:Ljava/lang/String;
    iget-object v9, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    const v10, 0x7f0a0078

    invoke-virtual {v9, v10}, Lcom/lx/launcher8/setting/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, cancel:Ljava/lang/String;
    invoke-virtual {v3, v8, v0, v7, v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->createWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    goto :goto_0

    .line 159
    .end local v0           #about:Ljava/lang/String;
    .end local v1           #cancel:Ljava/lang/String;
    .end local v7           #ok:Ljava/lang/String;
    :cond_0
    const v9, 0x7f0a0190

    goto :goto_1

    .line 165
    .end local v3           #dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    .end local v6           #isDefault:Z
    .end local v8           #title:Ljava/lang/String;
    :sswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v9, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    const-class v10, Lcom/lx/launcher8/image/ImageBrower;

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .restart local v5       #intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/lx/launcher8/setting/GalleryPickAct$1;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    const/4 v10, 0x3

    invoke-virtual {v9, v5, v10}, Lcom/lx/launcher8/setting/GalleryPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 127
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x7f090055 -> :sswitch_2
        0x7f090059 -> :sswitch_1
        0x7f09007f -> :sswitch_0
    .end sparse-switch
.end method
