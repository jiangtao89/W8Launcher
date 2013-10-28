.class Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$2;
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

.field private final synthetic val$info:Lcom/lx/launcher8/setting/bean/TopAppInfo;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;Lcom/lx/launcher8/setting/bean/TopAppInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$2;->this$1:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$2;->val$info:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$2;->this$1:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;)Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter$2;->val$info:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lx/launcher8/util/TopAppUtil;->download(Landroid/content/Context;Lcom/lx/launcher8/setting/bean/TopAppInfo;I)V

    .line 354
    return-void
.end method
