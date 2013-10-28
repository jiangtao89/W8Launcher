.class Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$4;
.super Ljava/lang/Object;
.source "TopAppSearchAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

.field private final synthetic val$h:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$4;->this$1:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$4;->val$h:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 405
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$4;->this$1:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;)Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$4;->val$h:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;

    iget v2, v2, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$ViewHolder;->appId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$4;->this$1:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;)Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->startActivity(Landroid/content/Intent;)V

    .line 408
    return-void
.end method
