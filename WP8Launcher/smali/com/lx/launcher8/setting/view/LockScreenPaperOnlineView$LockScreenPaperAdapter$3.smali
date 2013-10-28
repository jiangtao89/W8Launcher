.class Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter$3;
.super Ljava/lang/Object;
.source "LockScreenPaperOnlineView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

.field private final synthetic val$p:I


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter$3;->this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    iput p2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter$3;->val$p:I

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 347
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter$3;->this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->access$6(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extral_value"

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter$3;->this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->access$5(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 349
    const-string v1, "extral_value1"

    iget v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter$3;->val$p:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter$3;->this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->access$10(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 352
    return-void
.end method
