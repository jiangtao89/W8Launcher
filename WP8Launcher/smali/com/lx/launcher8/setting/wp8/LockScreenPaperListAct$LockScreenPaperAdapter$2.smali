.class Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$2;
.super Ljava/lang/Object;
.source "LockScreenPaperListAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;

.field private final synthetic val$p:I


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$2;->this$1:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;

    iput p2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$2;->val$p:I

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 394
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$2;->this$1:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$4(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extral_value"

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$2;->this$1:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->paperList:Ljava/util/List;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$3(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 396
    const-string v1, "papertype"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$2;->this$1:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mPaperType:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->access$11(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    const-string v1, "extral_value1"

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$2;->val$p:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter$2;->this$1:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;)Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->startActivity(Landroid/content/Intent;)V

    .line 399
    return-void
.end method
