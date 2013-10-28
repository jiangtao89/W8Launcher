.class Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;
.super Ljava/lang/Object;
.source "SettingDeskItemsAct.java"

# interfaces
.implements Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;


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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchOver(Lcom/lx/launcher8/setting/wp8/view/SeekButton;Z)V
    .locals 5
    .parameter "v"
    .parameter "enable"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const v4, 0x7f0a0159

    const v3, 0x7f0a0158

    .line 941
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 968
    :goto_0
    return-void

    .line 943
    :sswitch_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->access$0(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v2

    if-eqz p2, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/lx/launcher8/cfg/DeskSetting;->setScrollAllowed(I)V

    .line 944
    if-eqz p2, :cond_1

    .line 945
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->dragAnimationText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v1, v3}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 943
    goto :goto_1

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->dragAnimationText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 951
    :sswitch_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->access$0(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v2

    if-eqz p2, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Lcom/lx/launcher8/cfg/DeskSetting;->setAnimationSwitch(I)V

    .line 952
    if-eqz p2, :cond_3

    .line 953
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->JumpAnimationText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v1, v3}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 951
    goto :goto_2

    .line 955
    :cond_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->JumpAnimationText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 959
    :sswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iput-boolean p2, v0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekState:Z

    .line 960
    if-eqz p2, :cond_4

    .line 961
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v1, v3}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    :goto_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    #calls: Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setProperty()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->access$2(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)V

    goto :goto_0

    .line 963
    :cond_4
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 941
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f5 -> :sswitch_0
        0x1f6 -> :sswitch_1
        0x384 -> :sswitch_2
    .end sparse-switch
.end method
