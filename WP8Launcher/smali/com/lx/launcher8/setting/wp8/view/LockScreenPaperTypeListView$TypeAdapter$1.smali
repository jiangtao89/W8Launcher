.class Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter$1;
.super Ljava/lang/Object;
.source "LockScreenPaperTypeListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;

.field private final synthetic val$typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;Lcom/lx/launcher8/setting/bean/TypeInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter$1;->val$typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;)Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->access$1(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "papertype"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;)Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mPaperType:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->access$3(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const-string v1, "type_info"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter$1;->val$typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;)Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->access$2(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;)Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->startActivity(Landroid/content/Intent;)V

    .line 231
    return-void
.end method
