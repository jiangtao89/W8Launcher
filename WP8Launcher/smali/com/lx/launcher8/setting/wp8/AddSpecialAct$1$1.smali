.class Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1$1;
.super Landroid/os/Handler;
.source "AddSpecialAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;

    .line 191
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x12c

    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;)Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;)Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    move-result-object v1

    const v2, 0x7f0a0033

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;)Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;)Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    move-result-object v1

    const v2, 0x7f0a0034

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
