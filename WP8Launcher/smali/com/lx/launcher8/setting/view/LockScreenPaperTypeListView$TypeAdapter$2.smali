.class Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$2;
.super Ljava/lang/Object;
.source "LockScreenPaperTypeListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;

.field private final synthetic val$typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;Lcom/lx/launcher8/setting/bean/TypeInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$2;->this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;

    iput-object p2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$2;->val$typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 284
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$2;->this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;)Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$3(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/LockScreenPaperListAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type_info"

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$2;->val$typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 286
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$2;->this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;)Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$8(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 287
    return-void
.end method
