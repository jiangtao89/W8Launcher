.class Lcom/lx/launcher8/setting/SettingDeskItemsAct$4;
.super Ljava/lang/Object;
.source "SettingDeskItemsAct.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/SettingDeskItemsAct;->createPageTransparency()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

.field private final synthetic val$seekBarText:Lcom/lx/launcher8/view/DragSeekBar;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/SettingDeskItemsAct;Lcom/lx/launcher8/view/DragSeekBar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$4;->this$0:Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$4;->val$seekBarText:Lcom/lx/launcher8/view/DragSeekBar;

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$4;->val$seekBarText:Lcom/lx/launcher8/view/DragSeekBar;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/DragSeekBar;->getProgress()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 585
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$4;->val$seekBarText:Lcom/lx/launcher8/view/DragSeekBar;

    invoke-virtual {v0, p2}, Lcom/lx/launcher8/view/DragSeekBar;->setProgress(I)V

    .line 586
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 590
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 594
    return-void
.end method
