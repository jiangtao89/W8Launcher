.class Lcom/lx/launcher8/setting/AddSpecialAct$1;
.super Ljava/lang/Object;
.source "AddSpecialAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/AddSpecialAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/AddSpecialAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/AddSpecialAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/AddSpecialAct$1;)Lcom/lx/launcher8/setting/AddSpecialAct;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 171
    :goto_0
    :pswitch_0
    return-void

    .line 124
    :pswitch_1
    new-instance v2, Lcom/lx/launcher8/setting/AddSpecialAct$1$1;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/AddSpecialAct$1$1;-><init>(Lcom/lx/launcher8/setting/AddSpecialAct$1;)V

    .line 134
    .local v2, handler:Landroid/os/Handler;
    new-instance v4, Lcom/lx/launcher8/setting/AddSpecialAct$1$2;

    invoke-direct {v4, p0, v2}, Lcom/lx/launcher8/setting/AddSpecialAct$1$2;-><init>(Lcom/lx/launcher8/setting/AddSpecialAct$1;Landroid/os/Handler;)V

    .line 149
    invoke-virtual {v4}, Lcom/lx/launcher8/setting/AddSpecialAct$1$2;->start()V

    goto :goto_0

    .line 153
    .end local v2           #handler:Landroid/os/Handler;
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lx/launcher8/setting/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    const-class v5, Lcom/lx/launcher8/setting/GalleryPickAct;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/lx/launcher8/setting/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    invoke-virtual {v4, v3}, Lcom/lx/launcher8/setting/AddSpecialAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 157
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 158
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v1, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v4, p0, Lcom/lx/launcher8/setting/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    invoke-direct {v1, v4}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    .line 159
    .local v1, ds:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 160
    iget-object v4, p0, Lcom/lx/launcher8/setting/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    const-class v5, Lcom/lx/launcher8/setting/wp8/EditCellAct;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 165
    :goto_1
    const v0, 0x38020

    .line 167
    .local v0, cellType:I
    const-string v4, "cellType"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    iget-object v4, p0, Lcom/lx/launcher8/setting/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    invoke-virtual {v4, v3}, Lcom/lx/launcher8/setting/AddSpecialAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 163
    .end local v0           #cellType:I
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    const-class v5, Lcom/lx/launcher8/setting/EditCellAct;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x7f09001f
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
