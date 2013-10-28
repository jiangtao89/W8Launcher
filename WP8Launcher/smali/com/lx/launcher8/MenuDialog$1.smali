.class Lcom/lx/launcher8/MenuDialog$1;
.super Ljava/lang/Object;
.source "MenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/MenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/MenuDialog;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/MenuDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const v6, 0x7f0a0057

    const/4 v5, 0x1

    const/4 v4, 0x1

    .line 125
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 222
    :goto_0
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    invoke-virtual {v2}, Lcom/lx/launcher8/MenuDialog;->dismiss()V

    .line 223
    return-void

    .line 128
    :sswitch_0
    const-string v2, "android.settings.SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/AnallLauncher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 132
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/WallpaperPickAct;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, chooseIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$1(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 134
    new-instance v0, Landroid/content/Intent;

    .end local v0           #chooseIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .restart local v0       #chooseIntent:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/AnallLauncher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 138
    .end local v0           #chooseIntent:Landroid/content/Intent;
    :sswitch_2
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$1(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v2

    if-nez v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/MainSettingAct;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 143
    :goto_1
    const-string v2, "from"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/AnallLauncher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/SettingAct;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 147
    :sswitch_3
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #calls: Lcom/lx/launcher8/MenuDialog;->showAddDialog()V
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$2(Lcom/lx/launcher8/MenuDialog;)V

    goto :goto_0

    .line 151
    :sswitch_4
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/MoreAct;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 152
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/AnallLauncher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 155
    :sswitch_5
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/AnallLauncher;->setDeskEdit()V

    goto/16 :goto_0

    .line 158
    :sswitch_6
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/AnallLauncher;->freshAppload()V

    goto/16 :goto_0

    .line 161
    :sswitch_7
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/AppPickAct;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 162
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$1(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 163
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/AppPickAct;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 164
    const-string v2, "extral_text"

    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v3}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    :cond_2
    const-string v2, "extral_muti"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v1, v3}, Lcom/lx/launcher8/AnallLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 170
    :sswitch_8
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/AnallLauncher;->changeAppPreview()V

    goto/16 :goto_0

    .line 173
    :sswitch_9
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$1(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v2

    if-nez v2, :cond_3

    .line 174
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/MainSettingAct;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 175
    const-string v2, "extral_page"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    :goto_2
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/AnallLauncher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 177
    :cond_3
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/SettingAct;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 178
    const-string v2, "extral_page"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 183
    :sswitch_a
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/AnallLauncher;->pickWidget()V

    .line 184
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->addCellView:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$3(Lcom/lx/launcher8/MenuDialog;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 187
    :sswitch_b
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/AnallLauncher;->pickSpecial()V

    .line 188
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->addCellView:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$3(Lcom/lx/launcher8/MenuDialog;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 191
    :sswitch_c
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/AppPickAct;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 192
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$1(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 193
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/AppPickAct;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 194
    const-string v2, "extral_text"

    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v3}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    :cond_4
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Lcom/lx/launcher8/AnallLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 197
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->addCellView:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$3(Lcom/lx/launcher8/MenuDialog;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 200
    :sswitch_d
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #calls: Lcom/lx/launcher8/MenuDialog;->pickShortcut()V
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$4(Lcom/lx/launcher8/MenuDialog;)V

    .line 201
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->addCellView:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$3(Lcom/lx/launcher8/MenuDialog;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 204
    :sswitch_e
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/AnallLauncher;->createFolder()V

    .line 205
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->addCellView:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$3(Lcom/lx/launcher8/MenuDialog;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 208
    :sswitch_f
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/AppPickAct;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 209
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$1(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 210
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/AppPickAct;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 212
    :cond_5
    const-string v2, "extral_muti"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    const-string v2, "extral_batch_add"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v1, v3}, Lcom/lx/launcher8/AnallLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 217
    :sswitch_10
    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog$1;->this$0:Lcom/lx/launcher8/MenuDialog;

    #getter for: Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v2}, Lcom/lx/launcher8/MenuDialog;->access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/AnallLauncher;->changeAppSort()V

    goto/16 :goto_0

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09016d -> :sswitch_5
        0x7f09016e -> :sswitch_3
        0x7f09016f -> :sswitch_2
        0x7f090170 -> :sswitch_1
        0x7f090171 -> :sswitch_0
        0x7f090172 -> :sswitch_4
        0x7f090173 -> :sswitch_4
        0x7f090174 -> :sswitch_6
        0x7f090175 -> :sswitch_8
        0x7f090176 -> :sswitch_10
        0x7f090177 -> :sswitch_7
        0x7f090178 -> :sswitch_f
        0x7f090179 -> :sswitch_9
        0x7f0901fd -> :sswitch_a
        0x7f0901fe -> :sswitch_c
        0x7f0901ff -> :sswitch_d
        0x7f090200 -> :sswitch_b
        0x7f090201 -> :sswitch_e
    .end sparse-switch
.end method
