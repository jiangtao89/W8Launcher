.class Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$7;
.super Ljava/lang/Object;
.source "SettingDeskItemsAct.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->createPageTransparency()V
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$7;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "s"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$7;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 642
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$7;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 643
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 638
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 636
    return-void
.end method
