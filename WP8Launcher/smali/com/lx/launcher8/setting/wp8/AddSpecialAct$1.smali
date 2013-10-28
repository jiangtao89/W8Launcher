.class Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;
.super Ljava/lang/Object;
.source "AddSpecialAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/AddSpecialAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;)Lcom/lx/launcher8/setting/wp8/AddSpecialAct;
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 253
    :goto_0
    return-void

    .line 190
    :sswitch_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    const v6, 0x7f0a0035

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x12c

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 191
    new-instance v2, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1$1;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1$1;-><init>(Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;)V

    .line 204
    .local v2, handler:Landroid/os/Handler;
    new-instance v4, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1$2;

    invoke-direct {v4, p0, v2}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1$2;-><init>(Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;Landroid/os/Handler;)V

    .line 220
    invoke-virtual {v4}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1$2;->start()V

    goto :goto_0

    .line 224
    .end local v2           #handler:Landroid/os/Handler;
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    const-class v5, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    invoke-virtual {v4, v3}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 228
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 229
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v1, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    invoke-direct {v1, v4}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    .line 230
    .local v1, ds:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 231
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    const-class v5, Lcom/lx/launcher8/setting/wp8/EditCellAct;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 235
    :goto_1
    const v0, 0x38020

    .line 237
    .local v0, cellType:I
    const-string v4, "cellType"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    invoke-virtual {v4, v3}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 233
    .end local v0           #cellType:I
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    const-class v5, Lcom/lx/launcher8/setting/EditCellAct;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 241
    .end local v1           #ds:Lcom/lx/launcher8/cfg/DeskSetting;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 242
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v1, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    invoke-direct {v1, v4}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    .line 243
    .restart local v1       #ds:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 244
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    const-class v5, Lcom/lx/launcher8/setting/wp8/EditCellAct;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 247
    :cond_1
    const v0, 0x38080

    .line 249
    .restart local v0       #cellType:I
    const-string v4, "cellType"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    invoke-virtual {v4, v3}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09001f -> :sswitch_0
        0x7f090021 -> :sswitch_1
        0x7f090023 -> :sswitch_2
        0x7f090028 -> :sswitch_3
    .end sparse-switch
.end method
