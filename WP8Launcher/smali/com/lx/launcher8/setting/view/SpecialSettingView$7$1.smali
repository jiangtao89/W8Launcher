.class Lcom/lx/launcher8/setting/view/SpecialSettingView$7$1;
.super Landroid/os/Handler;
.source "SpecialSettingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/SpecialSettingView$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/view/SpecialSettingView$7;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/SpecialSettingView$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$7$1;->this$1:Lcom/lx/launcher8/setting/view/SpecialSettingView$7;

    .line 296
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x12c

    .line 299
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$7$1;->this$1:Lcom/lx/launcher8/setting/view/SpecialSettingView$7;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/SpecialSettingView$7;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView$7;)Lcom/lx/launcher8/setting/view/SpecialSettingView;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$7$1;->this$1:Lcom/lx/launcher8/setting/view/SpecialSettingView$7;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/SpecialSettingView$7;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView$7;)Lcom/lx/launcher8/setting/view/SpecialSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0033

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$7$1;->this$1:Lcom/lx/launcher8/setting/view/SpecialSettingView$7;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/SpecialSettingView$7;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView$7;)Lcom/lx/launcher8/setting/view/SpecialSettingView;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$7$1;->this$1:Lcom/lx/launcher8/setting/view/SpecialSettingView$7;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/SpecialSettingView$7;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView$7;)Lcom/lx/launcher8/setting/view/SpecialSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0034

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
