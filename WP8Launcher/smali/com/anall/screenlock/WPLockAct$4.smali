.class Lcom/anall/screenlock/WPLockAct$4;
.super Ljava/lang/Object;
.source "WPLockAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anall/screenlock/WPLockAct;->setupForgetViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/screenlock/WPLockAct;


# direct methods
.method constructor <init>(Lcom/anall/screenlock/WPLockAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/screenlock/WPLockAct$4;->this$0:Lcom/anall/screenlock/WPLockAct;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 269
    :goto_0
    :pswitch_0
    return-void

    .line 254
    :pswitch_1
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$4;->this$0:Lcom/anall/screenlock/WPLockAct;

    const v1, 0x7f0a0224

    const v2, 0x7f0a0229

    invoke-virtual {v0, v1, v2, v4}, Lcom/anall/screenlock/WPLockAct;->showPopHit(IIZ)V

    goto :goto_0

    .line 259
    :pswitch_2
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$4;->this$0:Lcom/anall/screenlock/WPLockAct;

    const v1, 0x7f0a0226

    const v2, 0x7f0a022a

    invoke-virtual {v0, v1, v2, v3}, Lcom/anall/screenlock/WPLockAct;->showPopHit(IIZ)V

    goto :goto_0

    .line 262
    :pswitch_3
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$4;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->mRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/anall/screenlock/WPLockAct;->access$5(Lcom/anall/screenlock/WPLockAct;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct$4;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/anall/screenlock/WPLockAct;->access$2(Lcom/anall/screenlock/WPLockAct;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 265
    :pswitch_4
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$4;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/anall/screenlock/WPLockAct;->access$2(Lcom/anall/screenlock/WPLockAct;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$4;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/anall/screenlock/WPLockAct;->access$2(Lcom/anall/screenlock/WPLockAct;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x7f09014d
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
