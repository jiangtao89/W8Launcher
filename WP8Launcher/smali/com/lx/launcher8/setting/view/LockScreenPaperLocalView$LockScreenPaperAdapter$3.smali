.class Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$3;
.super Ljava/lang/Object;
.source "LockScreenPaperLocalView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

.field private final synthetic val$p:I


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$3;->this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    iput p2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$3;->val$p:I

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 386
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$3;->this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$1(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extral_value"

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$3;->this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 388
    const-string v1, "extral_value1"

    iget v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$3;->val$p:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$3;->this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$9(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 390
    return-void
.end method
