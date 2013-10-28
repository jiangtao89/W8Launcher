.class Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct$1;
.super Ljava/lang/Object;
.source "SettingLightItemsAct.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v4, -0x1

    .line 169
    sparse-switch p2, :sswitch_data_0

    .line 195
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->finish()V

    .line 197
    :goto_0
    return-void

    .line 172
    :sswitch_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 173
    .local v0, data:Landroid/content/Intent;
    const-string v1, "item"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->positions:[I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->access$0(Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;)[I

    move-result-object v2

    rem-int/lit8 v3, p2, 0x64

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;

    invoke-virtual {v1, v4, v0}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 175
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->finish()V

    goto :goto_0

    .line 179
    .end local v0           #data:Landroid/content/Intent;
    :sswitch_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 180
    .restart local v0       #data:Landroid/content/Intent;
    const-string v1, "item"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->positions:[I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->access$0(Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;)[I

    move-result-object v2

    rem-int/lit16 v3, p2, 0xc8

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;

    invoke-virtual {v1, v4, v0}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 182
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->finish()V

    goto :goto_0

    .line 189
    .end local v0           #data:Landroid/content/Intent;
    :sswitch_2
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 190
    .restart local v0       #data:Landroid/content/Intent;
    const-string v1, "item"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->positions:[I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->access$0(Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;)[I

    move-result-object v2

    rem-int/lit16 v3, p2, 0x12c

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;

    invoke-virtual {v1, v4, v0}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 192
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->finish()V

    goto :goto_0

    .line 169
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x130 -> :sswitch_2
    .end sparse-switch
.end method
