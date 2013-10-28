.class Lcom/lx/launcher8/setting/SettingDeskItemsAct$2;
.super Ljava/lang/Object;
.source "SettingDeskItemsAct.java"

# interfaces
.implements Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/SettingDeskItemsAct;
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchOver(Lcom/lx/launcher8/view/SeekButton;Z)V
    .locals 3
    .parameter "v"
    .parameter "enable"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 868
    invoke-virtual {p1}, Lcom/lx/launcher8/view/SeekButton;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 876
    :goto_0
    return-void

    .line 870
    :pswitch_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v2}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->access$0(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v2

    if-eqz p2, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/lx/launcher8/cfg/DeskSetting;->setScrollAllowed(I)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 873
    :pswitch_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$2;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    #getter for: Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v2}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->access$0(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v2

    if-eqz p2, :cond_1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/lx/launcher8/cfg/DeskSetting;->setAnimationSwitch(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 868
    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
