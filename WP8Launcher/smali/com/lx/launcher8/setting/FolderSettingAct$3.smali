.class Lcom/lx/launcher8/setting/FolderSettingAct$3;
.super Ljava/lang/Object;
.source "FolderSettingAct.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/FolderSettingAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/FolderSettingAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/FolderSettingAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/FolderSettingAct$3;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 591
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 604
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 595
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 596
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct$3;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$1(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/view/FolderCellView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FolderCellView;->onStop()V

    goto :goto_0

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct$3;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$1(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/view/FolderCellView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FolderCellView;->onStart()V

    goto :goto_0

    .line 591
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
