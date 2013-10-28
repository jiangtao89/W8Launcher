.class Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$3;
.super Ljava/lang/Object;
.source "SettingDeskItemsAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1017
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1018
    .local v0, data:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget v1, v1, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->whichPage:I

    packed-switch v1, :pswitch_data_0

    .line 1023
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 1024
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    .line 1025
    return-void

    .line 1020
    :pswitch_0
    const-string v1, "extral_boolean"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-boolean v2, v2, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekState:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 1018
    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
    .end packed-switch
.end method
