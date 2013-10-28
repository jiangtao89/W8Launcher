.class Lcom/lx/launcher8/setting/SettingDeskItemsAct$3;
.super Ljava/lang/Object;
.source "SettingDeskItemsAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/SettingDeskItemsAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$3;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0x64

    .line 137
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$3;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget v2, v2, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->whichPage:I

    if-eq v2, v4, :cond_0

    .line 138
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$3;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget v2, v2, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->whichPage:I

    const/16 v3, 0x96

    if-ne v2, v3, :cond_6

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$3;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 140
    .local v1, data:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$3;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v2, v2, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 141
    .local v0, alpha:I
    if-gez v0, :cond_1

    .line 142
    const/4 v0, 0x0

    .line 143
    :cond_1
    if-le v0, v4, :cond_2

    .line 144
    const/16 v0, 0x64

    .line 145
    :cond_2
    const-string v2, "extral_value"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$3;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v2, v2, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    if-eqz v2, :cond_5

    .line 147
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$3;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iget-object v2, v2, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 148
    if-gez v0, :cond_3

    .line 149
    const/4 v0, 0x0

    .line 150
    :cond_3
    if-le v0, v4, :cond_4

    .line 151
    const/16 v0, 0x64

    .line 152
    :cond_4
    const-string v2, "extral_value1"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    :cond_5
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$3;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 156
    .end local v0           #alpha:I
    .end local v1           #data:Landroid/content/Intent;
    :cond_6
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$3;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->finish()V

    .line 157
    return-void
.end method
