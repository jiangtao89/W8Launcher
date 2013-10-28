.class Lcom/lx/launcher8/setting/SettingAct$2;
.super Ljava/lang/Object;
.source "SettingAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/SettingAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/SettingAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/SettingAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/SettingAct$2;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    long-to-int v0, p4

    sparse-switch v0, :sswitch_data_0

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 346
    :sswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingAct$2;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    #getter for: Lcom/lx/launcher8/setting/SettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v0}, Lcom/lx/launcher8/setting/SettingAct;->access$1(Lcom/lx/launcher8/setting/SettingAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemePaper(I)V

    .line 347
    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingAct$2;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const-class v1, Lcom/lx/launcher8/setting/SettingAct;

    #calls: Lcom/lx/launcher8/setting/SettingAct;->reFreshTheme(Ljava/lang/Class;)V
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/SettingAct;->access$2(Lcom/lx/launcher8/setting/SettingAct;Ljava/lang/Class;)V

    goto :goto_0

    .line 352
    :sswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingAct$2;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    #getter for: Lcom/lx/launcher8/setting/SettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v0}, Lcom/lx/launcher8/setting/SettingAct;->access$1(Lcom/lx/launcher8/setting/SettingAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/SettingAct$2;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    #calls: Lcom/lx/launcher8/setting/SettingAct;->getGapValue(I)I
    invoke-static {v1, p3}, Lcom/lx/launcher8/setting/SettingAct;->access$3(Lcom/lx/launcher8/setting/SettingAct;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;->setCellGap(I)V

    goto :goto_0

    .line 355
    :sswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingAct$2;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    #getter for: Lcom/lx/launcher8/setting/SettingAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;
    invoke-static {v0}, Lcom/lx/launcher8/setting/SettingAct;->access$4(Lcom/lx/launcher8/setting/SettingAct;)Lcom/anall/screenlock/provider/LockSetting;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/anall/screenlock/provider/LockSetting;->setLockTheme(I)V

    goto :goto_0

    .line 344
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901b6 -> :sswitch_2
        0x7f0901c5 -> :sswitch_0
        0x7f0901c6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
