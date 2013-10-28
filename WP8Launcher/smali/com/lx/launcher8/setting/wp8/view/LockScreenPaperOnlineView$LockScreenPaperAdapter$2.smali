.class Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter$2;
.super Ljava/lang/Object;
.source "LockScreenPaperOnlineView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

.field private final synthetic val$p:I


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter$2;->this$1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    iput p2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter$2;->val$p:I

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 432
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter$2;->this$1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->access$5(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extral_value"

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter$2;->this$1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->access$4(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 434
    const-string v1, "papertype"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter$2;->this$1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mPaperType:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->access$12(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    const-string v1, "extral_value1"

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter$2;->val$p:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter$2;->this$1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->access$3(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v0, v2}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 438
    return-void
.end method
